{{ config(
    materialized='table'
) }}

select * from VWE2.PUBLIC.PREMIUM_CUSTOMER_RESULT

