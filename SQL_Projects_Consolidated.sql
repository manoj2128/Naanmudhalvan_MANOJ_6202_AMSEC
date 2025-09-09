-- ===============================
-- Consolidated SQL Project Queries
-- Demonstrating Database Design, DML, DDL & Data Analysis
-- ===============================

-- Task 1: Employee, Product, Student & Company Info Management
-- table 1
use emp_db;
create table employee_info (Emp_ID int primary key, Emp_Name varchar(100), Citystate varchar(100), income int, Phone_No int, Gender varchar(100), Age int);
select * from employee_info;
insert into employee_info values
(101, 'Adhavan', 'chennai', 10000, 7200784563, 'Male', 32),
(102, 'anand', 'trichy', 25000, 8608914600, 'Male', 24),
(103, 'abhi', 'madurai', 15000, 8765432198,	'Female', 27),
(104, 'madhavan', 'salem', 12000, 7345234129, 'Male', 28),
(105, 'deena', 'Periyapaliyam',	18000, 9876543213, 'Male', 30);
use emp_db;
alter table employee_info change phone_No Phone_No bigint;
describe employee_info;

-- table 2

create table product_info(Sale_ID int primary key, Products varchar(100), category varchar (100), Sale_of_Quantity int,  Unit_Price int, Total_Price int);
select*from product_info;
insert into Product_info values
(101, 'Washing_Machine', 'WhirlPool', 89, 351, 31239),
(102, 'Mixed_Griender',	'Preethi', 38, 236,	8968),
(103, 'Led_TV', 'Samsung', 93, 489,	45477),
(104, 'Table_Fan', 'Butterfly',	22,	429, 9438),
(105, 'Fridge',	'Samsung', 63, 322,	20286),
(106, 'Mixi', 'Preethi', 80, 387, 30960),
(107, 'Lcd_TV','WhirlPool',	74,	251, 18574),
(108, 'Air_Conditioner', 'Samsung', 29,	264, 7656),
(109, 'Ceining_Fan', 'Preethi',	61, 472, 28792);


-- table 3
create table stu_info (Student_id int primary key,  Student_Name varchar (50), Student_Initial varchar (10), Marks int, Gender varchar(100));
select * from stu_info;
insert into stu_info values
(14001, 'Guru', 'L', 35, 'Male'),
(14002, 'Gopi', 'S', 54, 'Male'),
(14003, 'Sudhakar',	'D', 78, 'Male'),
(14004, 'Mani',	'P', 98, 'Male'),
(14005, 'Moorthy', 'V',	87, 'Male'),
(14006, 'Marc_Crier', 'S', 71, 'Female'),
(14007, 'William_Brown', 'D', 42, 'Male'),
(14008, 'Matt_Hagelstein', 'P',	77,	'Female'),
(14009, 'Toby_Gnade', 'V', 89, 'Male'),
(14010, 'Claire_Gute', 'D',	79,	'Female'),
(14011,	'Darrin_Van_Huff', 'P', 75,	'Female');

-- table 4

create table profit_cal(Order_No int primary key, `PVT Limited Companies` varchar(100), Category varchar(100), Products varchar(100), Income int, Expenses int, `Total Profit` int,  `Phone No`bigint);
select * from profit_cal;
insert into profit_cal values
(1, 'Raja PVT Limited', 'WhirlPool', 'Washing Machine', 4032, 1014, 3018, 7200784563),
(2, 'Guru PVT Limited', 'Preethi', 'Mixed Griender', 5236, 973,	4263, 8608914600),
(3, 'John PVT Limited', 'Samsung', 'Led TV', 6261, 1040, 5221, 8765432198),
(4, 'Priya & Co', 'Butterfly', 'Table Fan', 5855, 1407, 4448, 7345234129),
(5, '`Guru & Co`', 'Samsung', 'Fridge', 6567, 2458,  4109, 9876543213),
(6, 'Anand & Co', 'Preethi', 'Mixi', 6804, 561, 6243, 9087654321),
(7, 'Saravana Stores', 'WhirlPool', 'Fridge', 2766, 1836, 930, 6543216781),
(8, 'Valli & Co', 'Samsung', 'Lcd TV', 7281, 2208, 5073, 7890654321);

use emp_db;

