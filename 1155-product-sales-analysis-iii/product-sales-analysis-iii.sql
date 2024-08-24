# Write your MySQL query statement below
WITH first_year_product as (
    select 
        product_id,
        min(year) as first_year
    from
        sales
    group by
        product_id
)

select
    f.product_id,
    f.first_year,
    s.quantity,
    s.price
from
    first_year_product f
join
    Sales s ON f.product_id = s.product_id and f.first_year = s.year