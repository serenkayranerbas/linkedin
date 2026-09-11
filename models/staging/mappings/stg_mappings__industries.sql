with 

source as (

    select * from {{ source('mappings', 'industries') }}

),

renamed as (

    select
        industry_id,
        coalesce( industry_name, 'Unknown') as  industry_name

    from source

)

select * from renamed