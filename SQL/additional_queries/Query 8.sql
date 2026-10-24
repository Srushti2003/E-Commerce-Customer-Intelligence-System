ALTER TABLE olist_order_payments
    ALTER COLUMN payment_sequential TYPE INTEGER
        USING NULLIF(BTRIM(payment_sequential), '')::INTEGER,
    ALTER COLUMN payment_installments TYPE INTEGER
        USING NULLIF(BTRIM(payment_installments), '')::INTEGER,
    ALTER COLUMN payment_value TYPE NUMERIC(12,2)
        USING NULLIF(BTRIM(payment_value), '')::NUMERIC(12,2);
