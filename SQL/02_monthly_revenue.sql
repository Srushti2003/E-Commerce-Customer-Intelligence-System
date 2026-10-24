
WITH monthly_sales AS (
    SELECT
        DATE_TRUNC(
            'month',
            o.order_purchase_date
        )::DATE AS sales_month,
        SUM(oi.price) AS revenue,
        COUNT(DISTINCT o.order_id) AS total_orders
    FROM olist_orders o
    JOIN olist_order_items oi
        ON o.order_id = oi.order_id
    WHERE o.order_status = 'delivered'
    GROUP BY 1
),
monthly_growth AS (
    SELECT
        sales_month,
        revenue,
        total_orders,
        LAG(revenue) OVER (
            ORDER BY sales_month
        ) AS previous_month_revenue
    FROM monthly_sales
)
SELECT
    sales_month,
    ROUND(revenue, 2) AS revenue,
    total_orders,
    ROUND(
        revenue - previous_month_revenue, 2
    ) AS revenue_change,
    ROUND(
        100.0 * (revenue - previous_month_revenue)
        / NULLIF(previous_month_revenue, 0),
        2
    ) AS mom_growth_percent
FROM monthly_growth
ORDER BY sales_month;
