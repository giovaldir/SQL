-- SQL Exercises, Practice, Solution - Retrieve data from tables
-- Last update on August 10 2022 12:28:27 (UTC/GMT +8 hours)
-- To format an SQL text, select it and press Ctrl+Shift+F

show databases;

-- Creating a Database - W3
-- 1
CREATE DATABASE IF NOT EXISTS W3;
-- 2
CREATE SCHEMA IF NOT EXISTS W3;

-- USE DATABASE

USE W3;

-- membuat tabel salesman

-- string data type : char, varchar, enum
-- char - char(5) - char(length) - size = 5 bytes (fixed) - max size in general (255 bytes) - 50% faster
-- varchar - varchar(5) - varchar(length) - size = maximum 5 bytes (not fixed) - max size in general (65535 bytes)
-- enum(enumerate) - enum('M','F')

-- integers data type (whole numbers with no decimal point): tinyint, smallint, mediumint,int, bigint (smallest to biggest bytes)

-- fixed data type : decimal, numeric
-- decimal - decimal(5,3), decimal(precision, scale) -- 10.523 
-- numeric - numeric(7,2), numeric(precision, scale) -- 75000.50

-- floating data type : float, double 
-- float - float(5,3), float(precision, scale) -- 10.523 
-- double - double(7,2), double(precision, scale) -- 75000.50

-- beda float dan fixed data type yaitu kalau bermisal angka/precision lebih dari yang ditulis maka fixed akan memberikan warning, kalau floating-point tidak

-- date data type : date, datetime, timestamp
-- date (yyyy-mm-dd)
-- datetime (yyyy-mm-dd hh:mm:ss)

-- blob (binary large object): refers to a file of binary data (doc, xlsx, xml, jpg, wav)

-- creating a table dengan primary key di salesman_id
-- 1
CREATE TABLE  salesman 
   (	
    salesman_id INT NOT NULL PRIMARY KEY, 
	name VARCHAR(50) not null, 
	city VARCHAR(35) not null, 
	commission DECIMAL(10,2) not null
	 );

-- 2
CREATE TABLE  salesman 
   (	
    salesman_id INT NOT NULL, 
	name VARCHAR(50) not null, 
	city VARCHAR(35) not null, 
	commission DECIMAL(10,2) not null,
	PRIMARY key (salesman_id)
	 );

-- create table orders dengan foreign key salesman_id
CREATE TABLE  orders 
   (
    ord_no INT(5) NOT NULL PRIMARY KEY, 
	purch_amt DECIMAL(12,2) NOT NULL,  
	ord_date DATE NOT NULL, 
	cust_id INT(4) NOT NULL, 
	salesman_id INT NOT NULL REFERENCES SALESMAN(salesman_id) on delete cascade
   );

describe orders;

-- create table customer dengan foreign key salesman_id
CREATE TABLE  customer
   (
    customer_id INT(4) NOT NULL PRIMARY KEY, 
	cust_name VARCHAR(50) NOT NULL,  
	city VARCHAR(35) not null, 
	grade INT(3) NOT NULL, 
	salesman_id INT NOT NULL REFERENCES SALESMAN(salesman_id) on delete cascade
   );

describe customer;

-- create table nobel_win dengan primary key winner
CREATE TABLE  nobel_win
   (
    years int(4) NOT NULL, 
	subject VARCHAR(50) NOT NULL,  
	winner VARCHAR(35) not null primary key, 
	country VARCHAR(50) NOT NULL, 
	category VARCHAR(50) NOT NULL
   );

describe nobel_win;

-- create table item_mas dengan primary key prod_id
CREATE TABLE  item_mas
   (
    pro_id int(3) NOT null primary key, 
	pro_name VARCHAR(50) NOT NULL,  
	pro_price Decimal(6,2) not null, 
	pro_com INT(2) NOT NULL 
   );

describe item_mas;

-- create table emp_details dengan primary key emp_idno
CREATE TABLE  emp_details
   (
    emp_idno int(6) NOT null primary key, 
	emp_fname VARCHAR(50) NOT NULL,  
	emp_lname VARCHAR(50) not null, 
	emp_dept INT(2) NOT NULL 
   );

describe emp_details;

-- add foreign key to orders table on customer_id
alter table orders add constraint foreign key(cust_id) references customer(customer_id) on delete cascade;

-- use table
-- 1
select * from w3.salesman;
-- 2
select * from salesman;

-- drop table
drop table salesman;


