-- 		  ============== 1. Data Definition Language (DDL), CREATE, ALTER, DROP, TRUNCATE, RENAME ========================================, 
-- Create : Used to create database objects like tables, indexes, and databases.
-- Create database RealEstate_db;
-- use RealEstate_db;
-- 
-- CREATE TABLE Customers (
--     CustomerID int PRIMARY KEY,
--     FirstName varchar(255),
--     LastName varchar(255),
--     Email varchar(255),
--     Phone varchar(20)
-- );

-- There is 5 type of combination available for ALTER Used to modify existing database objects.
-- ALTER TABLE Customers
-- ADD inquery varchar(255);

-- ALTER TABLE Customers
-- DROP COLUMN CustomerID;			
	
-- There is many type of combination available for DROP mainly used to delete database object.
-- DROP DATABASE company_db;
-- describe customers

-- Used to remove all records from a table, but not the table itself.
-- TRUNCATE TABLE table_name;

-- Used to rename database objects.
-- RENAME TABLE customers TO newcustomers ;	

-- 	     ================ 2. Data Manipulation Language (Select , Update, Insert, Delete) MERGE, call, explain plan, lock table ========================================, 
-- use databasename;
-- show tables;
-- select * from tables;
-- select * from customer_dim

-- Question1, how to find out the unique enteries in table
-- select 	count(CustomerName) from customer_dim -- 112
-- select distinct	count(CustomerName) from customer_dim -- 112
-- Answer, All the records are unique
-- select * from customer_fac;
-- Question2, How to select with where 
-- select * from customer_fac where mi_number="103"

-- Second delete command
--  use classicmodels;

-- This command is use to update save updates, SET SQL_SAFE_UPDATES = 0;

-- DELETE FROM customer_fac
-- WHERE mi_customer_name = 'West Coast Collectables Co.';

-- truncate customer_fac  -- to clean table.

-- Update command 
-- Syntax 
-- UPDATE table_name
-- SET column1 = value1, column2 = value2, ...
-- WHERE condition;

-- Question3, update the postal code of 
-- Update customers SET postalcode=5000 , city='Noida' where customerNumber=103

-- update column name
-- UPDATE customer_fac
-- SET 
--     mi_number = 'mi_number',
--     ma_customer_name = 'customer_name',
--     mi_customer_name = 'customer_number',
--     av_salary = 'salary';

-- Question 4, How to inset data into data base 
-- Inset command
-- Syntax

-- INSERT INTO customer_fac (mi_number, ma_customer_name, mi_customer_name, av_salary)
-- VALUES 
-- ('12345', 'MA Customer Name 1', 'MI Customer Name 1', 50000),
-- ('12346', 'MA Customer Name 2', 'MI Customer Name 2', 51000),
-- ('12347', 'MA Customer Name 3', 'MI Customer Name 3', 52000),
-- ('12348', 'MA Customer Name 4', 'MI Customer Name 4', 53000),
-- ('12349', 'MA Customer Name 5', 'MI Customer Name 5', 54000),
-- ('12350', 'MA Customer Name 6', 'MI Customer Name 6', 55000),
-- ('12351', 'MA Customer Name 7', 'MI Customer Name 7', 56000),
-- ('12352', 'MA Customer Name 8', 'MI Customer Name 8', 57000),
-- ('12353', 'MA Customer Name 9', 'MI Customer Name 9', 58000),
-- ('12354', 'MA Customer Name 10', 'MI Customer Name 10', 59000),
-- ('12355', 'MA Customer Name 11', 'MI Customer Name 11', 60000),
-- ('12356', 'MA Customer Name 12', 'MI Customer Name 12', 61000),
-- ('12357', 'MA Customer Name 13', 'MI Customer Name 13', 62000),
-- ('12358', 'MA Customer Name 14', 'MI Customer Name 14', 63000),
-- ('12359', 'MA Customer Name 15', 'MI Customer Name 15', 64000),
-- ('12360', 'MA Customer Name 16', 'MI Customer Name 16', 65000),
-- ('12361', 'MA Customer Name 17', 'MI Customer Name 17', 66000),
-- ('12362', 'MA Customer Name 18', 'MI Customer Name 18', 67000),
-- ('12363', 'MA Customer Name 19', 'MI Customer Name 19', 68000),
-- ('12364', 'MA Customer Name 20', 'MI Customer Name 20', 69000);
