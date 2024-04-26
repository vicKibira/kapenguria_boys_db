
  create view "kapengiria_school"."public"."dim_high_low_grades__dbt_tmp"
    
    
  as (
    

with dim_high_low_grades as (
    select
        s.student_id,
        s.first_name,
        s.last_name,
        g.grade,
        
        0
     as grade_mark
    from "kapengiria_school"."public"."stg_students" as s
    inner join "kapengiria_school"."public"."stg_grades" as g on s.student_id = g.student_id
)
select
    student_id,  -- Removed 's.' prefix
    first_name,  -- Removed 's.' prefix
    last_name,   -- Removed 's.' prefix
    grade,
    max(grade_mark) as highest_grade,
    min(grade_mark) as lowest_grade
from dim_high_low_grades
group by student_id, first_name, last_name, grade  -- Corrected 's.student_id' to 'student_id'
order by highest_grade desc, lowest_grade asc
limit 1
  );