-- table 5
create table company_info(Order_No int primary key, `PVT Limited Companies` varchar(100), Category varchar(100), Products varchar(100), Income int, Expenses int, `Total Profit` int,  `Phone No`bigint);
select * from company_info;
insert into company_info values
(1, 'Raja PVT Limited', 'WhirlPool', 'Washing Machine', 4032, 1014, 3018, 7200784563),
(2, 'Guru PVT Limited', 'Preethi', 'Mixed Griender', 5236, 973,	4263, 8608914600),
(3, 'John PVT Limited', 'Samsung', 'Led TV', 6261, 1040, 5221, 8765432198),
(4, 'Priya & Co', 'Butterfly', 'Table Fan', 5855, 1407, 4448, 7345234129),
(5, 'Guru & Co', 'Samsung', 'Fridge', 6567, 2458,  4109, 9876543213),
(6, 'Anand & Co', 'Preethi', 'Mixi', 6804, 561, 6243, 9087654321),
(7, 'Saravana Stores', 'WhirlPool', 'Fridge', 2766, 1836, 930, 6543216781),
(8, 'Valli & Co', 'Samsung', 'Lcd TV', 7281, 2208, 5073, 7890654321),
(9, 'Deepa & Co', 'Preethi', 'Mixed Griender', 2955, 1228, 1727, 8907654321),
(10,'Pillai & Co', 'WhirlPool', 'Air Conditioner', 5369, 1860, 3509, 9087654321),
(11, 'Padmini PVT Limited', 'WhirlPool', 'Washing Machine',	5294, 1315, 3979, 9765432180),
(12, 'Padmini Stores', 'Preethi', 'Fridge', 7976, 2480, 5496, 6321456789),
(13, 'Moorthy Stores', 'Samsung', 'Fridge', 3435, 528, 2907, 9876096543),
(14, 'Vasanth & Co', 'WhirlPool', 'Washing Machine', 2558, 1619, 939, 7654321890),
(15, 'Jaya & Co', 'Butterfly', 'Ceining Fan', 5590, 2488, 3102, 7908765432),
(16, 'Moorthy & Co', 'Samsung', 'Led TV', 3270, 1531, 1739, 9087654321),
(17, 'Ram & C0', 'Butterfly', 'Table Fan', 4156, 2496, 1660, 9023456789);

show tables;
drop table profit_calculation;
select * from (employee_info),(product_info),(profit_cal),(stu_info),(company_info);










-- Task 2: CompanyDB - Table Creation & Alterations
-- 1. Create a new database named CompanyDB.
create database company_db;

-- 2. Switch to the CompanyDB database and view all available databases.
Show databases;

-- 3. Drop the CompanyDB database.
drop database company_db;

-- 4. Recreate the Employees , Products, Orders, Customers, and Sales tables in the CompanyDB database and insert the given data.
use company_db;
-- employee table
CREATE TABLE Employees ( EmployeeID INT PRIMARY KEY, FirstName VARCHAR(50), LastName VARCHAR(50), Department VARCHAR(50), Salary DECIMAL(10, 2) , HireDate DATE ); 
INSERT INTO Employees VALUES 
(1, 'John', 'Doe', 'Sales', 50000.00, '2015-01-15'), 
(2, 'Jane', 'Smith', 'HR', 60000.00, '2016-03-22'),
(3, 'Emily', 'Johnson', 'IT', 75000.00, '2018-07-11'), 
(4, 'Michael', 'Brown', 'Finance', 80000.00, '2017-09-05'),
 (5, 'Jessica', 'Davis', 'Marketing', 65000.00, '2019-10-19');
select * from Employees;
 -- product table
 CREATE TABLE Products ( ProductID INT PRIMARY KEY, ProductName VARCHAR(100), Category VARCHAR(50), Price DECIMAL(8, 2) , StockQuantity INT );
INSERT INTO Products (ProductID, ProductName, Category, Price, StockQuantity) VALUES 
(1, 'Laptop', 'Electronics', 1200.00, 50), 
(2, 'Headphones', 'Electronics', 150.00, 200), 
(3, 'Coffee Maker', 'Home Appliances', 80.00, 30), 
(4, 'Smartphone', 'Electronics', 900.00, 75), 
(5, 'Blender', 'Home Appliances', 120.00, 45);
select * from products;

-- order table
CREATE TABLE Orders ( OrderID INT PRIMARY KEY, CustomerID INT, OrderDate DATE, TotalAmount DECIMAL(10, 2) );
INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount) VALUES 
(1, 101, '2023-01-05', 1350.00), 
(2, 102, '2023-02-15', 200.00), 
(3, 103, '2023-03-20', 980.00), 
(4, 104, '2023-04-12', 75.00), 
(5, 105, '2023-05-08', 350.00);

