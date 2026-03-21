-- Inserting new values
INSERT INTO Products (name, price, description, tags, category_id,Supplier)
VALUES
    ('Ipad', 100, 'High-performance ipad for professionals', 'electronics, portable, tech', 1, 'SupplierA'),
	('iPhone 11', 120, 'High-performance iPhone 11 128 GB', 'electronics, portable, tech', 1, 'SupplierB');

SELECT * FROM Products;
SELECT * FROM Products WHERE price>50 AND category_id=1 AND supplier='SupplierB' ORDER BY product_id;

-- Update values
UPDATE Products SET price=500 WHERE product_id=6;
SELECT * FROM Products;

-- Delete values
DELETE FROM Products WHERE  product_id=9;
SELECT * FROM Products;

-- Delete tables
DELETE FROM PUBLIC."Fruit Juice"; -- DELETE Entire Table Data (DELETE line by line making execution slower). 
SELECT * FROM PUBLIC."Fruit Juice";
TRUNCATE PUBLIC."Fruit Juice"; -- DELETE Entire Table Data (DELETE whole table dara at once making execution much faster). Better to use in tables with millions of records. 

--Delete the whole table including the table structure 
DROP table PUBLIC."Fruit Juice";

