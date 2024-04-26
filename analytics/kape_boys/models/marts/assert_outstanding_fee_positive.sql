select 
   fee_type,
   total_fees_collected
from {{ref('dim_fee')}}
group by 1,2
having total_fees_collected < 0