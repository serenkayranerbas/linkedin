--Maaş analizi için gerekli mart modeli

with jobs as (
    select * from {{ ref('int_jobs_master') }}
),

postings as (
    select
        job_id,
        location,
        remote_allowed,
        formatted_experience_level
    from {{ ref('stg_postings__postings') }}
)

select
    jobs.*,
    postings.location,
    postings.remote_allowed,
    postings.formatted_experience_level
from jobs
left join postings
    on jobs.job_id = postings.job_id