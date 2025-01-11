# Database Query Instructions

This guide provides instructions for setting up the required databases and executing SQL queries on Microsoft SQL Server and PostgreSQL.

## Prerequisites

- **Microsoft SQL Server**: Tested with SQL Server 19.3.4.
- **PostgreSQL**: Tested with pgAdmin 7.8 and PostgreSQL 13.

---

## Microsoft SQL Server: AdventureWorks Database Setup

### Steps to Install and Restore AdventureWorks Database
1. **Download the AdventureWorks Database**:
   - Visit the official Microsoft website: [AdventureWorks Database](https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver16&tabs=ssms).

2. **Restore Database in SQL Server Management Studio (SSMS)**:
   - Place the downloaded `.bak` file on your `C:\` drive.
   - Open **SQL Server Management Studio (SSMS)**.
   - Right-click on **Databases** and select **Restore Database**.
   - Choose the **Device** option, and navigate to the `.bak` file location on your C drive.
   - Configure the necessary restore settings and click **OK** to restore the database.

### Executing Queries
- Open a query window in SSMS.
- Select the query you wish to execute.
- Press **Execute** or hit **F5**.

---

## PostgreSQL: Northwind Database Setup

### Steps to Install and Restore Northwind Database
1. **Download the Northwind Database**:
   - Download the Northwind archive: [Northwind Database](https://www.mediafire.com/file/5tog65gnbuso4nn/northwind.zip/file).

2. **Create a Database in pgAdmin**:
   - Open **pgAdmin**.
   - Navigate to **Databases** > **Right-click** > **Create** > **Database**.
   - Enter a name for the database.
   - Set `postgres` as the owner and click **Save**.

3. **Restore the Database**:
   - Extract the contents of the downloaded archive.
   - Right-click on the newly created database and select **Restore**.
   - Set the format to **Custom or .tar**, and select the `northwind.backup` file.
   - Click **Restore** and wait for a success message in pgAdmin.

### Executing Queries
- Open the **Query Tool** in pgAdmin for the created database.
- Select the desired query.
- Press **Execute** or hit **F5**.

---

## Notes
- Ensure that your database versions match those specified in the guide for compatibility.
- Execute one query at a time by selecting it entirely to avoid errors.