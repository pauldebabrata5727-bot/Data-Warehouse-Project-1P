/*
---------------------------------------------------------------
Create Database and Schemas
---------------------------------------------------------------

Purpose:

This scripts create a new databse named 'Dataproject' after checking if it is alreday exists.
This scripts also create 3 different schemas named 'bronze', 'silver', 'gold'.

Warning:

Before creating database or running any scripts proceed with caution and ensure you have proper backups.
*/

Create DATABASE IF NOT EXISTS Dataproject;

USE Dataproject;

Create DATABASE IF NOT EXISTS bronze;
Create DATABASE IF NOT EXISTS silver;
Create DATABASE IF NOT EXISTS gold;