-- customer table

CREATE TABLE Customers ( CustomerID INT PRIMARY KEY, FirstName VARCHAR(50), LastName VARCHAR(50), Email VARCHAR(100), Phone VARCHAR(20) );
 INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone) VALUES 
 (101, 'Alice', 'Williams', 'alice.williams@example.com', '555-1234'), 
 (102, 'Bob', 'Taylor', 'bob.taylor@example.com', '555-5678'), 
 (103, 'Charlie', 'Wilson', 'charlie.wilson@example.com', '555-8765'), 
 (104, 'Diana', 'Martinez', 'diana.martinez@example.com', '555-4321'), 
 (105, 'Eve', 'Anderson', 'eve.anderson@example.com', '555-6789');
 
 -- sales table
 
 CREATE TABLE Sales ( SaleID INT PRIMARY KEY, ProductID INT, SaleDate DATE, Quantity INT, TotalPrice int ); 
INSERT INTO Sales (SaleID, ProductID, SaleDate, Quantity, TotalPrice) VALUES 
(1, 1, '2023-01-10', 2, 2400), 
(2, 2, '2023-01-15', 5, 750), 
(3, 3, '2023-02-20', 1, 80),
(4, 4, '2023-03-05', 3, 2700), 
(5, 5, '2023-04-18', 2, 240);

show tables;

-- 5. Add a new column Email to the Employees table.
alter table employees add Email varchar (50);
select * from employees;

-- 6. Remove the Email column from the Employees table.
alter table employees drop Email;

-- 7. Add a new column Phone to the Employees table.
alter table employees add phone bigint;

-- 8. Add a new column Description to the Products table.
alter table products add Description varchar(100);
select * from products;

-- 9. Remove the Description column from the Products table.
alter table products drop description;

-- 10. Add a new column ShippingAddress to the Orders table.
alter table orders add shipping_Address varchar(100);
select * from orders;

-- 11. Add a new column DateOfBirth to the Customers table.
alter table customers add Date_of_birth int;
select * from customers;

-- 12. Remove the DateOfBirth column from the Customers table.
alter table customers drop Date_of_birth;

-- 13. Add a new column Discount to the Sales table.
alter table sales add Discount int;
select * from sales;

-- 14. Remove the Discount column from the Sales table.
alter table sales drop Discount;

-- 15. Drop the Sales table.
drop table sales;
show tables;





-- Task 3: Insert, Update, Delete Operations
-- 1. Create a new database named CompanyDB.
create database company_db;

-- 2. Switch to the CompanyDB database and view all available databases.
Show databases;

-- 3. Drop the CompanyDB database.
drop database company_db;

-- 4. Recreate the Employees , Products, Orders, Customers, and Sales tables in the CompanyDB database and insert the given data.
use company_db;
-- employee table
CREATE TABLE Employees ( EmployeeID INT PRIMARY KEY, FirstName VARCHAR(50), LastName VARCHAR(50), Department VARCHAR(50), Salary DECIMAL(10, 2) , HireDate DATE ); 
INSERT INTO Employees VALUES 
(1, 'John', 'Doe', 'Sales', 50000.00, '2015-01-15'), 
(2, 'Jane', 'Smith', 'HR', 60000.00, '2016-03-22'),
(3, 'Emily', 'Johnson', 'IT', 75000.00, '2018-07-11'), 
(4, 'Michael', 'Brown', 'Finance', 80000.00, '2017-09-05'),
 (5, 'Jessica', 'Davis', 'Marketing', 65000.00, '2019-10-19');
select * from Employees;
 -- product table
 CREATE TABLE Products ( ProductID INT PRIMARY KEY, ProductName VARCHAR(100), Category VARCHAR(50), Price DECIMAL(8, 2) , StockQuantity INT );
INSERT INTO Products (ProductID, ProductName, Category, Price, StockQuantity) VALUES 
(1, 'Laptop', 'Electronics', 1200.00, 50), 
(2, 'Headphones', 'Electronics', 150.00, 200), 
(3, 'Coffee Maker', 'Home Appliances', 80.00, 30), 
(4, 'Smartphone', 'Electronics', 900.00, 75), 
(5, 'Blender', 'Home Appliances', 120.00, 45);
select * from products;

