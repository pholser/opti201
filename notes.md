Modeling logic using binary variables
-----

e.g. linking the opening of a production facility to the number of widgets
produced there and shipped to other locations

-- if widgets are produced in a facility, then it must be open

-- De Morgan's laws:
   -- NOT (a AND b) == NOT a OR NOT b
   -- NOT (a OR b) == NOT a AND NOT b
-- Contrapositive:
   -- IF a THEN B == IF NOT b THEN NOT a
-- IF a THEN B == (NOT a) OR b

x[p, d] = number of widgets produced at production facility p
          and shipped to distribution facility d

y[p] = 1 if we decide to open production facility p, 0 else

--> x[p, d] <= M * y[p], forall p, d, and large enough M
(maybe set M = max of the production capabilities among the p)


-- e.g. a shipment must be at least C units:
--> x[p, d] >= C
  *** no, that requires every p to ship >= C to every d

mean to say: If widgets are shipped from p to d, then it must be
at least C units


For set of decision vars {x[1], x[2], ..., x[n]}:

* Relate a decision var y to max[i] { x[i] }
** To say y >= max[i] { x[i] }, this means y >= all x[i]
    y >= x[1] AND y >= x[2] AND ... AND y >= x[n]
** To say y <= max[i] { x[i] }, this means y <= at least one x[i]
    y <= x[1] OR ... OR y <= x[n]
** To say y == max[i] { x[i] }, both of above hold

* Relate a decision var y to min[i] { x[i] }

* Absolute value of a decision var
** abs(x) <= C
    x <= C AND x >= -C
** abs(x) >= C
    x >= C OR x <= -C

* Set of j alternative constraints, and a subset of k < j constraints:

f_1(x^) <= r_1 + M * z_1
f_2(x^) <= r_2 + M * z_2
...
f_j(x^) <= r_j + M * z_j    (z are binary variables)

can control the number and specific constraints that are enforced
* At most k constraints can be violated
    sum(z^) <= k
* At least k constraints must be violated
    sum(z^) >= k
* Exactly k constraint violations:
    sum(z^) == k


Hidden gems:
-----
Math optimization guarantees, when it successfully completes:
* The solution is feasible w/r/t your constraints
* The solution is globally optimal

Linear programs are typically easy to solve

Mixed integer programs can be difficult to solve

Solving a MIP involves solving many LPs, commonly with
**branch-and-bound**
* Relaxing MIPs to become LPs
* "Branching" on decision vars that are not integer, but should be
  (e.g y = 3.5)
* Add constraints to two new LPs (y <= 3, y >= 4), solve more
* Determining upper and lower bounds on optimal objective value
* Pruning branches that cannot improve the objective value

Need to find ways to balance speed and quality of solution
* **MIP gap** provides a measure of how far away a current solution
  may be from optimal
* **Warm starts* give MIP a (hopefully good) place to start

Defining MIP gap for maximization problems:
* Integer solutions provide **lower bounds** on an overall optimal
  objective value
* Denote current best solution by __z_sol__
* The optimal objective value for a MIP will always be <=
  the optimal objective value of its relaxation
* The sub-LPs become more restricted; their optimal objective values
  will tend to decrease, but won't increase
* Denote the greatest of these **upper bounds** among active branches
  by __z_bound__
* Then MIP gap = abs(z_bound - z_sol) / z_sol
* If the current best solution is suboptimal (or we don't know it is
  optimal), this provides an upper bound on how far the solution can be
  from optimal
* Useful as a stopping criteria for "good enough"

Variable start (warm start):
* Take advantage of previous solutions, model insight, and
  subject-matter expertise to improve performance
* e.g. Rolling horizon planning application:
** Run 1: Create a 6-month plan (Jan-Feb-Mar-Apr-May-Jun)
** Run 2: Redo plan starting in 2nd month (Feb-Mar-Apr-May-Jun-Jul)
* Reduce solve times by specifying values for overlap (Feb-Jun)
  in the solver

Handling competing objectives:
* Real-world optimization problems often have multiple, competing
  objectives
** e.g. max profit, and min late orders
** e.g. min shift count, max worker satisfaction
** e.g. min production cost, max product durability
** e.g. max portfolio profit, min risk
** e.g. opti101 electricity example
-- min electricity purchased thru the grid using solar panels and batteries
-- second objective: given expected prices, min total cost of electricity
   purchased
