select
    product_id,
    product_name,
    category,
    price,
    created_at,
    price * 2 as double_price   
from {{ source('raw_data', 'products') }}