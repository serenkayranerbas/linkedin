with 

source as (

    select * from {{ source('jobs', 'benefits') }}

),

renamed as (

    select
        job_id,
        inferred,
        type

    from source

)

select * from renamed