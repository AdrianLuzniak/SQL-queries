--Selecting all people from Person table, even those who did not provide a phone number
SELECT p.LastName, p.FirstName
	, pp.PhoneNumber
FROM Person.Person p
LEFT JOIN Person.PersonPhone pp 
ON p.BusinessEntityID = pp.BusinessEntityID;

--Displaying only those who did not provide a phone number
SELECT p.LastName, p.FirstName
	, pp.PhoneNumber
FROM Person.Person p
LEFT JOIN Person.PersonPhone pp 
ON p.BusinessEntityID = pp.BusinessEntityID
WHERE pp.PhoneNumber is NULL;

--Checking if some UnitMeasure is unused using JOINs and CASE
SELECT um.Name, um.UnitMeasureCode
	, pSize.SizeUnitMeasureCode, pWeight.WeightUnitMeasureCode, 
CASE 
WHEN pSize.SizeUnitMeasureCode IS NOT NULL THEN 'Is used as a size'
WHEN pWeight.WeightUnitMeasureCode IS NOT NULL THEN 'Is used as a weight'
ELSE '???'
END
FROM Production.UnitMeasure um
LEFT JOIN Production.Product pSize
ON pSize.SizeUnitMeasureCode = um.UnitMeasureCode
LEFT JOIN Production.Product pWeight
ON pWeight.WeightUnitMeasureCode = um.UnitMeasureCode;

--Selecting only those units of measurement that are not used anywhere
SELECT um.Name, um.UnitMeasureCode
	, pSize.SizeUnitMeasureCode, pWeight.WeightUnitMeasureCode
FROM Production.UnitMeasure um
LEFT JOIN Production.Product pSize
ON pSize.SizeUnitMeasureCode = um.UnitMeasureCode
LEFT JOIN Production.Product pWeight
ON pWeight.WeightUnitMeasureCode = um.UnitMeasureCode
WHERE pSize.SizeUnitMeasureCode IS NULL AND pWeight.WeightUnitMeasureCode IS NULL;
