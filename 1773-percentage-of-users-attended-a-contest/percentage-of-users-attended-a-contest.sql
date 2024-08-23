# Write your MySQL query statement below
Select
    contest_id,
    round(count(contest_id)/ (select count(*) from users) * 100 ,2) as percentage
FROM Register
GROUP BY
    contest_id
ORDER BY
    percentage desc, contest_id asc