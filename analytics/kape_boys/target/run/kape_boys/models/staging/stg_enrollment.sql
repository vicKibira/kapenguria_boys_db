
  create view "kapengiria_school"."public"."stg_enrollment__dbt_tmp"
    
    
  as (
    

with raw_enrollment as (
    select
      enrollment_id,
      student_id,
      class_id,
      academic_year
    from "kapengiria_school"."public"."enrollment"
)
select * from raw_enrollment
  );