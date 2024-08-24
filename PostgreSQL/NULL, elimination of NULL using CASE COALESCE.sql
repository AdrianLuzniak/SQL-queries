--Displaying individual values ​​from tables that are NULL
SELECT * FROM orders WHERE shipped_date IS NULL;
SELECT * FROM orders WHERE order_date  IS NULL;
SELECT * FROM customers WHERE fax IS NULL;
SELECT COUNT(*) FROM customers WHERE region IS NULL; --counting customers where region is NULL
SELECT COUNT(DISTINCT country) FROM customers WHERE region IS NULL;

--Displaying the value, and if the value is NULL, displaying the next value given in the COALESCE/CASE function
SELECT
	company_name
	, COALESCE (region, country) AS region_country
	, CASE
		WHEN fax is NULL THEN 'phone'
		ELSE 'UNKNOWN'
	END AS fax_phone,
	COALESCE(homepage, 'no website') AS website
FROM suppliers;

--Displaying orders. If shipped_date is NULL then 'not shipped yet' is displayed
SELECT
	order_id
	, COALESCE(CAST(shipped_date AS CHAR(10)), 'not shipped yet') AS shipped_info
FROM orders
ORDER BY shipped_info DESC;


--Displaying and categorizing products based on ID using the CASE function
SELECT
	product_name
	, category_id
	, CASE 
		WHEN category_id = 1 THEN 'Beverages'
		WHEN category_id = 2 THEN 'Condiments'
		WHEN category_id = 3 THEN 'Confections'
		ELSE 'other'
	END AS specific_category
FROM products;