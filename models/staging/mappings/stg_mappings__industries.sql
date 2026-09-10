with 

source as (

    select * from {{ source('mappings', 'industries') }}

),

renamed as (

    select
        industry_id,
        industry_name

    from source

)

select * from renamed