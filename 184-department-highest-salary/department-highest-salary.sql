# Write your MySQL query statement below
with deptMaxSalary as (
    select
        departmentId, max(salary) as maxSalary
    from
        Employee
    Group By departmentID
)
select 
    d.name as Department, e.name as Employee, e.salary as Salary
from
    Employee e
inner join 
    department d on e.departmentid = d.id
inner join
    deptMaxSalary dms on dms.departmentID = e.departmentID
    AND
    dms.maxSalary = e.salary