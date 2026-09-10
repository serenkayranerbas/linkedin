with 

source as (

    select * from {{ source('mappings', 'skills') }}

),

renamed as (

    select
        skill_abr,
        skill_name

    from source

)

select * from renamed