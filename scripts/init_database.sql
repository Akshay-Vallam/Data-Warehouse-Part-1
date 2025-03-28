/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
WARNING:
    Running this script will drop the entire 'DataWarehouse' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/

-- Drop the DataWarehouse database if it exists (must be done outside of a transaction block)
DROP DATABASE IF EXISTS "DataWarehouse";

-- Create the DataWarehouse database
CREATE DATABASE "DataWarehouse";

-- Connect to the newly created DataWarehouse database
-- This command is run in the psql session, or through your PostgreSQL client (you cannot use \c in a script).

-- After connecting to "DataWarehouse", create the schemas
CREATE SCHEMA IF NOT EXISTS bronze;
CREATE SCHEMA IF NOT EXISTS silver;
CREATE SCHEMA IF NOT EXISTS gold;