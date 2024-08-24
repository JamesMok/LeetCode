# Write your MySQL query statement below
with first_orders AS (
    select customer_id, min(order_date) as first_order
    from Delivery
    group by customer_id
),
immediate_orders AS (
    select d.customer_id
    from Delivery d
    Join first_orders fo on  d.customer_id = fo.customer_id and d.order_date = fo.first_order
    where fo.first_order = d.customer_pref_delivery_date
)
Select
    ROUND(count(i.customer_id)/(SELECT count(*) from first_orders) * 100 ,2)  as immediate_percentage 
    FROM
        immediate_orders i