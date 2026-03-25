--COUNT
SELECT COUNT(*) AS total_rows_customer FROM customer;
SELECT COUNT(customer_id) AS customer_count FROM customer; -- This one faster and readable.
SELECT COUNT(DISTINCT customer_id) AS customer_count FROM customer; -- DISTINCT avoid duplicate values

-- SUM
SELECT SUM(total_amount) AS sum_of_total FROM orders; 
SELECT SUM(DISTINCT total_amount) AS sum_of_total FROM orders; 


