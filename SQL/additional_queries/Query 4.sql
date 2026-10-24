
SELECT
    COUNT(*) AS total_rows,
    COUNT(*) FILTER (
        WHERE customer_id IS NULL OR customer_id = ''
    ) AS missing_customer_id,
    COUNT(*) FILTER (
        WHERE customer_unique_id IS NULL
           OR customer_unique_id = ''
    ) AS missing_customer_unique_id
FROM olist_customers;

SELECT
    COUNT(*) AS total_rows,
    COUNT(*) FILTER (
        WHERE order_id IS NULL OR order_id = ''
    ) AS missing_order_id,
    COUNT(*) FILTER (
        WHERE customer_id IS NULL OR customer_id = ''
    ) AS missing_customer_id,
    COUNT(*) FILTER (
        WHERE order_purchase_timestamp IS NULL
           OR order_purchase_timestamp = ''
    ) AS missing_purchase_timestamp
FROM olist_orders;

SELECT
    COUNT(*) AS total_rows,
    COUNT(*) FILTER (
        WHERE price IS NULL OR price = ''
    ) AS missing_price,
    COUNT(*) FILTER (
        WHERE freight_value IS NULL OR freight_value = ''
    ) AS missing_freight_value
FROM olist_order_items;
