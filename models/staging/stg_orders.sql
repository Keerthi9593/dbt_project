select 
    order_id,
    customer_id,
    product_id,
    quantity,
    total_amount,
    order_time,
    quantity * 3 as triple_quantity
from {{source('raw_data', 'orders')}}