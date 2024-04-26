{{
    config(materialized='view')
}}

with raw_class as (
    select 
      class_id,
      class_name,
      teachers_id
    from {{source('staging','class')}}
)
select * from raw_class