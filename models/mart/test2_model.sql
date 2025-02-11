{{ config(materialized='table') }}

with target_data as (
    select 5 as id
    union all
    select 1 as id
    union all
    select 2 as
)

select *
from target_data