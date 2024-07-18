--      ============================================  3. Data Control Language (DCL) ========================================, 
-- grant , revoke
-- CREATE USER 'AnkitUser1'@'localhost' IDENTIFIED BY 'yourpassword';
-- GRANT SELECT, INSERT, UPDATE ON classicmodels.* TO 'AnkitUser1'@'localhost';
--  ------------to see the all user of the table.
 -- Select user from mysql.user;
-- use classicmodels;
-- SHOW GRANTS FOR 'AnkitUser1@localhost'@'localhost';
-- Revoke SELECT, INSERT, UPDATE ON classicmodels.* FROM 'AnkitUser1'@'localhost';
--      ===============  4. Transaction Control Language (TCL), commit, rollback, savepoint, set transaction ==================================,
-- Example 1 : commit , rollback
-- use classicmodels;

-- Start a new transaction
-- select * from payments;

-- start transaction ;
-- -- Perform some operations
-- UPDATE classicmodels.payments SET amount = amount - 100 WHERE customerNumber = 103;
-- UPDATE classicmodels.payments SET amount = amount + 100 WHERE customerNumber = 112;

-- -- Simulate an error condition (e.g., negative balance check)
-- SET @error_condition = (SELECT amount FROM classicmodels.payments WHERE customerNumber = 103) < 0;
-- -- If there's an error, rollback the transaction
-- IF @error_condition THEN
--     ROLLBACK;
--     SELECT 'Transaction rolled back due to error';
-- ELSE
--     -- Otherwise, commit the transaction
--     COMMIT;
--     SELECT 'Transaction committed successfully';
-- END IF;

-- Example 2 :  savepoint command
