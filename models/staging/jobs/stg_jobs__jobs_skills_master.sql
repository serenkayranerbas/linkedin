with 

source as (

    select * from {{ source('jobs', 'jobs_skills_master') }}

),

renamed as (

    select
        job_id,
        inferred,
        type,
        industry_id,
        skill_abr,
        salary_id,
        min_salary,
        max_salary,
        med_salary,
        pay_period,
        currency,
        is_foreign_currency,
        is_pay_outlier,
        estimated_annual_salary,
        skill_name

    from source

)

select * from renamed