
SELECT *
FROM olist_order_reviews
WHERE review_id IN (
    SELECT review_id
    FROM olist_order_reviews
    GROUP BY review_id
    HAVING COUNT(*) > 1
)
ORDER BY review_id;
