{{
    config(materialized='view')
}}

with raw_grades as (
    select
       grade_id,
       student_id,
       course_id,
       class_id,
       grade,
       exam_date
    from {{source('staging','grades')}}
)
select * from raw_grades