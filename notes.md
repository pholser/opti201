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

