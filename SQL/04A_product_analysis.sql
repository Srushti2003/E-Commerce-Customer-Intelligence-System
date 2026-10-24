
SELECT
    COALESCE(
        t.product_category_name_english,
        p.product_category_name,
        'Unknown'
    ) AS product_category,
    COUNT(DISTINCT oi.order_id) AS orders,
    COUNT(*) AS item_rows,
    ROUND(SUM(oi.price::NUMERIC), 2) AS revenue
FROM olist_order_items oi
JOIN olist_orders o
    ON oi.order_id = o.order_id
JOIN olist_products p
    ON oi.product_id = p.product_id
LEFT JOIN product_category_translation t
    ON p.product_category_name = t.product_category_name
WHERE o.order_status = 'delivered'
GROUP BY 1
ORDER BY revenue DESC
LIMIT 15;
