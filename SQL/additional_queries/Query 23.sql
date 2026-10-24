
-- Customers
SELECT customer_id, COUNT(*)
FROM olist_customers
GROUP BY customer_id
HAVING COUNT(*) > 1;

-- Orders
SELECT order_id, COUNT(*)
FROM olist_orders
GROUP BY order_id
HAVING COUNT(*) > 1;

-- Products
SELECT product_id, COUNT(*)
FROM olist_products
GROUP BY product_id
HAVING COUNT(*) > 1;

-- Sellers
SELECT seller_id, COUNT(*)
FROM olist_sellers
GROUP BY seller_id
HAVING COUNT(*) > 1;
