
--Extracting records, that contain a specific string of characters from a table PRODUCTS using LIKE
SELECT * FROM products WHERE quantity_per_unit LIKE '%bag%';
SELECT * FROM products WHERE quantity_per_unit LIKE '%bottle%';
SELECT * FROM products WHERE product_name ILIKE '%hot%';

--Extracting records, that contain a specific string of characters from a table SUPPLIERS using LIKE
SELECT * FROM suppliers WHERE contact_title LIKE '%manager%';
SELECT * FROM suppliers WHERE contact_name LIKE '%Peter%';
SELECT * FROM suppliers WHERE city LIKE '_____';


--Extracting records that meet a specific logical condition
SELECT * FROM products WHERE unit_price >= 100 AND units_in_stock >= 10;
SELECT * FROM products WHERE units_in_stock = 0 and reorder_level = 0;
SELECT * FROM products WHERE units_in_stock = 0 AND reorder_level <> 0;
SELECT * FROM products WHERE quantity_per_unit LIKE '%bottle%' AND (unit_price >= 100 AND units_in_stock > 0 OR units_in_stock > 100);
 