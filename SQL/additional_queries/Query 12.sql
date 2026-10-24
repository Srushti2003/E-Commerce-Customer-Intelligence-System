
SELECT
    table_name,
    column_name,
    data_type
FROM information_schema.columns
WHERE table_schema = 'public'
  AND table_name IN (
      'olist_customers',
      'olist_geolocation',
      'olist_order_items',
      'olist_order_payments',
      'olist_order_reviews',
      'olist_orders',
      'olist_products',
      'olist_sellers',
      'product_category_translation'
  )
ORDER BY table_name, ordinal_position;
