ALTER TABLE olist_products
    ALTER COLUMN product_name_lenght TYPE INTEGER
        USING NULLIF(BTRIM(product_name_lenght), '')::INTEGER,
    ALTER COLUMN product_description_lenght TYPE INTEGER
        USING NULLIF(BTRIM(product_description_lenght), '')::INTEGER,
    ALTER COLUMN product_photos_qty TYPE INTEGER
        USING NULLIF(BTRIM(product_photos_qty), '')::INTEGER,
    ALTER COLUMN product_weight_g TYPE NUMERIC(12,2)
        USING NULLIF(BTRIM(product_weight_g), '')::NUMERIC(12,2),
    ALTER COLUMN product_length_cm TYPE NUMERIC(10,2)
        USING NULLIF(BTRIM(product_length_cm), '')::NUMERIC(10,2),
    ALTER COLUMN product_height_cm TYPE NUMERIC(10,2)
        USING NULLIF(BTRIM(product_height_cm), '')::NUMERIC(10,2),
    ALTER COLUMN product_width_cm TYPE NUMERIC(10,2)
        USING NULLIF(BTRIM(product_width_cm), '')::NUMERIC(10,2);
