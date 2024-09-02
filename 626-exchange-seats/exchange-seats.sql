# Write your MySQL query statement below
select 
CASE
    WHEN MOD(id, 2) = 1 and id + 1 <= (SELECT Max(id) from Seat) then id + 1
    WHEN MOD(id, 2) = 0 then id - 1
    ELSE ID
END as id,
  student
from seat
order by id asc