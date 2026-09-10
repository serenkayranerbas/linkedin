with 

source as (

    select * from {{ source('jobs', 'job_industries') }}

),

renamed as (

    select
        job_id,
        industry_id

    from source

)

select * from renamed