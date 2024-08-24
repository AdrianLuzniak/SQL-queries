
--Aggregating records using aggregate functions
--Calculating amount of products, average price of products, minimal price, maximum price and SUM of units in stock
SELECT
	COUNT(*),
	AVG(unit_price),
	MIN(unit_price),
	MAX(unit_price),
	SUM(units_in_stock),
	STRING_AGG(product_name, ', ')
FROM public.products;


--Aggregating smaller subsets of data using GROUP BY
--Counting the number of customers from a given country
SELECT
	country,
	COUNT(*) AS customers_amount
FROM public.customers
GROUP BY country
ORDER BY customers_amount DESC;

--Counting the number of orders sent to a given country
SELECT
	COUNT(*) AS orders_amount,
	ship_country
FROM public.orders
GROUP BY ship_country
ORDER BY orders_amount DESC;


--Calculating the average price of products shipped by a supplier for a specific product category
SELECT
	supplier_id, 
	category_id,
	AVG(unit_price) AS avg_price
FROM public.products 
GROUP BY supplier_id, category_id
ORDER BY avg_price DESC;