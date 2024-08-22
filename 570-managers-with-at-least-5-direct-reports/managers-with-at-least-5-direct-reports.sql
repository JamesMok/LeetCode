# Write your MySQL query statement below

select name from employee
where ID in (
    select managerID
    from Employee
    Group by managerID
    HAVING count(*) >= 5
)