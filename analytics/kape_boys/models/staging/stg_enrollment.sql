{{
    config(materialized='view')
}}

with raw_enrollment as (
    select
      enrollment_id,
      student_id,
      class_id,
      academic_year
    from {{source('staging','enrollment')}}
)
select * from raw_enrollment