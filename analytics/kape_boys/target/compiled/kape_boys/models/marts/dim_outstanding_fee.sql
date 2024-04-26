WITH raw_dim_outstanding_fee AS (
    SELECT
        s.student_id,
        s.first_name,
        s.last_name,
        f.fee_id,
        f.fee_type,
        f.amount,
        f.date_paid
    FROM "kapengiria_school"."public"."stg_students" AS s
    LEFT JOIN "kapengiria_school"."public"."stg_fee" AS f ON s.student_id = f.student_id
)
SELECT
    student_id,
    first_name,
    last_name,
    fee_id,
    fee_type,
    sum(amount) as amount,
    date_paid IS NULL
FROM raw_dim_outstanding_fee
GROUP BY student_id, first_name, last_name, fee_id,fee_type,date_paid,amount
ORDER BY amount DESC