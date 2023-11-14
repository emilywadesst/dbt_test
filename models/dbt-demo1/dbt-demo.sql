{{ config(materialized='table') }}

with demo_data as (

    select *
    from `sumr-ds-stable-int-001.SSTDataMartSilver.SILVER_USER`
    where report_date = '2023-08-22'
    limit 1000

)

select *
from demo_data