-- exercises added constraints around batteries' **depth of discharge**
   to consider battery health

Another objective or another constraint?
* define battery health = # of time periods a battery is below a certain
    depth
* binary decision var v_{b,t} = 1 iff battery is below depth
  --> sum{b,t}( v{b, t} ) <= C_b    # constraints
  --> or, min sum{b,t}( v{b, t} )   # objective

How does Gurobi handle the trade-offs?
* Weighted: Optimize a weighted linear combination of the individual
    objectives
** Simple to implement
** But minor weight changes may lead to significant soln changes
min w^T * [f_1(x)  f_2(x)  f_3(x)] s.t. Ax >= b

* Hierarchical/lexicographical: Optimize each objective in a priority
    order while limiting the degradation of the higher-prio objectives
z_1* = min f_1(x) s.t. Ax >= b
...
z_2* = min f_2(x) s.t. Ax >= b, f_1(x) <= z_1* + ep_1
...
z_3* = min f_3(x) s.t. Ax >= b, f_1(x) <= z_1* + ep_1, f_2(x) <= z_2* + ep_2

Handling multiple scenarios:
* "What-if" planning
* What if shipping costs or shipping options change?
* What if we need to make budget cuts?
* What if we get additional budget?
* What if potential production locations aren't approved in time?
* What if proposed environmental regulations are passed?

We can answer these types of questions by changing:
* Linear objective function coefficients
* Variable lower and upper bounds 
* Linear constraint RHS values

Multiple scenarios API:
* Base model: min c^T * x s.t. Ax = b, l <= x <= u
  (this can be any single-objective model handled by Gurobi)
* Model.NumScenarios = 3
* Model.ScenarioNumber = 0 --> change the linear objective coefficients
    x.ScenNObj = c'
* Model.ScenarioNumber = 1 --> change variable bounds
    x.ScenNLB = l'    x.ScenNUB = u'
* Model.ScenarioNumber = 2 --> change linear constraints RHS
  (Ax=b).ScenNRHS = b'
* Model.Optimize()
    Gurobi works on solving scenarios simultaneously,
    reducing the overall completion time
* Model.ScenNObjVal, Model.ScenNObjBound, x.ScenNX

Gathering multiple solutions:
* Having only one optimal solution can seem stressful
* Optimize, and bring some close friends
** Some preferences may not be quantifiable
** Compare alternatives to the optimal soln
** Gives a greater feeling of control
** Identify any missing model elements
* Define a **solution pool** and report multiple solutions
  automatically, efficiently after a single run
* There are some subtleties and limitations here:
  -- e.g. continuous variables: multiple equivalent solutions
     will not be reported per our definitions

PoolSearchMode = 0:
  Stores all solutions found in the regular optimization.
  No additional tree search performed.
PoolSearchMode = 1, PoolSolutions = n:
  Stores (n - 1) additional solutions to the optimal solution.
PoolSearchMode = 2, PoolSolutions = n, PoolGap = g:
  Stores (n - 1) best solutions with a MIP gap < g% in addition
  to the optimal solution. Requires exploring the tree search more
  than PoolSearchMode = 1.

Multi-scenarios API has some restrictions:
Cannot:
* Add/remove variables or constraints
* Change a variable's type
* Change the sense of constraints

* To remove a variable, set its bounds to zero

* To add a variable to a scenario, add it to the base model with zero bounds
  then change the bounds accordingly

* To remove a constraint, change its RHS to +/- GRB.INFINITY


gurobipy-pandas
=====
Optimization problems define all data, variables, and constraints over
*indexes*, e.g. (0-1 knapsack)

    $$max \sum_{i \in I} c_i x_i
    s.t. \sum_{i \in I} a_i x_i \leq b
         x_i \in \{0, 1\} \forall i \in I$$

These mathematical indexes provide a clear way to structure data in code.

Pandas DataFrame and Series already define *data* over indexes:

```python
    import numpy as np
    import pandas as pd

    df = pd.DataFrame(
        index=pd.RangeIndex(4, name='i'),
        columns=['a', 'b'],
        data=np.random.random((4, 2)).round(2)
    )
```

We need a way to *define variables* and *build constraints* over the same
indexes.

