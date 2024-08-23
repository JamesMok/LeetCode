select
    s.user_id,
    round(avg(if(c.action = 'confirmed', 1, 0)), 2) as confirmation_rate
    from Signups s
    left join Confirmations c on c.user_id = s.user_id
    group by s.user_id