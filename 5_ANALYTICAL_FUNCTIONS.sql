-- RANK() FUNCTION
SELECT customer_id,
RANK () OVER (PARTITION BY customer_id ORDER BY total_amount DESC) AS order_rank, total_amount FROM Orders;
/*IN HERE SUB SEQUENT RANK WILL SKIPPED*/

--DENSE_RANK () FUNCTION
SELECT customer_id,
DENSE_RANK () OVER (PARTITION BY customer_id ORDER BY total_amount DESC) AS order_rank, total_amount FROM Orders;
/*IN HERE SUB SEQUENT RANK WILL NOT SKIPPED*/

