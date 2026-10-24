
WITH customer_orders AS (
    SELECT
        c.customer_unique_id,
        COUNT(DISTINCT o.order_id) AS order_count
    FROM olist_customers c
    JOIN olist_orders o
        ON c.customer_id = o.customer_id
    WHERE o.order_status = 'delivered'
    GROUP BY c.customer_unique_id
)
SELECT
    CASE
        WHEN order_count = 1 THEN 'One-time customer'
        ELSE 'Returning customer'
    END AS customer_type,
    COUNT(*) AS customers
FROM customer_orders
GROUP BY customer_type
ORDER BY customers DESC;
