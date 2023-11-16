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






