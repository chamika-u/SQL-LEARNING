-- Indexes for performance optimization

CREATE INDEX idx_customer_email ON customer(email);
CREATE INDEX idx_prod_cat ON products(category_id);
CREATE UNIQUE INDEX idx_prod_name ON products(name);
CREATE INDEX idx_cust_order ON orders(customer_id, order_timestamp);

-- Using EXPLAIN ANALYZE to see the performance of a query with and without indexes
EXPLAIN ANALYZE SELECT * FROM orders WHERE order_id=1;

-- Check index usage
SELECT * FROM pg_stat_user_indexes WHERE relname='orders';