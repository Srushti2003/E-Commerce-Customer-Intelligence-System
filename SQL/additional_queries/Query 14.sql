
SELECT 'customers' AS table_name, COUNT(*) AS missing_keys
FROM olist_customers
WHERE customer_id IS NULL OR customer_id = ''

UNION ALL
SELECT 'orders', COUNT(*)
FROM olist_orders
WHERE order_id IS NULL OR order_id = ''

UNION ALL
SELECT 'order_items', COUNT(*)
FROM olist_order_items
WHERE order_id IS NULL
   OR order_id = ''
   OR order_item_id IS NULL

UNION ALL
SELECT 'payments', COUNT(*)
FROM olist_order_payments
WHERE order_id IS NULL
   OR order_id = ''
   OR payment_sequential IS NULL

UNION ALL
SELECT 'reviews', COUNT(*)
FROM olist_order_reviews
WHERE review_id IS NULL OR review_id = ''

UNION ALL
SELECT 'products', COUNT(*)
FROM olist_products
WHERE product_id IS NULL OR product_id = ''

UNION ALL
SELECT 'sellers', COUNT(*)
FROM olist_sellers
WHERE seller_id IS NULL OR seller_id = '';
