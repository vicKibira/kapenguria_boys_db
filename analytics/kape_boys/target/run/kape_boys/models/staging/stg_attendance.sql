
  create view "kapengiria_school"."public"."stg_attendance__dbt_tmp"
    
    
  as (
    

with raw_attendance as (
    select 
       attendance_id,
       student_id,
       class_id,
       date,
       attendance_status
    from"kapengiria_school"."public"."attendance"
)

select * from raw_attendance
  );