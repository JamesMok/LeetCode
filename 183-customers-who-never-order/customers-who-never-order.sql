# Write your MySQL query statement below
Select 
    name as Customers
From
    Customers
WHERE
    id not in (SELECT distinct customerID from Orders)