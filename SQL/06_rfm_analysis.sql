
WITH customer_metrics AS (
    SELECT
        c.customer_unique_id,
        MAX(o.order_purchase_timestamp)::DATE
            AS last_purchase_date,
        COUNT(DISTINCT o.order_id) AS frequency,
        SUM(oi.price) AS monetary
    FROM olist_customers c
    JOIN olist_orders o
        ON c.customer_id = o.customer_id
    JOIN olist_order_items oi
        ON o.order_id = oi.order_id
    WHERE o.order_status = 'delivered'
    GROUP BY c.customer_unique_id
),
rfm_scores AS (
    SELECT
        *,
        NTILE(5) OVER (
            ORDER BY last_purchase_date ASC
        ) AS recency_score,
        NTILE(5) OVER (
            ORDER BY frequency
        ) AS frequency_score,
        NTILE(5) OVER (
            ORDER BY monetary
        ) AS monetary_score
    FROM customer_metrics
)
SELECT
    *,
    CASE
        WHEN recency_score >= 4
         AND frequency_score >= 4
         AND monetary_score >= 4
            THEN 'Champions'
        WHEN frequency_score >= 3
         AND recency_score >= 3
            THEN 'Loyal Customers'
        WHEN recency_score >= 4
         AND frequency_score <= 2
            THEN 'New / Potential Customers'
        WHEN recency_score <= 2
         AND frequency_score >= 3
            THEN 'At-Risk Loyal Customers'
        WHEN recency_score <= 2
         AND frequency_score <= 2
            THEN 'Lost / Inactive Customers'
        ELSE 'Needs Attention'
    END AS customer_segment
FROM rfm_scores;
