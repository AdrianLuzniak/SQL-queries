--Creating temporary temp_order_details table from order_details table
SELECT * INTO TEMP temp_order_details FROM order_details;

SELECT * FROM temp_order_details;

--Calculating SUM of (quantity * unit_price)
SELECT SUM(quantity * unit_price)
FROM temp_order_details;

SELECT product_id FROM products WHERE category_id = 1;

--Deleting products with category_id = 1 from temp_order_details table 
DELETE FROM temp_order_details
WHERE product_id IN
	(SELECT 
	 	product_id 
	 FROM products 
	 WHERE category_id = 1);
	 
SELECT product_id FROM products WHERE category_id = 2;

--Updating price for products with category_id = 2
UPDATE temp_order_details
SET unit_price = unit_price * 1.5
WHERE product_id IN
	(SELECT product_id FROM products WHERE category_id = 2);

--Dropping temporary table
DROP TABLE temp_order_details;