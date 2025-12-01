with

source as (
    select * from {{ ref('raw_airport') }}
),

renamed as (
    select
        airport_id as airport_id,
        name as airport_name,
        longitude as longitude,
        latitude as latitude
    from source
)
select * from renamed