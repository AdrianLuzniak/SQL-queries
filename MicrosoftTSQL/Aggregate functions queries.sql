--Counting SalesOrders made by individual employees, data sorted by AmountOfOrders DESCENDING
SELECT SalesPersonID, COUNT(*) AS 'AmountOfOrders'
FROM Sales.SalesOrderHeader
GROUP BY SalesPersonID
ORDER BY AmountOfOrders DESC;

--Counting SalesOrders made by individual employees in 2012 year, data sorted by AmountOfOrders DESCENDING
SELECT SalesPersonID, COUNT(*) AS 'AmountOfOrders'
FROM Sales.SalesOrderHeader
WHERE YEAR(OrderDate) = 2012
GROUP BY SalesPersonID
ORDER BY AmountOfOrders DESC;

--Counting SalesOrders made by individual employees in 2012 year WHERE SUM(SubTotal) > 100000, data sorted by AmountOfOrders DESCENDING
SELECT SalesPersonID, COUNT(*) AS 'AmountOfOrders'
FROM Sales.SalesOrderHeader
WHERE YEAR(OrderDate) = 2012
GROUP BY SalesPersonID
HAVING SUM(SubTotal) > 100000
ORDER BY AmountOfOrders DESC;

--Counting orders with different delivery methods
SELECT ShipMethodID, COUNT(*) AS 'Different ship methods'
FROM Sales.SalesOrderHeader
GROUP BY ShipMethodID;

--Selecting Product basic informations WHERE ListPrice <=0 AND (ListPrice - StandardCost) <=0, calculating Profit
SELECT ProductID
	 , Name
	 , StandardCost
	 , ListPrice
	 , (ListPrice - StandardCost) AS 'Profit'
FROM Production.Product
WHERE ListPrice <=0 AND (ListPrice - StandardCost) <=0;

--Calculating which product categories are the most, the result is sorted DESCENDING by average profit
SELECT ProductSubcategoryID
	 , MIN(ListPrice - StandardCost) AS 'Min profit'
	 , AVG(ListPrice - StandardCost) AS 'Avg profit'
	 , MAX(ListPrice - StandardCost) AS 'Max Profit'
FROM Production.Product
GROUP BY ProductSubcategoryID
ORDER BY [Avg profit] DESC;