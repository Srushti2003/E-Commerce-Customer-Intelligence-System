
SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT review_id) AS distinct_review_ids,
    COUNT(*) - COUNT(DISTINCT review_id) AS excess_review_id_rows
FROM olist_order_reviews;
