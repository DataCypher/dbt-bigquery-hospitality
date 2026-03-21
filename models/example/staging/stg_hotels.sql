SELECT
    hotel_id,
    hotel_name,
    city,
    rating
FROM {{ source('hospitality', 'hotels') }}