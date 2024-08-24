--UNION
--Selecting data from SalesPerson and Person, then UNION to Person and HumanResources table. Data sorted ASCENDING by JOB column
SELECT p.FirstName, p.LastName, 'Seller' AS Job
FROM Sales.SalesPerson sp
JOIN Person.Person p ON sp.BusinessEntityID = p.BusinessEntityID
UNION
SELECT p.FirstName, p.Lastname, e.JobTitle
FROM Person.Person p
JOIN HumanResources.Employee e ON p.BusinessEntityID = e.BusinessEntityID
ORDER BY Job;

--Selecting data from Department table, then UNION to Store table. Data sorted ASCENDING by Name
SELECT d.Name, 'Department' AS 'Location'
FROM HumanResources.Department d
UNION
SELECT s.Name, 'Store'
FROM Sales.Store s
ORDER BY Name;

--UNION ALL
--Selecting data from Person table, then UNION ALL to Employee table
SELECT p.LastName, p.FirstName
FROM Person.Person p
UNION ALL
SELECT p.LastName, p.FirstName
FROM HumanResources.Employee e
JOIN Person.Person p ON e.BusinessEntityID = p.BusinessEntityID;
