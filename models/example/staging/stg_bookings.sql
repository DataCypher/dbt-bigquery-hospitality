SELECT
    booking_id,
    customer_id,
    hotel_id,
    DATE(booking_date) AS booking_date,
    DATE(check_in_date) AS check_in_date,
    DATE(check_out_date) AS check_out_date
FROM {{ source('hospitality', 'bookings') }}