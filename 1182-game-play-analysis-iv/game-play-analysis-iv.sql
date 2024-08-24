# Write your MySQL query statement below
With first_logins as (
    select
        player_id,
        min(event_date) as first_login_date
    From
        Activity
    Group by
        player_id
),
ConsecutiveDays as (
    Select 
        f.player_id
    FROM
        first_logins f
    JOIN
        Activity a ON a.player_id = f.player_id 
    WHERE
        a.event_date = DATE_ADD(f.first_login_date, interval 1 day)
)
SELECT
    round(count(distinct c.player_id)/ (select count(distinct player_id) from Activity) ,2) as fraction
FROM
    ConsecutiveDays c
    