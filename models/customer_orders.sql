{{
  config(
    materialized='view'
  )
}}

with cte_customers as (
    select * from {{ ref('stg_customers') }}
),

cte_orders as (
   select * from {{ ref('stg_orders') }}
),

customer_orders as (
    select
        customer_id,
    
        min(order_date) as first_order_date,
        max(order_date) as most_recent_order_date,
        count(order_id) as number_of_orders
    from cte_orders
    group by 1
),

final as (
    select 
        cte_customers.customer_id,
        cte_customers.company,
        customer_orders.first_order_date,
        customer_orders.most_recent_order_date,
        coalesce(customer_orders.number_of_orders, 0) as number_of_orders
    from cte_customers
    left join customer_orders using (customer_id)

)
--select count(*) from final where first_order_date is not null;
select * from final