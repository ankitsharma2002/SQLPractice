--  ======================  5. Data Query Language (DQL)===========================================, 
--  ============== Data Enginner SQL points , 
-- select
-- where clause
-- order by
-- aggregative functions (MIN, MAX, AVG, COUNT)
-- Joins (Inner, Left,Right, Full)
-- Union
-- Group by
-- case statement
-- CTE
-- Date time / time stamp, adding/subtacting,month/date
-- IF Null /  IS null
-- Coalesce
-- numbering function (Rank, Dense_rank, row_number)
-- formating date time
-- Creating function
-- conversion function Cast, Int/float/string
-- Merge state for upsert
-- Qualify

-- ============== Important points ==========,
-- Aggregation functions
-- select * from classicmodels.customers ;

-- 1. Avg = select the average creditLimit of the customers
-- use classicmodels;
-- select avg(creditLimit) from customers ; Ans '67659.016393'


-- select Distinct(Count(customerNumber)) from classicmodels.customers;  -112
-- select Count(customerNumber) from classicmodels.customers ; -112
-- Answer No duplicates available. 

-- 2. MAX, MiN 
-- select MAX(customerNumber), min(customerNumber) from customers; -- 496, 103

-- 3. Sum, count, count(*), distinct
-- write the command of sum of amount and number of distinct payment from customers
-- select  distinct(count(customerNumber)) as UniqueCustomerNumberCount ,Sum(amount) as TotalAmountInTable from payments; -- Answer,  '273', '8853839.23'

-- 4. DRL (Data Retriewal language) / DSL (Data selection)
-- (Select, From , Where,Not IN,In, between, Group by, having, order by, as ,distinct,  Like (Escape character '%N') )
-- 1. Select -- used to print in table form and in log report also.
-- select * from payments
-- select "Printing check the sysout in sql"

-- 2. From , Where , In, Not In, between
-- select * from orders limit 50 ;
-- select * from orders where orderNumber=10100
-- Correct : 
-- select * from orders where orderNumber between 10100 AND 10105; -- complete rows
-- Not working
-- select * from orders where orderNumber In (10100 AND 10105); -- run but no records retriced
-- select * from orders where orderNumber In (10100,10105); -- two records
-- select * from orders where OrderNumber Not In (10100 , 10101); -- excape the value passed, all records displayed. 

-- Return all customers that have an order in the Orders table -- Generally used in two tables
-- SELECT count(*) FROM Customers
-- WHERE customerNumber IN (SELECT customerNumber FROM Orders); -- Answer, 98

-- 3. Group by, having, order by, as 
-- use classicmodels;
-- select * from payments;
-- select amount,count(customerNumber) from payments where amount>=10000 group by amount ;
-- Answer, Every transaction is unique

 -- ========================= Some question ============================
 
 -- 1. provide list of customers where name ending with X---customers
-- use classicmodels;
-- select * from customers ;
-- select *  from customers where customerName like '%Inc';
-- Result : Empty;
-- select count(customerName) as NumberOfCustomerNameINC from customers where customerName like '%Inc'; Ans, 7

-- 2. provide list of customers where city contains US
-- select * from customers where city like '%US%'; 

-- 3 . privide count of customer as per each state.
-- select city ,count(customerNumber) from customers group by city ;

-- 4. provide payment details where amount is between 1000 and 500004--payments
-- select amount from payments where amount between 1000 and 500004;
-- select amount from payments where amount between 1000 and 500004 order by amount ASC;

-- 5. provide sum of amount per each customer---payments
-- select customerNumber,SUM(amount) from payments group by customerNumber;

-- 6. provide sum of quantity ordered per each orderlinenumber and sum is greater than 100000.---order details
-- use classicmodels;
-- select * from orderdetails ;
-- select orderLineNumber,  count(quantityOrdered) from orderdetails group by orderLineNumber having sum(quantityOrdered)> 20 order by orderLineNumber ASC;

-- 7. provide list of office where country is US and state is NY44---offices
-- select * from offices where country = 'US' and state = 'NY44';

-- 8. provide list of employeed where fisrt name start with a and last name end with g---empoyees
-- select * from employees  where firstname like 'a%y'; -- 1 row displayed 
 

 