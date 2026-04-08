-- Indexes for performance optimization

CREATE INDEX idx_customer_email ON customer(email);
CREATE INDEX idx_prod_cat ON products(category_id);
CREATE UNIQUE INDEX idx_prod_name ON products(name);
CREATE INDEX idx_cust_order ON orders(customer_id, order_timestamp);
