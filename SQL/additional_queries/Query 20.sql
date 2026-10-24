SELECT o.customer_id
FROM olist_orders o
LEFT JOIN olist_customers c
    ON o.customer_id = c.customer_id
WHERE c.customer_id IS NULL
LIMIT 20;

SELECT oi.order_id
FROM olist_order_items oi
LEFT JOIN olist_orders o
    ON oi.order_id = o.order_id
WHERE o.order_id IS NULL
LIMIT 20;

SELECT oi.product_id
FROM olist_order_items oi
LEFT JOIN olist_products p
    ON oi.product_id = p.product_id
WHERE p.product_id IS NULL
LIMIT 20;

SELECT oi.seller_id
FROM olist_order_items oi
LEFT JOIN olist_sellers s
    ON oi.seller_id = s.seller_id
WHERE s.seller_id IS NULL
LIMIT 20;

SELECT p.order_id
FROM olist_order_payments p
LEFT JOIN olist_orders o
    ON p.order_id = o.order_id
WHERE o.order_id IS NULL
LIMIT 20;

SELECT r.order_id
FROM olist_order_reviews r
LEFT JOIN olist_orders o
    ON r.order_id = o.order_id
WHERE o.order_id IS NULL
LIMIT 20;