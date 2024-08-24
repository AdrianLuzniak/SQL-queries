--Filtering records returned by GROUP BY using HAVING
--Displaying products with total in stock greater than 500
SELECT
	category_id,
	SUM(units_in_stock)	
FROM public.products
GROUP BY category_id
HAVING SUM(units_in_stock) >= 500;

--Displaying countries with at least 10 customers
SELECT
	c.country,
	COUNT(c.customer_id)
FROM customers c
GROUP BY c.country
HAVING COUNT(c.customer_id) >= 10
ORDER BY COUNT(c.customer_id) DESC;

--Displaying positions where at least 5 people are employed
SELECT
	c.contact_title,
	COUNT(c.customer_id)
FROM customers c
GROUP BY c.contact_title
HAVING COUNT(c.customer_id) >= 5
ORDER BY COUNT(c.customer_id) DESC;

--Displaying orders/products whose attributes are BETWEEN values ​​in a range (including extreme values)
SELECT * FROM orders WHERE  order_id BETWEEN 10400 AND 10500;
SELECT * FROM orders WHERE order_date BETWEEN '1997-01-01' AND '1997-12-31';
SELECT * FROM products WHERE unit_price BETWEEN 10 AND 20;
SELECT * FROM products WHERE unit_price BETWEEN 10.001 AND 20;

--Displaying records that have values ​​listed IN parentheses
SELECT * FROM customers WHERE city IN ('Berlin', 'London', 'Madrid')
SELECT * FROM customers WHERE country NOT IN ('Brazil', 'USA', 'Venezuela')
SELECT * FROM products 
WHERE category_id NOT IN (1, 2, 3) AND quantity_per_unit IN ('25 - 825 g 
cans', '4 - 450 g glasses','12 - 12 oz cans','10 - 500 g pkgs.')