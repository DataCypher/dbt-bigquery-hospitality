SELECT DISTINCT
    hotel_id,
    hotel_name,
    city,
    rating
FROM {{ ref('stg_hotels') }}