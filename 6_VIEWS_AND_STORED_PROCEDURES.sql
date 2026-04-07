--Creating a new view
CREATE VIEW customer_order_summery AS

SELECT customer_id,
COUNT(order_id),
SUM(total_amount)
FROM Orders GROUP BY customer_id;

--Display View
SELECT * FROM customer_order_summery;

/*Using view hide complexity of the query and simplifies for people who can't handle large queries in SQL*/

--Creating Procedures
CREATE PROCEDURE add_category(cat_id int, cat_name varchar)
LANGUAGE plpgsql --specifies that the procedure is written in PL/pgSQL, a procedural language for PostgreSQL.
AS
$$
BEGIN
	INSERT INTO categories VALUES(cat_id, cat_name); -- Inserts a new category into the categories table using the provided parameters cat_id and cat_name.
END;
$$;

CALL add_category(6, 'Fashion'); -- Calls the add_category procedure with specific values (6 and 'Fashion') to add a new category to the categories table.

SELECT * FROM categories; -- Displays all records from the categories table to verify that the new category has been added successfully.

DROP PROCEDURE add_category; -- Removes the add_category procedure from the database, cleaning up after its use.

/*These procedures works like a functions in object oriented programming languages such as Java*/

--Challenge
CREATE VIEW products_category AS
SELECT p.name AS product_name, c.category_name FROM Products p JOIN categories c ON p.category_id=c.category_id; 
-- Creates a new view named products_category that combines data from the Products and categories tables. It selects the product name from the Products table and the category name from the categories table, joining them based on the category_id.

SELECT * FROM products_category; 
-- Displays all records from the products_category view, showing the product names along with their corresponding category names.