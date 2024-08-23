# Write your MySQL query statement below
select
    query_name,
    round(sum(rating/position) / count(query_name) ,2) as quality,
    round(sum(if(rating<3,1,0)) * 100 / count(query_name) ,2) as poor_query_percentage
FROM
    Queries
WHERE
    Query_name is not null
Group By
    query_name