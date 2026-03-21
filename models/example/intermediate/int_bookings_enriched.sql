SELECT
    b.*,
    c.first_name,
    c.last_name,
    h.hotel_name,
    h.city,
    h.rating,
    
    DATE_DIFF(check_out_date, check_in_date, DAY) AS stay_duration

FROM {{ ref('stg_bookings') }} b
LEFT JOIN {{ ref('stg_customers') }} c
    ON b.customer_id = c.customer_id
LEFT JOIN {{ ref('stg_hotels') }} h
    ON b.hotel_id = h.hotel_id