# Write your MySQL query statement below
-- Find products that haven't had a price change before '2019-08-16' and set their price to 10.
SELECT DISTINCT
    product_id,
    10 AS price
FROM
    Products
WHERE
    product_id NOT IN (
        SELECT DISTINCT
            product_id
        FROM
            Products
        WHERE
            change_date <= '2019-08-16'
    )
    
UNION

-- Find the most recent price for products that have had a price change before '2019-08-16'.
SELECT
    product_id,
    new_price AS price
FROM
    Products
WHERE
    (product_id, change_date) IN (
        SELECT
            product_id,
            MAX(change_date) AS date
        FROM
            Products
        WHERE
            change_date <= '2019-08-16'
        GROUP BY
            product_id
    );