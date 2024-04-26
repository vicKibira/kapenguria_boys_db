
  create view "kapengiria_school"."public"."stg_grades__dbt_tmp"
    
    
  as (
    

with raw_grades as (
    select
       grade_id,
       student_id,
       course_id,
       class_id,
       grade,
       exam_date
    from "kapengiria_school"."public"."grades"
)
select * from raw_grades
  );