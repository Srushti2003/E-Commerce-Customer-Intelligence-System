
-- 1. Customers
SELECT customer_id, COUNT(*)
FROM olist_customers
GROUP BY customer_id
HAVING COUNT(*) > 1;

-- 2. Orders
SELECT order_id, COUNT(*)
FROM olist_orders
GROUP BY order_id
HAVING COUNT(*) > 1;

-- 3. Order items: composite key
SELECT order_id, order_item_id, COUNT(*)
FROM olist_order_items
GROUP BY order_id, order_item_id
HAVING COUNT(*) > 1;

-- 4. Payments: composite key
SELECT order_id, payment_sequential, COUNT(*)
FROM olist_order_payments
GROUP BY order_id, payment_sequential
HAVING COUNT(*) > 1;

-- 5. Reviews
SELECT review_id, COUNT(*)
FROM olist_order_reviews
GROUP BY review_id
HAVING COUNT(*) > 1;

-- 6. Products
SELECT product_id, COUNT(*)
FROM olist_products
GROUP BY product_id
HAVING COUNT(*) > 1;

-- 7. Sellers
SELECT seller_id, COUNT(*)
FROM olist_sellers
GROUP BY seller_id
HAVING COUNT(*) > 1;

-- 8. Category translations
SELECT product_category_name, COUNT(*)
FROM product_category_translation
GROUP BY product_category_name
HAVING COUNT(*) > 1;
