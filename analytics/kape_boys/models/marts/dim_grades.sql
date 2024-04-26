{{
    config(materialized='view')
}}

WITH raw_dim_grades AS (
    SELECT
        g.grade_id,
        c.course_name,
        g.grade,
        {{ get_grade_marks("grade") }} AS grade_mark
    FROM {{ref('stg_grades')}} AS g
    LEFT JOIN {{ref('stg_courses')}} AS c ON g.course_id = c.course_id
)
SELECT
    grade_id
    course_name,
    AVG(grade_mark) AS avg_grade
FROM raw_dim_grades
GROUP BY course_name,grade_id
