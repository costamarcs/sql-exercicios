-- Datas já estão no formato correto

with full_table as (
select 
  age.age_bucket,
  sum(case when activity_type = 'send' then time_spent else 0 end) as send_time,
  sum(case when activity_type = 'open' then time_spent else 0 end) as open_time,
  sum(case when activity_type in ('send', 'open') then time_spent else 0 end) as total
from activities as act
left join age_breakdown as age -- Evitando qualquer possibilidade perca de informações
on act.user_id = age.user_id
group by age_bucket
)
select 
  age_bucket,
  round(100.0*send_time/total, 2) as send_perc,
  round(100.0*open_time/total, 2) as open_perc
from full_table