INSERT INTO SALESMAN(salesman_id, name, city, commission) 
VALUES 
('5001', 'James Hoog', 'New York', '0.15'),
('5002', 'Nail Knite', 'Paris', '0.13'),
('5005', 'Pit Alex', 'London', '0.11'),
('5006', 'Mc Lyon', 'Paris', '0.14'),
('5007', 'Paul Adam', 'Rome', '0.13'),
('5003', 'Lauson Hen', 'San Jose', '0.12');

select * from salesman;

insert into customer(customer_id,cust_name,city,grade,salesman_id) 
values
('3002', 'Nick Rimando', 'New York','100','5001'),
('3007','Brad Davis','New York','200','5001'),
('3005','Graham Zusi','California','200','5002'),
('3008','Julian Green','London','300','5006'),
('3004','Fabian Johnson','Paris','300','5006'),
('3009','Geoff Cameron','Berlin','100','5003'),
('3003','Jozy Altidor','Moscow','200','5007'),
('3001','Brad Guzan','London','0','5005');

select * from customer;

INSERT INTO ORDERS(ord_no,purch_amt,ord_date,cust_id, salesman_id) 
values
('70001','150.5','2012-10-05','3005','5002'),
('70009','270.65','2012-09-10','3001','5005'),
('70002','65.26','2012-10-05','3002','5001'),
('70004','110.5','2012-08-17','3009','5003'),
('70007','948.5','2012-09-10','3005','5002'),
('70005','2400.6','2012-07-27','3007','5001'),
('70008','5760','2012-09-10','3002','5001'),
('70010','1983.43','2012-10-10','3004','5006'),
('70003','2480.4','2012-10-10','3009','5003'),
('70012','250.45','2012-06-27','3008','5002'),
('70011','75.29','2012-08-17','3003','5007'),
('70013','3045.5','2012-04-25','3002','5001');

select * from orders;


INSERT INTO nobel_win (years, subject, winner, country,category) 
VALUES 
('1970','Physics','Hannes Alfven','Sweden','Scientist'),
('1970', 'Physics',                   'Louis Neel',                                    'France',                 'Scientist'),
('1970', 'Chemistry',                 'Luis Federico Leloir',                          'France',                 'Scientist'),
('1970', 'Physiology',                'Ulf von Euler',                                 'Sweden',                 'Scientist'),
('1970', 'Physiology',                'Bernard Katz',                                  'Germany',                'Scientist'),
('1970', 'Literature',                'Aleksandr Solzhenitsyn',                        'Russia',                 'Linguist'),
('1970', 'Economics',                 'Paul Samuelson',                                'USA',                    'Economist'),
('1970', 'Physiology',                'Julius Axelrod',                                'USA',                    'Scientist'),
('1971', 'Physics',                   'Dennis Gabor',                                  'Hungary',                'Scientist'),
('1971', 'Chemistry',                 'Gerhard Herzberg',                              'Germany',                'Scientist'),
('1971', 'Peace',                     'Willy Brandt',                                  'Germany',                'Chancellor'),
('1971', 'Literature',                'Pablo Neruda',                                  'Chile',                  'Linguist'),
('1971', 'Economics',                 'Simon Kuznets',                                 'Russia',                 'Economist'),
('1978', 'Peace',                     'Anwar al-Sadat',                                'Egypt',                  'President'),
('1978', 'Peace',                     'Menachem Begin',                                'Israel',                 'Prime Minister'),
('1987', 'Chemistry',                 'Donald J. Cram',                                'USA',                    'Scientist'),
('1987', 'Chemistry',                 'Jean-Marie Lehn',                               'France',                 'Scientist'),
('1987', 'Physiology',                'Susumu Tonegawa',                               'Japan',                  'Scientist'),
('1994', 'Economics',                 'Reinhard Selten',                               'Germany',                'Economist'),
('1994', 'Peace',                     'Yitzhak Rabin',                                 'Israel',                 'Prime Minister'),
('1987', 'Physics',                   'Johannes Georg Bednorz',                        'Germany',                'Scientist'),
('1987', 'Literature',                'Joseph Brodsky',                                'Russia',                 'Linguist'),
('1987', 'Economics',                 'Robert Solow',                                  'USA',                    'Economist'),
('1994', 'Literature',                'Kenzaburo Oe',                                  'Japan',                  'Linguist');

select
	*
from
	nobel_win;

