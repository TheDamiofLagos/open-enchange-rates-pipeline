with 

source as (

    select * from {{ source('rates_raw', 'open-exchange-raw-currency') }}

),

renamed as (

    select
        code,
        _fivetran_deleted,
        _fivetran_synced,
        name

    from source

)

select * from renamed
