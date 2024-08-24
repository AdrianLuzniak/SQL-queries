--Calculating average SickLeaveHours for employee with specific login
SELECT e.LoginID, e.SickLeaveHours
	, (SELECT AVG(SickLeaveHours) FROM HumanResources.Employee)  AS 'AvgSickLeaveHours'
FROM HumanResources.Employee e;

--Calculating difference between SickLeaveHours and AvgSickLeaveHours
SELECT e.LoginID, e.SickLeaveHours
	, (SELECT AVG(SickLeaveHours) FROM HumanResources.Employee)  AS 'AvgSickLeaveHours'
	, e.SickLeaveHours - (SELECT AVG(SickLeaveHours) FROM HumanResources.Employee)  AS 'SickLeaveDiff'
FROM HumanResources.Employee e;

--Selecting only employees, which have SickLeaveHours greater than average
SELECT e.LoginID, e.SickLeaveHours
	, (SELECT AVG(SickLeaveHours) FROM HumanResources.Employee)  AS 'AvgSickLeaveHours'
	, e.SickLeaveHours - (SELECT AVG(SickLeaveHours) FROM HumanResources.Employee)  AS 'SickLeaveDiff'
FROM HumanResources.Employee e
WHERE e.SickLeaveHours > (SELECT AVG(SickLeaveHours) FROM HumanResources.Employee)
ORDER BY SickLeaveDiff DESC;