select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    student_id as unique_field,
    count(*) as n_records

from "kapengiria_school"."public"."dim_outstanding_fee"
where student_id is not null
group by student_id
having count(*) > 1



      
    ) dbt_internal_test