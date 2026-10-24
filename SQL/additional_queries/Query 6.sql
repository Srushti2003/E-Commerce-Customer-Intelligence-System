ALTER TABLE olist_geolocation
    ALTER COLUMN geolocation_lat TYPE NUMERIC(11,8)
        USING ROUND(NULLIF(BTRIM(geolocation_lat::TEXT), '')::NUMERIC, 8),
    ALTER COLUMN geolocation_lng TYPE NUMERIC(11,8)
        USING ROUND(NULLIF(BTRIM(geolocation_lng::TEXT), '')::NUMERIC, 8);