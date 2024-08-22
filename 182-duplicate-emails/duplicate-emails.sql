# Write your MySQL query statement below
select distinct Email 
from 
(select Email, count(email) 
from 
    person 
group by 
    email
having 
    count(email)>1) as a