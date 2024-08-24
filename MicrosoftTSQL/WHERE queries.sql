--WHERE

-- Selecting men who were born in 1980
SELECT * FROM HumanResources.Employee
WHERE BirthDate BETWEEN '1980-01-01' AND '1980-12-31' 
AND Gender = 'M';

--Selecting data for men and woman, which have the specified number of vacation hours
SELECT
	JobTitle, BirthDate, Gender, VacationHours
FROM HumanResources.Employee
WHERE Gender = 'M' AND VacationHours BETWEEN 90 AND 99
OR	  Gender ='F' AND VacationHours BETWEEN 80 AND 89;

--Selecting data for men and woman, which have the specified number of vacation hours and were born after 1991-01-01
SELECT
	JobTitle, BirthDate, Gender, VacationHours
FROM HumanResources.Employee
WHERE (Gender = 'M' AND VacationHours BETWEEN 90 AND 99
OR	Gender ='F' AND VacationHours BETWEEN 80 AND 89)
AND BirthDate >= '1990-01-01';

--Selecting employees, which have the title given IN brackets
SELECT
	*
FROM HumanResources.Employee
WHERE JobTitle IN ( 'Marketing Specialist', 
					'Control Specialist');
					

--WHERE - strings

--Selecting products, which contains in Name at least one number in range of 0-9
SELECT *
FROM Production.Product
WHERE Name LIKE '%[0-9]%';

--Selecting products, which contains in Name two numbers next to each other both in range of 0-9
SELECT *
FROM Production.Product
WHERE Name LIKE '%[0-9][0-9]%';

--Selecting products, which contains in Name two numbers next to each other both in range of 0-9, but do not end with a number from the range 0-9
SELECT *
FROM Production.Product
WHERE Name LIKE '%[0-9][0-9]%[^0-9]';

--Selecting products, which contains in Name any four characters
SELECT *
FROM Production.Product
WHERE Name LIKE '____';