insert into item_mas (pro_id,pro_name,pro_price,pro_com)
values
(   '101', 'Mother Board',                    '3200.00',         '15'),
(   '102', 'Key Board',                        '450.00',         '16'),
(   '103', 'ZIP drive',                        '250.00',         '14'),
(   '104', 'Speaker',                          '550.00',         '16'),
(   '105', 'Monitor',                         '5000.00',         '11'),
(   '106', 'DVD drive',                        '900.00',         '12'),
(   '107', 'CD drive',                         '800.00',         '12'),
(   '108', 'Printer',                         '2600.00',         '13'),
(   '109', 'Refill cartridge',                 '350.00',         '13'),
(   '110', 'Mouse',                            '250.00',         '12');

select * from item_mas;

insert into emp_details (emp_idno, emp_fname, emp_lname, emp_dept)
values
   ('127323', 'Michale'   ,      'Robbin',                  '57'),
   ('526689', 'Carlos'    ,      'Snares',                  '63'),
   ('843795', 'Enric'     ,      'Dosio',                   '57'),
   ('328717', 'Jhon'        ,    'Snares',                  '63'),
   ('444527', 'Joseph'     ,     'Dosni',                  '47'),
   ('659831', 'Zanifer'   ,      'Emily',                   '47'),
   ('847674', 'Kuleswar' ,       'Sitaraman',               '57'),
   ('748681', 'Henrey'  ,        'Gabriel',                 '47'),
   ('555935', 'Alex'   ,         'Manuel',                  '57'),
   ('539569', 'George',          'Mardy',                   '27'),
   ('733843', 'Mario',           'Saule',                   '63'),
   ('631548', 'Alan',            'Snappy',                  '27'),
   ('839139', 'Maria',           'Foster',                  '57');
  
 select * from emp_details;

-- SQL Exercises, Practice, Solution - Retrieve data from tables

-- 1. Write a SQL statement that displays all the information about all salespeople.
select
	*
from
	salesman;

-- 2. Write a SQL statement to display a string "This is SQL Exercise, Practice and Solution".
select
	"This is SQL Exercise, Practice and Solution";

-- 3. Write a SQL query to display three numbers in three columns. 
select
	5,
	10,
	15;

-- 4. Write a SQL query to display the sum of two numbers 10 and 15 from the RDBMS server.
select
	sum(15 + 10) sum;

-- 5. Write an SQL query to display the result of an arithmetic expression. 
select
	15 * 2 + 2;

-- 6. Write a SQL statement to display specific columns such as names and commissions for all salespeople.
select
	name,
	commission
from
	salesman;

-- 7. Write a query to display the columns in a specific order, such as order date, salesman ID, order number, and purchase amount for all orders.
select
	ord_date,
	salesman_id,
	ord_no,
	purch_amt
from
	orders; 

-- 8. From the following table, write a SQL query to identify the unique salespeople ID. Return salesman_id.
select
	distinct salesman_id
from
	orders;

-- 9. From the following table, write a SQL query to locate salespeople who live in the city of 'Paris'. Return salesperson's name, city.
select
	name,
	city
from
	salesman
where
	city = 'Paris';

-- 10. From the following table, write a SQL query to find customers whose grade is 200. Return customer_id, cust_name, city, grade, salesman_id. 
select
	*
from
	customer
where
	grade = 200;

-- 11. From the following table, write a SQL query to find orders that are delivered by a salesperson with ID. 5001. Return ord_no, ord_date, purch_amt
select
	ord_no,
	ord_date,
	purch_amt
from
	orders
where
	salesman_id = 5001;

-- 12. From the following table, write a SQL query to find the Nobel Prize winner(s) for the year 1970. Return year, subject and winner
select
	years,
	subject,
	winner
from
	nobel_win
where
	years = 1970;

-- 13. From the following table, write a SQL query to find the Nobel Prize winner in ‘Literature’ for 1970. Return winner
select
	winner
from
	nobel_win
where
	subject = 'Literature'
	and years = 1970;

-- 14. From the following table, write a SQL query to locate the Nobel Prize winner ‘Dennis Gabor'. Return year, subject.
select
	years,
	subject
from
	nobel_win
where
	winner = 'Dennis Gabor';

-- 15. From the following table, write a SQL query to find the Nobel Prize winners in the field of ‘Physics’ since 1950. Return winner. 
select
	winner
from
	nobel_win
where
	subject = 'Physics'
	and years >= 1950;

-- 16. From the following table, write a SQL query to find the Nobel Prize winners in ‘Chemistry’ between the years 1965 and 1975. Begin and end values are included. Return year, subject, winner, and country. 
select
	years,
	subject,
	winner,
	country
from
	nobel_win
