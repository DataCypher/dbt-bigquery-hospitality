{{ config(materialized='incremental') }}

SELECT *
FROM {{ ref('int_bookings_enriched') }}

{% if is_incremental() %}
WHERE booking_date > (SELECT MAX(booking_date) FROM {{ this }})
{% endif %}