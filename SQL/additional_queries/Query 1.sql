
CREATE TABLE olist_customers (
    customer_id TEXT,
    customer_unique_id TEXT,
    customer_zip_code_prefix TEXT,
    customer_city TEXT,
    customer_state TEXT
);

CREATE TABLE olist_geolocation (
    geolocation_zip_code_prefix TEXT,
    geolocation_lat TEXT,
    geolocation_lng TEXT,
    geolocation_city TEXT,
    geolocation_state TEXT
);

CREATE TABLE olist_order_items (
    order_id TEXT,
    order_item_id TEXT,
    product_id TEXT,
    seller_id TEXT,
    shipping_limit_date TEXT,
    shipping_date TEXT,
    shipping_time TEXT,
    price TEXT,
    freight_value TEXT
);

CREATE TABLE olist_order_payments (
    order_id TEXT,
    payment_sequential TEXT,
    payment_type TEXT,
    payment_installments TEXT,
    payment_value TEXT
);

CREATE TABLE olist_order_reviews (
    review_id TEXT,
    order_id TEXT,
    review_score TEXT,
    review_comment_title TEXT,
    review_comment_message TEXT,
    review_creation_timestamp TEXT,
    review_creation_date TEXT,
    review_creation_time TEXT,
    review_answer_timestamp TEXT,
    review_answer_date TEXT,
    review_answer_time TEXT
);

CREATE TABLE olist_orders (
    order_id TEXT,
    customer_id TEXT,
    order_status TEXT,
    order_purchase_timestamp TEXT,
    order_purchase_date TEXT,
    order_purchase_time TEXT,
    order_approved_at_timestamp TEXT,
    order_approved_at_date TEXT,
    order_approved_at_time TEXT,
    order_delivered_carrier_timestamp TEXT,
    order_delivered_carrier_date TEXT,
    order_delivered_carrier_time TEXT,
    order_delivered_customer_timestamp TEXT,
    order_delivered_customer_date TEXT,
    order_delivered_customer_time TEXT,
    order_estimated_delivery_timestamp TEXT,
    order_estimated_delivery_date TEXT,
    order_estimated_delivery_time TEXT
);

CREATE TABLE olist_products (
    product_id TEXT,
    product_category_name TEXT,
    product_name_lenght TEXT,
    product_description_lenght TEXT,
    product_photos_qty TEXT,
    product_weight_g TEXT,
    product_length_cm TEXT,
    product_height_cm TEXT,
    product_width_cm TEXT
);

CREATE TABLE olist_sellers (
    seller_id TEXT,
    seller_zip_code_prefix TEXT,
    seller_city TEXT,
    seller_state TEXT
);

CREATE TABLE product_category_translation (
    product_category_name TEXT,
    product_category_name_english TEXT
);
