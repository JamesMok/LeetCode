# Write your MySQL query statement below
select
    class
FROM
    courses
group by 
    class
HAVING
    count(class) >= 5
