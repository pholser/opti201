from gurobipy import GRB
import gurobipy as gp
import pandas as pd


# read in solar forecast data
path = 'https://raw.githubusercontent.com/Gurobi/modeling-examples/master/optimization101/Modeling_Session_2/'
solar_values_read = pd.read_csv(path + 'pred_solar_values.csv')
solar_values = round(solar_values_read.yhat, 3)
solar_values.reset_index(drop=True, inplace=True)

# read in demand data, where total demand is a fixed building demand
# and an estimated demand based on a proposed schedule for the building
schedule = pd.read_csv(path + 'schedule_demand.csv')
avg_building = pd.read_csv(path + 'building_demand.csv')
total_demand = schedule.sched_demand + avg_building.build_demand
print(f"Total solar generation: {solar_values.sum()}")
print(f"Total demand: {total_demand.sum()}")

# create data for batteries, including: capacity, efficiency, initial charges
batteries = ['Battery0', 'Battery1']
capacity = {'Battery0': 60, 'Battery1': 80}   # kW
p_loss = {'Battery0': 0.95, 'Battery1': 0.9}  # percentage
initial = {'Battery0': 0, 'Battery1': 0}      # kW
time_periods = range(len(solar_values_read))

m = gp.Model()

flow_in = m.addVars(batteries, time_periods, name='flow_in')
flow_out = m.addVars(batteries, time_periods, name='flow_out')
grid = m.addVars(time_periods, name='grid')
state = m.addVars(batteries, time_periods, ub=[capacity[b] for b in batteries for t in time_periods], name='state')
gen = m.addVars(time_periods, name='gen')
zwitch = m.addVars(batteries, time_periods, vtype=GRB.BINARY, name='zwitch')

# Power balance
power_balance = m.addConstrs(
    (gp.quicksum(flow_out[b, t] - (p_loss[b] * flow_in[b, t]) for b in batteries)
     + gen[t]
     + grid[t]
     == total_demand[t]
     for t in time_periods),
    name='power_balance'
)

# Battery state
initial_state = m.addConstrs(
    (state[b, 0] ==
     initial[b]
     + (p_loss[b] * flow_in[b, 0])
     - flow_out[b, 0]
     for b in batteries),
    name='initial_state'
)
subsequent_state = m.addConstrs(
    (state[b, t] ==
     state[b, t - 1]
     + (p_loss[b] * flow_in[b, t - 1])
     - flow_out[b, t - 1]
     for b in batteries
     for t in time_periods if t >= 1),
    name='subsequent_state'
)

# Solar availability
solar_avail = m.addConstrs(
    (flow_in['Battery0', t] + flow_in['Battery1', t] + gen[t]
     <= solar_values[t]
     for t in time_periods),
    name='solar_avail'
)

# Charge/discharge
to_charge = m.addConstrs(
    (flow_in[b, t] <= 20 * zwitch[b, t]
     for b in batteries
     for t in time_periods),
    name='to_charge'
)
or_not_to_charge = m.addConstrs(
    (flow_out[b, t] <= 20 * (1 - zwitch[b, t])
     for b in batteries
     for t in time_periods),
    name='or_not_to_charge'
)

# read in estimated price of electricity for each time period
avg_price = pd.read_csv(path + 'expected_price.csv')
price = avg_price.price

# define a linear expression for total energy purchased from the grid
total_grid = grid.sum()
# define a linear expression for total cost
total_cost = gp.quicksum(avg_price.price[t] * grid[t] for t in time_periods)

# initial objective: min grid purchase
m.setObjective(total_grid, GRB.MINIMIZE)

m.optimize()

# now, minimize total cost
m.setObjective(total_cost, GRB.MINIMIZE)
mp = m.copy()

m.optimize()


# now, multiple objectives of cost and energy purchased
m.setObjectiveN(total_cost, index=0, weight=1, name='total_cost')
m.setObjectiveN(total_grid, index=1, weight=10, name='total_grid')
m.ModelSense = GRB.MINIMIZE

m.optimize()


v = m.addVars(time_periods, vtype=GRB.BINARY, name='v')
# Define a linear expression for the total depth count
total_depth_count = v.sum()
m.addConstrs(
    ((v[t] == 0) >> (state['Battery0', t] >= 0.3 * capacity['Battery0'])
     for t in time_periods),
    name='discharge_depth'
)
m.update()

