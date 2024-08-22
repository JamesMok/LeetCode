# Write your MySQL query statement below
with processtimes as (
    select machine_id, process_id,
    max(case when activity_type = 'end' then timestamp end) -
    min(case when activity_type = 'start' then timestamp end) as process_time
    from Activity
    group by machine_id, process_id
),
average_time as (
    select machine_id,
    avg(process_time) as processing_times
    from processtimes
    group by machine_id
)
select machine_id, 
round(processing_times,3) AS processing_time
from average_time