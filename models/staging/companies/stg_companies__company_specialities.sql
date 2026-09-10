with 

source as (

    select * from {{ source('companies', 'company_specialities') }}

),

renamed as (

    select
        company_id,
        speciality

    from source

)

select * from renamed