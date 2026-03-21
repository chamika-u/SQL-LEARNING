-- INNER JOIN
SELECT name, description, total_amount FROM Orders o INNER JOIN Products p ON p.product_ID=O.product_id;
SELECT customer_name, total_amount FROM orders o JOIN customer c ON c.customer_id = o.customer_id; -- names of the custormers who purchased products and their total amount of the order.

-- LEFT JOIN
SELECT customer_name, total_amount FROM customer c LEFT JOIN orders o ON c.customer_id = o.customer_id;
SELECT name, total_quantity FROM orders o LEFT JOIN products p ON p.product_id = o.product_id;

-- RIGHT JOIN
SELECT name, total_quantity FROM orders o RIGHT JOIN products p ON p.product_id = o.product_id;

-- FULL OUTER
SELECT customer_name, total_quantity FROM customer c FULL OUTER JOIN orders o ON c.customer_id = o.customer_id;

SELECT customer_name, name, total_quantity FROM customer c FULL OUTER JOIN orders o ON c.customer_id = o.customer_id FULL OUTER JOIN
products p ON p.product_id = o.product_id;

-- UNION (Combining 2 Queries at once)
SELECT name FROM products WHERE category_id =1
UNION
SELECT name FROM products p INNER JOIN orders o ON o.product_id = p.product_id WHERE o.total_quantity > 2;


SELECT name FROM products WHERE category_id =1
UNION ALL 
SELECT name FROM products p INNER JOIN orders o ON o.product_id = p.product_id WHERE o.total_quantity > 2;
