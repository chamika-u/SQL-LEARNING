-- RANK() FUNCTION
SELECT customer_id,
RANK () OVER (PARTITION BY customer_id ORDER BY total_amount DESC) AS order_rank, total_amount FROM Orders;
/*IN HERE SUB SEQUENT RANK WILL SKIPPED*/

--DENSE_RANK () FUNCTION
SELECT customer_id,
DENSE_RANK () OVER (PARTITION BY customer_id ORDER BY total_amount DESC) AS order_rank, total_amount FROM Orders;
/*IN HERE SUB SEQUENT RANK WILL NOT SKIPPED*/

-- ROW_NUMBER () FUNCTION
SELECT order_id, customer_id, order_timestamp,
ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY order_timestamp ASC) AS order_seq_num FROM Orders;
