--Extracting unique records using SELECT DISTINCT
SELECT DISTINCT country, city FROM customers;
SELECT DISTINCT contact_title FROM customers;
SELECT DISTINCT ship_postal_code FROM orders;
SELECT DISTINCT ship_postal_code, ship_country FROM orders;

--Extracting records with limiting the displayed rows and offsetting the displayed results
SELECT product_name, unit_price, quantity_per_unit FROM products LIMIT 10;
SELECT product_name, unit_price, quantity_per_unit FROM products LIMIT 10 OFFSET 10;
SELECT product_name, unit_price, quantity_per_unit FROM products LIMIT 10 OFFSET 20;
