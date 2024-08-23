# Write your MySQL query statement below
select
    project_id,
    round(sum(e.experience_years) / count(p.project_id), 2) as average_years
FROM
    Project p
JOIN
    Employee e ON p.employee_id = e.employee_id
GROUP BY
    project_id