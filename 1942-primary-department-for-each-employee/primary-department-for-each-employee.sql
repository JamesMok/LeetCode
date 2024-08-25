# Write your MySQL query statement belows

select employee_id, department_id
from employee
where primary_flag = 'Y'
union
(Select employee_id, department_id
from Employee
group by employee_id
having count(primary_flag) = 1)

order by employee_id asc