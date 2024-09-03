# Write your MySQL query statement below
select user_id,
concat(UPPER(LEFT(name,1)), LOWER(Substring(name,2))) as name
from Users
order by user_id asc