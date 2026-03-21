-- INNER JOIN
SELECT name, description, total_amount FROM Orders o INNER JOIN Products p ON p.product_ID=O.product_id;
SELECT customer_name, total_amount FROM orders o JOIN customer c ON c.customer_id = o.customer_id; -- names of the custormers who purchased products and their total amount of the order.

-- LEFT JOIN
SELECT customer_name, total_amount FROM customer c LEFT JOIN orders o ON c.customer_id = o.customer_id
SELECT name, total_quantity FROM orders o LEFT JOIN products p ON p.product_id = o.product_id

-- RIGHT JOIN
SELECT name, total_quantity FROM orders o RIGHT JOIN products p ON p.product_id = o.product_id

-- FULL OUTER
SELECT name, description, total_amount FROM Orders o FULL OUTER JOIN Products p ON p.product_id=o.product_id;
