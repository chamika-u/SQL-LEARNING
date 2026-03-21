SELECT * FROM categories
SELECT * FROM Orders
SELECT * FROM Customer
SELECT * FROM Products

SELECT price, name FROM Products;

SELECT * FROM Orders WHERE total_amount>100;

SELECT * FROM Products ORDER BY price; 
SELECT * FROM Products ORDER BY price DESC;

SELECT * FROM Customer ORDER BY customer_name;
SELECT * FROM Customer ORDER BY customer_name DESC;

SELECT * FROM Products ORDER BY price, name;
SELECT * FROM Products ORDER BY price, name DESC;
SELECT * FROM Products WHERE price<100 ORDER BY price;
SELECT * FROM Products WHERE price>100 ORDER BY price; 

SELECT * FROM Products WHERE price>100 AND category_id=1; -- AND CONDITION
SELECT * FROM Products WHERE price>100 OR category_id=1; --OR CONDITION
SELECT * FROM Products WHERE price>100 OR category_id=1 OR category_id=2 ORDER BY product_id; --OR CONDITION

