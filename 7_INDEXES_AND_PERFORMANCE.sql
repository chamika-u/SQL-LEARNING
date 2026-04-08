-- Indexes for performance optimization

CREATE INDEX idx_customer_email ON customer(email);
CREATE INDEX idx_prod_cat ON products(category_id);
CREATE UNIQUE INDEX idx_prod_name ON products(name);
CREATE INDEX idx_cust_order ON orders(customer_id, order_timestamp);

-- Using EXPLAIN ANALYZE to see the performance of a query with and without indexes
EXPLAIN ANALYZE SELECT * FROM orders WHERE order_id=1;

SELECT * FROM pg_stat_user_indexes WHERE relname='orders'; -- Check index usage statistics for the 'orders' table

EXPLAIN SELECT * FROM orders WHERE order_id=1; -- Check the query plan to see if the index is being used

-- Basic performance tunning

SELECT * FROM orders WHERE customer_id=1 order by order_timestamp;
-- This is not a a very optimized query

CREATE INDEX idx_cust ON orders(customer_id, order_timestamp);
-- After this index was created above query works faster.

-- Challenge
CREATE INDEX idx_timestamp ON orders(order_timestamp); -- After creating this index, following query will run faster
SELECT order_timestamp FROM orders WHERE customer_id=1;