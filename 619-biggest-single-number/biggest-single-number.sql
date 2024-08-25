# Write your MySQL query statement below
Select
    max(single) as num
    from 
    (SELECT num as single from MyNumbers group by num having count(num) = 1) as singles