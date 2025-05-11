/*
=============================================================
Ce script crée une base de données appelée 'DataWarehouse' si elle n'existe pas déjà.
Ensuite, il ajoute trois schémas : 'bronze', 'silver' et 'gold', s'ils n'existent pas.
=============================================================

*/


IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    CREATE DATABASE DataWarehouse;
END;
GO

-- Use the 'DataWarehouse' database
USE DataWarehouse;
GO

-- Create Schemas if they do not already exist
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'bronze')
BEGIN
    EXEC('CREATE SCHEMA bronze');
END;
GO

IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'silver')
BEGIN
    EXEC('CREATE SCHEMA silver');
END;
GO

IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'gold')
BEGIN
    EXEC('CREATE SCHEMA gold');
END;
GO

