/*
=========================================================
Create Database and Schemas
==========================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse' after checking if it already exists.
    If the databases exists, it is dropped and recreated.Additionally,the script sets up three 
    Schemas within database: 'Bronze','Silver', and 'gold'/

WARNING:

Running this script will drop the entire 'Datawarehouse' database if it exists.
All data in database will be permanently deleted.Proceed with caution
and ensure you have proper backups beofore running this script.

Use master;

--Drop and recreate 'Datawarehouse' database
if exists(select 1 from sys.databases where name ='Datawarehouse')
Begin
      Alter database datawarehouse Set single_user with ROLLBACK IMMEDIATE;
      Drop Database Datawarehouse;
End;

--Create the 'Datawarehouse' database
Create database datawarehouse;

use datawarehouse;

--Create schemas
Create schema bronze;

Create schema silver;

Create schema Gold;

