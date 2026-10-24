
SELECT
    oi.product_id,
    COUNT(DISTINCT oi.order_id) AS orders,
    COUNT(*) AS item_rows,
    ROUND(SUM(oi.price), 2) AS revenue
FROM olist_order_items oi
JOIN olist_orders o
    ON oi.order_id = o.order_id
WHERE o.order_status = 'delivered'
GROUP BY oi.product_id
ORDER BY revenue DESC
LIMIT 10;
