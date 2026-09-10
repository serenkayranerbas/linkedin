with 

source as (

    select * from {{ source('companies', 'companies') }}

),

renamed as (

    select
        company_id,
        name,
        description,
        COALESCE(CAST(company_size AS STRING), 'Unknown') AS company_size,
        state,
        country,
        city,
        zip_code,
        address,
        url

    from source

)

select * from renamed