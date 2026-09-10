with 

source as (

    select * from {{ source('companies', 'company_industries') }}

),

renamed as (

    select
        company_id,
        industry

    from source

)

select * from renamed