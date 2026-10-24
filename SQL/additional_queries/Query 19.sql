
ALTER TABLE olist_order_reviews
ADD CONSTRAINT pk_olist_order_reviews
PRIMARY KEY (review_id, order_id);
