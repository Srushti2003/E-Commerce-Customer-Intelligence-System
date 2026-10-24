
SELECT
    review_id,
    order_id,
    review_score,
    review_comment_title,
    review_comment_message,
    review_creation_timestamp,
    review_answer_timestamp,
    COUNT(*) AS occurrences
FROM olist_order_reviews
GROUP BY
    review_id,
    order_id,
    review_score,
    review_comment_title,
    review_comment_message,
    review_creation_timestamp,
    review_answer_timestamp
HAVING COUNT(*) > 1
ORDER BY occurrences DESC;
