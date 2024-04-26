
    
    

select
    fee_id as unique_field,
    count(*) as n_records

from "kapengiria_school"."public"."dim_fee"
where fee_id is not null
group by fee_id
having count(*) > 1


