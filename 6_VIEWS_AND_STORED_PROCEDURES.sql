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
LANGUAGE plpgsql
AS
$$
BEGIN
	INSERT INTO categories VALUES(cat_id, cat_name);
END;
$$;

CALL add_category(6, 'Fashion');
SELECT * FROM categories;

/*These procedures works like a functions in object oriented programming languages such as Java*/