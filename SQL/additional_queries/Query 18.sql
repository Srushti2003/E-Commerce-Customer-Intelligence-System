
-- Check whether the composite key contains duplicates
SELECT
    review_id,
    order_id,
    COUNT(*) AS occurrences
FROM olist_order_reviews
GROUP BY review_id, order_id
HAVING COUNT(*) > 1;

-- Check for NULL or empty key values
SELECT COUNT(*) AS invalid_key_rows
FROM olist_order_reviews
WHERE review_id IS NULL
   OR BTRIM(review_id) = ''
   OR order_id IS NULL
   OR BTRIM(order_id) = '';
