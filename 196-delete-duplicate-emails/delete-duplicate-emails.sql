/* Write your T-SQL query statement below */
DELETE FROM PERSON
WHERE id NOT IN (
    SELECT
        MIN(ID)
    FROM PERSON
    GROUP BY email
)