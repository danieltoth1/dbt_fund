with orders as (
    select * from {{ ref('stg_orders') }}
),

payments as (
    select * from {{ ref('stg_payments') }}
)
select 
    orders.order_id,
    orders.customer_id,
    payments.amount
from orders left join payments on orders.order_id = payments.orderid