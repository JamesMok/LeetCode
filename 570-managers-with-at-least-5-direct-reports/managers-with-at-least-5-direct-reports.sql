# Write your MySQL query statement below
WITH directs AS(
    select id, name, managerid, count(managerID) as directReports
from employee
group by managerid
)
select e.name from directs d
inner join Employee e on e.id = d.managerID
WHERE d.directReports >= 5