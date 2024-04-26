{{
    config(materialize='view')
}}

with raw_course as (
    select
      course_id,
      course_name,
      course_description
    from {{source('staging','course')}}
)
select * from raw_course