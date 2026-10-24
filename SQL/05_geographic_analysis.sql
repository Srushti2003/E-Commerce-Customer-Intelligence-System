
SELECT
    c.customer_state,
    COUNT(DISTINCT c.customer_unique_id)
        AS unique_customers,
    COUNT(DISTINCT o.order_id) AS delivered_orders,
    ROUND(SUM(oi.price), 2) AS revenue
FROM olist_customers c
JOIN olist_orders o
    ON c.customer_id = o.customer_id
JOIN olist_order_items oi
    ON o.order_id = oi.order_id
WHERE o.order_status = 'delivered'
GROUP BY c.customer_state
ORDER BY revenue DESC;
