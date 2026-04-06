-- RANK() FUNCTION
-- Assigns a rank to rows, skipping ranks after ties (1, 2, 2, 4).
SELECT customer_id,
RANK() OVER (PARTITION BY customer_id ORDER BY total_amount DESC) AS order_rank, total_amount FROM Orders;

--DENSE_RANK() FUNCTION
-- Assigns a rank to rows without skipping ranks after ties (1, 2, 2, 3).
SELECT customer_id,
DENSE_RANK() OVER (PARTITION BY customer_id ORDER BY total_amount DESC) AS order_rank, total_amount FROM Orders;

-- ROW_NUMBER() FUNCTION
-- Assigns a unique sequential number to each row (1, 2, 3, 4, regardless of ties).
SELECT order_id, customer_id, order_timestamp,
ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY order_timestamp ASC) AS order_seq_num FROM Orders;

--LAG() FUNCTION
-- Fetches the value from the previous row in the result set for comparison.
SELECT customer_id, order_id, order_timestamp,
LAG(order_timestamp, 1) OVER (PARTITION BY customer_id ORDER BY order_timestamp ASC) AS previous_order FROM Orders;

--LEAD() FUNCTION
-- Fetches the value from the next row in the result set for comparison.
SELECT customer_id, order_id, order_timestamp,
LEAD(order_timestamp, 1) OVER (PARTITION BY customer_id ORDER BY order_timestamp ASC) AS next_order FROM Orders;

--SUM() FUNCTION
-- Calculates a running total that accumulates values row-by-row within each partition.
SELECT customer_id, order_id, total_amount, order_timestamp,
SUM(total_amount) OVER (PARTITION BY customer_id ORDER BY order_timestamp ASC) AS running_total FROM Orders;

