
ALTER TABLE olist_customers
ADD CONSTRAINT pk_olist_customers
PRIMARY KEY (customer_id);

ALTER TABLE olist_orders
ADD CONSTRAINT pk_olist_orders
PRIMARY KEY (order_id);

ALTER TABLE olist_products
ADD CONSTRAINT pk_olist_products
PRIMARY KEY (product_id);

ALTER TABLE olist_sellers
ADD CONSTRAINT pk_olist_sellers
PRIMARY KEY (seller_id);
