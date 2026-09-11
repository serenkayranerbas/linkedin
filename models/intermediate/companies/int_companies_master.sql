{{ config(materialized='table') }}

with companies as (

    select * from {{ ref('stg_companies__companies') }}

),

company_industries as (

    select * from {{ ref('stg_companies__company_industries') }}

),

company_specialities as (

    select * from {{ ref('stg_companies__company_specialities') }}

),

employee_counts as (

    select * from {{ ref('stg_companies__employee_counts') }}

),

final as (

    select
        c.company_id,
        c.* except (company_id),
        ci.* except (company_id),
        cs.* except (company_id),
        ec.* except (company_id)

    from companies as c
    inner join company_industries as ci
        on c.company_id = ci.company_id
    inner join company_specialities as cs
        on c.company_id = cs.company_id
    inner join employee_counts as ec
        on c.company_id = ec.company_id

)

select * from final