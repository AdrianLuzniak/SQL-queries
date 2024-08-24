--Selecting records where MiddleName is NULL
SELECT *
FROM Person.Person
WHERE MiddleName IS NULL;

--Selecting records where MiddleName is NOT NULL
SELECT *
FROM Person.Person
WHERE MiddleName IS NOT NULL;

--Selecting records from Person table with with double space elimination in MiddleName
SELECT FirstName, MiddleName, LastName, FirstName + ' ' + ISNULL(MiddleName + ' ', '') + LastName
FROM Person.Person;

--Selecting Products basic data, displaying Size/Weight/ListPrice
SELECT ProductID, Name, Size, Weight, ListPrice
	 , COALESCE(Size, CAST(Weight AS VARCHAR), CAST(ListPrice AS VARCHAR))
FROM Production.Product;

--Displaying basic Products information. If the size is given, it will display S with value, if the weight is W, otherwise L
SELECT ProductID, Name, Size, Weight, ListPrice
	 , COALESCE('S:' + Size, 'W:' + CAST(Weight AS VARCHAR), 'L:' + CAST(ListPrice AS VARCHAR))
FROM Production.Product;