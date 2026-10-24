
ALTER TABLE olist_order_items
    ALTER COLUMN shipping_limit_date TYPE TIMESTAMP
        USING NULLIF(BTRIM(shipping_limit_date), '')::TIMESTAMP,
    ALTER COLUMN shipping_date TYPE DATE
        USING NULLIF(BTRIM(shipping_date), '')::DATE,
    ALTER COLUMN shipping_time TYPE TIME
        USING NULLIF(BTRIM(shipping_time), '')::TIME,
    ALTER COLUMN price TYPE NUMERIC(12,2)
        USING NULLIF(BTRIM(price), '')::NUMERIC(12,2),
    ALTER COLUMN freight_value TYPE NUMERIC(12,2)
        USING NULLIF(BTRIM(freight_value), '')::NUMERIC(12,2);
