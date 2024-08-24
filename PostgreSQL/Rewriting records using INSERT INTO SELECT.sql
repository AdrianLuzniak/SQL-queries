--Creating temporary table temp_order_details
SELECT product_id, unit_price, quantity INTO TEMP temp_order_details FROM order_details;

--Selecting all records from created temporary table
SELECT * FROM temp_order_details;

--Calculting SUM(quantity * unit_price) for all records in temp_order_details table
SELECT SUM(quantity * unit_price) FROM temp_order_details;

--Delete records with product_id = 1 from temp_order_details table
DELETE FROM temp_order_details WHERE product_id = 1;

--Inserting records with product_id = 1 into temp_order_details with lower price 
INSERT INTO temp_order_details
SELECT product_id, unit_price * 0.9, quantity * 1.2 FROM order_details
WHERE product_id = 1;

--Dropping table temp_order_details
DROP TABLE temp_order_details;
