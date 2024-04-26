
  create view "kapengiria_school"."public"."stg_courses__dbt_tmp"
    
    
  as (
    

with raw_course as (
    select
      course_id,
      course_name,
      course_description
    from "kapengiria_school"."public"."course"
)
select * from raw_course
  );