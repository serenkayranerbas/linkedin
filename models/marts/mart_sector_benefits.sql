with jobs as (
    select * from {{ ref('mart_jobs') }}
),

benefits as (
    select * from {{ ref('stg_jobs__benefits') }}
)

select
    jobs.*,
    benefits.type as benefit_type
from benefits
left join jobs
    on benefits.job_id = jobs.job_id