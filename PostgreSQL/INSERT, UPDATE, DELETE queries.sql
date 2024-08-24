--INSERT

SELECT * FROM categories ORDER BY category_id DESC;

--Inserting Bread category into categories tables
INSERT INTO categories(category_id, category_name)
VALUES (9, 'Bread');


SELECT * FROM products ORDER BY product_id DESC

--Inserting new product Baguette into products table
INSERT INTO products
VALUES (78, 'Baguette', 3, 9, 'piece', 2, 99, 0, 0, 0);


SELECT * FROM orders ORDER BY order_id DESC;

--Inserting new order into orders table
INSERT INTO orders
VALUES (11078, 'FRANK', 7, now(), now()+ '3 days', NULL, 2, 1, 'Ben Benson', 'Padre Rico 8', 'Pueblo Piernico', NULL, 12-345, 'San Escobar');


SELECT * FROM order_details ORDER BY order_id DESC;
--Inserting new order details into order_details table
INSERT INTO order_details
VALUES (11078, 78, 2, 1, 0);

--UPDATE
SELECT * FROM categories WHERE category_id = 9;

--Update description in categories table for record with id 9
UPDATE categories
	SET
		description = 'Bakery products'
WHERE category_id = 9;


SELECT * FROM products WHERE product_id = 78;

--Updating attributes for product with id 78 
UPDATE products
	SET
		quantity_per_unit = 'pcs',
		unit_price = 2.49,
		units_in_stock = 98
WHERE product_id = 78;


--DELETE
--Delete all previously created records
SELECT * FROM categories WHERE category_id = 9;
DELETE FROM categories WHERE category_id = 9;

SELECT * FROM products WHERE product_id = 78;
DELETE FROM products WHERE product_id = 78;

SELECT * FROM orders WHERE order_id = 11078;
DELETE FROM orders WHERE order_id = 11078;

SELECT * FROM order_details WHERE order_id = 11078;
DELETE FROM order_details WHERE order_id = 11078;