--Selecting UnitMeasures, which are used in Product table
SELECT *
FROM Production.UnitMeasure um
WHERE 
EXISTS (SELECT * FROM Production.Product p 
WHERE um.UnitMeasureCode = p.SizeUnitMeasureCode OR
	  um.UnitMeasureCode = p.WeightUnitMeasureCode);

--Selecting Products, which have ListPrice > than ListPrice for each ProductSubcategoryID = 1
SELECT *
FROM Production.Product p1
WHERE p1.ListPrice > ALL(SELECT ListPrice FROM Production.Product p2 
		WHERE p2.ProductSubcategoryID = 1);

--Displaying those records where ListPrice is greater than ListPrice for at least one product from the ProductSubcategoryID = 1
SELECT *
FROM Production.Product p1
WHERE p1.ListPrice > ANY(SELECT ListPrice FROM Production.Product p2 
		WHERE p2.ProductSubcategoryID = 1);