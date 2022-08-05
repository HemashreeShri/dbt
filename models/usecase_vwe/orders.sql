{{ config(materialized='incremental') }}
select * from "VWE"."PUBLIC"."ORDER_TABLE"