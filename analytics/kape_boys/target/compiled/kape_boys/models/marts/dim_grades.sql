

WITH raw_dim_grades AS (
    SELECT
        g.grade_id,
        c.course_name,
        g.grade,
        
        0
     AS grade_mark
    FROM "kapengiria_school"."public"."stg_grades" AS g
    LEFT JOIN "kapengiria_school"."public"."stg_courses" AS c ON g.course_id = c.course_id
)
SELECT
    grade_id
    course_name,
    AVG(grade_mark) AS avg_grade
FROM raw_dim_grades
GROUP BY course_name,grade_id