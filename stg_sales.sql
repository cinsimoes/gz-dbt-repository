-- stg_raw_sales.sql

with

source as (
    SELECT * FROM {{ source('raw', 'sales')}}
),

renamed as (

SELECT
    date_date
    , orders_id
    , pdt_id
    , revenue
    , quantity

FROM source
)

SELECT * FROM renamed