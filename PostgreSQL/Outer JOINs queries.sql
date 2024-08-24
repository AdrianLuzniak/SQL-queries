--Selecting products that have no matching order
SELECT 
	p.product_name, od.order_id 
FROM products p 
LEFT JOIN order_details od ON od.product_id = p.product_id 
WHERE od.order_id IS NULL; 

--Selecting companies that have no matching orders
SELECT 
	c.company_name
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE order_id IS NULL;

--Counting all customers, even those who haven't ordered anything
SELECT
	COUNT(*)
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;

--Counting all orders, even those that were not ordered
SELECT
	COUNT(*)
FROM orders o 
LEFT JOIN customers c ON c.customer_id = o.customer_id;