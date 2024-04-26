

with raw_class as (
    select 
      class_id,
      class_name,
      teachers_id
    from "kapengiria_school"."public"."class"
)
select * from raw_class