-- order table
CREATE TABLE Orders ( OrderID INT PRIMARY KEY, CustomerID INT, OrderDate DATE, TotalAmount DECIMAL(10, 2) );
INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount) VALUES 
(1, 101, '2023-01-05', 1350.00), 
(2, 102, '2023-02-15', 200.00), 
(3, 103, '2023-03-20', 980.00), 
(4, 104, '2023-04-12', 75.00), 
(5, 105, '2023-05-08', 350.00);

-- customer table

CREATE TABLE Customers ( CustomerID INT PRIMARY KEY, FirstName VARCHAR(50), LastName VARCHAR(50), Email VARCHAR(100), Phone VARCHAR(20) );
 INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone) VALUES 
 (101, 'Alice', 'Williams', 'alice.williams@example.com', '555-1234'), 
 (102, 'Bob', 'Taylor', 'bob.taylor@example.com', '555-5678'), 
 (103, 'Charlie', 'Wilson', 'charlie.wilson@example.com', '555-8765'), 
 (104, 'Diana', 'Martinez', 'diana.martinez@example.com', '555-4321'), 
 (105, 'Eve', 'Anderson', 'eve.anderson@example.com', '555-6789');
 
 -- sales table
 
 CREATE TABLE Sales ( SaleID INT PRIMARY KEY, ProductID INT, SaleDate DATE, Quantity INT, TotalPrice int ); 
INSERT INTO Sales (SaleID, ProductID, SaleDate, Quantity, TotalPrice) VALUES 
(1, 1, '2023-01-10', 2, 2400), 
(2, 2, '2023-01-15', 5, 750), 
(3, 3, '2023-02-20', 1, 80),
(4, 4, '2023-03-05', 3, 2700), 
(5, 5, '2023-04-18', 2, 240);

show tables;

-- 5. Add a new column Email to the Employees table.
alter table employees add Email varchar (50);
select * from employees;

-- 6. Remove the Email column from the Employees table.
alter table employees drop Email;

-- 7. Add a new column Phone to the Employees table.
alter table employees add phone bigint;

-- 8. Add a new column Description to the Products table.
alter table products add Description varchar(100);
select * from products;

-- 9. Remove the Description column from the Products table.
alter table products drop description;

-- 10. Add a new column ShippingAddress to the Orders table.
alter table orders add shipping_Address varchar(100);
select * from orders;

-- 11. Add a new column DateOfBirth to the Customers table.
alter table customers add Date_of_birth int;
select * from customers;

-- 12. Remove the DateOfBirth column from the Customers table.
alter table customers drop Date_of_birth;

-- 13. Add a new column Discount to the Sales table.
alter table sales add Discount int;
select * from sales;

-- 14. Remove the Discount column from the Sales table.
alter table sales drop Discount;

-- 15. Drop the Sales table.
drop table sales;
show tables;


-- TASK 3
-- 1. Insert a new employee into the Employees table with values: EmployeeID=6, FirstName=Anna, LastName=Taylor, Department=Operations, Salary=70000.00, HireDate=2020-08-15
use company_db;
insert into  Employees (EmployeeID, Firstname, LastName, Department, salary, HireDate)values( 6, 'anna', 'Taylor', 'operation', 70000.00, '2020-08-15');  
select * from employees;

-- 2. Insert a new product into the Products table with values: ProductID=6, ProductName=Air Conditioner, Category=Home Appliances, Price=500.00, StockQuantity=25.
 
 Insert into Products (ProductID, ProductName, Category, Price , StockQuantity) values (6, 'Air_conditioner', 'Home_Appliances', 500.00, 25);
 select * from Products;
 
 -- 3. Insert a new order into the Orders table with values: OrderID=6, CustomerID=106, OrderDate=2023-06-10, TotalAmount=300.00
 INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount) VALUES(6,106,'2023-06-10', 300.00);
 select * from Orders;
 
 -- 4. Insert a new customer into the Customers table with values: CustomerID=106, FirstName=Frank, LastName=Moore, Email=frank.moore@example.com, Phone=555-3456.
 INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone) VALUES (106, 'frank', 'Moore', 'frank.moore@example.com', 555-3456);
 select * from Customers;
 
 -- 5. Insert a new sale into the Sales table with values: SaleID=6, ProductID=6, SaleDate=2023-06-15, Quantity=3, TotalPrice=1500.00.
 
 CREATE TABLE Sales ( SaleID INT PRIMARY KEY, ProductID INT, SaleDate DATE, Quantity INT, TotalPrice int ); 
