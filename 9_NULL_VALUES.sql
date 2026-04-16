SELECT * FROM products WHERE price IS NULL; -- This query will return all the rows from the products table where the price column has a null value.
SELECT * FROM products WHERE price IS NOT NULL; -- This query will return all the rows from the products table where the price column does not have a null value.

SELECT TRUE AND NULL; -- This query will return NULL because the result of TRUE AND NULL is NULL.
