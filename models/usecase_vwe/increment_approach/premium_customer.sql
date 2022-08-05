{{ config(materialized = 'incremental', unique_key = 'CUSTOMER_ID') }}

SELECT * FROM "VWE"."PUBLIC"."PREMIUM_CUSTOMER"