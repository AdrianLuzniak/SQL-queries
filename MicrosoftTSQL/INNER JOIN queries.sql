--Selecting records from Person and SalesPersons tables 
SELECT
	p.FirstName
	,p.LastName
	, sp.Bonus
FROM Person.Person p
JOIN Sales.SalesPerson sp
ON p.BusinessEntityID = sp.BusinessEntityID;

--Selecting data from SalesOrderHeader and SalesOrderDetail tables
SELECT
	soh.SalesOrderID
	,soh.OrderDate
	,soh.SalesOrderNumber
	,sod.ProductID
	,sod.OrderQty
	,sod.UnitPrice
FROM Sales.SalesOrderHeader soh
JOIN Sales.SalesOrderDetail sod
ON soh.SalesOrderID = sod.SalesOrderID;


--Selecting data from ProductCategory and ProductSubcategory with aliases
SELECT pc.Name AS 'Category Name'
	, psc.Name AS 'Product Subcategory Name'
FROM Production.ProductCategory pc
JOIN Production.ProductSubcategory psc
ON pc.ProductCategoryID = psc.ProductCategoryID;

--Selecting data from ProductCategory and ProductSubcategory with aliases, counting number of categories. Data sorted ASCENDING by CategoryName
SELECT pc.Name AS 'Category Name'
	, COUNT(psc.Name) AS 'Amount of subcategories'
FROM Production.ProductCategory pc
JOIN Production.ProductSubcategory psc
ON pc.ProductCategoryID = psc.ProductCategoryID
GROUP BY pc.Name
ORDER BY 'Category Name';

--Counting number of reviews for specific product.
SELECT p.Name, COUNT(*) AS 'ReviewAmount'
FROM Production.Product p 
JOIN Production.ProductReview pr
ON p.ProductID = pr.ProductID
GROUP BY p.Name;

--Calculating which employees worked more shifts
SELECT
	p.FirstName
	,p.LastName
	, COUNT(*) 
FROM HumanResources.EmployeeDepartmentHistory edh
JOIN Person.Person p
ON edh.BusinessEntityID = p.BusinessEntityID
GROUP BY p.FirstName, p.LastName
HAVING COUNT(*) > 1;