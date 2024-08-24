To execute queries you need to download and restore AdventureWorks database to Microsoft SQL server.

You can download DB here https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver16&tabs=ssms

Then paste DB on your C drive, open SSMS and right click on Databases --> Restore Database.
Select Device, enter the path for your DB on C drive, set needed restore settings, then click on OK. 

To execute a single query from a given file, it is best to select it in its entirety and then press the Execute or F5 button.

All queries were tested on AdventureWorks2016 database in SQL Server 19.3.4.