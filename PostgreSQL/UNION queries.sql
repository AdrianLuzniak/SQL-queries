
--A query that joins three tables (employees, customers, shippers) using UNION ALL
SELECT e.last_name, e.first_name, 'EMPLOYEE' AS type --selecting empoyees
FROM employees e
UNION ALL
SELECT --selecting Surname
	SUBSTRING(c.contact_name, POSITION(' ' IN c.contact_name)),
	LEFT(c.contact_name, POSITION(' ' IN c.contact_name)),
	'EMPLOYEE'
FROM customers c 
UNION ALL
SELECT --selecting Surname
	SUBSTRING(c.contact_name, POSITION(' ' IN c.contact_name)),
	LEFT(c.contact_name, POSITION(' ' IN c.contact_name)),
	'SUPPLIER'
FROM suppliers c 
UNION ALL
SELECT  --selecting company name
	s.company_name,
	'',
	'SHIPPER'
FROM shippers s 