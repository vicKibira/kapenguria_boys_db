

with raw_dim_fee as (
    select 
       fee_id,
       student_id,
       fee_type,
       amount
    from "kapengiria_school"."public"."stg_fee"
)
select 
   student_id,
   fee_type,
   sum(amount) as total_fees_collected
from raw_dim_fee
group by student_id, fee_type
order by total_fees_collected desc