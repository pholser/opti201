from gurobipy import GRB
import gurobipy as gp
import pandas as pd
import sys


class Technician:
    def __init__(self, name, cap, depot):
        self.name = name
        self.cap = cap
        self.depot = depot

    def __str__(self):
        return f"Technician: {self.name}\n  Capacity: {self.cap}\n  Depot: {self.depot}"


class Job:
    def __init__(self, name, priority, duration, covered_by):
        self.name = name
        self.priority = priority
        self.duration = duration
        self.covered_by = covered_by

    def __str__(self):
        about = f"Job: {self.name}\n  Priority: {self.priority}\n  Duration: {self.duration}\n  Covered by: \n"
        about += ", ".join([t.name for t in self.covered_by])
        return about


class Customer:
    def __init__(self, name, loc, job, time_start, time_end, time_due):
        self.name = name
        self.loc = loc
        self.job = job
        self.time_start = time_start
        self.time_end = time_end
        self.time_due = time_due

    def __str__(self):
        covered_by = ", ".join([t.name for t in self.job.covered_by])
        return f"Customer: {self.name}\n  Location: {self.loc}\n  Job: {self.job.name}\n  Priority: {self.job.priority}\n  Duration: {self.job.duration}\n  Covered by: {covered_by}\n  Start time: {self.time_start}\n  End time: {self.time_end}\n  Due time: {self.time_due}\n"


# Read Excel workbook
excel_file = 'https://raw.githubusercontent.com/decision-spot/technician_assignment/main/data-Sce0.xlsx'
df = pd.read_excel(excel_file, sheet_name='Technicians')
df = df.rename(columns={df.columns[0]: 'name', df.columns[1]: 'cap', df.columns[2]: 'depot'})
df1 = df.drop(df.columns[3:], axis=1).drop(df.index[[0, 1]])

# Create Technician objects
technicians = [Technician(*row) for row in df1.itertuples(index=False, name=None)]

# Read job data
jobs = []
for j in range(3, len(df.columns)):
    covered_by = [t for i, t in enumerate(technicians) if df.iloc[2 + i, j] == 1]
    this_job = Job(df.iloc[2:, j].name, df.iloc[0, j], df.iloc[1, j], covered_by)
    jobs.append(this_job)

# Read location data
df_locations = pd.read_excel(excel_file, sheet_name='Locations', index_col=0)  # , skiprows=1, index_col=0)

# Extract locations and initialize distance dictionary
locations = df_locations.index
dist = {(l, l): 0 for l in locations}

# Populate distance dictionary
for i, l1 in enumerate(locations):
    for j, l2 in enumerate(locations):
        if i < j:
            dist[l1, l2] = df_locations.iloc[i, j]
            dist[l2, l1] = dist[l1, l2]

# Read customer data
df_customers = pd.read_excel(excel_file, sheet_name='Customers')
customers = []
for i, c in enumerate(df_customers.iloc[:, 0]):
    job_name = df_customers.iloc[i, 2]

    # Find the corresponding Job object
    matching_job = next((job for job in jobs if job.name == job_name), None)

    if matching_job is not None:
        # Create Customer object using corresponding Job object
        this_customer = Customer(c, df_customers.iloc[i, 1], matching_job, *df_customers.iloc[i, 3:])
        customers.append(this_customer)


# To determine the latest times for a technician to arrive at a customer location and
# complete the job, you can calculate it by iterating over the sequence of customers
# to be served by the technician in reverse order.
#
# The latest time a technician can arrive at a customer location is constrained by
# two factors. First, it is upper-bounded by the customer-specified time window's End Time.
# Second, it is also limited by the following: the latest arrival time at the next customer
# location in the sequence minus the job duration at the current customer location and the
# distance between the two customer locations. Additionally, it's essential for the technician
# to reach the depot location after completing all the assigned jobs by time t = 600.


def get_latest_times(custs, technician):
    latest = dict()
    d = dist[custs[-1].loc, technician.depot]  # distance back to the depot
    prev_latest = min(custs[-1].time_end, 600 - d - custs[-1].job.duration)
    latest[custs[-1].loc] = prev_latest
    for i in range(len(custs) - 2, -1, -1):
        d = dist[custs[i].loc, custs[i + 1].loc]
        latest_end = min(prev_latest - d - custs[i].job.duration, custs[i].time_end)
        latest[custs[i].loc] = latest_end
        prev_latest = latest_end
    return latest


# We added another function `create_excel_output` inside the `solve_trs0` function to store
# the solution of the problem in two tables: **routes** and **orders**.


