--Selecting data from SalesOrdersHeader for employee, which is returned by subquery
SELECT *
FROM Sales.SalesOrderHeader
WHERE SalesPersonID IN
(
	SELECT sp.BusinessEntityID
	FROM Sales.SalesPerson sp
	WHERE sp.TerritoryID = 1
);

--Selecting BusinessEntityID for DepartmentID = 1
SELECT dh.BusinessEntityID
FROM HumanResources.EmployeeDepartmentHistory dh
WHERE dh.DepartmentID = 1;

--Selecting employees who have ever worked in the department with ID = 1
SELECT *
FROM HumanResources.Employee e
WHERE e.BusinessEntityID IN
(
	SELECT dh.BusinessEntityID
	FROM HumanResources.EmployeeDepartmentHistory dh
	WHERE dh.DepartmentID = 1
);