INSERT INTO Sales (SaleID, ProductID, SaleDate, Quantity, TotalPrice) VALUES 
(1, 1, '2023-01-10', 2, 2400), 
(2, 2, '2023-01-15', 5, 750), 
(3, 3, '2023-02-20', 1, 80), 
(4, 4, '2023-03-05', 3, 2700), 
(5, 5, '2023-04-18', 2, 240);

 INSERT INTO Sales (SaleID, ProductID, SaleDate, Quantity, TotalPrice) VALUES (6, 6,'2023-06-15',3, 1500.00);
 select * from sales;
 
 -- 6. Delete an employee from the Employees table where EmployeeID=2.
 delete from Employees where EmployeeID = 2;
 select *from Employees; 
 
 -- 7.Delete a product from the Products table where ProductID=3.
 delete from products where productID=3;
 select*from products;
 
 -- 8.Delete an order from the Orders table where OrderID=4.
 delete from orders where orderID = 4;
 select * from orders;
 
 -- 9.Delete a customer from the Customers table where CustomerID=104.
 delete from customers where customerID=104;
 select*from customers;
 
 -- 10.Delete a sale from the Sales table where SaleID=1.
 delete from sales where saleID=1;
 select*from sales;
 
 -- 11.Update the salary of an employee in the Employees table where EmployeeID=1 to 55000.00.
 update employees set salary = 55000.00 where employeeID=1 ;
 select *from Employees;
 
 -- 12.Update the price of a product in the Products table where ProductID=2 to 170.00.
 update products set price = 170.00 where ProductID=2;
 select * from Products;
 
 -- 13.Update the total amount of an order in the Orders table where OrderID=3 to 1050.00.
 select *from Orders;
 update orders set Totalamount = 1050.00 where OrderID=3;


-- 14.Update the email of a customer in the Customers table where CustomerID=103 to charlie.wilson123@example.com.
select*from customers;
update customers set Email = 'charlie.wilson123@example.com' where customerID = 103;


-- 15.Update the quantity of a sale in the Sales table where SaleID=5 to 4.
select * from sales;
update sales set quantity= 4 where saleID= 5;



-- Task 4: Constraints & Table Alterations
create database task4;
use task4;
-- 1. Create a Employees table with columns: emp_id, name, department, salary, hire_date.
create table employees (emp_id varchar(50), Names varchar(50), department varchar(100), salary decimal (10,2), hire_date date);

-- 2. Add a new column email to the Employees table.
alter table employees add column email varchar (50);
describe employees;

-- 3. Modify salary to allow NULL values.
alter table employees modify salary decimal(10,2) null;
describe employees;

-- 4. Rename department to dept_name.
alter table employees rename column department to dept_name;

-- 5. Add constraint name for emp_id using primary key
alter table employees change emp_id emp_id varchar(50) primary key;

/*6. add just Constraint for salary while using check constraint 
    Hint : check (salary >5000)*/
    
alter table employees change salary salary bigint;
alter table employees add constraint check_salary check (salary>5000);

-- 7. add constraint name for Hire_date using unique constraint
alter table employees add constraint unique_hire_date unique(hire_date);
describe employees;

/* 8. add just constraint for email while using default constraint
    hint : default mail_id = "Online Gaming @ gmail.com"*/
    
    alter table employees add constraint df_mail_ID default 'online gaming @ gmail.com'for email_Id;
    
insert into employees values
(101, 'Alice', 'HR', 55000, '2022-03-15'),
(102, 'Bob', 'IT', 70000, '2021-07-01'),
(103, 'Clara', 'Finance', 65000, '2020-10-10'),
(104, 'David', 'Marketing', 60000, '2023-01-20'),
(105, 'Eva', 'HR', 52000, '2019-12-05');

alter table employees change emp_id emp_id int;

    

-- Task 5: Data Analysis on Billionaire, YouTube & Global Reports
create database task5;
use task5;
--  import table billionaire report
show tables;
select * from billionaire_reports;
select 'finalWorth', 'category', 'personName',	'age',	'country',	'city',	'source',	'industries',	'countryOfCitizenship',	'organization',	'selfMade',	'status',	'gender',	'birthDate',	'lastName',	'firstName','title','date',	
'state','residenceStateRegion',	'birthYear', 'birthMonth',	'birthDay',	'cpi_country',	'cpi_change_country', 'gdp_country', 'gross_tertiary_education_enrollment',	'gross_primary_education_enrollment_country', 'life_expectancy_country',
'tax_revenue_country_country',	'total_tax_rate_country',	'population_country',	'latitude_country',	'longitude_country' from billionaire_reports where category = 'Technology';

