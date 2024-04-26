
  create view "kapengiria_school"."public"."dim_students__dbt_tmp"
    
    
  as (
    with raw_dim_students as (
    select
        c.class_name,
        c.class_id,
        SUM(e.student_id) as students_per_class
    from "kapengiria_school"."public"."stg_class" as c
    left join "kapengiria_school"."public"."stg_enrollment" as e on c.class_id = e.class_id
    group by c.class_name, c.class_id
)

select * from raw_dim_students
  );