USE master;
GO
-- delete the database if exists
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'data_warehouse')
BEGIN
    ALTER DATABASE data_warehouse
    SET SINGLE_USER
    WITH ROLLBACK IMMEDIATE;

    DROP DATABASE data_warehouse;
END
GO

  -- creating the database 
CREATE DATABASE data_warehouse;
GO

USE data_warehouse;
GO

  -- creating the schema 
CREATE SCHEMA bronze;
GO
CREATE SCHEMA SILVER;
GO
CREATE SCHEMA gold;
GO
