--COUNT
SELECT COUNT(*) AS total_rows_customer FROM customer;
SELECT COUNT(customer_id) AS customer_count FROM customer; -- This one faster and readable.
SELECT COUNT(DISTINCT customer_id) AS customer_count FROM customer; -- DISTINCT avoid duplicate values

-- SUM
SELECT SUM(total_amount) AS sum_of_total FROM orders; 
SELECT SUM(DISTINCT total_amount) AS sum_of_total FROM orders; 

--MAX
SELECT MAX(total_amount) AS max_amount FROM orders;

--MIN
SELECT MIN(total_amount) AS min_amount FROM orders;

--AVG
SELECT AVG(total_amount) AS avg_amount FROM orders;

--Standard Deviation
SELECT STDDEV(total_amount) AS std_amount FROM orders;


