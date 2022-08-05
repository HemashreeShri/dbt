{% snapshot orders_snapshot_check12 %}

    {{
        config(
          target_schema='public',
          strategy='check',
          unique_key='order_id',
          check_cols=['customer_name','order_date'],
        )
    }}

   select * from  "VWE2"."PUBLIC"."ORDER_TABLE"

{% endsnapshot %}