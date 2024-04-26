
    
    

select
    student_id as unique_field,
    count(*) as n_records

from "kapengiria_school"."public"."dim_fee"
where student_id is not null
group by student_id
having count(*) > 1


