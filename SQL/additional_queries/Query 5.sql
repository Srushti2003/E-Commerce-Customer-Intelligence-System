
-- Duplicate customer IDs
SELECT customer_id, COUNT(*)
FROM olist_customers
GROUP BY customer_id
HAVING COUNT(*) > 1;

-- Duplicate order IDs in the orders table
SELECT order_id, COUNT(*)
FROM olist_orders
GROUP BY order_id
HAVING COUNT(*) > 1;

-- Duplicate order-item combinations
SELECT order_id, order_item_id, COUNT(*)
FROM olist_order_items
GROUP BY order_id, order_item_id
HAVING COUNT(*) > 1;