def solve_trs0(techs, custs, distances):
    # Build useful data structures
    K = [k.name for k in techs]
    C = [j.name for j in custs]
    J = [j.loc for j in custs]
    L = list(set([l[0] for l in distances.keys()]))
    D = list(set([t.depot for t in techs]))
    cap = {k.name: k.cap for k in techs}
    loc = {j.name: j.loc for j in custs}
    depot = {k.name: k.depot for k in techs}
    can_cover = {j.name: [k.name for k in j.job.covered_by] for j in custs}
    dur = {j.name: j.job.duration for j in custs}
    time_start = {j.name: j.time_start for j in custs}
    time_end = {j.name: j.time_end for j in custs}
    priority = {j.name: j.job.priority for j in custs}

    # Create model
    m = gp.Model('trs0')
    
    # Decision variables
    # Customer-technician assignment
    x = m.addVars(C, K, vtype=GRB.BINARY, name='x')
    
    # Technician assignment
    u = m.addVars(K, vtype=GRB.BINARY, name='u')
    
    # Edge-route assignment to technician
    y = m.addVars(L, L, K, vtype=GRB.BINARY, name='y')
    
    # Technician cannot leave or return to a depot that is not its base
    for k in technicians:
        for d in D:
            if k.depot != d:
                for i in L:
                    y[i, d, k.name].ub = 0
                    y[d, i, k.name].ub = 0
    
    # Start time of service
    t = m.addVars(L, ub=600, name='t')
    
    # Unfilled jobs
    g = m.addVars(C, vtype=GRB.BINARY, name='g')
    
    # Constraints

    # A technician must be assigned to a job, or a gap is declared (1)
    m.addConstrs(
        (gp.quicksum(x[j, k] for k in can_cover[j]) + g[j] == 1
         for j in C),
        name='assign_to_job'
    )

    # At most one technician can be assigned to a job (2)
    m.addConstrs(
        (x.sum(j, '*') <= 1 for j in C),
        name='assign_one'
    )
    
    # Technician capacity constraints (3)
    cap_lhs = {
        k: gp.quicksum(dur[j] * x[j, k] for j in C)
           + gp.quicksum(dist[i, j] * y[i, j, k] for i in L for j in L)
        for k in K
    }
    m.addConstrs(
        (cap_lhs[k] <= cap[k] * u[k] for k in K),
        name='tech_capacity'
    )
    
    # Technician tour constraints (4 and 5)
    m.addConstrs(
        (y.sum('*', loc[j], k) == x[j, k]
         for k in K
         for j in C),
        name='tech_tour_1'
    )
    m.addConstrs(
        (y.sum(loc[j], '*', k) == x[j, k]
         for k in K
         for j in C),
        name='tech_tour_2'
    )
    
    # Same depot constraints (6 and 7)
    m.addConstrs(
        (gp.quicksum(y[j, depot[k], k] for j in J) == u[k]
         for k in K),
        name='same_depot_1'
    )
    m.addConstrs(
        (gp.quicksum(y[depot[k], j, k] for j in J) == u[k]
         for k in K),
        name='same_depot_2'
    )
    
    # Temporal constraints (8) for customer locations
    M = {(i, j): 600 + dur[i] + dist[loc[i], loc[j]]
         for i in C
         for j in C}
    m.addConstrs(
        (t[loc[j]]
         >=
         t[loc[i]]
         + dur[i]
         + dist[loc[i], loc[j]]
         - M[i, j] * (1 - gp.quicksum(y[loc[i], loc[j], k] for k in K))
         for i in C
         for j in C),
        name='tempo_customer')
    
    # Temporal constraints (8) for depot locations
    M = {(i, j): 600 + dist[i, loc[j]]
         for i in D
         for j in C}
    m.addConstrs(
        (t[loc[j]]
         >=
         t[i]
         + dist[i, loc[j]]
         - M[i, j] * (1 - y.sum(i, loc[j], '*'))
         for i in D
         for j in C),
        name='tempo_depot')
    
    # Time window constraints (9 and 10)
    m.addConstrs((t[loc[j]] >= time_start[j] for j in C), name='time_window_a')
    m.addConstrs((t[loc[j]] <= time_end[j] for j in C), name='time_window_b')
    
    # Objective function
    M = 6100
    m.setObjective(
        gp.quicksum(M * priority[j] * g[j] for j in C)
        + gp.quicksum(0.01 * M * t[k] for k in L),
        GRB.MINIMIZE)
    
    m.write('TRS0.lp')
    m.optimize()
    
    status = m.Status
    if status in [GRB.INF_OR_UNBD, GRB.INFEASIBLE, GRB.UNBOUNDED]:
        print('Model is either infeasible or unbounded.')
        sys.exit(0)
    elif status != GRB.OPTIMAL:
        print('Optimization terminated with status {}'.format(status))
        sys.exit(0)
    
    ### Print results
    # Assignments
    for j in customers:
        if g[j.name].X > 0.5:
            job_str = 'Nobody assigned to {} ({}) in {}'.format(j.name, j.job.name, j.loc)
        else:
            for k in K:
                if x[j.name, k].X > 0.5:
                    job_str = f"{k} assigned to {j.name} ({j.job.name}) in {j.loc}. Start at t={t[j.loc].X:.2f}."
        print(job_str)

    # Technicians
    for k in technicians:
        if u[k.name].X > 0.5:
            cur = k.depot
            route = k.depot
            while True:
                for j in customers:
                    if y[cur, j.loc, k.name].X > 0.5:
                        route += (f" -> {j.loc} (dist={dist[cur, j.loc]}, t={t[j.loc].X:.2f},"
                                  f" proc={j.job.duration}, a={time_start[j.name]}, b={time_end[j.name]})")
                        cur = j.loc
                for i in D:
                    if y[cur,i,k.name].X > 0.5:
                        route += ' -> {} (dist={})'.format(i,dist[cur, i])
                        cur = i
                        break
                if cur == k.depot:
                    break
            print("{}'s route: {}".format(k.name, route))
        else:
            print('{} is not used'.format(k.name))


    # Utilization
    for k in K:
        used = cap_lhs[k].getValue()
        total = cap[k]
        util = used / cap[k] if cap[k] > 0 else 0
        print("{}'s utilization is {:.2%} ({:.2f}/{:.2f})".format(k, util, used, cap[k]))
    total_used = sum(cap_lhs[k].getValue() for k in K)
    total_cap = sum(cap[k] for k in K)
    total_util = total_used / total_cap if total_cap > 0 else 0
    print('Total technician utilization is {:.2%} ({:.2f}/{:.2f})'.format(total_util, total_used, total_cap))

    def create_excel_output():
        routes_cols = [
            'Route ID', 'Technician Name', 'Origin Location', 'Total Travel Time',
            'Total Processing Time', 'Total Time', 'Earliest Start Time', 'Latest Start Time',
            'Earliest End Time', 'Latest End Time', 'Num Jobs'
        ]
        routes_list = []
        orders_cols = [
            'Route ID', 'Stop Number', 'Customer Name', 'Technician Name', 'Location Name',
            'Job type', 'Processing Time', 'Customer Time Window Start',
            'Customer Time Window End', 'Earliest Start', 'Latest Start', 'Earliest End',
            'Latest End'
        ]
        route_id = 0
        orders_list = []
        for k in technicians:
            if u[k.name].X > 0.5:
                customers_list = []
                route_id += 1
                total_distance, total_travel_time, total_processing_time = 0, 0, 0
                current = k.depot
                while True:
                    for j in customers:
                        if y[current, j.loc, k.name].X > 0.5:
                            total_travel_time += dist[current, j.loc]
                            total_distance += dist[current, j.loc]
                            total_processing_time += j.job.duration
                            customers_list.append(j)
                            current = j.loc
                    for i in D:
                        if y[current, i, k.name].X > 0.5:
                            total_travel_time += dist[current, i]
                            total_distance += dist[current, i]
                            current = i
                            break
                    if current == k.depot:
                        break
                latest = get_latest_times(customers_list, k)

                # append customers to the list of orders
                for i, j in enumerate(customers_list):
                    orders_list.append(
                        [route_id, i + 1, j.name, k.name, j.loc, j.job.name,
                         j.job.duration, time_start[j.name], time_end[j.name],
                         t[j.loc].X, latest[j.loc],
                         t[j.loc].X + j.job.duration, latest[j.loc] + j.job.duration])

                # append route to routes list
                earliest_start_route = t[customers_list[0].loc].X - dist[k.depot, customers_list[0].loc]
                latest_start_route = latest[customers_list[0].loc] - dist[k.depot, customers_list[0].loc]
                earliest_end_route = t[customers_list[-1].loc].X + customers_list[-1].job.duration + \
                                     dist[customers_list[-1].loc, k.depot]
                latest_end_route = latest[customers_list[-1].loc] + customers_list[-1].job.duration + \
                                   dist[customers_list[-1].loc, k.depot]

                routes_list.append([route_id, k.name, k.depot, total_travel_time, total_processing_time,
                                    earliest_end_route - earliest_start_route, earliest_start_route,
                                    latest_start_route, earliest_end_route, latest_end_route, len(customers_list)])
        # Convert to dataframe and write to excel
        routes_df = pd.DataFrame.from_records(routes_list, columns=routes_cols)
        routes_df.to_csv('routes.csv', index=False)
        orders_df = pd.DataFrame.from_records(orders_list, columns=orders_cols)
        orders_df.to_csv('orders.csv', index=False)

    # create output files
    create_excel_output()

    m.dispose()
    gp.disposeDefaultEnv()


def print_scen(scen_str):
    s_len = len(scen_str)
    print("\n" + ("*" * s_len) + "\n" + scen_str + "\n" + ("*" * s_len) + "\n")


if __name__ == '__main__':
    # Base model
    print_scen("Solving base scenario model")
    solve_trs0(technicians, customers, dist)

