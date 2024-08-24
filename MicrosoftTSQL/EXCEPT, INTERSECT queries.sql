--Selecting all people, which are NOT employees 
SELECT p.LastName, p.FirstName
FROM Person.Person p
EXCEPT
SELECT p.LastName, p.FirstName
FROM HumanResources.Employee e
JOIN Person.Person p ON e.BusinessEntityID = p.BusinessEntityID;

--Selecting all people, which are employees 
SELECT p.LastName, p.FirstName
FROM Person.Person p
INTERSECT
SELECT p.LastName, p.FirstName
FROM HumanResources.Employee e
JOIN Person.Person p ON e.BusinessEntityID = p.BusinessEntityID;