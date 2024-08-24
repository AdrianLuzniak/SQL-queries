--Displaying phone type using CASE
SELECT *
	,CASE Name
	 WHEN 'Cell'  THEN 'Mobile Phone'
	 WHEN 'Home'  THEN 'Stationary' 
	 WHEN 'Work'  THEN 'Stationary'
	 ELSE 'Other'
	 END AS 'Phone Type'
FROM Person.PhoneNumberType;


--Displaying phone type using CASE with different syntax
SELECT *
	,CASE
	 WHEN Name = 'Cell'  THEN 'Mobile Phone'
	 WHEN Name = 'Home' OR Name = 'Work' THEN 'Stationary'
	 ELSE 'Other'
	 END AS 'Phone Type'
FROM Person.PhoneNumberType;

--Displaying full product sizes using CASE
SELECT ProductID, Name, Size,
CASE 
	WHEN Size = 'S' THEN 'SMALL'
	WHEN Size = 'M' THEN 'MEDIUM'
	WHEN Size = 'L' THEN 'LARGE'
	WHEN Size = 'XL' THEN 'EXTRA LARGE'
	ELSE 'OTHER'
	END
FROM Production.Product;