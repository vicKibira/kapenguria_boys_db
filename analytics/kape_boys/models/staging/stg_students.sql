{{
    config(materialized='view')
}}

with raw_student as (
    select
       student_id,
       first_name,
       last_name,
       date_of_birth,
       gender,
       address,
       contact_number,
       guardian_name,
       guardian_contact_number
    from {{source('staging','students')}}
)
select * from raw_student