from gurobipy import GRB
import gurobipy as gp
import pandas as pd


P = {'Baltimore', 'Cleveland', 'Little Rock', 'Birmingham', 'Charleston'}
D = {'Columbia', 'Indianapolis', 'Lexington', 'Nashville', 'Richmond', 'St. Louis'}

path = 'https://raw.githubusercontent.com/Gurobi/modeling-examples/master/optimization101/Modeling_Session_1/'
transp_cost = pd.read_csv(path + 'cost.csv')
production = list(transp_cost['production'].unique())
distribution = list(transp_cost['distribution'].unique())
transp_cost = transp_cost.set_index(['production', 'distribution']).squeeze()
max_prod = pd.Series([180, 200, 140, 80, 180], index=production, name='max_prod')
n_demand = pd.Series([89, 95, 121, 101, 116, 181], index=distribution, name='demand')
# min production is a fraction of the max
frac = 0.75


m = gp.Model('more_widgets')

x = m.addVars(production, distribution, name='prod_ship')

can_produce = m.addConstrs(
    (gp.quicksum(x[p, d] for d in distribution) <= max_prod[p]
     for p in production),
    name='can_produce'
)
must_produce = m.addConstrs(
    (gp.quicksum(x[p, d] for d in distribution) >= frac * max_prod[p]
     for p in production),
    name='must_produce'
)
meet_demand = m.addConstrs(
    (x.sum('*', d) >= n_demand[d] for d in distribution),
    name='meet_demand'
)

m.setObjective(
    gp.quicksum(
        transp_cost[p, d] * x[p, d] for p in production for d in distribution),
    GRB.MINIMIZE
)
m.optimize()

x_values = pd.Series(m.getAttr('X', x), name='shipment', index=transp_cost.index)
soln = pd.concat([transp_cost, x_values], axis=1)
obj0 = m.getObjective()
obj0_value = obj0.getValue()

print(f"The original model had a total cost of {round(obj0_value, 2)}")


# Now add constraints:
# If widgets are shipped from p to d, then it must be at least C units.
# --> IF x[p, d] > 0, THEN x[p, d] >= C.
# --> x[p, d] <= 0 OR x[p, d] >= C
# Use two aux variables z1, z2, one for each side of the OR
# x[p, d] <= M1 * z1
# x[p, d] + M2 * z2 >= C
# z1 + z2 == 1      # only one of these conditions can be true
# z1 = 1 - z2
# -->
# x <= M1 * (1 - z)
# x + C * z >= C

z = m.addVars(production, distribution, vtype=GRB.BINARY, name='min_distribution')
min_ship1 = m.addConstrs(
    (x[p, d] <= max_prod[p] * (1 - z[p, d])
     for p in production
     for d in distribution),
    name='min_ship1'
)
C = 30
min_ship2 = m.addConstrs(
    (x[p, d] + (C * z[p, d]) >= C
     for p in production
     for d in distribution),
    name='min_ship2'
)
m.optimize()
soln2 = pd.concat([transp_cost, x_values], axis=1)
obj2 = m.getObjective()
obj2_value = obj2.getValue()
print(f"The next model had a total cost of {round(obj2_value, 2)}")


# Accomplishing this with Gurobi's indicator constraints:
m.remove([min_ship1, min_ship2])
zis1 = m.addConstrs(
    ((z[p, d] == 1) >> (x[p, d] >= C)
     for p in production
     for d in distribution),
    name='zis1'
)
zis0 = m.addConstrs(
    ((z[p, d] == 0) >> (x[p, d] <= 0)
     for p in production
     for d in distribution),
    name='zis0'
)
m.optimize()
soln3 = pd.concat([transp_cost, x_values], axis=1)
obj3 = m.getObjective()
obj3_value = obj3.getValue()
print(f"The next model had a total cost of {round(obj3_value, 2)}")


# Accomplishing this with Gurobi's semi-continuous variables:
# x <= 0 or l <= x <= u
# Either it's off, or if it's on it's constrained

m.remove([zis0, zis1])

m = gp.Model('more_widgets')

