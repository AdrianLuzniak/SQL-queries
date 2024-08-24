--Selecting orders ordered by Buchachan using JOIN
SELECT
	*
FROM orders o
JOIN employees e ON o.employee_id = e.employee_id
WHERE e.last_name = 'Buchanan';

--Selecting orders with customer_id of citizens of USA using subquery
SELECT
	*
FROM orders
WHERE customer_id IN
	(SELECT
		customer_id
	FROM customers
	WHERE country = 'USA');

--Selecting orders with customer_id of citizens of USA using JOIN
SELECT
	*
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
WHERE c.country = 'USA';   