SELECT
    customer_id,
    LOWER(first_name) AS first_name,
    LOWER(last_name) AS last_name,
    email,
    DATE(created_at) AS created_date
FROM {{ source('hospitality', 'customers') }}