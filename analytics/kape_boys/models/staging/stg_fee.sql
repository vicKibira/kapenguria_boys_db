{{
    config(materialized='view')
}}
with raw_fee as (
    select
      fee_id,
      student_id,
      fee_type,
      amount,
      date_paid
    from {{source('staging','fee')}}
)
select * from raw_fee