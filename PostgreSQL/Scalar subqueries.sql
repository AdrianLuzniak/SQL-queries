--Selecting most expensive product from products table
SELECT *
FROM products
WHERE unit_price = (SELECT MAX(unit_price) FROM products);

--Selectings products and sorting data by deviation
SELECT
	product_name, 
	unit_price,
	unit_price - (SELECT AVG(unit_price) FROM products) AS deviation
FROM products 
ORDER BY deviation;

--Selecting all employees, which were hired at the same time as the first employees
SELECT * 
FROM employees
WHERE EXTRACT('year' FROM hire_date) = 
(SELECT MIN(EXTRACT('year' FROM hire_date)) FROM employees);