m.setObjectiveN(total_cost, index=0, priority=2, reltol=0.05, name='cost')
m.setObjectiveN(total_depth_count, index=1, priority=1, reltol=0.2, name='depth_count')
m.setObjectiveN(total_grid, index=2, priority=0, name='grid')


m.optimize()

for i in range(m.NumObj):
    m.params.ObjNumber = i
    print(' ', round(m.ObjNVal, 2), end='')


mm = gp.Model()

flow_in = mm.addVars(batteries, time_periods, name='flow_in')
flow_out = mm.addVars(batteries, time_periods, name='flow_out')
grid = mm.addVars(time_periods, name='grid')
state = mm.addVars(batteries, time_periods, ub=[capacity[b] for b in batteries for t in time_periods], name='state')
gen = mm.addVars(time_periods, name='gen')
zwitch = mm.addVars(batteries, time_periods, vtype=GRB.BINARY, name='zwitch')

# Power balance
power_balance = mm.addConstrs(
    (gp.quicksum(flow_out[b, t] - (p_loss[b] * flow_in[b, t]) for b in batteries)
     + gen[t]
     + grid[t]
     == total_demand[t]
     for t in time_periods),
    name='power_balance'
)

# Battery state
initial_state = mm.addConstrs(
    (state[b, 0] ==
     initial[b]
     + (p_loss[b] * flow_in[b, 0])
     - flow_out[b, 0]
     for b in batteries),
    name='initial_state'
)
subsequent_state = mm.addConstrs(
    (state[b, t] ==
     state[b, t - 1]
     + (p_loss[b] * flow_in[b, t - 1])
     - flow_out[b, t - 1]
     for b in batteries
     for t in time_periods if t >= 1),
    name='subsequent_state'
)

# Solar availability
solar_avail = mm.addConstrs(
    (flow_in['Battery0', t] + flow_in['Battery1', t] + gen[t]
     <= solar_values[t]
     for t in time_periods),
    name='solar_avail'
)

# Charge/discharge
to_charge = mm.addConstrs(
    (flow_in[b, t] <= 20 * zwitch[b, t]
     for b in batteries
     for t in time_periods),
    name='to_charge'
)
or_not_to_charge = mm.addConstrs(
    (flow_out[b, t] <= 20 * (1 - zwitch[b, t])
     for b in batteries
     for t in time_periods),
    name='or_not_to_charge'
)

# define a linear expression for total energy purchased from the grid
total_grid = grid.sum()
# define a linear expression for total cost
total_cost = gp.quicksum(avg_price.price[t] * grid[t] for t in time_periods)

# initial objective: min grid purchase
mm.setObjective(total_grid, GRB.MINIMIZE)

mm.update()

mm.NumScenarios = 4
mm.Params.ScenarioNumber = 0
mm.ScenNName = 'Base model'

price2 = avg_price.price2
mm.Params.ScenarioNumber = 1
mm.ScenNName = 'Increased price'
for t in time_periods:
    grid[t].ScenNObj = price2[t]

capacity2 = {'Battery0': 40, 'Battery1': 64}
mm.Params.ScenarioNumber = 2
mm.ScenNName = 'Low battery'
for b in batteries:
    for t in time_periods:
        state[b, t].ScenNObj = capacity2[b]

solar_values2 = round(
    0.1 * solar_values_read.yhat_lower
    + 0.6 * solar_values_read.yhat
    + 0.3 * solar_values_read.yhat_upper
)
solar_values2[solar_values2 < 0] = 0
mm.Params.ScenarioNumber = 3
mm.ScenNName = 'High solar'
for t in time_periods:
    solar_avail[t].ScenNRhs = solar_values2[t]

mm.write('multi-scenario.lp')
mm.optimize()

for s in range(mm.NumScenarios):
    mm.Params.ScenarioNumber = s
    print(f"Total cost for {mm.ScenNName} is {round(mm.ScenNObjVal, 2)}")

mp.setParam(GRB.Param.PoolSolutions, 250)
mp.setParam(GRB.Param.PoolGap, 0.05)
mp.setParam(GRB.Param.PoolSearchMode, 2)

mp.optimize()

flow_250 = pd.DataFrame()
for i in range(250):
    mp.setParam(GRB.Param.SolutionNumber, i)
    tmp = pd.DataFrame(
        ([b, t, flow_in[b, t].Xn, flow_out[b, t].Xn, i]
         for b in batteries
         for t in time_periods),
        columns=['battery', 'time_period', 'out', 'in', 'scenario']
    )
    flow_250 = pd.concat([flow_250, tmp], axis=0, ignore_index=True)

print(flow_250)
