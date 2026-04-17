-- OUTPUT OF THIS CODE HAS NULL VALUES

/* Reason for this bug is probably total_quantity or price is getting null value at some point. 
	and null value multiplied by another null value equals to null*/
	
SELECT
    DATE_TRUNC('month', o.order_timestamp) AS order_month,
    SUM(o.total_quantity * p.price) AS total_sales
FROM
    orders o
JOIN
    products p ON o.product_id = p.product_id
WHERE
    o.order_timestamp >= '2023-01-01' AND
    o.order_timestamp < '2025-04-01'
GROUP BY
    order_month
ORDER BY
    order_month;

-- CHECK NULL VALUES AND SOLUTIONS
select * from orders where total_quantity is null; -- No null values in this column

select * from products where price is null; -- There is two null values

select * from orders where product_id in (1, 4); -- Navigate to the products to see where was the null coming from

-- Solution
update products set price =200 where product_id =4; -- Set a price.
update products set price =100 where product_id =1; -- Set a price.

-- Now run the code and you can see no any rows are null :)