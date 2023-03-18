# Supporting CRUD site for ETL Test Automation created using ASP.NET Core & MS SQL Server

## Environment Setup Guide (Windows)
1. Download Visual Studio from https://visualstudio.microsoft.com/
2. Install with ASP.NET & SQL Server Support

## Project Configuration Guide
1. After Installation is complete click on Create New Project
2. Select Language as C# , Platform as All Platforms , Type as Web
3. Select ASP.NET Core Web App and click Next
4. Select your desired Project Name, Location and Framework
5. Uncheck Configure for HTTPS and Create
6. From Server Explorer Click on Connect
7. Select Microsoft SQL Server (SqlClient)
8. Identify Server Name from SQL Server Configuration Manager
	1. Open SQL Server Configuration Manager
	2. Go to SQL Server Services and Locate the Server
	3. Right Click & Go to Properties
	4. Switch to Service Tab
	5. Observe the Hostname
	6. Open CMD
	7. Type "sqlcmd -S [Hostname]"
	8. After executing you should be able to execute sql statements in the server
	9. If there is an error go back to configuration manaer -> Properties for the server and use [Hostname]\The name part that is in parenthesis
	10. Run Steps f-h again
9. Enter the Server Name and necessary credentials
10. Select or Create a database (If the Database does not exist then there will be a prompt to create it)
11. Execute the following SQL Command on the Database
	<pre><code>CREATE TABLE clients (
		id INT NOT NULL PRIMARY KEY IDENTITY,
		name VARCHAR (100) NOT NULL,
		email VARCHAR (150) NOT NULL UNIQUE,
		phone VARCHAR(20) NULL,
		address VARCHAR(100) NULL,
		created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
	);

	INSERT INTO clients (name, email, phone, address)
	VALUES
	('Bill Gates', 'bill.gates@microsoft.com', '+123456789', 'New York, USA'),
	('Elon Musk', 'elon.musk@spacex.com', '+111222333', 'Florida, USA'),
	('Will Smith', 'will.smith@gmail.com', '+111333555', 'California, USA'),
	('Bob Marley', 'bob@gmail.com', '+111555999', 'Texas, USA'),
	('Cristiano Ronaldo', 'cristiano.ronaldo@gmail.com', '+32447788993', 'Manchester, England'),
	('Boris Johnson', 'boris.johnson@gmail.com', '+4499778855', 'London, England');</code></pre>
12. Now from Project Explorer Right Click on the Project Name
13. Select Manage NuGet Packages
14. Switch to Browse and write System.Data.SqlClient
15. Install the first result option
