with 

source as (

    select * from {{ source('rates_raw', 'open-exchange-raw-rate') }}

),

renamed as (

    select
        currency_code,
        data_base,
        data_timestamps,
        rate,
        _fivetran_deleted,
        _fivetran_synced

    from source

)

select * from renamed
