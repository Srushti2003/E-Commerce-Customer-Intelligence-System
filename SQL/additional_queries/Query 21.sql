
-- 1. Orders → Customers
ALTER TABLE olist_orders
ADD CONSTRAINT fk_orders_customers
FOREIGN KEY (customer_id)
REFERENCES olist_customers (customer_id);

-- 2. Order items → Orders
ALTER TABLE olist_order_items
ADD CONSTRAINT fk_items_orders
FOREIGN KEY (order_id)
REFERENCES olist_orders (order_id);

-- 3. Order items → Products
ALTER TABLE olist_order_items
ADD CONSTRAINT fk_items_products
FOREIGN KEY (product_id)
REFERENCES olist_products (product_id);

-- 4. Order items → Sellers
ALTER TABLE olist_order_items
ADD CONSTRAINT fk_items_sellers
FOREIGN KEY (seller_id)
REFERENCES olist_sellers (seller_id);

-- 5. Payments → Orders
ALTER TABLE olist_order_payments
ADD CONSTRAINT fk_payments_orders
FOREIGN KEY (order_id)
REFERENCES olist_orders (order_id);

-- 6. Reviews → Orders
ALTER TABLE olist_order_reviews
ADD CONSTRAINT fk_reviews_orders
FOREIGN KEY (order_id)
REFERENCES olist_orders (order_id);
