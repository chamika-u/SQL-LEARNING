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

-- CASES
SELECT name, description, price,
CASE
	WHEN price<100 THEN 'Cheap'
	WHEN price>100 AND price<500 THEN 'Affordable'
	ELSE 'Expensive'
	END AS product_type
FROM products;

-- GROUP BY

SELECT city, COUNT(customer_id) FROM customer GROUP BY city;
SELECT category_id, COUNT(product_id) FROM products GROUP BY category_id;

-- HAVING CLAUSE

SELECT city, COUNT(*) FROM customer GROUP BY city HAVING COUNT(*)>10; 
/*

HAVING clause always comes after GROUP BY and you can only use WHERE clause before the GROUP BY clause. 
If group by already done, you can't use HAVING clause after it. 
Both WHERE and HAVING use to filter the data.

*/

SELECT c.category_name, c.category_id FROM categories c JOIN products p ON c.category_id = p.category_id GROUP BY 
c.category_id;

SELECT c.category_name, c.category_id FROM categories c JOIN products p ON c.category_id = p.category_id GROUP BY 
c.category_id HAVING COUNT(p.category_id)>1; --Filtering from above query

-- This query retrieves the name and ID of any category that has more than one product assigned to it.