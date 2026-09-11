{{ config(materialized='table') }}

with benefits as (

    select *
    from {{ ref('stg_jobs__benefits') }}

),

job_industries as (

    select *
    from {{ ref('stg_jobs__job_industries') }}

),

industries as (

    select *
    from {{ ref('stg_mappings__industries') }}

),

job_skills as (

    select *
    from {{ ref('stg_jobs__job_skills') }}

),

salaries as (

    select *
    from {{ ref('stg_jobs__salaries') }}

),

final as (

    select
        b.job_id,
        b.* except(job_id),
        ji.* except(job_id),
        i.industry_name,
        js.* except(job_id),
        s.* except(job_id)

    from benefits as b

    inner join job_industries as ji
        on b.job_id = ji.job_id

    left join industries as i
        on ji.industry_id = i.industry_id

    inner join job_skills as js
        on b.job_id = js.job_id

    inner join salaries as s
        on b.job_id = s.job_id

)

select *
from final