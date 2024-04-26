select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    class_id as unique_field,
    count(*) as n_records

from "kapengiria_school"."public"."dim_students"
where class_id is not null
group by class_id
having count(*) > 1



      
    ) dbt_internal_test