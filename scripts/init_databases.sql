/*
==============================================================
  Project      : Data Warehouse
  Description  : Database initialization script
				         This script wil create database- "Datawarehouse" after checking if it already exists.
				         If database exists then it wil drop the previous database and create a new database. It wil also create three schemas
                 in the database name: 'bronze','silver', 'gold'.
  Warning	     : Running this script will delete the entire Datawarehouse database if already exists.
				         All the data in the database will be deleted. Please take backup before running the script
  Author       : Arnab
  Created On   : 16/07/2026
  SQL Server   : SQL Server 2019/2022
==============================================================
*/

USE master;
GO

/*==============================================================
  Drop Database if it Already Exists
==============================================================*/

IF EXISTS (
    SELECT 1
    FROM sys.databases
    WHERE name = 'Datawarehouse'
)
BEGIN
    ALTER DATABASE Datawarehouse
    SET SINGLE_USER
    WITH ROLLBACK IMMEDIATE;

    DROP DATABASE Datawarehouse;
END
GO

/*==============================================================
  Create Database
==============================================================*/

CREATE DATABASE Datawarehouse;
GO

USE Datawarehouse;
GO

/*==============================================================
  Create Schemas
==============================================================*/

CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO

/*==============================================================
  Database Initialization Completed Successfully
==============================================================*/
