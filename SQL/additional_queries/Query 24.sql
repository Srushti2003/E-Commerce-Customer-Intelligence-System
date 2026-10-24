
SELECT 'customers' AS table_name, COUNT(*) AS invalid_keys
FROM olist_customers
WHERE customer_id IS NULL OR BTRIM(customer_id) = ''

UNION ALL

SELECT 'orders', COUNT(*)
FROM olist_orders
WHERE order_id IS NULL OR BTRIM(order_id) = ''

UNION ALL

SELECT 'products', COUNT(*)
FROM olist_products
WHERE product_id IS NULL OR BTRIM(product_id) = ''

UNION ALL

SELECT 'sellers', COUNT(*)
FROM olist_sellers
WHERE seller_id IS NULL OR BTRIM(seller_id) = '';
