select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    fee_id as unique_field,
    count(*) as n_records

from "kapengiria_school"."public"."dim_fee"
where fee_id is not null
group by fee_id
having count(*) > 1



      
    ) dbt_internal_test