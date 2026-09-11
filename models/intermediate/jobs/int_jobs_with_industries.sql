{{ config(materialized='table') }}

with job_industries as (

    select *
    from {{ ref('stg_jobs__job_industries') }}

),

industries as (

    select *
    from {{ ref('stg_mappings__industries') }}

),

final as (

    select
        ji.job_id,
        ji.industry_id,
        i.industry_name
    from job_industries ji
    left join industries i
        on ji.industry_id = i.industry_id

)

select *
from final