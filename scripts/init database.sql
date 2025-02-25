USE master;
GO

CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

CREATE SCHEMA bronze;
GO
CREATE SCHEMA Silver;
GO
CREATE SCHEMA Gold;
GO

/*
code of creating a Database and Schemas 

WARNING;
     running the script will drop the entire "DataWAreHouse" database if it is exists.
     or it leads to delete all data in database will be delete permanently. (/sad emote/).
     be ensure to use  drop and  recreate with proper bACkup before runing the script 
*/
USE master;
GO
IF EXISTS (SELECT 1 FROM sys.databases WHERE name='DataWarehouse')
BEGIN
  ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DataWarehouse;
END;
GO
  
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

CREATE SCHEMA bronze;
GO
CREATE SCHEMA Silver;
GO
CREATE SCHEMA Gold;
GO
