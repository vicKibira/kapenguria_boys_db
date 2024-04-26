
  create view "kapengiria_school"."public"."stg_teachers__dbt_tmp"
    
    
  as (
    

with raw_teacher as (
    select
      teachers_id,
      first_name,
      last_name,
      date_of_birth,
      gender,
      address,
      contact_number,
      subjects_taught
    from "kapengiria_school"."public"."teachers"
)
select * from raw_teacher
  );