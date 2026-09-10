with 

source as (

    select * from {{ source('companies', 'companies_master') }}

),

renamed as (

    select
        company_id,
        name,
        description,
        company_size,
        state,
        country,
        city,
        zip_code,
        address,
        url,
        industry,
        speciality,
        employee_count,
        follower_count,
        time_recorded

    from source

)

select * from renamed