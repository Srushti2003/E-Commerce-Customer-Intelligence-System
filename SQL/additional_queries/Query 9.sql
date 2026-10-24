ALTER TABLE olist_order_reviews
    ALTER COLUMN review_score TYPE INTEGER
        USING NULLIF(BTRIM(review_score), '')::INTEGER,
    ALTER COLUMN review_creation_date TYPE DATE
        USING NULLIF(BTRIM(review_creation_date), '')::DATE,
    ALTER COLUMN review_creation_time TYPE TIME
        USING NULLIF(BTRIM(review_creation_time), '')::TIME,
    ALTER COLUMN review_answer_date TYPE DATE
        USING NULLIF(BTRIM(review_answer_date), '')::DATE,
    ALTER COLUMN review_answer_time TYPE TIME
        USING NULLIF(BTRIM(review_answer_time), '')::TIME;
