
    
    

select
    grade_id as unique_field,
    count(*) as n_records

from "kapengiria_school"."public"."dim_grades"
where grade_id is not null
group by grade_id
having count(*) > 1


