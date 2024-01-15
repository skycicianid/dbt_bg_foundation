{{
  config( materialized='view')
}}

with customers as (

    select
        id as customer_id,
        first_name,
        last_name

    from  {{ source('davide_dbt','customers') }}

)

select * from customers