`gurobipy-pandas` provides:
* Methods to create pandas-indexes series of variables
* Methods to build constraints from expressions
* Accessors to extract solutions as pandas structures

`pandas` provides:
* Existing algebraic/split-apply-combine logic
* Well-known syntax and methods

Installation: `$ pip install gurobipy-pandas`

```python
    import pandas as pd
    import gurobipy as gp
    from gurobipy import GRB
    import gurobipy_pandas as gppd

    # Handy trick for live coding, not for production
    gppd.set_interactive()

    # Quiet please
    gp.setParam('OutputFlag', 0)
```

Usage:
* `gurobipy` is the entry point for:
  - creating models
  - starting optimization
  - constants, status codes, etc.

* `gurobipy-pandas` provides accessors and functions to:
  - create sets of variables based on indexes
  - create constraints based on aligned series
  - extract solutions as series

```python
    m = gp.Model()
```

Creating variables:
* Use the free function `gppd.add_vars`
  - Creates one variable per entry in index
  - Returns a pandas Series of gurobipy Var objects
  - Variable names are based on index values
  - Variable attributes can be set

```python
    i = pd.RangeIndex(5, name='i')

    x = gppd.add_vars(m, i, name='x', vtype=GRB.BINARY)
```

* Using the `DataFrame.gppd` accessor
  - A new DataFrame is returned with an appended column of Vars
  - Variable attributes can be populated from DataFrame columns

```python
    data = pd.DataFrame(
        index=pd.RangeIndex(3, name='i'),
        data=[1.4, 0.2, 0.7],
        columns=['u']
    )

    variables = data.gppd_add_vars(
        m,
        name='y',
        ub='u'
    )
```

* Creating expressions
  - Pandas handles this for us
  - We always leverage pandas-native functions
  - Common operations:
    - Summation
    - Arithmetic operations
    - Group-by (split-apply-combine) operations

Single indexes:
-----
Consider an index $i \in I$, some variables $x_i$, and some data $c_i.

```python
    i = pd.RangeIndex(5, name='i')

    x = gppd_add_vars(m, i, name='x')

    c = pd.Series(index=i, name='c', data=np.arange(1, 6))
```

Arithmetic with scalars: $2x_i + 5 \forall i \in I$
```python
    2*x + 5
```
* Produces a new Series on the same index
* One linear expression per entry in the index

Summation: $\sum_{i} x_i$
```python
    x.sum()
```
* Produces a single linear expression
* Sums the whole series over the index

Arithmetic with series: $c_i x_i \forall i \in I$
```python
    c * x
```
* Produces a new series on the same index
* Pointwise product for each entry in the index

Summing the result: $\sum_{i} c_i x_i$
```python
    (c * x).sum()
```
* Produces a single linear expression
* Take our pointwise product series, sum over the index

Hopefully this looks familiar. Any operation you would do with data in pandas,
you can do in the same way with data and variables.

Multi-index:
* Allows us to add dimension for data and variables
* Start with an example DataFrame, representing the data $p_{ij}$

```python
    data = pd.DataFrame({
        'i': [0, 0, 1, 2, 2],
        'j': [1, 2, 0, 0, 1],
        'p': [0.1, 0.6, 1.2, 0.4, 0.9]
    }).set_index(['i', 'j'])
```

Add corresponding variables $y_{ij}$ as a series:
```python
    y = gppd.add_vars(m, data, name='y')
```

Grouped summation: $\sum_{i \in I} y_{ij} \forall j \in J$
```python
    y.groupby('j').sum()
```
* For each $j$, sum $y_{ij}$ terms over all corresponding valid $i$ values
* Produce a Series of linear expressions, indexed by $j$

Align data on partial indexes: $c_j y_{ij} \forall i, j$
* For each $y_ij$ and $c_j$, join on the corresponding $j$
* Pandas defines how this alignment is done
* Index _names_ are important
```python
    c = pd.Series(index=pd.RangeIndex(3, name='j'),
                  data=[1.0, 2.0, 3.0],
                  name='c')

    c * y
```

Pandas arithmetic:
* Pandas aligns before applying arithmetic operators
* Because pandas performs all the alignment, it follows pandas' defined
  behavior:
  - Joining
  - Matching
  - Aligning
  - Broadcasting

