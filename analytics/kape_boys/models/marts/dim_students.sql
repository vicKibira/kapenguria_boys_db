with raw_dim_students as (
    select
        c.class_name,
        c.class_id,
        SUM(e.student_id) as students_per_class
    from {{ref('stg_class')}} as c
    left join {{ref('stg_enrollment')}} as e on c.class_id = e.class_id
    group by c.class_name, c.class_id
)

select * from raw_dim_students
