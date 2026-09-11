{{ config(materialized='table') }}

with jobs_master as (

    select *
    from {{ ref('int_jobs_master') }}

),

industries as (

    select *
    from {{ ref('stg_mappings__industries') }}

),

final as (

    select
        jm.* except(industry_id),
        jm.industry_id,
        i.industry_name

    from jobs_master as jm

    inner join industries as i
        on jm.industry_id = i.industry_id

)

select *
from final