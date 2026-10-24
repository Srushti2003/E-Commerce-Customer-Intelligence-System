ALTER TABLE olist_orders
    ALTER COLUMN order_purchase_date TYPE DATE
        USING NULLIF(BTRIM(order_purchase_date), '')::DATE,
    ALTER COLUMN order_purchase_time TYPE TIME
        USING NULLIF(BTRIM(order_purchase_time), '')::TIME,
    ALTER COLUMN order_approved_at_date TYPE DATE
        USING NULLIF(BTRIM(order_approved_at_date), '')::DATE,
    ALTER COLUMN order_approved_at_time TYPE TIME
        USING NULLIF(BTRIM(order_approved_at_time), '')::TIME,
    ALTER COLUMN order_delivered_carrier_date TYPE DATE
        USING NULLIF(BTRIM(order_delivered_carrier_date), '')::DATE,
    ALTER COLUMN order_delivered_carrier_time TYPE TIME
        USING NULLIF(BTRIM(order_delivered_carrier_time), '')::TIME,
    ALTER COLUMN order_delivered_customer_date TYPE DATE
        USING NULLIF(BTRIM(order_delivered_customer_date), '')::DATE,
    ALTER COLUMN order_delivered_customer_time TYPE TIME
        USING NULLIF(BTRIM(order_delivered_customer_time), '')::TIME,
    ALTER COLUMN order_estimated_delivery_date TYPE DATE
        USING NULLIF(BTRIM(order_estimated_delivery_date), '')::DATE,
    ALTER COLUMN order_estimated_delivery_time TYPE TIME
        USING NULLIF(BTRIM(order_estimated_delivery_time), '')::TIME;
