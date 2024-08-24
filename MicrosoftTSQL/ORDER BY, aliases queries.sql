--ORDER BY
--Calculating Age for all records and sorting data descending
SELECT BirthDate, YEAR(GetDate()) - YEAR(BirthDate) AS Age
FROM HumanResources.Employee
ORDER BY Age DESC;

--Selecting basic Products data and sorting it ASCENDING by Class, Style 
SELECT ProductID, Name, ListPrice, Class, Style, Color
FROM Production.Product
ORDER BY Class, Style;

--Selecting basic Products data and sorting it ASCENDING by Class, Style, but using numbers
SELECT ProductID, Name, ListPrice, Class, Style, Color
FROM Production.Product
ORDER BY 4, 5;

--Aliases
--Selecting SalesOrders with ProductID, UnitPrice, TaxAmt
SELECT 
 SalesOrderNumber
 ,ProductID
 ,UnitPrice
 ,TaxAmt
FROM Sales.SalesOrderHeader AS SOH
JOIN Sales.SalesOrderDetail AS SOD
ON SOH.SalesOrderID = SOD.SalesOrderID;

--Selecting Products and SalesOrders IDs with calculating TotalPrice WHERE TotalPrice > 10000
SELECT 
 sod.ProductID
 ,sod.SalesOrderID
 ,sod.OrderQty * sod.UnitPrice AS TotalPrice
FROM Sales.SalesOrderDetail sod
WHERE sod.OrderQty * sod.UnitPrice > 10000;