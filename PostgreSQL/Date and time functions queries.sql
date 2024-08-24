--Displaying orders with a shipping date and the difference between both dates
SELECT 
	order_date 
	, shipped_date
	, AGE(shipped_date, order_date) as duration
FROM orders;

--Displaying average order shipping time
SELECT
	AVG(AGE(shipped_date, order_date)) AS avg_time_process
FROM orders;

--Displaying orders that have no shipped date, calculating order processing time from today's date
SELECT
	NOW()::DATE,
	order_date,
	AGE(NOW()::DATE, order_date) AS time_to_today
FROM orders
WHERE shipped_date IS NULL;


--If shipped date is null then the default order shipping time is calculated as order_date + 1 month
SELECT 
	order_date,
	COALESCE (shipped_date, order_date + INTERVAL '1 month') AS default_shipped_date
FROM orders
WHERE shipped_date IS NULL;

--Extracting year, month and day from order_date
SELECT
	order_date,
	EXTRACT('year' FROM order_date) AS order_year,
	EXTRACT('month' FROM order_date) AS order_month,
	EXTRACT('day' FROM order_date) AS order_day
FROM orders;