INSERT INTO Products (name, price, description, tags, category_id,Supplier)
VALUES
    ('Ipad', 100, 'High-performance ipad for professionals', 'electronics, portable, tech', 1, 'SupplierA'),
	('iPhone 11', 120, 'High-performance iPhone 11 128 GB', 'electronics, portable, tech', 1, 'SupplierB');

SELECT * FROM Products;
SELECT * FROM Products WHERE price>50 AND category_id=1 AND supplier='SupplierB' ORDER BY product_id;
