
  create view "kapengiria_school"."public"."dim_sex__dbt_tmp"
    
    
  as (
    

with raw_dim_sex as (
    select
        student_id,
        gender
    from "kapengiria_school"."public"."stg_students"
)
select 
    student_id,
    count(student_id) as num_of_students,
    gender
from raw_dim_sex
group by gender,student_id
  );