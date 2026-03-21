{% snapshot customer_scd %}

{{
    config(
        target_schema='snapshots',
        unique_key='customer_id',
        strategy='check',
        check_cols=['first_name', 'last_name', 'email']
    )
}}

SELECT * FROM {{ ref('stg_customers') }}

{% endsnapshot %}