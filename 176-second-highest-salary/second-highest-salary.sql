/* Write your T-SQL query statement below */
select
    max(salary) as SecondHighestSalary 
From
    Employee
where
    Salary != (select max(salary) from employee)