select
    o.order_id,
    o.customer_id,
    c.customer_name,
    o.product_id,
    o.quantity,
    o.total_amount,
    o.order_time
from {{ ref('stg_orders') }} o
join {{ ref('stg_customers') }} c
    on o.customer_id = c.customer_id