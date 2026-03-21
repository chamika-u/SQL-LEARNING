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
select name from products where category_id =1

UNION

select name from products p inner join orders o on o.product_id = p.product_id where o.total_quantity > 2