-- import table copy of global_youtube_analysis
select * from `copy of golobal_youtube_analysis(1)`;

select Country, 'Country_id', 'Abbreviation',	'channel_type', 'video_views_rank', 'country_rank', 'channel_type_rank', 'video_views_for_the_last_30_days',	
'lowest_monthly_earnings', 'highest_monthly_earnings', 'lowest_yearly_earnings', 'highest_yearly_earnings',	'subscribers_for_last_30_days',	'created_year',	
'created_month', 'Month_no', 'created_date', 'Date',  'Gross tertiary education enrollment (%)',  'Population', 'Unemployment rate', 'Urban_population', 'Latitude', 'Longitude' from `copy of golobal_youtube_analysis(1)` where country= 'India';

describe `copy of golobal_youtube_analysis(1)`;

-- import table world_stock_report;
select * from world_stock_report;
-- import table datawise_report
select * from datawise_report;
-- import table sep_month_report
alter table`copy of golobal_youtube_analysis(1)` drop `MyUnknownColumn_[2]`;




-- Task 9: Financial Accounts, Clients & Transaction Queries
create database task9;
use task9;
drop table transaction;
show tables;
/*  Retrieve clients whose last name is 'Smith'.
   - Find accounts where the balance is greater than $10,000.
   - Identify securities with a price less than $200.*/
   SELECT * FROM accounts_table;
   SELECT * FROM clients_table;
   SELECT * FROM investments_table;
   SELECT * FROM securities_table;
   SELECT * FROM transaction;
   select * from clients_table where 'lastname' = 'smith';
   SELECT * FROM Accounts_table WHERE balance > 10000;
   SELECT * FROM Securities_table WHERE price < 200;
   /* - Find clients whose first name is 'Jordan' or last name is 'Martinez'.
   - Retrieve transactions where the amount is greater than $2,000 or less than $500.*/
   select * from clients_table where firstName = 'jordan' or  LastName = 'martinez';
   select * from transaction where amount > 2000 or amount < 500;
   
   /*  Find clients whose first name is 'Jordan' and last name is 'Martinez'.
   - Retrieve transactions where the amount is between $1,000 and $5,000.*/
   select * from transaction where amount between 1000 and 5000;
   
   /*  Find clients whose last name is either 'Smith' or 'Johnson'.
   - Retrieve transactions where the transaction type is either 'Deposit' or 'Withdrawal' */
   select * from clients_table where lastName = 'smith' or LastName = 'johnson';
   select * from transaction where transactiontype = 'deposit' or transactiontype = 'withdrawal';
   
   /* - Find clients whose last name is not 'Smith'.
   - Retrieve transactions where the transaction type is not 'Deposit'.*/
   select * from clients_table where LastName != 'Smith';
   select * from transaction where transactiontype != 'deposit';
   
   /* 6. Find accounts where the balance is greater than $5,000.
   - Retrieve transactions where the amount is greater than $1,000.*/
   select * from accounts_table where balance > 5000;
   select * from transaction where amount > 1000;
   
   /* 7. - Find securities where the price is less than $500.
   - Retrieve transactions where the amount is less than $500.*/
 select * from securities_table where price < 500;
 select * from transaction where amount < 500;
 
 /* 8. Find accounts where the balance is greater than or equal to $10,000.
     Retrieve transactions where the amount is greater than or equal to $1,000.*/
     select * from accounts_table where balance >= 10000;
     select * from transaction where amount >= 1000;

/* 9.  - Find securities where the price is less than or equal to $200.
   - Retrieve transactions where the amount is less than or equal to $500. */
    select * from securities_table where price <= 200;
	select * from Transaction where amount <= 500;
     
/* 10. - Find clients whose last name is not 'Smith'.
    - Retrieve transactions where the transaction type is not 'Deposit' */
    select * from clients_table where lastname != 'smith';
    select * from transaction where transactiontype != 'deposit';
    
    /* 11. - Find clients whose last name is not 'Smith'.
    - Retrieve transactions where the transaction type is not 'Deposit' */
    select * from clients_table where lastname != 'smith';
    select * from transaction where transactiontype != 'deposit';
    
    /* 12. 
    - Count the total number of clients.
    - Count the number of transactions.*/ 
    select count(*)  as Total_clients from clients_table;
    select count(*) as total_transaction from transaction;    
    

   



   
   
   