where
	years between 1965 and 1975;

-- 17. Write a SQL query to display all details of the Prime Ministerial winners after 1972 of Menachem Begin and Yitzhak Rabin.
select
	*
from
	nobel_win
where
	years>1972
	and winner in('Menachem Begin', 'Yitzhak Rabin');

-- 18. From the following table, write a SQL query to retrieve the details of the winners whose first names match with the string ‘Louis’. Return year, subject, winner, country, and category.
select
	*
from
	nobel_win
where
	winner like 'Louis%';

-- 19. From the following table, write a SQL query that combines the winners in Physics, 1970 and in Economics, 1971. Return year, subject, winner, country, and category.
select
	*
from
	nobel_win
where
	(subject = 'Physics'
		and years = 1970)
union (
select
	*
from
	nobel_win
where
	(subject = 'Economics'
		and years = 1971));

-- 20. From the following table, write a SQL query to find the Nobel Prize winners in 1970 excluding the subjects of Physiology and Economics. Return year, subject, winner, country, and category. 
select
	*
from
	nobel_win
where
	years = 1970
	and subject not in('Physiology', 'Economics');

-- 21. From the following table, write a SQL query to combine the winners in 'Physiology' before 1971 and winners in 'Peace' on or after 1974. Return year, subject, winner, country, and category.
select
	*
from
	nobel_win
where
	(subject = 'Physiology'
		and years < 1971)
union (
select
	*
from
	nobel_win
where
	(subject = 'Peace'
		and years > 1974));

-- 22. From the following table, write a SQL query to find the details of the Nobel Prize winner 'Johannes Georg Bednorz'. Return year, subject, winner, country, and category.
select
	*
from
	nobel_win
where
	winner = 'Johannes Georg Bednorz';

-- 23. From the following table, write a SQL query to find Nobel Prize winners for the subject that does not begin with the letter 'P'. Return year, subject, winner, country, and category. Order the result by year, descending and winner in ascending.  
select
	*
from
	nobel_win
where
	subject not like 'P%'
order by
	years desc,
	winner;

-- 24. From the following table, write a SQL query to find the details of 1970 Nobel Prize winners. Order the results by subject, ascending except for 'Chemistry' and ‘Economics’ which will come at the end of the result set. Return year, subject, winner, country, and category.
select
	*
from
	nobel_win
where
	years = 1970
order by
	case
		when subject in ('Chemistry', 'Economics') then 1
		else 0
	end asc,
	subj ect,
	winner;

-- 25. From the following table, write a SQL query to select a range of products whose price is in the range Rs.200 to Rs.600. Begin and end values are included. Return pro_id, pro_name, pro_price, and pro_com. 
select
	*
from
	item_mas
where
	pro_price >= 200
	and pro_price <= 600;

-- 26. From the following table, write a SQL query to calculate the average price for a manufacturer code of 16. Return avg.  
select
	avg(pro_price) avg
from
	item_mas;

-- 27. From the following table, write a SQL query to display the pro_name as 'Item Name' and pro_priceas 'Price in Rs.' 
select
	pro_name 'Item Name',
	pro_price 'Price in Rs'
from
	item_mas;

-- 28. From the following table, write a SQL query to find the items whose prices are higher than or equal to $250. Order the result by product price in descending, then product name in ascending. Return pro_name and pro_price.
select
	pro_name,
	pro_price
from
	item_mas
where
	pro_price >= 250
order by
	pro_price desc,
	pro_name asc;

-- 29. From the following table, write a SQL query to calculate average price of the items for each company. Return average price and company code.
select
	avg(pro_price) 'average price',
	pro_com 'company code'
from
	item_mas
group by
	pro_com;

-- 30. From the following table, write a SQL query to find the cheapest item(s). Return pro_name and, pro_price. 
select
	pro_name,
	pro_price
from
	item_mas
where
	pro_price =(
	select
		min(pro_price)
	from
		item_mas);
	
-- 31. From the following table, write a SQL query to find the unique last name of all employees. Return emp_lname.
select
	distinct(emp_lname)
from
	emp_details;

-- 32. From the following table, write a SQL query to find the details of employees whose last name is 'Snares'. Return emp_idno, emp_fname, emp_lname, and emp_dept. 
select
	*
from
	emp_details
where
	emp_lname = 'Snares';

-- 33. From the following table, write a SQL query to retrieve the details of the employees who work in the department 57. Return emp_idno, emp_fname, emp_lname and emp_dept.
select
	*
from
	emp_details
where
	emp_dept = 57;