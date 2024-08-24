/*Displaying order details
with the total number of orders (total), calculating the price value 
after taking into account the discount (total_after_discount), 
calculating the value of the discount granted (discount_value) for 
which the discount is at least 100. The data has been sorted descending. */

SELECT
	*,
	round(CAST(unit_price * quantity AS decimal), 2) AS total_price,
	round(CAST(unit_price * quantity * (1 - discount) AS DECIMAL), 2) AS total_after_discount,
	round(CAST(unit_price * quantity AS decimal), 2) - round(CAST(unit_price * quantity * (1 - discount) AS DECIMAL), 2) AS discount_value
FROM order_details
WHERE round(CAST(unit_price * quantity AS decimal), 2) - round(CAST(unit_price * quantity * (1 - discount) AS DECIMAL), 2) >= 100
ORDER BY discount_value DESC 