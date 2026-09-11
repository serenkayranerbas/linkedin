{{ config(materialized='table') }}
with 

source as (

    select * from {{ source('companies', 'employee_counts') }}

),

renamed as (

    select
        company_id,
        employee_count,
        follower_count,
        safe_cast(timestamp_seconds(time_recorded) as datetime) as time_recorded

    from source

)

select * from renamed

