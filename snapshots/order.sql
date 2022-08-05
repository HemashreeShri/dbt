{% snapshot order_TABLE_snapshot1 %}

{{
    config(
      target_database='VWE2',
      target_schema='public',
      unique_key='ORDER_ID',

      strategy='timestamp',
      updated_at='ORDER_DATE',
    )
}}

select * from  "VWE2"."PUBLIC"."ORDER_TABLE"
{% endsnapshot %}