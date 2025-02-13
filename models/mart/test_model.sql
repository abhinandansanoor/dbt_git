{{ config(materialized='table') }}

with target_data as (
    select 5 as id
    union all
    select 1 as id
    union all
    select 2 as id
    union all
    select 4 as id
    union all
    select 3 as id
)

select *
from target_data