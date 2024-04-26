
  create view "kapengiria_school"."public"."stg_class__dbt_tmp"
    
    
  as (
    

with raw_class as (
    select 
      class_id,
      class_name,
      teachers_id
    from "kapengiria_school"."public"."class"
)
select * from raw_class
  );