* Lastly: $\sum_{j \in J} c_j y_{ij} \forall i \in I$
  - Use the series $c * y$
  - Apply the same groupby-aggregate operation as before
  - Result is a series indexed by $i$
```python
    (c * y).groupby('i').sum()
```

Creating constraints:
* Indexes must align between two series
* Aim to build vectorized constraints -- no manual iteration
e.g. $\sum_{j \in J} c_j y_{ij} \leq b_i \forall i \in I$
```python
    (c * y).groupby('i').sum()
    b = pd.Series(index=pd.RangeIndex(3, name='i'),
                  data=[1, 2, 3])
```

Using free functions:
* `gppd.add_constrs`
* Returns a series of constraint handles
```python
    constraints = gppd.add_constrs(
        m,
        (c * y).groupby('i').sum(),
        GRB.LESS_EQUAL,
        b,
        name='constr'
    )
```

Inspecting the result:
* Check linear terms using `model.getRow`
* Coefficients in the `RHS` attribute
```python
    constraints.apply(model.getRow)

    constraints.gppd.RHS
```

Missing data:
* Unaligned data is filled in arithmetic operations
* Missing data is represented using `NaN`s

Using `DataFrame.gppd` accessors:
* Enables method chaining
* Uses pandas `eval`-like syntax
* One constraint added per row
```python
    data = pd.DataFrame({
        'i': [0, 0, 1, 2, 2],
        'j': [1, 2, 0, 0, 1],
        'p': [0.1, 0.6, 1.2, 0.4, 0.9]
    }).set_index(['i', 'j'])

    vars_and_constrs = (
        data.gppd.add_vars(m, name='y')
            .gppd.add_vars(m, name='z')
            .gppd.add_constrs(m, 'y + z <= 1', name='c1')
    )
```

Setting the objective:
* Objectives are set from single expressions
* No `gurobipy-pandas` method here (no vectorized operations)
```python
    m.setObjective(y.sum(), sense=GRB.MAXIMIZE)
    m.update()
```

Extracting solutions:
* In `gurobipy`, solutions are retrieved from the `X` attributes of
  Vars
* `gppd` Series accessor vectorizes this operation
* Works for any attribute (bounds, coefficients, RHS, etc.)
* Returns a Series on the same index
```python
    m.optimize()

    y.gppd.X
```

Example:
* Given a set of projects $i \in I$ and teams $j \in J$
* Project $i$ requires $w_i$ resources to complete
* Each team has capacity $c_j$
* If team $j$ completes project $i$, we profit $p_{ij}$
* Goal: maximize the value of completed projects, while respecting team
  capacities

The data:
* _Before_ taking any modeling steps, prepare your data properly
* Clearly define your model indexes; align DataFrames to these indexes
* Keep data reading and cleaning separate from model building

```python
    projects = pd.read_csv('projects.csv', index_col='project')
    teams = pd.read_csv('teams.csv', index_col='team')
    project_values = pd.read_csv('project_values.csv',
                                 index_col=['project', 'team'])
```

Sparsity:
* Note that the model is not defined over all $(i, j)$ pairs
* Not all teams can complete all projects
* Structure of the data matches the model

Define variables and objective:
* Maximize total value of completed projects

    $$max \sum_{i \in I} \sum_{j \in J} p_{ij} x_{ij}
      s.t. x_{ij} \in \{0, 1\} \forall (i, j)$$

```python
model = gp.Model()
model.ModelSense = GRB.MAXIMIZE
x = gpdd.add_vars(model, project_values, vtype=GRB.BINARY, obj='profit'
                  name='x')
```

Capacity constraint:
* Assigned projects are limited by team capacity:

    $$\sum_{i \in I} w_i * x_{ij} \leq c_j \forall j \in J$$

* Each project is allocated at most once:

    $$\sum_{j \in J} x_{ij} \leq 1 \forall i \in I

```python
    capacity_constraints = gppd.add_constrs(
        model,
        (
            (projects['resource'] * x)
            .groupby('team')
            .sum()
        ),
        GRB.LESS_EQUAL,
        teams['capacity'],
        name='capacity'
    )

    allocate_once = gppd.add_constrs(
        model,
        x.groupby('project').sum(),
        GRB.LESS_EQUAL,
        1.0,
        name='allocate_once'
    )

    model.optimize()

    x.gppd.X   # retrieve values of solution
```

