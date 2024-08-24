--Calculating age based on DATE
DECLARE @MyBirthDate DATE ='1990-01-01'
DECLARE @Today DATE = GetDate()
SELECT (DATEDIFF(day, @MyBirthDate, @Today)) AS AgeInDays,
	   (DATEDIFF(year, @MyBirthDate, @Today)) AS AgeInYears;

--Selecting employees, who are one year younger or older than the user with the login adventure-works\diane1
--Checking birth date
SELECT *
FROM HumanResources.Employee
WHERE LoginID = 'adventure-works\diane1';
--BirthDate 1986-06-05
--Selecting employees
SELECT *
FROM HumanResources.Employee
WHERE BirthDate BETWEEN DATEADD(year,-1, '1986-06-05') 
AND DATEADD(year,+1, '1986-06-05'); 

--Selecting employees, who are one year younger or older than the user with the login adventure-works\diane1 with saving the date in a variable
DECLARE @BD DATE
SELECT @BD = BirthDate
FROM HumanResources.Employee
WHERE LoginID = 'adventure-works\diane1';

SELECT *
FROM HumanResources.Employee
WHERE BirthDate BETWEEN DATEADD(year,-1, @BD) 
AND DATEADD(year,+1, @BD); 
