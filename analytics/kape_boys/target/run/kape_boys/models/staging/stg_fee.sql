
  create view "kapengiria_school"."public"."stg_fee__dbt_tmp"
    
    
  as (
    
with raw_fee as (
    select
      fee_id,
      student_id,
      fee_type,
      amount,
      date_paid
    from "kapengiria_school"."public"."fee"
)
select * from raw_fee
  );