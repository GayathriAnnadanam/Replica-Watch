SELECT
    o.order_id,
    u.user_name,
    p.product_name,
    oi.quantity,
    oi.unit_price,
    (oi.quantity * oi.unit_price) AS amount
FROM orders o

JOIN users u
ON o.user_id = u.user_id

JOIN order_items oi
ON o.order_id = oi.order_id

JOIN products p
ON oi.product_id = p.product_id;

