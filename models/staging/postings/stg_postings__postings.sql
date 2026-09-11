{{ config(materialized='table') }}
with source as (

    select *
    from {{ source('postings', 'postings') }}

),

renamed as (

    select
        job_id,
        coalesce(company_name, 'Unknown') as company_name,
        title,
        description,
        max_salary,
        coalesce(pay_period, 'Not Specified') as pay_period,
        location,
        med_salary,
        min_salary,
        formatted_work_type,
        job_posting_url,
        application_url,
        application_type,
        coalesce(formatted_experience_level, 'Not Specified') as formatted_experience_level,
        skills_desc,
        coalesce(posting_domain, 'Unknown') as posting_domain,
        sponsored,
        work_type,
        currency,
        compensation_type,
        normalized_salary,
        timestamp_millis(safe_cast(expiry as int64)) as expiry,
        timestamp_millis(safe_cast(original_listed_time as int64)) as original_listed_time,
        timestamp_millis(safe_cast(closed_time as int64)) as closed_time,
        timestamp_millis(safe_cast(listed_time as int64)) as listed_time,
        views,
        applies,
        CASE
            WHEN remote_allowed = 1.0 THEN TRUE
            WHEN remote_allowed = 0.0 THEN FALSE
            ELSE NULL
        END AS remote_allowed,
        zip_code,

        cast(safe_cast(fips as int64) as string) as fips,

        safe_cast(company_id as int64) as company_id

    from source

)

select *
from renamed