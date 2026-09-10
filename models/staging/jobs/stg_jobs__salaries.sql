with 

source as (

    select * from {{ source('jobs', 'salaries') }}

),

renamed as (

    select
        salary_id,
        job_id,
        min_salary,
        max_salary,
        med_salary,
        pay_period,
        currency,
        compensation_type,
        is_foreign_currency,
        is_pay_outlier,
        estimated_annual_salary

    from source

)

select * from renamed