x = m.addVars(production, distribution, vtype=GRB.SEMICONT, lb=C, name='prod_ship')
can_produce = m.addConstrs(
    (gp.quicksum(x[p, d] for d in distribution) <= max_prod[p]
     for p in production),
    name='can_produce'
)
must_produce = m.addConstrs(
    (gp.quicksum(x[p, d] for d in distribution) >= frac * max_prod[p]
     for p in production),
    name='must_produce'
)
meet_demand = m.addConstrs(
    (x.sum('*', d) >= n_demand[d] for d in distribution),
    name='meet_demand'
)
m.setObjective(
    gp.quicksum(
        transp_cost[p, d] * x[p, d] for p in production for d in distribution),
    GRB.MINIMIZE
)

m.optimize()

x_values = pd.Series(m.getAttr('X', x), name='shipment', index=transp_cost.index)
soln4 = pd.concat([transp_cost, x_values], axis=1)
obj4 = m.getObjective()
obj4_value = obj4.getValue()
print(f"The next model had a total cost of {round(obj4_value, 2)}")


# Constraining production facilities:
max_prod2 = pd.Series([210, 225, 140, 130, 220], index=production, name='max_production')

m2 = gp.Model('more_widgets2')
x = m2.addVars(production, distribution, name='prod_ship')
can_produce = m2.addConstrs(
    (gp.quicksum(x[p, d] for d in distribution) <= max_prod2[p]
     for p in production),
    name='can_produce'
)
total_cost = gp.quicksum(
    transp_cost[p, d] * x[p, d]
    for p in production
    for d in distribution
)
meet_demand = m2.addConstrs(
    (x.sum('*', d) >= n_demand[d] for d in distribution),
    name='meet_demand'
)
m2.setObjective(total_cost, GRB.MINIMIZE)

m2.optimize()
x_values = pd.Series(m2.getAttr('X', x), name='shipment', index=transp_cost.index)
soln5 = pd.concat([transp_cost, x_values], axis=1)
obj5 = m2.getObjective()
obj5_value = obj5.getValue()
print(f"The next model had a total cost of {round(obj5_value, 2)}")

y = m2.addVars(production, vtype=GRB.BINARY, name='prod_on')
m2.addConstrs(
    (x[p, d] <= y[p] * max_prod2[p]
     for p in production
     for d in distribution),
    name='link_between_x_and_y'
)
m2.update()

m2.optimize()
x_values = pd.Series(m2.getAttr('X', x), name='shipment', index=transp_cost.index)
soln6 = pd.concat([transp_cost, x_values], axis=1)
obj6 = m2.getObjective()
obj6_value = obj6.getValue()
print(f"The next model had a total cost of {round(obj6_value, 2)}")


# Regional restrictions:
# If Charleston is open, then neither of Cleveland or Baltimore can be open
reg_cond = m2.addConstr(
    (y['Charleston'] == 1) >> (y['Cleveland'] + y['Baltimore'] == 0),
    name='regional_production_constraint'
)
m2.optimize()
x_values = pd.Series(m2.getAttr('X', x), name='shipment', index=transp_cost.index)
soln7 = pd.concat([transp_cost, x_values], axis=1)
obj7 = m2.getObjective()
obj7_value = obj7.getValue()
print(f"The next model had a total cost of {round(obj7_value, 2)}")


m2.remove(reg_cond)
m2.setObjective(y.sum(), GRB.MINIMIZE)
m2.optimize()

only_four = m2.addConstr(
    y.sum() == 4,
    name='only_four'
)
m2.setObjective(total_cost, GRB.MINIMIZE)
m2.optimize()


m2.remove(only_four)
# Maximize the minimum number of widgets shipped:
r = m2.addVar(vtype=GRB.INTEGER, name='r')
# min_constr = m2.addConstr(
#     r == gp.min_([x[p, d] for p in production for d in distribution]),
#     name='min_constr'
# )
min_constr = m2.addGenConstrMin(
    r,
    [x[p, d] for p in production for d in distribution],
    name='min_constr'
)
# min_constrs = m2.addConstrs(r <= x[p, d] for p in production for d in distribution, name='min_constr')
m2.setObjective(r, GRB.MAXIMIZE)
m2.optimize()
