--Selecting records from products, categories and suppliers tables
SELECT
	p.product_name,
	c.category_name,
	s.company_name
FROM products AS p
JOIN categories AS c ON p.category_id = c.category_id
JOIN suppliers AS s ON p.supplier_id = s.supplier_id;

--Selecting records from order_details, orders, products, customers tables
SELECT
	od.unit_price, od.quantity,
	o.order_date,
	p.product_name,
	c.company_name
FROM order_details AS od
JOIN orders AS o ON od.order_id = o.order_id
JOIN products AS p ON od.product_id = p.product_id
JOIN customers AS c ON c.customer_id= o.customer_id;

--Selecting records from customers, orders, order_details, products with calculating the value of orders from 1998 and data sorting
SELECT
	c.company_name,
	round(CAST(SUM(p.unit_price * od.quantity) AS decimal (10,2)), 2) AS order_value
FROM customers AS c
JOIN orders AS o ON c.customer_id = o.customer_id
JOIN order_details AS od ON o.order_id = od.order_id
JOIN products AS p ON od.product_id = p.product_id
WHERE o.order_date BETWEEN DATE'1998-01-01' AND DATE '1998-12-31'
GROUP BY c.company_name
ORDER BY order_value DESC;