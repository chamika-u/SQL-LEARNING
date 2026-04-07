--Creating a new view
CREATE VIEW customer_order_summery AS

SELECT customer_id,
COUNT(order_id),
SUM(total_amount)
FROM Orders GROUP BY customer_id;

--Display View
SELECT * FROM customer_order_summery;