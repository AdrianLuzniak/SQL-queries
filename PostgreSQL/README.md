To run queries, download and import the northwind database from
https://www.mediafire.com/file/5tog65gnbuso4nn/northwind.zip/file

Open pgAdmin, then create database.
Databases --> Right Click --> Create --> Database
Enter name for database and select postgres and owner, then click on Save.

Unzip downloaded archive, righ click on created database and select Restore. 
Select "Custom or .tar" format, then select northwind.backup file and click on Restore.

When the database is restored you will receive a message in pgAdmin. Then you can start executing a query by clicking on Query Tool on the created database.

To execute a single query from a given file, it is best to select it in its entirety and then press the Execute or F5 button.

All queries were tested on the northwind database on pgAdmin 7.8 and PostgreSQL 13. 

