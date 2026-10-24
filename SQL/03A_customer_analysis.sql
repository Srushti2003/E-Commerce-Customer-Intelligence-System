
WITH customer_orders AS (
    SELECT
        c.customer_unique_id,
        o.order_id,
        SUM(oi.price) AS order_value
    FROM olist_customers c
    JOIN olist_orders o
        ON c.customer_id = o.customer_id
    JOIN olist_order_items oi
        ON o.order_id = oi.order_id
    WHERE o.order_status = 'delivered'
    GROUP BY c.customer_unique_id, o.order_id
),
customer_summary AS (
    SELECT
        customer_unique_id,
        COUNT(*) AS order_count,
        SUM(order_value) AS customer_revenue
    FROM customer_orders
    GROUP BY customer_unique_id
)
SELECT
    (SELECT COUNT(*) FROM customer_summary)
        AS unique_customers,
    (SELECT COUNT(*) FROM customer_orders)
        AS delivered_orders,
    ROUND(
        (SELECT AVG(order_value) FROM customer_orders), 2
    ) AS average_order_value,
    ROUND(AVG(order_count), 2)
        AS average_orders_per_customer,
    ROUND(AVG(customer_revenue), 2)
        AS average_revenue_per_customer
FROM customer_summary;

