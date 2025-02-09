/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below.
*/

{{ config(materialized='table') }}

with source_data as (
    select 2 as id
    union all
    select null as id
    union all
    select 1 as id
    union all
    select 4 as id
    union
)

select *
from source_data
where id is not null  -- Remove records with null `id` values
