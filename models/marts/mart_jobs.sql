with jobs as (
    select * from {{ ref('int_jobs_master') }}
),


skills as (
    select * from {{ ref('int_jobs_skills_master') }}
)

select
    jobs.*,
    skills.skill_name
from jobs
left join skills on jobs.job_id = skills.job_id