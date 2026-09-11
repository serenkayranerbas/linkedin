{{ config(materialized='table') }}

with jobs_master as (

    select *
    from {{ ref('int_jobs_master') }}

),

skills as (

    select *
    from {{ ref('stg_mappings__skills') }}

),

final as (

    select
        jm.*,
        s.skill_name

    from jobs_master as jm

    inner join skills as s
        on jm.skill_abr = s.skill_abr

)

select *
from final