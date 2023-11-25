# Technician Routing and Scheduling Problem"

**Note**:
This notebook, originally created for opti201 optimization training,
is almost  identical to Gurobi's
[`technician_routing_scheduling`](https://colab.research.google.com/github/Gurobi/modeling-examples/blob/master/technician_routing_scheduling/technician_routing_scheduling.ipynb).
Since an additional post-processing step was required to export the results
into CSV files, and also some slight modifications in the constraints and
objective functions needed to be made, a slightly different file name
is used to differentiate  between the two.

To stay true to the original notebook, changes are only made when absolutely
necessary.

## Objective and Prerequisites
Try this modeling example to discover how mathematical optimization can help
telecommunications firms automate and improve their technician assignment,
scheduling, and routing decisions in order to ensure the highest levels of
customer satisfaction.

This modeling example is at the intermediate level, where we assume that you
know Python and are familiar with the Gurobi Python API. In addition, you
have some knowledge about building mathematical optimization models.
To fully understand the content of this notebook, you should be familiar
with object-oriented-programming.

**Download the Repository**
You can download the repository containing this and other examples by
clicking
[here](https://github.com/Gurobi/modeling-examples/archive/master.zip).

**Gurobi License**
In order to run this Jupyter Notebook properly, you must have a Gurobi
license.  If you do not have one, you can request an
[evaluation license](https://www.gurobi.com/downloads/request-an-evaluation-license/?utm_source=3PW&utm_medium=OT&utm_campaign=WW-MU-TRA-OR-O_LEA-PR_NO-Q3_FY20_WW_JPME_technician-routing-sche-problem_COM_EVAL_GITHUB_&utm_term=technician-routing-scheduling-problem&utm_content=C_JPM) as a *commercial user*, or download a [free license](https://www.gurobi.com/academia/academic-program-and-licenses/?utm_source=3PW&utm_medium=OT&utm_campaign=WW-MU-TRA-OR-O_LEA-PR_NO-Q3_FY20_WW_JPME_technician-routing-sch-problem_ACADEMIC_EVAL_GITHUB_&utm_term=technician-routing-scheduling-problem&utm_content=C_JPM)
as an *academic user*.

## Motivation
The Technician Routing and Scheduling (TRS) is a common problem faced by
telecommunication firms, which must be able to provide services for a large
number of customers. With its limited resources, these firms must try to
deliver timely, affordable and reliable services to maximize customer
satisfaction. The TRS problem involves assignment, scheduling, and routing
of multi-skilled technicians to serve customers with unique priorities,
service time windows, processing times, skills requirements, and geographical
locations.

In the current practice, these decisions are often being made by operators
via heuristics, sometimes manually--and this method can not only be
time-consuming, but may also deviate from optima significantly.

Using mathematical optimization to solve the TRS problem will enable telecom
operators and dispatchers to automate and improve their assignment,
scheduling, and routing decisions, while achieving high customer satisfaction.

## Problem Description
* A telecom firm operates multiple service centers to serve its customers.
* Each service center has its technicians who are dispatched from the service
  center to work on their assigned jobs, and return to the center after all
  the jobs are completed.
* A technician has multiple skills and available working capacity that cannot
  be exceeded during the scheduling horizon.
* A service order/job has a known processing time, a customer-specified time
  window for starting the service, a deadline of completing the service,
  and its skill requirements.
* Depending on the nature of the job (routine maintenance or emergency),
  and relationship with the customer (existing, new), the firm assesses the
  importance of the job and assigns a priority score to it.
* A job is assigned to at most one technician who possesses the required
  skills, but the technician's available capacity during the scheduling
  horizon cannot be exceeded.
* To solve the TRS problem, telecommunications companies must be able to
  simultaneously make three types of decisions:
  1. the assignment of jobs to a technician at all the service centers;
  2. the routing of each technician, i.e. the sequence/order of customers
     for a technician to visit;
  3. the earliest and latest scheduling of jobs, i.e. the earliest and latest
     time for a technician to arrive at a customer location and complete
     the corresponding job.
* The firm’s goal is to maximize the number of jobs completed.
* The following constraints must be satisfied:
  * A technician, if utilized, departs from the service center where he/she
    is based and returns to the same service center after his/her assigned
    jobs are completed.
  * A technician’s available capacity during the scheduling horizon cannot
    be exceeded.
  * A job, if selected, is assigned to at most one technician who possesses
    the required skills.
  * A technician must arrive at a customer location during an interval
    (time window) specified by the customer, and must complete a job before
    the deadline required by the customer. This is an important constraint
    for guaranteeing customer satisfaction.

The above basic TRS is a variant of the multi-depot vehicle routing problem
with time windows, known as the MDVRPTW in the literature [1].

## Solution Approach
Mathematical programming is a declarative approach where the modeler
formulates a mathematical optimization model that captures the key aspects
of a complex decision problem. The Gurobi Optimizer solves such models using
state-of-the-art mathematics and computer science.

A mathematical optimization model has five components, namely:
* Sets and indices.
* Parameters.
* Decision variables.
* Objective function(s).
* Constraints.

To simplify the MIP formulation, we consider that for each job's skill
requirements, we can determine the subset of technicians that are qualified
to perform the job based on the skills that the technicians have.

We now present a MIP formulation for the basic TRS problem.

## Model Formulation

### Sets and Indices

* $j \in J = \{1, 2, ..., n\}$: Index and set of jobs.
* $k \in K$: Index and set of technicians.
* $K(j) \subset K$: Subset of technicians qualified to perform job
  $j \in J$ 
* $d \in D = \{n + 1, n + 2, ..., n + m\}$: Index and set of depots
  (service centers), where $m$ is the number of depots.
* $l, i, j \in L = J \cup D = \{1, 2, ..., n + m}$: index and set
  of locations to visit.

### Parameters
* $\beta_{k, d} \in \{0, 1\}$: This parameter is equal to 1 if technician
  $k \in K$ must depart from and return to depot $d \in D$; and 0 otherwise.
* $p_{j} \in \mathbb{R^{+}}$; Processing time (duration) of job $j \in J$.
* $\tau_{i, j} \in \mathbb{R^{+}}$: Travel time, in minutes, from location
  $i \in L$ to location $j \in L$.
* $W_{k} \in \mathbb{N}$: Workload limit of technician $k \in K$ during
  the planning horizon. That is, the number of hours, in minutes, that
  the technician is available for the next work day.
* $\pi_{j} \in \{1, 2, 3, 4\}$: Priority weight of job $j \in J$, a larger
  number means higher priority.
* $a_{j} \in \mathbb{R^{+}}$: Earliest time to start the service at
  location of job $j \in J$.
* $b_{j} \in \mathbb{R^{+}}$: Latest time to start the service at location
  of job $j \\in J$.
* $M \in \mathbb{N}$: This is a very large number. This number is
  determined as follows: the planning horizon is 10 working hours (i.e.
  600 min). We want the value of $M$ to be an order of magnitude larger
  than the planning horizon. Therefore, we set M = 6100.

### Decision Variables
* $x_{j, k} \in \{0, 1\}$: This variable is equal to 1 if job $j \in J$ is
  assigned to technician $k \in K$, and 0 otherwise.
* $u_{k} \in \{0, 1\}$: This variable is equal to 1 if technician $k \in K$
  is used to perform a job, and 0 otherwise.
* $y_{i, j, k} \in \{0, 1\}$: This variable is equal to 1 if technician
  $k \in K$ travels from location $i \in L$ to location $j \in L$; and 0
  otherwise.
* $t_{j} \geq 0$: This variable determines the time to arrive or start
  the service at location $j \in J$.
* $g_{j}$: This variable is equal to 1 if job $j \in J$ cannot be filled,
  and 0 otherwise.

### Objective Function
- **Minimize Unfilled Jobs:** The objective is to minimize the number of
  jobs that could not be completed on time. We're also interested to get
  the earliest arrival time at each location. So, we minimize the time of
  arrival at each location as well.
\begin{equation}
\sum_{j \in J} \pi_{j} \cdot M \\cdot g_{j} + \sum_{j \in J} 0.01 \cdot M \cdot t_{j}
\tag{0}
\end{equation}

**Note**: We want to treat the constraints about starting the jobs within
a time window as hard constraints. Hard constraints cannot be violated.
We treat the constraints of filling the jobs demand as soft constraints.
Soft constraints can be violated, but the violation will incur a huge
penalty. We assume that not filling jobs demand greatly deteriorates
customer satisfaction, consequently should incur large penalties.
Recall that the value of the parameter $M$ is a large number; then the
penalty associated with not filling a job is determined as follows:
$\pi_{j} \cdot M$.

To get the earliest arrival times of technicians at customer locations,
we also add a term $0.01 \cdot M \cdot t_{j}$.

### Constraints
- **Assign qualified technicians:** For each job, we assign one technician
  who is qualified for the job, or a gap is declared.
\begin{equation}
\sum_{k \in K(j)} x_{j,k} + g_{j} = 1 \quad \forall j \in J
\tag{1}
\end{equation}

**Note**: The penalty of the gap variable $g_{j}$ is ($\pi_{j} \cdot M$)
which is a large number to discourage not being able to satisfy demand.

- **Only one technician:** For each job, we only allow one technician
  to be assigned.
\begin{equation}
\sum_{k \in K} x_{j,k} \leq 1 \quad \forall j \in J
\tag{2}
\end{equation}

- **Technician capacity:** For each technician, we ensure that the
  available capacity of the technician is not exceeded.
\begin{equation}
\sum_{j \in J} p_{j} \cdot x_{j,k} + \sum_{i \in L} \sum_{j \in L} \tau_{i,j} \cdot y_{i,j,k} \leq W_{k} \cdot u_{k} \quad \forall k \in K
\tag{3}
\end{equation}

- **Technician tour:** For each technician and job, we ensure that if the
  technician is assigned to the job, then the technician must travel to
  another location (to form a tour).
\begin{equation}
\sum_{j \in L} y_{i,j,k} = x_{i,k} \quad \forall i \in J, k \in K
\tag{4}
\end{equation}

- For each technician and job, we ensure that if a technician is assigned
  to the job, then the technician must travel from another location to
  the location of the job (to form a tour).
\begin{equation}
\sum_{i \in L} y_{i,j,k} = x_{j,k} \quad \forall j \in J, k \in K
\tag{5}
\end{equation}

- **Same depot:** For each technician and depot, we ensure that a technician,
  if assigned to any job, must depart from and return to the service center
  (depot) where the technician is based.
\begin{equation}
\sum_{j \in J} y_{d,j,k} = \beta_{k,d} \cdot u_{k} \quad \forall k \in K, d \in D
\tag{6}
\end{equation}

\begin{equation}
\sum_{i \in J} y_{i,d,k} = \beta_{k,d} \cdot u_{k} \quad \forall k \in K, d \in D
\tag{7}
\end{equation}

- **Temporal relationship:** For each location and job, we ensure the
  temporal relationship between two consecutive jobs served by the same
  technician. That is, if a technician $k$ travels from job $i$ to job $j$,
  then the start of the service time at job $j$ must be no less than the
  completion time of job $i$ plus the travel time from job $i$ to job $j$.
\begin{equation}
t_{j} \geq t_{i} + p_{i} + \tau_{i,j} - M \cdot (1 - \sum_{k \in K} y_{i,j,k}) \quad \forall i \in L, j \in J
\tag{8}
\end{equation}

**Note**: Observe that if the technician $k$ travels from the location of
job $i$ to the location of job $j$, then $\sum_{k \in K} y_{i,j,k} = 1$.
Therefore, $M \cdot (1 - \sum_{k \in K} y_{i,j,k}) = 0$, and the constraint
$t_{j} \geq t_{i} + p_{i} + \tau_{i,j}$ would be properly enforced.
Now consider the case where the technician $k$ does not travel from the
location of job $i$ to the location of job $j$. Hence,
$\sum_{k \in K}  y_{i,j,k} = 0$ and
$M \cdot (1 - \sum_{k \in K}  y_{i,j,k}) = M$. In this case, this constraint
becomes $t_{j} \geq t_{i} + p_{i} + \tau_{i,j} - M$. But $M$ is a very large
number, then $t_{i} + p_{i} + \tau_{i,j} - M < 0$ and since $t_{j} \geq 0$,
this constraint is redundant.

- **Time window:** For each job $j \in J$ ensure that the time window
  for the job is satisfied.
\begin{equation}
t_{j} \geq a_{j} \quad \forall j \in J
\tag{9}
\end{equation}

\begin{equation}
t_{j} \leq b_{j} \quad \forall j \in J
\tag{10}
\end{equation}

## Problem Instance
In this scenario, we consider the problem of routing and scheduling
technicians for the next work-day in such a way that the delay of customer
appointments is minimized. The telecom firm has seven technicians:
Albert, Bob, Carlos, Doris, Ed, Flor, and Gina. There are two service
centers: Heidelberg and Freiburg im Breisgau. Technicians are based at
only one of these service centers. The number of hours available and the
service center base (depot) for each technician is described in the
following table.

| <i></i> | Albert     | Bob        | Carlos               | Doris                | Ed         | Flor                 | Gina       |
|---------|------------|------------|----------------------|----------------------|------------|----------------------|------------|
| Minutes | 480        | 480        | 480                  | 480                  | 480        | 360                  | 360        |
| Depot   | Heidelberg | Heidelberg | Freiburg im Breisgau | Freiburg im Breisgau | Heidelberg | Freiburg im Breisgau | Heidelberg |

The telecom company has different type of jobs. The following table shows
the priority (4 for the highest priority and 1 for the least important)
and duration (in hours) of a job type.

| <i></i>                   | Priority | Duration (min) |
|---------------------------|----------|----------------|
| Equipment Installation    | 2        | 60             |
| Equipment Setup           | 3        | 30             |
| Inspect/Service Equipment | 1        | 60             |
| Repair - Regular          | 1        | 60             |
| Repair - Important        | 2        | 120            |
| Repair - Urgent           | 3        | 90             |
| Repair - Critical         | 4        | 60             |

The following table shows the jobs that each technician is qualified for.

| <i></i>                   | Albert | Bob | Carlos | Doris | Ed  | Flor | Gina |
|---------------------------|--------|-----|--------|-------|-----|------|------|
| Equipment Installation    | -      | -   | -      | 1     | -   | 1    | 1    |
| Equipment Setup           | 1      | 1   | 1      | 1     | -   | -    | 1    |
| Inspect/Service Equipment | 1      | -   | 1      | -     | 1   | -    | -    |
| Repair - Regular          | -      | 1   | 1      | -     | 1   | 1    | 1    |
| Repair - Important        | -      | -   | -      | 1     | -   | 1    | 1    |
| Repair - Urgent           | -      | 1   | 1      | -     | 1   | 1    | 1    |
| Repair - Critical         | -      | -   | -      | 1     | -   | -    | 1    |

The telecom company receives customers' requests for a specific job type,
appointment (due) time, and the service time window where the technician
can arrive. The following table shows the customers' orders and their
requirements. For each customer, the location is specified.

| <i></i>     | C1:Mannheim     | C2: Karlsruhe   | C3: Baden-Baden  | C4: Bühl               | C5: Offenburg          | C6: Lahr/Schwarzwald | C7: Lörrach               |
|-------------|-----------------|-----------------|------------------|------------------------|------------------------|----------------------|---------------------------|
| Job type    | Equipment Setup | Equipment Setup | Repair - Regular | Equipment Installation | Equipment Installation | Repair - Critical    | Inspect/Service Equipment |
| Due time    | 8:00            | 10:00           | 11:00            | 12:00                  | 14:00                  | 15:00                | 16:00                     |
| Time Window | 7:00-7:30       | 7:30-9:30       | 8:00-10:00       | 9:00-11:00             | 11:00-13:00            | 12:00-14:00          | 13:00-15:00               |

The planning horizon is from 7:00 to 17:00, or 10 hours. The time period
is in minutes, then the due time and time windows will be translated into
minutes starting at 0 minutes and ending at 600 minutes. For example,
for customer C2 the due time is at 10:00  (180 min), and the time window
is from 7:30 to 9:30 (30 min to 150 min).

The following table shows the travel time (in minutes) from any depot
or customer location to any depot or customer location.

| <i></i>              | Heidelberg | Freiburg im Breisgau | Mannheim | Karlsruhe | Baden-Baden | Bühl | Offenburg | Lahr/Schwarzwald | Lörrach |
|----------------------|------------|----------------------|----------|-----------|-------------|------|-----------|------------------|---------|
| Heidelberg           | -          | 120                  | 24       | 50        | 67          | 71   | 88        | 98               | 150     |
| Freiburg im Breisgau | -          | -                    | 125      | 85        | 68          | 62   | 45        | 39               | 48      |
| Mannheim             | -          | -                    | -        | 53        | 74          | 77   | 95        | 106              | 160     |
| Karlsruhe            | -          | -                    | -        | -         | 31          | 35   | 51        | 61               | 115     |
| Baden-Baden          | -          | -                    | -        | -         | -           | 16   | 36        | 46               | 98      |
| Bühl                 | -          | -                    | -        | -         | -           | -    | 30        | 40               | 92      |
| Offenburg            | -          | -                    | -        | -         | -           | -    | -         | 26               | 80      |
| Lahr/Schwarzwald     | -          | -                    | -        | -         | -           | -    | -         | -                | 70      |
| Lörrach              | -          | -                    | -        | -         | -           | -    | -         | -                | -       |

## Python Implementation
We use the following libraries:
* `sys` to access system-specific parameters and functions.
* `pandas` to read data from Excel files.
* `gurobipy` Gurobi Optimizer library.

This implementation is based on object-oriented-programming.

### Helper Classes
The following classes properly organize the input data of the MIP model.
* `Technician`.
* `Job`.
* `Customer`.

### Helper Functions
* `solve_trs0` builds and solves MIP model.
* `get_latest_times` solves for latest arrival times at customer locations,
  given the solution from the MIP model.
* `printScen` prints headings for output reports.

## Scenario
For this scenario, there is enough technician capacity to fill all
customers demand. To run the base scenario, consider the spreadsheet file
`data-Sce0.xlsx` and insert this name when you open the Excel workbook.

## Scenario Analysis
For the base scenario, we have enough technician capacity to satisfy customers demand.
Notice that all jobs were completed and they were completed within time window limits.

The first report describes which technician was assigned to each customer, the location
of the customer, and the start time of the job. The second report describes the route
of each assigned technician. The route defines the *from-location* and the *to-location*.
The parameter *dist* defines the number of minutes that it takes to drive from the
*from-location* to the *to-location*. The parameter t determines the *start-time* of the
job at the *to-location*. The parameter *proc* shows the number of minutes that it takes
the technician to complete the job.

The third report describes the capacity utilization of each technician and the overall
capacity utilization of all technicians. The technician capacity utilization is the number
of minutes the technician spends driving or serving customers, divided by the technician
capacity. The overall capacity utilization of all technicians is the total number of
minutes that all technicians spend driving or serving customers, divided by the total
capacity of all the technicians available.

**Note**: With the current objective function, you can get very different results and all
of them are correct. Because the objective function mainly focuses on minimizing unfilled
demands. So, you can get a solution with 4 routes and another one with 6.

## Conclusion
In this Jupyter Notebook, we formulated and solved a multi-depot vehicle routing problem
with time window constraints using the Gurobi Python API. This MIP formulation is an
optimization application for the telecommunication industry; however, the formulation is
quite general and can easily be adapted to any kind of vehicle routing problems in the
transportation and logistics industries.

The routing and scheduling problem that we tackled considers a telecom firm that operates
multiple service centers to serve its customers. We solved this routing and scheduling
problem by simultaneously making three types of decisions:
- the assignment of jobs to a technician at all the service centers
- the routing of each technician, i.e. the sequence/order of customers for a technician
  to visit
- the scheduling of jobs, i.e. the earliest and latest arrival times for a technician
  to arrive at a customer location and complete the corresponding job.

The objective of the telecom firm is to maximize the total number of completed jobs.

## References
[1] S. Salhi, A. Imran, N. A. Wassan. *The multi-depot vehicle routing problem with
heterogeneous vehicle fleet: Formulation and a variable neighborhood search implementation*.
Computers & Operations Research 52 (2014) 315-325.

Copyright © 2023 Gurobi Optimization, LLC
