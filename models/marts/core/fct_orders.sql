with payments as (

    select * from {{ ref('stg_payment')}}

),

orders as (

    select * from {{ ref('stg_orders') }}

),

fact_customer_orders_payments as (

    select
        orders.customer_id,
        orders.order_id,
        payments.amount

    from payments, orders
)  

select * from fact_customer_orders_payments