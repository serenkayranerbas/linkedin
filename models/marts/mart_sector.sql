with companies as (
    select * from {{ ref('int_companies_master') }}
),

posting as (
    select
        company_id,
        remote_allowed,
        company_name,
        formatted_work_type
    from {{ ref('stg_postings__postings') }}
)

select
    companies.*,
    posting.remote_allowed,
    posting.company_name,
    posting.formatted_work_type
from companies
left join posting
    on companies.company_id = posting.company_id