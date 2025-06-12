drop database jntu;
drop database students;
drop database students_names;
show databases;
drop database students;

use workers;
create table employe_list(Id int,Name varchar(40),
Gender char(1),Salary int);

select * from employe_list;

insert into employe_list values (225,"Vinay","M",90000);
insert into employe_list values (226,"kumar","M",80000),
(227,"Rama","F",60000),(228,"Renu","F",50000);
alter table employe_list add column mobile_no bigint;
alter table employe_list drop column Hike;

insert into employe_list values 
(225,"vinay","M",55000,"7845646352");



select * from employe_list;

alter table employe_list change mobile_no Ph_no varchar(10);

UPDATE employe_list
SET salary = 75000
WHERE salary <=80000;


update employe_list
set ph_no = "6352417485"
where id = 226;

update employe_list
set ph_no = "8567417485"
where id = 227;

---- TABLE --2
CREATE database jntu;
use jntu;
create table students
(Roll_no int,Name varchar(40),Marks float,
Ph_no varchar(10),email varchar(50));

select * from students;

alter table students rename column joing_date to yearOfJoing;
alter table students drop column yearOfJoing;
alter table students add column joing_year int;

insert into students values (10060,
"Vinaykumar",960,"9685749685",
"velamalavinay@gmail.com",2021);

insert into students values (10061,
"anilkumar",360,"9685749685",
"anil@gmail.com",2020);

insert into students values (10062,
"arunkumar",560,"8659749685",
"arun@gmail.com",2023);

insert into students values
(10065,
"anilkumar",960,"869549685",
"anil@gmail.com",2020);

select * from students;

create database staff;
use staff;
create table teachers
(Id int,Name varchar(50),subject varchar(50),salary int);

alter table teachers add column Ph_no int;

select * from teachers;

insert into teachers values (
2223,"RGV","BILOGY",90000,968574415),
(2224,"RAJAMOULI","SOCIAL",100000,854963748),
(2225,"SUKUMAR","SCIENCE",80000,859967422),
(2226,"BOYAPATI","PHYSICS",75000,635241485),
(2227,"NAG ASWIN","HISTORY",85000,635687605);

SHOW DATABASES;
SHOW TABLES;

CREATE DATABASE EMPLOYERS;
USE EMPLOYERS;

CREATE TABLE EMPLOYE_LIST (ID INT,NAME VARCHAR(50),GENDER CHAR(1),AGE INT,PH_NO VARCHAR(10));

SELECT * FROM EMPLOYE_LIST;

INSERT INTO EMPLOYE_LIST VALUES (52655,"MAHESH","M",52,"9685749685"),
(56365,"RAMANA","M",56,"4152638574"),
(52655,"PAVAN","M",63,"7485966352"),
(25424,"KALYAN","M",41,"5263417485"),
(36562,"RAMU","M",32,"8574696352"),
(12122,"PAVI","F",22,"6352417485");


use jntu;
create table jntu_students(Roll_no int,Name varchar(50),Branch varchar(10),fee int);

select * from jntu_students;

insert into jntu_students values(
1,"vinay","mech",30000),
(2,"ram","csc",40000),
(3,"vinnu","civil",63000),
(5,"laxmi","ai",100000),
(4,"renu","ece",50000);

use employers;
create table jntu_students (
Roll_No int primary key,
Name varchar(50),
Branch varchar(10),
fee int);

create table jntu_Cource(
Cource_Id int primary key,
Cource_Name varchar(50),
Roll_No int,
foreign key (Roll_No) references jntu_students(Roll_No));

select * from jntu_students;
select * from jntu_Cource;

insert into jntu_students values
(1,"vinay","Mech",60000),
(2,"Rama","AI",50000),
(3,"Ramu","ECE",20000),
(4,"SINGH","CSE",70000),
(5,"SRI","CIVIL",90000);

INSERT INTO jntu_Cource VALUES
(101,"MATHS",1),
(102,"TELUGU",2),
(103,"AI",3),
(104,"MATHS",1);

SELECT * FROM jntu_Cource
WHERE Roll_No = 1;

---------- table 7

create table students 
(Roll_no int primary key,
First_name varchar(50),
Last_name varchar(50),
joing_date date);

insert into students values
(111,"mahes","kumar",'2024-05-15'),
(112,"yong","ntr",'2023-06-24'),
(113,"super","rajini",'2020-03-31'),
(114,"mega","ram",'2021-02-12'),
(115,"power","pawankalyan",'2020-12-22');

select * from students;
select * from students_cource;

create table students_cource
(Cource_id int primary key,
Cource_name varchar(10),
Roll_no int,
foreign key (Roll_no) references students (Roll_no));

insert into students_cource values
(222,"Tamil",111),
(333,"hindi",112),
(444,"telugu",113),
(555,"english",114);

insert into students values
(666,"vinayk","kumar",'2024-11-17');

alter table students add column ph_no int;
alter table students add  cell_no int;

alter table students drop cell_no;

select * from students;
insert into students (Roll_no,ph_no) values (1123,234);

alter table students modify ph_no varchar(20);

update students 
set ph_no = '9685744152'
where Roll_no = 113;

update students 
set ph_no = '5241526385'
where Roll_no = 111;
  
  update students 
set ph_no = '8574966352'
where Roll_no = 112;

update students 
set ph_no = '5263417485'
where Roll_no = 114;
update students 
set ph_no = '9685744152'
where Roll_no = 115;
update students 
set ph_no = '6352417485'
where Roll_no = 666;

update students 
set ph_no = '5663524174'
where Roll_no = 115;

select * from students;

CREATE TABLE USERS 
(ID_NO INT,NAME VARCHAR(50),XXX_NO VARCHAR(20),YYY_ER CHAR(1));

SELECT * FROM USERS;

SELECT XXX_NO AS PH_NO , YYY_ER AS GENDER
FROM USERS;

INSERT INTO USERS VALUES
(2222,"RAMMU","9685744152","M"),
(6666,"RENU","6352417485","F"),
(5555,"JUNNU","5241638574","F"),
(4444,"KINNU","8574966352","F"),
(3333,"VINNU","4152637485","M");

ALTER TABLE USERS ADD AGE INT;

UPDATE USERS
SET AGE = 30
WHERE ID_NO = 2222;

UPDATE USERS
SET AGE = 18
WHERE ID_NO = 3333;

UPDATE USERS
SET AGE = 32
WHERE ID_NO = 4444;

UPDATE USERS
SET AGE = 12
WHERE ID_NO = 5555;
UPDATE USERS
SET AGE = 33
WHERE ID_NO = 6666;

SELECT * FROM USERS;
SELECT XXX_NO,YYY_ER FROM USERS;

SELECT * FROM USERS
WHERE ID_NO = 6666;

SELECT * FROM USERS
WHERE AGE>18;

select * from users 
where age <20;

select * from users 
where age between 10 and 30;

create database instagram;
use instagram;
create table users_1
( id int primary key,
first_name varchar(50),
last_name varchar(50),
user_name varchar(100) unique not null,
Ph_no varchar(20) unique not null,
upassword varchar(240) not null,
photo varchar (240) default null,
u_status int default 0,
age int check (age<=18),
created_at timestamp default current_timestamp,
updated_at timestamp default current_timestamp 
on update current_timestamp);

select * from users_1;

insert into users_1 (id,first_name,last_name,user_name,Ph_no, upassword,age) values
(102,"ravi","kumar","ravi25","6352417485",
"hda-44",12),
(103,"ramu","kumar","ramu355","8596744152",
"hdbckhs-44",08),
(104,"laxman","kumar","lamxj52","52634174859",
"dchjd-44",10),
(105,"vijay","kumar","vikdb52","4152639685",
"vhsh-44",11);

select current_timestamp from dual;
select 200+30015 from dual;
select 550000/12 from dual;

create table feed 
(
id int,
file_path varchar(200),
file_type varchar(10),
member_id int ,
f_status int default 0,
created_at timestamp default current_timestamp,
updated_at timestamp default current_timestamp on update  current_timestamp,
CONSTRAINT member_feed_fk foreign key(member_id) references  users_1(id)
);

select * from feed;

insert into feed (id,file_path,file_type,member_id ) values 
(1,'x/p.jpg','.png',101);
insert into feed (id,file_path,file_type,member_id ) values
 (2,'x/p.jpg',".png",104);

update users_1
set user_name= 'SIT12' where id =2;

select * from users_1;


------ task===== 1 


create database Daily_task;
use Daily_task;

create table employees1
( id int primary key ,
name varchar(50),
salary decimal(10,2) );

alter table employees1 add column dep_name varchar(20);

select * from employees1;
drop table employees1;
truncate table employees1;

insert into  employees1 values 
(101,"satish",50000),
(102,"pavan",3000),
(103,"kavya",250000);

update employees1
set salary = 60000
where id = 102;

delete from employees1
where id = 103;

SELECT * FROM employees1;

alter table employees1 
add column mobile_no varchar(20);

alter table employees1 
change column mobile_no ph_no varchar(20);

alter table employees1
drop column ph_no;

ALTER TABLE employees1
DROP PRIMARY KEY;

ALTER TABLE employees1
ADD PRIMARY KEY (id);

rename table employees1 to Employee_1;

create table staff ( id int not null, 
name varchar(20) not null);

create table staff_1(
id int unique not null,
ph_no varchar(20)not null unique);

alter table staff_1
add primary key (id);

create table orders(
order_id int primary key,
cust_id int,
foreign key ( cust_id) references customers(id)) ;

create table users_2(
id int primary key,
age int check (age>=18));

CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50)
);

select * from employees;

CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INT CHECK (age >= 18),
    status VARCHAR(10) DEFAULT 'Active'
);

select * from students;

------ primary key foreign key 


CREATE TABLE customers (
    id INT AUTO_INCREMENT,        -- Automatically increments for each new customer
    name VARCHAR(50) NOT NULL,     -- Customer name cannot be NULL
    email VARCHAR(100) UNIQUE,     -- Customer email must be unique
    PRIMARY KEY (id)               -- id is the primary key
);

CREATE TABLE orders (
    order_id INT AUTO_INCREMENT,    -- Automatically increments for each new order
    order_date DATE NOT NULL,        -- The date of the order
    total DECIMAL(10, 2),            -- Total cost of the order
    customer_id INT,                 -- Foreign Key referencing the customer who made the order
    PRIMARY KEY (order_id),          -- order_id is the primary key
    FOREIGN KEY (customer_id)        -- customer_id is the foreign key
        REFERENCES customers(id)     -- References the id in the customers table
        ON DELETE CASCADE            -- Deletes all related orders when a customer is deleted
        ON UPDATE CASCADE            -- Updates the foreign key if the customer id changes
);

INSERT INTO customers (name, email)
VALUES ('John Doe', 'johndoe@example.com');

INSERT INTO orders (order_date, total, customer_id)
VALUES ('2024-12-05', 100.50, 1);


SELECT o.order_id, o.order_date, o.total, c.name
FROM orders o
JOIN customers c ON o.customer_id = c.id;


select * from orders;
select * from customers;

----- SQL PRACTICE 

create database sql_practice;
use sql_practice;
 
CREATE TABLE EMPY
 (EMPNO int ,
 ENAME VARCHAR(10),
 JOB VARCHAR(9),
 MGR int,
 HIREDATE date,
 SAL int,
 COMM int,
 DEPTNO int,
 GRADE int);

select * from EMPY;
 INSERT INTO EMPY VALUES
 (7369, 'SMITH', 'CLERK', 7902,
 CAST('1980-12-17' as DATE), 800, NULL, 20, 5),

 (7499, 'ALLEN', 'SALESMAN', 7698,
 CAST('1981-02-20' as DATE), 1600, 300, 30, 3),
 
 (7521, 'WARD', 'SALESMAN', 7698,
 CAST('1981-02-22' as DATE), 1250, 500, 30, 4),

 (7566, 'JONES', 'MANAGER', 7839,
 CAST('1981-04-02' as DATE), 2975, NULL, 20, 2),

 (7654, 'MARTIN', 'SALESMAN', 7698,
 CAST('1981-09-28' as DATE), 1250, 1400, 30, 4),

 (7698, 'BLAKE', 'MANAGER', 7839,
 CAST('1981-05-01' as DATE), 2850, NULL, 30, 2);

 INSERT INTO EMPY VALUES
 (7782, 'CLARK', 'MANAGER', 7839,
 CAST('1981-06-09'as DATE), 2450,NULL,10,2),

 (7788, 'SCOTT', 'ANALYST', 7566,
 CAST('1982-12-09'as DATE),3000,NULL,20,1),

 (7839, 'KING', 'PRESIDENT',NULL,
 CAST('1981-11-17'as DATE),5000,NULL,10,1),

 (7844, 'TURNER', 'SALESMAN', 7698,
 CAST('1981-09-08'as DATE), 1500,NULL,30,3),

 (7876, 'ADAMS', 'CLERK', 7788,
 CAST('1983-01-12'as DATE),1100,NULL,20,4),

 (7900, 'JAMES', 'CLERK', 7698,
 CAST('1981-12-03'as DATE), 950,NULL,30,5),

 (7902, 'FORD', 'ANALYST', 7566,
 CAST('1981-12-03'as DATE), 3000,NULL,20,1),

 (7934, 'MILLER', 'CLERK', 7782,
 CAST('1982-01-23'as DATE),1300,NULL,10,3);


 CREATE TABLE DEPT
 (DEPTNO INT,
 DNAME VARCHAR(14),
 LOC VARCHAR(13));

INSERT INTO DEPT VALUES(10, 'ACCOUNTING', 'NEW YORK'),
 (20, 'RESEARCH', 'DALLAS'),
 (30, 'SALES', 'CHICAGO'),
 (40, 'OPERATIONS', 'BOSTON');

 --------- Q 1
select * from empy;

select distinct job 
from empy;
- -- 2 
select * from empy
order by salary asc;
 -------- 3 
select * from empy 
order by hiredate asc;
 ----  4
select * from empy 
order by deptno asc , grade desc;
----- 5 
select distinct job 
from empy
order by job desc;

select mgr from empy;
SELECT * FROM EMPY
WHERE JOB = 'MANAGER';

select *from empy 
where hiredate < '1981-01-01';

select empno ,ename,sal,sal/30 as daily_sal
from empy 
order by sal * 12 asc;

select * from empy;

select empno, ename,job,hiredate,
floor(months_between(sysdate,hiredate)/12) as EXP
from empy 
where job = 'manager';

select * from empy 
where comm> sal;

select * from empy
where hiredate>'1981-06-30'
order by job asc;

select * from empy
where job in ('clerk','analyst')
order by job desc;
---------- Q 15 

select * from empy
where hiredate in ('1980-01-19','1981-05-01','1981-12-03',
'1981-12-17')
order by hiredate asc;


----- Q 16

SELECT * FROM EMPY
WHERE DEPTNO IN (10,20);

--------- Q 17
SELECT * FROM EMPY
WHERE YEAR (HIREDATE) = 1981;
----------- Q 18
SELECT * FROM EMPY 
WHERE YEAR (HIREDATE) = 1980 AND MONTH(HIREDATE)=8;
---------- Q 19
SELECT * FROM EMPY;
---------- Q 20
SELECT EMPNO,ENAME , JOB,SAL*12 AS ANNUAL_SAL
FROM EMPY
WHERE(SAL*12)BETWEEN 22000 AND 45000;

SELECT* FROM EMPY;

SELECT ENAME FROM EMPY
WHERE LENGTH(ENAME)=5;

SELECT ENAME FROM EMPY
WHERE LENGTH(ENAME)=5 AND ENAME LIKE'S%';

SELECT ENAME FROM EMPY
WHERE LENGTH(ENAME) = 4 AND substring(ENAME,3,1) ='R';

SELECT ENAME FROM EMPY
WHERE LENGTH(ENAME) = 5 AND ENAME LIKE 'S___H';

SELECT * FROM EMPY
WHERE MONTH(HIREDATE) = 01;
----------- Q 25
SELECT * FROM EMPY 
WHERE MONTHNAME(HIREDATE) LIKE '_A%';

------- Q 26
SELECT * FROM EMPY;

SELECT * FROM EMPY
WHERE SAL LIKE '___0%';

SELECT * FROM EMPY 
WHERE ENAME LIKE '%LL%';

 ------- Q 28
 
 SELECT * FROM EMPY 
 WHERE YEAR (HIREDATE) = 1980;

-  --------- Q 29

SELECT * FROM EMPY
WHERE DEPTNO !=20;

SELECT * FROM EMPY;
 ----- Q  30 
 
SELECT * FROM EMPY
WHERE JOB NOT IN ('PRESIDENT','MGR')
ORDER BY SAL ASC;

SELECT* FROM EMPY
WHERE YEAR (HIREDATE)<1981 OR YEAR(HIREDATE) > 1981;

SELECT * FROM EMPY
WHERE EMPNO NOT LIKE '78%';

SELECT * FROM EMPY
WHERE EMPNO LIKE '78%';

SELECT * FROM EMPY
WHERE MGR = (SELECT EMPNO FROM EMPY WHERE JOB = 'MGR');

SELECT * FROM EMPY
WHERE MONTH(HIREDATE) != 3;

---------- Q 35
SELECT * FROM EMPY
WHERE JOB = 'CLERK' AND DEPTNO = 20;

SELECT * FROM EMPY
WHERE DEPTNO = 30 OR DEPTNO = 10 
AND YEAR(HIREDATE) = 1981;

SELECT * FROM EMPY
WHERE ENAME = 'SMITH';

------ Q 42
SELECT * FROM EMPY
ORDER BY GRADE ASC;

SELECT * FROM EMPY
WHERE GRADE = 2 OR GRADE =3;

SELECT * FROM EMPY
WHERE GRADE IN (4,5)
AND JOB IN ('ANALYST','MGR');

SELECT * FROM EMPY;
 ----- Q 46
 SELECT * FROM EMPY
 WHERE SAL> (SELECT SAL FROM EMPY WHERE ENAME = 'BLAKE');

SELECT * FROM EMPY
WHERE JOB = (SELECT JOB FROM EMPY WHERE ENAME = 'ALLEN');

SELECT * FROM EMPY
WHERE HIREDATE < (SELECT HIREDATE FROM EMPY WHERE ENAME = 'KING');

use sql_practice;																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																=================================================================================================================================================================================================================================================================================================================================================================================================================================================================================

select * from empy;

create table customers ( cust_id int, cust_name varchar(50),
ph_no varchar (20),loc varchar (100), city varchar(100));

select * from customers;

alter table customers change city pincode int;
alter table customers change loc city varchar(10);

insert into customers values
(1,"vinay",9685445263,'hyd',501401),
(2,"niraja",6352414785,'che',201501),
(3,"amurutha",5263417485,'mub',401201),
(4,"madhu",6352417485,'kl',201410),
(5,"priya",8574966352,'tn',301201);

select * from customers;

SELECT * FROM customers
WHERE CUST_ID = 1 AND 3;

ALTER TABLE customers ADD COLUMN AGE INT;

UPDATE customers
SET AGE = 26
WHERE CUST_id = 1;

SET SQL_SAFE_UPDATES = 0;

UPDATE customers
SET AGE = 32
WHERE CUST_ID = 2;

UPDATE customers
SET AGE = 25
WHERE CUST_ID = 3;

UPDATE customers
SET AGE = CASE
WHEN CUST_ID = 4 THEN '30'
WHEN CUST_ID = 5 THEN '25'
ELSE AGE 
END WHERE CUST_ID IN (4,5);

SELECT * FROM customers;

SELECT * FROM customers
ORDER BY AGE;

SELECT * FROM customers
ORDER BY CUST_ID;

SELECT * FROM customers
ORDER BY AGE ASC;

SELECT * FROM customers
ORDER BY AGE DESC;

SELECT * FROM customers
ORDER BY CITY;

SELECT * FROM customers
ORDER BY CITY ASC, CUST_NAME DESC;

SELECT * FROM customers
WHERE CITY = 'HYD' AND CUST_NAME LIKE 'V%';

INSERT INTO CUSTOMERS VALUES
(6,"RIYA",6985748563,'AP',901401,26),
(7,"DIVYA",635241485,'tn',601401,52),
(8,"KAVYA",9685744152,'HYD',501404,32),
(9,"PAVI",5241638574,'KL',201301,28);

SELECT * FROM CUSTOMERS;

SELECT * FROM CUSTOMERS
WHERE CITY = 'HYD';

SELECT * FROM CUSTOMERS
WHERE PINCODE > 400000;

UPDATE CUSTOMERS
SET CUST_NAME = 'SAHITHA'
WHERE CUST_ID = 7;

ALTER TABLE CUSTOMERS ADD COLUMN SALARY INT ;

UPDATE CUSTOMERS
SET SALARY = CASE
WHEN CUST_ID = 1 THEN '50000'
WHEN CUST_ID = 2 THEN '60000'
WHEN CUST_ID = 3 THEN '10000'
WHEN CUST_ID = 4 THEN '63000'
WHEN CUST_ID = 5 THEN '55000'
WHEN CUST_ID = 6 THEN '25000'
WHEN CUST_ID = 7 THEN '85000'
WHEN CUST_ID = 8 THEN '24000'
WHEN CUST_ID = 9 THEN '10000'
ELSE SALARY
END 
WHERE CUST_ID IN (1,2,3,4,5,6,7,8,9);

SELECT * FROM CUSTOMERS;

SELECT * FROM CUSTOMERS
WHERE CITY = 'HYD' OR CITY = 'KL';

SELECT * FROM CUSTOMERS
WHERE NOT CITY = 'HYD';

SELECT * FROM CUSTOMERS
WHERE CUST_NAME NOT LIKE 'M%';

SELECT * FROM CUSTOMERS
WHERE CITY NOT IN ('HYD','KL');

SELECT * FROM CUSTOMERS
WHERE NOT SALARY < 30000;

SELECT * FROM CUSTOMERS
WHERE NOT SALARY > 30000;

SELECT * FROM CUSTOMERS
WHERE SALARY BETWEEN 30000 AND 80000;

UPDATE CUSTOMERS
SET CUST_NAME = 'PAVAN', CITY = 'TN'
WHERE CUST_ID =  6;

use sql_practice;

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50) NOT NULL,
    Category VARCHAR(50),
    Price DECIMAL(10, 2) NOT NULL,
    Stock INT NOT NULL
);

CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    ProductID INT NOT NULL,
    QuantitySold INT NOT NULL,
    SaleDate DATE NOT NULL,
    CustomerRegion VARCHAR(50),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

CREATE TABLE Customer_1 (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50) NOT NULL,
    Phone VARCHAR(15) NOT NULL UNIQUE,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Address VARCHAR(255) NOT NULL
);

INSERT INTO Customer_1 (CustomerID, CustomerName, Phone, Email, Address) VALUES
(1, 'Rahul Sharma', '9876543210', 'rahul.sharma@gmail.com', 'Mumbai, Maharashtra'),
(2, 'Anjali Verma', '9123456789', 'anjali.verma@gmail.com', 'Delhi, Delhi'),
(3, 'Vikas Gupta', '9988776655', 'vikas.gupta@gmail.com', 'Kolkata, West Bengal'),
(4, 'Pooja Desai', '9876512345', 'pooja.desai@gmail.com', 'Ahmedabad, Gujarat'),
(5, 'Rohan Patil', '9123456709', 'rohan.patil@gmail.com', 'Pune, Maharashtra'),
(6, 'Sakshi Jain', '8765432190', 'sakshi.jain@gmail.com', 'Jaipur, Rajasthan'),
(7, 'Amitabh Das', '9098765432', 'amitabh.das@gmail.com', 'Bangalore, Karnataka'),
(8, 'Priya Iyer', '9654321098', 'priya.iyer@gmail.com', 'Chennai, Tamil Nadu'),
(9, 'Kiran Reddy', '9543210987', 'kiran.reddy@gmail.com', 'Hyderabad, Telangana'),
(10, 'Meera Nair', '9765432109', 'meera.nair@gmail.com', 'Thiruvananthapuram, Kerala');

INSERT INTO Sales (SaleID, ProductID, QuantitySold, SaleDate, CustomerRegion) VALUES
(101, 1, 5, '2024-01-15', 'North'),
(102, 2, 10, '2024-01-16', 'South'),
(103, 3, 2, '2024-01-17', 'East'),
(104, 4, 1, '2024-01-18', 'West'),
(105, 5, 20, '2024-01-19', 'North'),
(106, 6, 15, '2024-01-20', 'East'),
(107, 7, 30, '2024-01-21', 'West'),
(108, 8, 10, '2024-01-22', 'South'),
(109, 9, 8, '2024-01-23', 'North'),
(110, 10, 3, '2024-01-24', 'West');


INSERT INTO Products (ProductID, ProductName, Category, Price, Stock) VALUES
(1, 'Laptop', 'Electronics', 800, 50),
(2, 'Smartphone', 'Electronics', 500, 150),
(3, 'Desk Chair', 'Furniture', 120, 70),
(4, 'Office Table', 'Furniture', 300, 30),
(5, 'Headphones', 'Electronics', 50, 200),
(6, 'Mouse', 'Accessories', 25, 300),
(7, 'Keyboard', 'Accessories', 40, 250),
(8, 'Monitor', 'Electronics', 200, 100),
(9, 'Printer', 'Electronics', 150, 80),
(10, 'Coffee Maker', 'Home Appliance', 75, 40);

-----  Q 1

SELECT * FROM Products
WHERE Price = '200';

SELECT * FROM Products;
SELECT * FROM SALES;
SELECT * FROM CUSTOMER_1; 
-------- Q 2
SELECT * FROM SALES 
WHERE QuantitySold <10;

------- Q 3
SELECT * FROM SALES
WHERE QuantitySold <>10;

-------- Q 4
SELECT PRODUCTNAME,PRICE,(PRICE*81) AS PRICE_USD
FROM PRODUCTS WHERE PRICE*81>100*81;

SELECT * FROM Products;
SELECT * FROM SALES;
SELECT * FROM CUSTOMER_1;

-------- Q 5
SELECT * FROM CUSTOMER_1
WHERE CustomerName LIKE '%A%';

---------- Q 6
SELECT * FROM Products
WHERE Category = 'Electronics';

--------- Q 7
SELECT * FROM SALES
WHERE CustomerRegion LIKE '%N%';

---------- Q 8
SELECT * FROM Products;
SELECT * FROM Products
WHERE PRICE BETWEEN 50 AND 150;

--------- Q 9
SELECT * FROM SALES;
SELECT * FROM SALES
WHERE SALEDATE BETWEEN '2024-01-20' AND '2024-01-22';

----- Q 10
SELECT * FROM CUSTOMER_1;
SELECT * FROM CUSTOMER_1 
WHERE Email IS NULL;

--------- Q 11
SELECT * FROM PRODUCTS;
SELECT * FROM PRODUCTS
WHERE STOCK = '0';

-------- Q 12
SELECT * FROM SALES
WHERE CustomerRegion IS NOT NULL;

-------- Q 13
SELECT * FROM PRODUCTS;
SELECT * FROM PRODUCTS
WHERE Category = 'Furniture' AND PRICE BETWEEN '100' AND '400'
 AND STOCK >20;

-------- Q 14
SELECT * FROM PRODUCTS
WHERE STOCK IS NOT NULL AND PRICE <100;

------ Q 15
SELECT *
FROM customers_1
WHERE ADDRESS IN ('North' OR 'South');

SELECT * FROM PRODUCTS;

SELECT 
    Sales.SaleID,
    Products.ProductName,
    Products.Category,
    Products.Price,
    Sales.QuantitySold,
    Sales.SaleDate,
    Sales.CustomerRegion
FROM 
    Sales
INNER JOIN 
    Products ON Sales.ProductID = Products.ProductID;

SELECT * FROM PRODUCTS;
SELECT *
FROM Customer_1
WHERE Region IN ('North', 'South');

---------- Q 16
SELECT ProductName,Price,Stock,(PRICE * STOCK)
AS TOTAL_STOCK FROM PRODUCTS;

------- Q 17
SELECT * FROM PRODUCTS;
SELECT * FROM PRODUCTS
WHERE 'STOCK/10'= 0;

SELECT * FROM SALES;
SELECT * FROM SALES
WHERE CustomerRegion = 'NORTH' OR CustomerRegion = 'SOUTH' OR
CustomerRegion =  'NORTH EAST';

select * FROM PRODUCTS;
SELECT distinct Category FROM PRODUCTS;

SELECT distinct CustomerRegion FROM SALES;

--- Q 51
select * from emp w,emp m where w.mgr = m.empno  and 
w.hiredate <  m.hiredate ;

SELECT * FROM PRODUCTS
WHERE Category = 'Electronics' AND PRICE BETWEEN '100'
 AND '200' AND STOCK <> 0;
 

select * FROM EMPY;

-------- Q  54
SELECT * FROM EMPY
WHERE JOB = (SELECT JOB FROM EMPY WHERE ENAME ='MILLER') 
OR  SAL > (SELECT SAL FROM EMPY WHERE ENAME = 'ALLEN');

---------- Q 55
SELECT *
FROM EMPY
WHERE SAL > (SELECT SUM(SAL) FROM EMPY 
WHERE Job = 'SALESMAN');
-- Q  56
SELECT * FROM empy a join dept b on a.deptno = b.deptno
WHERE (current_date - HIREDATE) < ENAME = 'BLAKE'
AND loc IN ('CHICAGO', 'BOSTON');

SELECT MAX(SAL) AS HIGHEST_SAL
FROM EMPY;

select * from products;

select min(price) from products;
select max(price) from products;
select min(price) as smallest_price
from products;

select min(price) as smallest_price,category from
products group by category;

select * from customer_1;

select upper(CustomerName) from customer_1;
select upper(Address) from customer_1;

select concat(CustomerName,'-',Phone) from customer_1;

select lower(Email) from customer_1;

select length (CustomerName) from customer_1;

select replace('vinay','CustomerName','vinaykumar') 
from customer_1;

select replace ('Rahul Sharma','Rahul','vinay') 
from customer_1;

select * from customer_1;

update customer_1
set Email = replace(Email,'rahul.sharma@gmail.com','vinay@gmail.com')
where Email like '%sharma@gmail.com%';

update customer_1
set CustomerName = replace(CustomerName,
'Rahul Sharma','vinaykumar')
where CustomerName like '%sharma%';

select * from sales;

select * from students;
insert into students (marks,ph_no) values (60.32,9685744152);
insert into students (marks,ph_no) values (90.63,9685744152);

select ceil(marks) from students;
select floor(marks) from students;
select round(marks) from students;
select mod(10,3) from students;
select now();
select curdate();
select curtime();

select date_format(now(),'%Y-%M-%D');
SELECT DATE_ADD('2023-01-01',INTERVAL 10 DAY) AS NEWDATE;

SELECT * FROM CUSTOMERS;
SELECT * FROM CUSTOMER_1;

ALTER TABLE CUSTOMERS ADD COLUMN ADDRESS VARCHAR(100);

UPDATE CUSTOMERS
SET ADDRESS = CASE
WHEN CUST_ID = 1 THEN 'TS'
WHEN CUST_ID = 2 THEN  'TN'
WHEN CUST_ID = 4 THEN 'KL'
WHEN CUST_ID = 6 THEN 'TN'
WHEN CUST_ID = 9 THEN 'KL'
ELSE ADDRESS
END
WHERE CUST_ID IN (1,2,4,6,9);

SELECT * FROM CUSTOMERS;

select ADDRESS, ifnull(ADDRESS,'No address') 
from customers;

SELECT ADDRESS, IFNULL(ADDRESS,'INDIA') AS FINAL_ADDRESS
FROM CUSTOMERS;

select ADDRESS, if(ADDRESS is null,'No address',
'address exist') from customers;

SELECT ADDRESS, IF(ADDRESS IS NULL,'NO ADDRESS',
'ADDRESS ALREDY EXIST') FROM CUSTOMERS;

select ADDRESS, coalesce(ADDRESS,null,concat 
('2nd place','-', CITY),null,null) from customers;

select ADDRESS, coalesce(ADDRESS, null,null, '4')
 from customers;

select ADDRESS, coalesce(ADDRESS, null,null, 'INDIA')
 from customers;

SELECT * FROM PRODUCTS;

SELECT min(PRICE) AS MIN_PRICE
FROM PRODUCTS;

SELECT MAX(PRICE) AS MAX_PRICE
FROM PRODUCTS;

SELECT COUNT(*) FROM PRODUCTS;
SELECT SUM(PRICE) FROM PRODUCTS;

SELECT * FROM PRODUCTS;

select productname, stock, row_number() over 
(order by stock desc),
rank() over (order by stock desc),
dense_rank() over (order by stock desc)
 from products;

SELECT PRODUCTNAME,STOCK,ROW_NUMBER() OVER
 (ORDER BY STOCK DESC) AS RANK_1 FROM PRODUCTS;

SELECT PRODUCTNAME,STOCK,RANK() OVER
(ORDER BY STOCK DESC) AS FINAL_RANK FROM PRODUCTS;

SELECT PRODUCTNAME,STOCK,dense_rank() OVER (ORDER BY STOCK DESC)
AS RANK_2 FROM PRODUCTS;

 select  productname, stock, ntile(3) over (order by stock desc) from products;
 
SELECT *, NTILE(4) OVER (ORDER BY STOCK ASC) FROM PRODUCTS;

select  productname, stock, lag(stock) over (order by stock desc),
lead(stock) over (order by stock desc)  from products;

SELECT PRODUCTNAME,STOCK, LAG(STOCK) OVER (ORDER BY STOCK ASC),
LEAD(STOCK) OVER (ORDER BY STOCK ASC) FROM PRODUCTS;


select category, count(*) from products group by category;
select category, sum(price) from products where category= 'Electronics' 
group by category having sum(price)=1700;

SELECT category,COUNT(*) AS TOTAL_COUNT FROM PRODUCTS GROUP BY category;

SELECT * FROM SALES;
SELECT * FROM CUSTOMERS;
SELECT * FROM CUSTOMER;
SELECT * FROM CUSTOMER_1;

------------- TASK ------- 2
SELECT UPPER(CUSTOMERNAME) FROM CUSTOMER;

SELECT YEAR(SALEDATE) FROM SALES;

SELECT * FROM PRODUCTS;
SELECT PRODUCTNAME,ROUND(PRICE),
ROUND(PRICE,2) AS FORMATTED_PRICE
FROM PRODUCTS;

SELECT *  FROM SALES;
SELECT DAY(SALEDATE) AS DAYS FROM SALES;

SELECT * FROM CUSTOMER;
SELECT concat(CUSTOMERNAME, '---' ,ADDRESS) AS RESULT FROM CUSTOMER;

SELECT LENGTH(EMAIL) AS FINAL_LENGTH FROM CUSTOMER;

SELECT ROUND(PRICE) FROM PRODUCTS;

select * from products;
select price, price*0.10 as discount from products;
select price, PRICE*0.10 AS DISCOUNT, price*0.90 as SP from products;

SELECT * FROM PRODUCTS;
SELECT SUM(PRICE*STOCK) AS TOTAL_PRODUCT_PRICES FROM PRODUCTS;
SELECT PRICE*STOCK AS TOTAL_PRICE FROM PRODUCTS;

SELECT * FROM PRODUCTS;
SELECT ABS(STOCK) FROM PRODUCTS;


SELECT CEIL(PRICE),FLOOR(PRICE) FROM PRODUCTS;
USE SQL_PRACTICE;

SELECT * FROM PRODUCTS;
SELECT ProductName,
PRICE,
MOD(PRICE,10) AS REMAINDER
FROM PRODUCTS;

SELECT POWER(PRICE,2) FROM PRODUCTS;

SELECT * FROM SALES;
SELECT MAX(QuantitySold)-MIN(QuantitySold) FROM SALES;

SELECT * FROM EMPY;
SELECT * FROM DEPT;

----------- Q 61
SELECT MAX(SAL) AS HIGH_SAL FROM EMPY; 

SELECT * FROM EMPY
WHERE SAL = (SELECT MAX(SAL) FROM EMPY);

SELECT * FROM EMPY
WHERE JOB = 'SALESMAN'
AND SAL = (SELECT MAX(SAL) FROM EMPY WHERE JOB = 'SALESMAN');

- -- JOINTS 

SELECT * FROM CUSTOMER;
SELECT * FROM PRODUCTS;
SELECT * FROM SALES;

SELECT * FROM EMPY; 
SELECT * FROM DEPT;

------ Q 64
SELECT A.ENAME,A.GRADE,A.HIREDATE,A.DEPTNO,B.DEPTNO,B.LOC 
FROM EMPY AS A 
INNER JOIN DEPT AS B 
ON A.DEPTNO = B.DEPTNO
WHERE A.GRADE = 3
AND B.LOC = 'CHICAGO'
ORDER BY A.HIREDATE DESC;

------- Q 65
SELECT E.ENAME, E.HIREDATE, E.MGR
FROM EMPY AS E
WHERE E.HIREDATE < (
    SELECT MAX(HIREDATE)
    FROM EMPY
    WHERE MGR = (
        SELECT EMPNO
        FROM EMPY
        WHERE EMPNO = 'KING'))
AND E.MGR = (
    SELECT EMPNO
    FROM EMPY
    WHERE EMPNO = 'KING');
    
----- Q 66
SELECT A.EMPNO, A.ENAME, A.JOB, A.SAL, A.GRADE, B.LOC
FROM EMPY AS A
INNER JOIN DEPT AS B ON A.DEPTNO = B.DEPTNO
WHERE A.JOB != 'PRESIDENT'
AND A.GRADE BETWEEN 3 AND 5
AND B.LOC = 'NEW YORK'
AND SAL >(
SELECT MAX(SAL) FROM EMPY  INNER JOIN DEPT  ON EMPY.DEPTNO = DEPT.DEPTNO 
WHERE LOC = 'CHICAGO'
AND JOB IN ('MANAGER','SALESMAN')
AND MGR != '7839'
);

use sql_practice;
---------- 	Q 67
SELECT * FROM EMPY
WHERE YEAR(HIREDATE) = 1981
order by HIREDATE ASC
LIMIT 1;

select * from empy
where hiredate between '1981-01-01' and '1981-12-31'
order by HIREDATE ASC
limit 1;



----- Q 68 
WITH MOSTSENIORPERSON AS (
SELECT JOB
FROM EMPY
WHERE EXTRACT(YEAR FROM HIREDATE) = 1981
ORDER BY HIREDATE ASC
LIMIT 1)
SELECT EMPNO,ENAME,JOB,HIREDATE
FROM EMPY
WHERE EXTRACT(YEAR FROM HIREDATE) = 1981
AND JOB = (SELECT JOB FROM MOSTSENIORPERSON);

---------- Q 69
SELECT * FROM EMPY
WHERE MGR = '7839'
AND GRADE > 3
ORDER BY HIREDATE ASC;

------------ Q 70
SELECT SUM(SAL) AS TOTAL_SAL_MGR FROM EMPY WHERE JOB = 'MANAGER';

------- Q 71
SELECT job, SUM(sal) AS total_annual_sal
FROM EMPY
WHERE EXTRACT(YEAR FROM hiredate) = 1981
GROUP BY job
ORDER BY total_annual_sal DESC;

--- Q 72
SELECT GRADE, SUM(SAL) AS TOTAL_SAL FROM EMPY
WHERE GRADE = 3;
SELECT * FROM EMPY;

USE SQL_PRACTICE;

------- Q73
SELECT AVG(SAL) AS AVG_SAL FROM EMPY
WHERE JOB = 'CLERK';

--------- Q 74
SELECT * FROM EMPY
WHERE DEPTNO = 20
AND SAL > (SELECT AVG(SAL) FROM EMPY
WHERE DEPTNO = 10);

--------- Q 75
SELECT DEPTNO,JOB,COUNT(*) AS EMP_COUNT
FROM EMPY
GROUP BY DEPTNO,JOB
ORDER BY DEPTNO, JOB;

----------- Q 76
SELECT MGR AS MANAGER_NO, COUNT(*) AS EMP_COUNT
FROM EMPY
WHERE MGR IS NOT NULL
GROUP BY MGR
ORDER BY MANAGER_NO ASC;

-------- Q 77
SELECT * FROM EMPY;
SELECT DEPTNO, COUNT(*) AS EMP_COUNT
FROM EMPY
GROUP BY DEPTNO
HAVING COUNT(*) >=2;

USE SQL_PRACTICE;
SELECT JOB ,COUNT(*) AS EMP_COUNT
FROM EMPY
GROUP BY JOB
HAVING COUNT(*) >=2;

------- Q 78
SELECT GRADE,
COUNT(*) AS EMP_COUNT,
MAX(SAL) AS MAX_SAL
FROM EMPY
GROUP BY GRADE
ORDER BY GRADE;

--------- Q 79
SELECT JOB,DEPTNO FROM EMPY
WHERE JOB = 'CLERK'
GROUP BY DEPTNO
HAVING COUNT(*) >=2;

---------- Q 80
SELECT A.DEPTNO, A.DNAME, A.LOC, COUNT(B.EMPNO) AS EMP_COUNT
FROM DEPT AS A
JOIN EMPY AS B ON A.DEPTNO = B.DEPTNO
GROUP BY A.DEPTNO, A.DNAME, A.LOC
ORDER BY EMP_COUNT DESC
LIMIT 1;

SELECT B.DEPTNO,B.DNAME,B.LOC, COUNT(A.EMPNO) AS EMP_COUNT
FROM DEPT AS B
JOIN EMPY AS A ON A.DEPTNO = B.DEPTNO
GROUP BY B.DEPTNO,B.DNAME,B.LOC
ORDER BY EMP_COUNT DESC
LIMIT 2;
SELECT * FROM EMPY;

--------- Q 81
SELECT * FROM EMPY
WHERE ENAME = 'JONES';

SELECT A.EMPNO,A.ENAME,A.JOB,A.SAL,A.DEPTNO,
B.DEPTNO,B.DNAME,B.LOC FROM EMPY AS A 
JOIN DEPT AS B
WHERE ENAME = 'JONES';

SELECT * FROM DEPT;

--------- Q 82
SELECT ENAME, JOB,SAL,(SAL*1.20) AS INCRMENT_SAL
FROM EMPY
WHERE (SAL*1.20) > 3000;

SELECT EMPNO, ENAME, SAL, (SAL * 1.2) AS ADJUSTED_SAL
FROM EMPY
WHERE (SAL * 1.2) > 3000;

--------- Q  83
SELECT *FROM DEPT;
SELECT A.EMPNO,A.ENAME,A.JOB,A.SAL,A.DEPTNO,
B.DNAME FROM EMPY AS A 
JOIN DEPT AS B ON A.DEPTNO = B.DEPTNO;

--------- Q 84
SELECT A.ENAME,A.JOB,A.DEPTNO,B.DNAME 
FROM EMPY AS A 
JOIN DEPT AS B ON A.DEPTNO = B.DEPTNO
WHERE DNAME != 'SALES';

----------- Q 85
SELECT A.ENAME, A.SAL, A.COMM, B.DNAME, B.LOC
FROM EMPY AS A 
JOIN DEPT AS B ON A.DEPTNO = B.DEPTNO
WHERE A.SAL between 2000 AND 3000
AND B.LOC = 'CHICAGO';

-------- Q 86
select a.ename as empy_name,a.sal as emp_sal,b.ename as mgr_name,
b.sal as mgr_sal
from empy as a
join empy as b 
on a.mgr = b.empno
where a.sal > b.sal;

select a.ename ,a.sal,b.ename,b.sal
from empy as a
join empy as b
on a.mgr = b.empno
where a.sal > b.sal;

------------ Q 87
SELECT GRADE, ENAME
FROM EMPY
WHERE (DEPTNO = 10 OR DEPTNO = 30)
  AND GRADE <> 4
  AND HIREDATE < '1982-12-31';

SELECT * FROM EMPY;

--------  Q 88
SELECT A.ENAME,A.JOB,B.DNAME,B.LOC 
FROM EMPY AS A
JOIN DEPT AS B ON A.DEPTNO = B.DEPTNO
WHERE JOB = 'MANAGER';
 
 ------------ Q 89
 SELECT A.ENAME,B.ENAME
 FROM EMPY a
 JOIN EMPY B ON A.MGR = B.EMPNO
 WHERE B.ENAME = 'JONES';

 SELECT A.ENAME,B.ENAME
 FROM EMPY a
 JOIN EMPY B ON A.MGR = B.EMPNO
 WHERE A.ENAME = 'JONES';
 
--------- Q 90
SELECT ENAME,SAL FROM EMPY
WHERE ENAME = 'FORD'
AND SAL = (SELECT AVG(SAL) FROM EMPY
WHERE GRADE = (SELECT GRADE FROM EMPY
WHERE ENAME = 'FORD' ));

---------- Q 91
SELECT A.ENAME,A.JOB,A.SAL,A.GRADE,B.DNAME,A.DEPTNO
FROM EMPY a 
JOIN DEPT B ON A.DEPTNO = B.DEPTNO
ORDER BY A.DEPTNO;

--------- Q 92
USE SQL_PRACTICE;
SELECT * FROM EMPY;
SELECT * FROM DEPT;

SELECT A.ENAME,A.JOB,A.SAL,A.GRADE,B.DNAME FROM EMPY A 
JOIN DEPT B ON A.DEPTNO=B.DEPTNO
WHERE JOB != 'CLERKS'
ORDER BY A.SAL DESC;

------- Q 93
SELECT ENAME,JOB FROM EMPY
WHERE MGR IS NULL;

------ Q 94
SELECT A.*,B.* FROM EMPY as A
JOIN DEPT B ON A.DEPTNO=B.DEPTNO
WHERE A.SAL = (SELECT MAX(SAL) FROM EMPY
WHERE DEPTNO = A.DEPTNO )
ORDER BY A.DEPTNO DESC;

------- Q 95
SELECT ENAME ,SAL FROM EMPY
WHERE SAL = (SELECT (MAX(SAL) + MIN(SAL)) / 2
FROM EMPY );

SELECT 
    ENAME AS Employee_Name, 
    SAL AS Salary
FROM EMPY
WHERE SAL = (
    SELECT (MAX(SAL) + MIN(SAL))
    FROM EMPY
);

--------- Q 96
SELECT DEPTNO ,COUNT(*) AS NOFEMP FROM EMPY
GROUP BY DEPTNO
HAVING COUNT(*) >3;

SELECT DEPTNO ,COUNT(*) AS NOFEMP FROM EMPY
GROUP BY DEPTNO
HAVING COUNT(*);

------------ Q 97
SELECT B.DNAME ,COUNT(A.EMPNO) AS NO_OF_EMP FROM EMPY A
JOIN DEPT B ON A.DEPTNO=B.DEPTNO
GROUP BY B.DNAME
HAVING COUNT(A.EMPNO) >=3;

USE SQL_PRACTICE;

----- Q 98
SELECT ENAME,SAL FROM EMPY
WHERE EMPNO IN (SELECT MGR FROM EMPY 
GROUP BY MGR
HAVING SAL > AVG(SAL));

--------- Q 99
SELECT ENAME,SAL,COMM,(SAL+IFNULL(COMM,0))AS NET_PAY FROM EMPY
WHERE (SAL + IFNULL(COMM,0)) >= ALL( SELECT SAL FROM EMPY);

----------- Q 100
SELECT A.ENAME,A.SAL,B.ENAME,B.SAL FROM EMPY A 
JOIN EMPY B ON A.MGR = B.EMPNO
WHERE A.SAL < B.SAL
AND A.SAL > (SELECT MAX(SAL) FROM EMPY 
WHERE JOB = 'MANAGER' );

USE SQL_PRACTICE;
------------ Q 101
-- 101. List the employee names and his average salary department wise.
SELECT A.ENAME,AVG(A.SAL) AS AV_SAL,B.DNAME
 FROM EMPY A 
JOIN DEPT B ON A.DEPTNO = B.DEPTNO
GROUP BY B.DNAME,A.ENAME
ORDER BY B.DNAME,A.ENAME;

SELECT 
    E.Ename,
    D.Deptno,
    AVG(E.Sal) AS AverageSalary
FROM 
    Empy E
JOIN 
    Dept D ON E.Deptno = D.Deptno
GROUP BY 
    E.Ename, D.Deptno
ORDER BY 
    D.Deptno, E.Ename;

 -- 102. Find out least 5 earners of the company.
 SELECT ENAME,SAL FROM EMPY
 ORDER BY SAL ASC
 LIMIT 5;
 
 -- 103. Find out emps whose salaries greater than salaries of their managers.
 SELECT a.ENAME,a.SAL,b.ename,b.sal
 FROM EMPY a 
 join empy b on b.mgr=a.empno
 WHERE a.SAL > b.sal;
 
 use sql_practice;

 -- 104. List the managers who are not working under the president.
 select * from empy
 where job = 'manager'
 and mgr <> (select empno from empy where job = 'president');
 
 -- 105. List the records from emp whose deptno isnot in dept.
 select a.ename,a.deptno,b.dname from empy a 
 join dept b on a.deptno = b.deptno
 where b.deptno not in ( select deptno from dept);
 
 -- 106. List the Name , Salary, Comm and Net Pay is more than any other employee.
 select a.ename,a.sal,a.comm,(a.sal + a.comm) as net_sal
 from empy a
 where (a.sal + a.comm) > ( select max(b.sal + b.comm)
 from empy b
 where b.empno > a.empno);

 SELECT 
    E.Ename,
    E.Sal,
    E.Comm,
    (E.Sal + E.Comm) AS NetPay
FROM 
    Empy E
WHERE 
    (E.Sal + E.Comm) > (
        SELECT MAX(E2.Sal + E2.Comm)
        FROM Empy E2
        WHERE E2.Empno <> E.Empno
    );

 -- 107. List the Enames who are retiring after 31-Dec-89 the max Job period is 20Y.
 select ename,hiredate from empy
 where hiredate <= '1991-01-01'
 and hiredate < '1990-01-01';
 
 -- 108. List those Emps whose Salary is odd value.
 select ename,sal from empy
 where sal % 2 = 1;
 
 -- 109. List the emp’s whose Salary contain 3 digits.
 select ename, sal from empy 
 where sal like '___';
 
 select ename,sal from empy 
 where length(sal) = 3;
 
 -- 110. List the emps who joined in the month of DEC.
 select ename,hiredate from empy
 where month(hiredate) = 'dec';
 
 select ename,hiredate from empy
 where month(hiredate) = 12;
 
 -- 111. List the emps whose names contains ‘A’.
 select ename from empy
 where ename like 'a%';
 
 -- 112. List the emps whose Deptno is available in his Salary.
 select ename,deptno,sal from empy
 where sal like '%' and deptno like '%';

SELECT 
    E.Ename,
    E.Deptno,
    E.Sal
FROM 
    empy E
WHERE 
    E.Sal LIKE '%' || E.Deptno || '%';
    
-- 113. List the emps whose first 2 chars from Hiredate=last 2 characters of Salary.
select ename,sal,hiredate from empy
where left(hiredate,2) = right(sal,2);

 -- 114. List the emps Whose 10% of Salary is equal to year of joining.
 select ename,sal,hiredate from empy
 where round(sal * 0.10) = extract( year from hiredate);
 
 -- 115. List first 50% of chars of Ename in Lower Case and remaining are upper Case
 select ename,lower(left(ename, length(ename) / 2)) +
 upper(right(ename,length(ename) - length(ename) / 2 )) as new_name
 from empy;
 
 SELECT 
    E.Ename,
    LOWER(SUBSTRING(E.Ename, 1, LENgth(E.Ename) / 2)) + 
    UPPER(SUBSTRING(E.Ename, LENgth(E.Ename) / 2 + 1, LENgth(E.Ename))) AS ModifiedEname
FROM empy E;
    
    SELECT 
    E.Ename,
    LOWER(LEFT(E.Ename, 2)) + UPPER(RIGHT(E.Ename, 2)) AS ModifiedEname
FROM empy E;

select lower(ename) from empy;
    
 -- 116. List the Dname whose No. of Emps is =to number of chars in the Dname.
 select b.dname from empy a
 join dept b on a.deptno = b.deptno
 group by b.dname
 having count(a.empno) = length(b.dname);
 
 -- 117. List the emps those who joined in company before 15th of the month.
 select hiredate from empy
 where day(hiredate) < 15;
 
 -- 118. List the Dname, no of chars of which is = no. of emp’s in any other Dept.
 SELECT D1.Dname
FROM  dept D1
JOIN 
    (SELECT deptno, COUNT(*) AS EmpCount
     FROM empy
     GROUP BY deptno) AS E
ON 
    D1.deptno <> E.deptno
WHERE 
    LENgth(D1.Dname) = E.EmpCount;
    
 
 -- 119. List the emps who are working as Managers.
 select ename,job from empy
 where job = 'manager';
 
 select ename,job from empy
 where job like 'manager';
 
 
 -- 120. List THE Name of dept where highest no.of emps are working.
 select dname,count(empno) as total_emp from empy a
 join dept b on a.deptno = b.deptno
 group by dname
 order by count(*)desc
 limit 1;
 
 WITH EmployeeCounts AS (
    SELECT deptno, COUNT(empno) AS EmployeeCount
    FROM empy
    GROUP BY deptno)
SELECT dname FROM dept
WHERE deptno IN (
    SELECT deptno
    FROM EmployeeCounts
    WHERE EmployeeCount = (SELECT MAX(EmployeeCount) FROM EmployeeCounts));
 
 
 -- 121. Count the No.of emps who are working as ‘Managers’(using set option).
 select count(empno) as no_mgrs from empy
 where job = 'manager';
 
 
 SELECT 'Managers' AS jobs, COUNT(*) AS NumberOfEmployees
FROM empy
WHERE job = 'Manager'
UNION ALL
SELECT 'OtherRoles' AS job, COUNT(*) AS NumberOfEmployees
FROM empy
WHERE job <> 'Manager';

 SELECT COUNT(*) AS NumberOfEmployees
FROM empy
WHERE job = 'Manager'
UNION ALL
SELECT COUNT(*) AS NumberOfEmployees
FROM empy
WHERE job <> 'Manager'
limit 1 ;


 -- 122. List the emps who joined in the company on the same date.
 select ename,hiredate from empy 
 where hiredate in (select hiredate from empy 
 group by hiredate
 having count(*) > 1);
 
 
 -- 123. List the details of the emps whose Grade is equal to one tenth of Sales Dept.
 select * from empy 
 where grade = (select count(*) / 10 from empy a 
 join dept b on a.deptno = b.deptno
 where dname = 'sales');
 
 -- 124. List the name of the dept where more than average no. of emps are working.
 
 SELECT D.dname,EmployeeCount
FROM dept D
JOIN (SELECT deptno, COUNT(*) AS EmployeeCount 
FROM empy 
GROUP BY deptno) e
ON D.deptno = E.deptno
WHERE E.EmployeeCount > (SELECT AVG(EmployeeCount) 
FROM (SELECT COUNT(*) AS EmployeeCount 
FROM empy GROUP BY deptno) AS AvgCount);
 
 use sql_practice;
 -- 125. List the Managers name who is having max no.of emps working under him.
 SELECT 
    b.ename AS manager_name,
    COUNT(a.empno) AS num_employees
FROM 
    empy a
JOIN 
    empy b ON a.mgr = b.empno
GROUP BY 
    b.empno, b.ename
ORDER BY 
    num_employees DESC
LIMIT 1;

SELECT 
    m.ename AS manager_name,
    COUNT(e.empno) AS num_employees
FROM 
    empy e
JOIN 
    empy m ON e.mgr = m.empno
GROUP BY 
    m.empno, m.ename
ORDER BY 
    num_employees DESC;
 
 -- 126. List the Ename and Sal is increased by 15% and expressed as no.of  Dollars.
 select ename,sal,(sal*15/100) as increse_sal,(sal*0.15)*81 as dollars from empy;
 select ename,sal,round(sal*0.15) as increse_sal,round(sal*0.15)*81 as dollars from empy;
 
 
 -- 127. Produce the output of EMP table ‘EMP_AND_JOB’ for Ename and Job.
 select ename,job from empy;
 
 -- 128. Produce the following output from EMP. EMPLOYEE SMITH(clerk) ALLEN (Salesman)
 
 SELECT 
    group_CONCAT(CONCAT(ename, ' (', job, ')')  SEPARATOR ' --  ') AS employee_info
FROM 
    EMPy;
    
    select concat(ename,' -- ',job) as emp_name_job from empy
    limit 2;
    
-- 130)List the emps with Hire date in format June 4, 1988.
select ename,format(hiredate,'MMMM dd, yyyy') as new_date
from empy;

SELECT 
    ename, 
    FORMAT(hiredate, 'M,d, yyyy') AS formatted_hire_date
FROM 
    empy;

 -- 131)Print a list of emp’s Listing ‘just salary’ if Salary is more than 1500,
 -- on target ifSalary is 1500 and ‘Below 1500’ if Salary is less than 1500.
 select ename,
 case
 when sal > 1500 then 'just salary'
 when sal = 1500 then 'on target'
 else 'below 1500'
 end as sal_info
 from empy;
 
 -- 132)Write a query which return the day of the week for any date entered in format‘DD-MM-YY’.
 SELECT 
    DAYNAME(STR_TO_DATE('04-06-88', '%d-%m-%y')) AS day_of_week;
    
    SELECT 
    DAYNAME(STR_TO_DATE('05-06-81', '%d-%m-%y')) AS day_of_week;
 
 use sql_practice;
 -- 133)Write a query to calculate the length of service of any
 -- employee with thecompany, use DEFINE to avoid repetitive typing of functions.
 
-- 134)Give a string of format ‘NN/NN’, verify that the first and last two
--  characters arenumbers and that the middle character is’/’. Print the
 -- expression ‘YES’ if valid, ‘NO’ if not valid. Use the following
 -- values to test your solution. ‘12/34’,’01/1a’, ‘99/98’.
 
 -- 135)Emps hired on or before 15th of any month are paid on the last
 -- Friday of that month those hired after 15th are paid on the first
 -- Friday of the following month. Print a list of emps their hire date and
 -- the first pay date. Sort on hire date.
 
 -- 136)Count the no. of characters with out considering spaces for each name.
 select ename, length(replace(ename, ' ', '')) as emp_char from empy;
 
 -- 137)Find out the emps who are getting decimal value in their Sal without using like operator.
SELECT *
FROM empy
WHERE sal <> FLOOR(sal);

 -- 138)List those emps whose Salary contains first four digit of their Deptno
 
 -- 139)List those Managers who are getting less than his emps Salary.
 SELECT m.empno, m.sal AS manager_salary
FROM empy m
WHERE m.mgr IS NOT NULL
  AND m.sal < (
        SELECT MAX(e.sal)
        FROM empy e
        WHERE e.mgr = m.empno);
 
 -- 140)Print the details of all the emps who are sub-ordinates to Blake.
 SELECT e.*
FROM empy e
JOIN empy b ON e.mgr = b.empno
WHERE b.ename = 'Blake';

 -- 141)List the emps who are working as Managers using co-related sub query.
 select * from empy
 where job = 'manager';
 
 select a.empno,a.ename from empy a
 where exists ( select 1 from empy b where b.mgr = a.empno);
 
 select a.empno,a.ename from empy a
 join empy b on a.empno = b.mgr;
 
 -- 142)List the emps whose Mgr name is ‘Jones’ and also with his Manager name.
 SELECT e.empno, e.ename AS emp_name, m.ename AS mgr_name, mm.ename AS mgr_mgr_name
FROM empy e
JOIN empy m ON e.mgr = m.empno
JOIN empy mm ON m.mgr = mm.empno
WHERE m.ename = 'Jones';

 -- 143)Define a variable representing the expression used to calculate on
 -- emps total annual remuneration use the variable in a statement, which finds all emps who can earn 30000 a year or more.
 select ename,sal,(sal * 12) as total_sal
 from empy
 where (sal * 12) >= 30000;
 
 -- 144)Find out how may Managers are their in the company.
 select * from empy
 where job = 'manager';
 
 -- 145)Find Average salary and Average total remuneration for each Job type.Remember Salesman earn commission.secommm
 select job,avg(sal),
 avg(sal * 12 + coalesce(comm,0) * 12) as avg_tot_remu
 from empy
 group by job;
 
 
 -- 146)Check whether all the emps numbers are indeed unique.
 select empno, count(*)
 from empy
 group by empno;
 
 -- 147)List the emps who are drawing less than 1000 Sort the output by Salary.
 select ename,sal from empy
 where sal < 1000
 order by sal;
 
 -- 148)List the employee Name, Job, Annual Salary, deptno, Dept name
 -- and grade who earn 36000 a year or who are not CLERKS.
 select a.ename,a.job,(a.sal * 12) as anu_sal,b.deptno,b.dname,a.grade 
 from empy a
 join dept b on a.deptno = b.deptno
 where (sal * 12) = 36000 
 and job <> 'clerk';
 
 -- 149)Find out the Job that was filled in the first half of 1983 and same job that was filled during 
 -- the same period of 1984.
 select job
 from empy
 where(hiredate between '1983-01-01' and '1983-06-30')
 and job in (select job from empy
 where hiredate between '1984-01-01' and '1984-06-30')
 group by job;
 
 -- 150)Find out the emps who joined in the company before their Managers.
 select a.ename,a.hiredate,b.ename,b.hiredate
 from empy a
 join empy b on a.mgr = b.empno
 where a.hiredate < b.hiredate;
 
 -- 151)List all the emps by name and number along with their Manager’s name and number.
 -- Also List KING who has no ‘Manager’.
 select a.empno,a.ename,b.empno,b.ename from empy a
 left join empy b on a.mgr = b.empno
 where a.ename = 'king' or b.mgr is not null;
 
 -- 152)Find all the emps who earn the minimum Salary for each job wise in ascending order.
    select a.ename,a.sal,a.job from empy a
    where a.sal = (select min(sal) from empy
    where job = a.job )
    order by a.job asc;
    
    use sql_practice;
    
    
    -- 153)Find out all the emps who earn highest salary in each job type. Sort indescending salary order.
    select ename,job,sal from empy
    where sal in (select max(sal) from empy 
    group by job)
    order by sal asc;
    
    
     -- 154)Find out the most recently hired emps in each Dept order by Hiredate.
   select a.* from empy a where hiredate in (select max(hiredate) from dept b
   where a.deptno = b.deptno)
   order by hiredate;
   
   select a.ename,a.hiredate,b.deptno from empy a
   join dept b on a.deptno = b.deptno
   where a.hiredate = (select max(hiredate) from empy)
   order by a.hiredate desc;
     
 -- 155)List the employee name,Salary and Deptno for each employee
 -- who earns asalary greater than the average for their department order by Deptno.
 select a.ename,a.sal,b.deptno from empy a
 join dept b on a.deptno = b.deptno
 where sal > (select avg(sal) from empy )
 order by b.deptno;
 
 -- 156)List the Deptno where there are no emps.
 select deptno ,count(*) from dept
 group by deptno
 having count(*) = 0;
 
 -- 157)List the No.of emp’s and Avg salary within each department for each job.
 select count(*) ,avg(a.sal),b.deptno,a.job from empy a
 join dept b on a.deptno = b.deptno
 group by deptno,job
 order by deptno;
 
 -- 158)Find the maximum average salary drawn for each job except for ‘President’.
select max(avg_Sal) from (select avg(a.sal) as avg_sal from empy as a
 where a.job!= 'president' group by a.job ) as b;
 
select max(e.Sal) from empy as e
where e.sal in (select avg(a.sal) from empy as a
 where a.job!= 'president' group by a.job );
 
 select max(sal) from empy 
 where sal in (select avg(sal) from empy
 where job != 'president' 
 group by job);
 
 -- 159)Find the name and Job of the emps who earn Max salary and Commission.
 select ename,job from empy
 where sal = (select max(sal) as max_sal from empy)
 and comm = (select max(comm) from empy);
 
--  160)List the Name, Job and Salary of the emps who are not belonging to
 -- the department 10 but who have the same job and Salary as the emps of dept 10.
 select a.ename,a.job,a.sal,b.deptno from empy a
 join dept b on a.deptno = b.deptno
 where b.deptno <> 10 
 and a.job in (select a.job from empy where  b.deptno = 10)
 and a.sal in (select a.sal from empy where b.deptno = 10);

 
--  161)List the Deptno, Name, Job, Salary and Sal+Comm of the
 -- SALESMAN who areearning maximum salary and commission in descending order.
 select b.deptno,a.ename,a.job,a.sal,(sal+comm) as sal_comm 
 from empy a
 join dept b on a.deptno = b.deptno
 where a.job = 'salesman'
 and (a.sal+a.comm) = (select max(a.sal+a.comm) from empy)
 order by (a.sal+a.comm) desc;
 
 -- 162)List the Deptno, Name, Job, Salary and Sal+Comm of the emps who earn the second highest earnings (sal + comm.).
 select b.deptno,a.ename,a.job,a.sal,(a.sal+a.comm) as sal_comm
from empy a 
join dept b on a.deptno = b.deptno
where (a.sal+a.comm) = (select max(a.sal+a.comm) from empy)
order by (a.sal+a.comm) desc
limit 2;
 
 select b.deptno,a.ename,a.job,a.sal,(a.sal+a.comm) as sal_comm
 from empy a
 join dept b on a.deptno = b.deptno
 where (a.sal+a.comm) = (select max(sal+comm) from empy
 where (sal+comm) < (select max(sal+comm) from empy))
 order by sal_comm desc;
 
 
 -- 163)List the Deptno and their average salaries for dept with the average salary less 
 -- than the averages for all department
 select avg(a.sal) as avg_sal,a.deptno from empy a 
 join dept b on a.deptno = b.deptno
 group by b.deptno
 having avg(a.sal) < (select avg(sal) from empy);
 
 SELECT D.Deptno, AVG(E.sal) AS AvgSalary
FROM empy E
JOIN dept D ON E.Deptno = D.Deptno
GROUP BY D.Deptno
HAVING AVG(E.sal) < (
    SELECT AVG(sal)
    FROM empy
);

 -- 164)List out the Names and Salaries of the emps along with their
 -- manager names and salaries for those emps who earn more salary than their Manager.
 select a.ename emp_name,a.sal emp_sal,b.ename mgr_name,b.sal mgr_sal from empy a
 join empy b on a.empno = b.mgr
 where a.sal > b.sal;
 
 
 -- 165)List out the Name, Job, Salary of the emps in the department with the highest average salary.
 
 SELECT E.eName, E.Job, E.sal
FROM empy E
JOIN dept D ON E.Deptno = D.Deptno
WHERE E.Deptno = (
    SELECT Deptno
    FROM empy
    GROUP BY deptno
    ORDER BY AVG(sal) DESC
    LIMIT 1
);

 -- 166)List the empno,sal,comm. Of emps.
 select ename,sal,comm from empy;
 
 -- 167)List the details of the emps in the ascending order of the sal.
 select ename,sal from empy
 order by sal asc;
 
 
 -- 168)List the dept in the ascending order of the job and the desc order of the emps print empno, ename.
  select * from empy  order by job asc,empno desc ; 
 
 -- 169)Display the unique dept of the emps.
 
 select distinct dname from dept;
 
 select distinct b.dname,a.ename from dept b 
 join empy a on a.deptno = b.deptno;
 
 select distinct b.dname,a.ename from dept b 
 join empy a on a.deptno = b.deptno
 order by b.dname;
 
 -- 170)Display the unique dept with jobs.
 select distinct b.dname,a.job from empy a
 join dept b on a.deptno = b.deptno
 order by b.dname;

 -- 171)Display the details of the blake.
 select a.*,b.* from empy a 
 join dept b on a.deptno = b.deptno
 where ename = 'blake';
 
 -- 172)List all the clerks.
 select * from empy
 where job = 'clerk';
 
 -- 173)list all the employees joined on 1st may 81.
 select * from empy
 where hiredate = '1981-05-01';
 
 -- 174)List the empno,ename,sal,deptno of the dept 10 emps in the ascending order ofsalary.
    select a.empno,a.ename,a.sal,a.deptno from empy a 
    where a.deptno = 10
    order by a.sal asc;
    
   -- 175)List the emps whose salaries are less than 3500.
   select * from empy
   where sal < 3500;
   
 -- 176)List the empno,ename,sal of all the emp joined before 1 apr 81.
 select empno,ename,sal,hiredate from empy
 where hiredate < '1981-04-01';
 
 -- 177)List the emp whose annual sal is <25000 in the asc order of the salaries.
 select ename,job,sal,(sal*12) as annal_sal from empy
 where (sal*12) < 25000
 order by (sal*12) asc;
 
 -- 178)List the empno,ename,annsal,dailysal of all the salesmen in the asc ann sal
 select empno,ename,(sal*12) as annual_sal,(sal/30) as daily_sal from empy
 where job = 'salesman'
 order by annual_sal asc;
 
 -- 179)List the empno,ename,hiredate,current date & exp in the ascending order of the exp.
 select 
 empno,
 ename,
 hiredate,
((curdate() - hiredate) / 365) as exp
 from empy
 order by exp asc;
 
    SELECT empno, ename, hiredate, 
       FLOOR(DATEDIFF(CURDATE(), hiredate) / 365) AS exp
FROM empy
ORDER BY exp ASC;

 -- 180)List the emps whose exp is more than 10 years.
  SELECT empno, ename, hiredate, 
       FLOOR(DATEDIFF(CURDATE(), hiredate) / 365) AS exp
FROM empy
where FLOOR(DATEDIFF(CURDATE(), hiredate) / 365) > 10;
 
 -- 181)List the empno,ename,sal,TA30%,DA 40%,HRA50%,GROSS,LIC,PF,net,deduction,net allow
--  and net sal in the ascending order of the net salary.
select empno,
ename,
sal,
sal * 0.30 as TA,
sal * 0.40 as DA,
sal * 0.50 as HRA,
(sal + (sal * 0.30) + (sal * 0.40) + (sal * 0.50)) as GROSS_SAL,
(sal + (sal * 0.30) + (sal * 0.40) + (sal * 0.50)) as NET_SAL,
((sal * 0.30) + (sal * 0.40) + (sal * 0.50)) as NET_ALLOW
from empy 
order by NET_SAL asc;

-- assume LIC is 5%
-- PF is 12%
SELECT empno, 
       ename, 
       sal, 
       sal * 0.30 AS TA, 
       sal * 0.40 AS DA, 
       sal * 0.50 AS HRA, 
       (sal + (sal * 0.30) + (sal * 0.40) + (sal * 0.50)) AS GROSS_SAL, 
       sal * 0.05 AS LIC,  -- Assuming LIC is 5% of the basic salary
       sal * 0.12 AS PF,   -- Assuming PF is 12% of the basic salary
       (sal + (sal * 0.30) + (sal * 0.40) + (sal * 0.50)) - (sal * 0.05 + sal * 0.12) AS NET, 
       (sal * 0.05 + sal * 0.12) AS DEDUCTION, 
       (sal * 0.30 + sal * 0.40 + sal * 0.50) - (sal * 0.05 + sal * 0.12) AS NET_ALLOW,
       (sal + (sal * 0.30) + (sal * 0.40) + (sal * 0.50)) - (sal * 0.05 + sal * 0.12) AS NET_SAL
FROM empy
ORDER BY NET_SAL ASC;


 -- 182)List the emps who are working as managers.
 select * from empy 
 where job = 'manager';
 
 -- 183)List the emps who are either clerks or managers.
 select * from empy
 where job in ('clerk','manager')
 order by job asc;
 
 SELECT empno, ename, job
FROM empy
WHERE job = 'CLERK' OR job = 'MANAGER';


 -- 184)List the emps who have joined on the following dates 1 may 81,17 nov 81,30 dec 81
 select * from empy
 where hiredate in ('1981-05-01','1981-05-17','1981-12-30');
 
 SELECT empno, ename, hiredate
FROM empy
WHERE hiredate = '1981-05-01'
   OR hiredate = '1981-05-17'
   OR hiredate = '1981-12-30';
   
   SELECT empno, ename, hiredate
FROM empy
WHERE hiredate BETWEEN '1981-05-01' AND '1981-05-01'
   OR hiredate BETWEEN '1981-05-17' AND '1981-05-17'
   OR hiredate BETWEEN '1981-12-30' AND '1981-12-30';


 -- 185)List the emps who have joined in the year 1981.
 select * from empy
 where year(hiredate) = 1981;
 
 SELECT empno, ename, hiredate
FROM empy
WHERE hiredate BETWEEN '1981-01-01' AND '1981-12-31';

SELECT empno, ename, hiredate
FROM empy
WHERE hiredate LIKE '1981%';

 
 -- 186)List the emps whose annual sal ranging from 23000 to 40000.
 select ename,sal,(sal * 12) as ANNUAL_SAL from empy
 where (sal * 12) between 23000 and 40000;
 
 SELECT empno, ename, sal
FROM empy
WHERE sal * 12 >= 23000 AND sal * 12 <= 40000;

 SELECT empno, ename, sal
FROM empy
WHERE 
  CASE 
    WHEN sal * 12 BETWEEN 23000 AND 40000 THEN 1
    ELSE 0
  END = 1;

 -- 187)List the emps working under the mgrs 7369,7890,7654,7900.
 SELECT empno, ename, mgr
FROM empy
WHERE empno IN (7369, 7890, 7654, 7900);

 
 -- 188)List the emps who joined in the second half of 82.
 SELECT empno, ename, hiredate
FROM empy
WHERE hiredate BETWEEN '1982-07-01' AND '1982-12-31';

 SELECT empno, ename, hiredate
FROM empy
WHERE YEAR(hiredate) = 1982
  AND MONTH(hiredate) BETWEEN 7 AND 12;
 
 SELECT empno, ename, hiredate
FROM empy
WHERE hiredate LIKE '1982-07%' 
   OR hiredate LIKE '1982-08%' 
   OR hiredate LIKE '1982-09%' 
   OR hiredate LIKE '1982-10%' 
   OR hiredate LIKE '1982-11%' 
   OR hiredate LIKE '1982-12%';

 -- 189)List all the 4char emps.
 select * from empy
 where length(ename) = 4;
 
 select * from empy 
 where ename like '____';
 

 -- 190)List the emp names starting with ‘M’ with 5 chars.
 select * from empy
 where ename like 'm____';
 
select * from empy
 where ename like 'm%';
 
 select * from empy
 where left(ename,1) = 'm' and length(ename) = 5;
 
 SELECT empno, ename
FROM empy
WHERE SUBSTRING(ename, 1, 1) = 'M' AND CHAR_LENGTH(ename) = 5;

 -- 191)List the emps end with ‘H’ all together 5 chars.
 select * from empy 
 where (ename) like '____h';
 
 SELECT empno, ename
FROM empy 
WHERE RIGHT(ename, 1) = 'H' AND LENGTH(ename) = 5;

SELECT empno, ename
FROM empy
WHERE SUBSTRING(ename, -1) = 'H' AND CHAR_LENGTH(ename) = 5;

 -- 192)List names start with ‘M’.
 select * from empy
 where ename like 'm%';
 
 SELECT empno, ename
FROM empy
WHERE LEFT(ename, 1) = 'M';

SELECT empno, ename
FROM empy
WHERE SUBSTRING(ename, 1, 1) = 'M';

 -- 193)List the emps who joined in the year 81.
 
 SELECT empno, ename, hiredate
FROM empy
WHERE YEAR(hiredate) = 1981;

SELECT empno, ename, hiredate
FROM empy
WHERE hiredate BETWEEN '1981-01-01' AND '1981-12-31';

SELECT empno, ename, hiredate
FROM empy
WHERE hiredate LIKE '1981%';

 -- 194)List the emps whose sal is ending with 00
 SELECT empno, ename, sal
FROM empy
WHERE MOD(sal, 100) = 0;

 SELECT empno, ename, sal
FROM empy
WHERE sal LIKE '%00';

SELECT empno, ename, sal
FROM empy
WHERE CAST(sal AS CHAR) LIKE '%00';

 -- 195)List the emp who joined in the month of JAN.
 SELECT empno, ename, hiredate
FROM empy
WHERE MONTH(hiredate) = 1;

 SELECT empno, ename, hiredate
FROM empy
WHERE hiredate BETWEEN 'YYYY-01-01' AND 'YYYY-01-31';

SELECT empno, ename, hiredate
FROM empy
WHERE hiredate LIKE 'YYYY-01%';

 -- 196)Who joined in the month having char ‘a’.
 SELECT empno, ename, hiredate
FROM empy
WHERE MONTHNAME(hiredate) LIKE '%a%';

 SELECT empno, ename, hiredate
FROM empy
WHERE MONTHNAME(hiredate) IN ('March', 'May', 'August');

SELECT empno, ename, hiredate
FROM empy
WHERE hiredate LIKE '%-03-%' OR hiredate LIKE '%-05-%' OR hiredate LIKE '%-08-%';

 -- 197)Who joined in the month having second char ‘a’
 SELECT empno, ename, hiredate
FROM empy
WHERE SUBSTRING(MONTHNAME(hiredate), 2, 1) = 'a';

 SELECT empno, ename, hiredate
FROM empy
WHERE MONTHNAME(hiredate) IN ('January', 'March', 'May');

SELECT empno, ename, hiredate
FROM empy
WHERE hiredate LIKE '%-a%-%';

 -- 198)List the emps whose salary is 4 digit number.
 SELECT empno, ename, sal
FROM empy
WHERE sal BETWEEN 1000 AND 9999;

 SELECT empno, ename, sal
FROM empy
WHERE CHAR_LENGTH(sal) = 4;

 SELECT empno, ename, sal
FROM empy
WHERE LENGTH(sal) = 4;

 -- 199)List the emp who joined in 80’s.
 SELECT empno, ename, hiredate
FROM empy
WHERE YEAR(hiredate) BETWEEN 1980 AND 1989;

 SELECT empno, ename, hiredate
FROM empy
WHERE hiredate BETWEEN '1980-01-01' AND '1989-12-31';

 SELECT empno, ename, hiredate
FROM empy
WHERE hiredate LIKE '198%';

 -- 200)List the emp who are clerks who have exp more than 8ys.
 SELECT empno, ename, hiredate, 
       FLOOR(DATEDIFF(CURRENT_DATE, hiredate) / 365) AS exp
FROM empy
WHERE job = 'CLERK'
  AND FLOOR(DATEDIFF(CURRENT_DATE, hiredate) / 365) > 8;

 SELECT empno, ename, hiredate,
       TIMESTAMPDIFF(YEAR, hiredate, CURRENT_DATE) AS exp
FROM empy
WHERE job = 'CLERK'
  AND TIMESTAMPDIFF(YEAR, hiredate, CURRENT_DATE) > 8;

SELECT empno, ename, hiredate,
       YEAR(CURRENT_DATE) - YEAR(hiredate) AS exp
FROM empy
WHERE job = 'CLERK'
  AND YEAR(CURRENT_DATE) - YEAR(hiredate) > 8;

 -- 201)List the mgrs of dept 10 or 20.
 SELECT empno, ename, job, deptno
FROM empy
WHERE job = 'MANAGER'
  AND deptno IN (10, 20);

 SELECT empno, ename, job, deptno
FROM empy
WHERE job = 'MANAGER'
  AND (deptno = 10 OR deptno = 20);

SELECT empno, ename, job, deptno
FROM empy
WHERE job = 'MANAGER'
  AND CASE WHEN deptno = 10 THEN 1
           WHEN deptno = 20 THEN 1
           ELSE 0 END = 1;

 -- 202)List the emps joined in jan with salary ranging from 1500 to 4000.
 SELECT empno, ename, hiredate, sal
FROM empy
WHERE MONTH(hiredate) = 1
  AND sal BETWEEN 1500 AND 4000;

 SELECT empno, ename, hiredate, sal
FROM empy
WHERE MONTHNAME(hiredate) = 'January'
  AND sal BETWEEN 1500 AND 4000;

SELECT empno, ename, hiredate, sal
FROM empy
WHERE hiredate LIKE '%-01-%'
  AND sal BETWEEN 1500 AND 4000;

 -- 203)List the unique jobs of dept 20 and 30 in desc order
    SELECT DISTINCT job
FROM empy
WHERE deptno IN (20, 30)
ORDER BY job DESC;

    SELECT job
FROM empy
WHERE deptno IN (20, 30)
GROUP BY job
ORDER BY job DESC;

    SELECT DISTINCT job
FROM empy
WHERE deptno = 20 OR deptno = 30
ORDER BY job DESC;

-- 204)List the emps along with exp of those working under the mgr whose
 -- number is starting with 7 but should not have a 9 joined before 1983.
    
    SELECT e.empno, e.ename, e.hiredate, 
       FLOOR(DATEDIFF(CURRENT_DATE, e.hiredate) / 365) AS exp
FROM empy e
JOIN empy m ON e.mgr = m.empno
WHERE m.empno LIKE '7%' 
  AND m.empno NOT LIKE '%9%'
  AND e.hiredate < '1983-01-01';

    SELECT e.empno, e.ename, e.hiredate, 
       YEAR(CURRENT_DATE) - YEAR(e.hiredate) AS exp
FROM empy e
JOIN empy m ON e.mgr = m.empno
WHERE LEFT(m.empno, 1) = '7' 
  AND m.empno NOT LIKE '%9%'
  AND e.hiredate < '1983-01-01';

    --  205)List the emps who are working as either mgr or analyst with the
    -- salary ranging from 2000 to 5000 and with out comm.
    SELECT empno, ename, job, sal, comm
FROM empy
WHERE job IN ('MANAGER', 'ANALYST')
  AND sal BETWEEN 2000 AND 5000
  AND (comm IS NULL OR comm = 0);

    SELECT empno, ename, job, sal, comm
FROM empy
WHERE (job = 'MANAGER' OR job = 'ANALYST')
  AND sal BETWEEN 2000 AND 5000
  AND (comm IS NULL OR comm = 0);

SELECT empno, ename, job, sal, comm
FROM empy
WHERE (job = 'MANAGER' OR job = 'ANALYST')
  AND sal BETWEEN 2000 AND 5000
  AND CASE WHEN comm IS NULL THEN 1 WHEN comm = 0 THEN 1 ELSE 0 END = 1;

   --  206)List the empno,ename,sal,job of the emps with /ann sal <34000 but
 -- receiving some comm. Which should not be>sal and desg should be sales man workingfor dept 30.
 SELECT empno, ename, sal, job
FROM empy
WHERE job = 'SALESMAN'
  AND deptno = 30
  AND sal * 12 < 34000
  AND comm > 0
  AND comm <= sal;

SELECT empno, ename, sal, job
FROM empy
WHERE job = 'SALESMAN'
  AND deptno = 30
  AND sal * 12 < 34000
  AND comm > 0
  AND CASE WHEN comm <= sal THEN 1 ELSE 0 END = 1;


 -- 207)List the emps who are working for dept 10 or 20 with desgs as clerk
 -- or analyst with a sal is either 3 or 4 digits with an exp>8ys but does
 -- not belong to mons of mar,apr,sep and working for mgrs &no is not ending with 88 and 56.
 SELECT empno, ename, job, sal, hiredate, mgr
FROM empy
WHERE deptno IN (10, 20)
  AND job IN ('CLERK', 'ANALYST')
  AND (sal BETWEEN 100 AND 9999)
  AND FLOOR(DATEDIFF(CURRENT_DATE, hiredate) / 365) > 8
  AND EXTRACT(MONTH FROM hiredate) NOT IN (3, 4, 9)
  AND mgr IS NOT NULL
  AND mgr NOT LIKE '%88' 
  AND mgr NOT LIKE '%56';

 SELECT empno, ename, job, sal, hiredate, mgr
FROM empy
WHERE (deptno = 10 OR deptno = 20)
  AND (job = 'CLERK' OR job = 'ANALYST')
  AND (sal BETWEEN 100 AND 9999)
  AND FLOOR(DATEDIFF(CURRENT_DATE, hiredate) / 365) > 8
  AND NOT (EXTRACT(MONTH FROM hiredate) IN (3, 4, 9))
  AND mgr NOT LIKE '%88'
  AND mgr NOT LIKE '%56';

 
 
 -- 208)List the empno,ename,sal,job,deptno&exp of all the emps belongs to
 -- dept 10 or 20 with an exp 6 to 10 y working under the same mgr
 -- with out comm. With ajob not ending irrespective of the position
 -- with comm.>200 with exp>=7y and sal<2500 but not belongs to the
 -- month sep or nov working under the mgr whose no is not having
 -- digits either 9 or 0 in the asc dept& desc dept
 SELECT empno, ename, sal, job, deptno,
       FLOOR(DATEDIFF(CURRENT_DATE, hiredate) / 365) AS exp
FROM empy
WHERE (deptno IN (10, 20)) 
  AND (FLOOR(DATEDIFF(CURRENT_DATE, hiredate) / 365) BETWEEN 6 AND 10)  
  AND mgr IS NOT NULL 
  AND ((comm IS NULL) OR (comm = 0))  
  AND job NOT LIKE '%X'  
  AND comm > 200  
  AND FLOOR(DATEDIFF(CURRENT_DATE, hiredate) / 365) >= 7  
  AND sal < 2500  
  AND EXTRACT(MONTH FROM hiredate) NOT IN (9, 11)  
  AND mgr NOT LIKE '%9%'  
  AND mgr NOT LIKE '%0%'  
ORDER BY deptno ASC;

 
 -- 209)List the details of the emps working at Chicago.
 select a.*,b.* from empy a
 join dept b on a.deptno = b.deptno
 where b.loc = 'chicago';
 
 SELECT *
FROM empy
WHERE deptno IN (
    SELECT deptno
    FROM dept
    WHERE loc = 'Chicago'
);

 -- 210)List the empno,ename,deptno,loc of all the emps.
 SELECT E.empno, E.ename, E.deptno, D.loc
FROM empy E
JOIN dept D ON E.deptno = D.deptno;

SELECT E.empno, E.ename, E.deptno, 
       (SELECT D.loc FROM dept D WHERE D.deptno = E.deptno) AS loc
FROM empy E;

 -- 211)List the empno,ename,loc,dname of all the depts.,10 and 20.
 SELECT E.empno, E.ename, D.loc, D.dname
FROM empy E
JOIN dept D ON E.deptno = D.deptno
WHERE E.deptno IN (10, 20);

 SELECT E.empno, E.ename, D.loc, D.dname
FROM empy E
JOIN dept D ON E.deptno = D.deptno
WHERE E.deptno = 10 OR E.deptno = 20;

SELECT E.empno, E.ename, D.loc, D.dname
FROM empy E
LEFT JOIN dept D ON E.deptno = D.deptno
WHERE E.deptno = 10 OR E.deptno = 20;

 -- 212)List the empno, ename, sal, loc of the emps working at Chicago dallas with an exp > 6ys.
 select a.empno,a.ename,a.sal,b.loc ,
 floor(datediff(current_date,hiredate) / 365) as exp
 from empy a
 join dept b on a.deptno = b.deptno
 where (b.loc = 'chicago' or b.loc = 'dallas')
 and floor(datediff(current_date,hiredate) / 365) > 6;
 
 SELECT E.empno, E.ename, E.sal, D.loc
FROM empy E
JOIN dept D ON E.deptno = D.deptno
WHERE (D.loc = 'Chicago' OR D.loc = 'Dallas')
  AND (CURRENT_DATE - E.hiredate) / 365 > 6;

 
 -- 213)List the emps along with loc of those who belongs to
 -- dallas ,newyork with salranging from 2000 to 5000 joined in 81.
 SELECT E.empno, E.ename, E.sal, D.loc
FROM empy E
JOIN dept D ON E.deptno = D.deptno
WHERE (D.loc = 'Dallas' OR D.loc = 'New York')
  AND E.sal BETWEEN 2000 AND 5000
  AND EXTRACT(YEAR FROM E.hiredate) = 1981;

SELECT E.empno, E.ename, E.sal, D.loc
FROM empy E
JOIN dept D ON E.deptno = D.deptno
WHERE (D.loc = 'Dallas' OR D.loc = 'New York')
  AND E.sal BETWEEN 2000 AND 5000
  AND YEAR(E.hiredate) = 1981;

 SELECT E.empno, E.ename, E.sal, D.loc
FROM empy E
LEFT JOIN dept D ON E.deptno = D.deptno
WHERE (D.loc = 'Dallas' OR D.loc = 'New York')
  AND E.sal BETWEEN 2000 AND 5000
  AND EXTRACT(YEAR FROM E.hiredate) = 1981;

 -- 214)List the empno,ename,sal,grade of all emps.
 select empno,ename,sal,grade
 from empy;
 
 
 -- 215)List the grade 2 and 3 emp of Chicago.
 select a.*,b.* from empy a
 join dept b on a.deptno = b.deptno
 where a.grade in (2,3)
 and b.loc = 'chicago';
 
 SELECT *
FROM empy a
WHERE a.grade IN (2, 3)
AND a.deptno IN (
    SELECT b.deptno
    FROM dept b
    WHERE b.loc = 'Chicago'
);

 -- 216)List the emps with loc and grade of accounting dept or the locs
 -- dallas orChicago with the grades 3 to 5 &exp >6y
 
 SELECT E.empno, E.ename, D.loc, e.grade, 
      floor(datediff(CURRENT_DATE,E.hiredate) / 365) AS exp
FROM empy E
JOIN dept D ON E.deptno = D.deptno
WHERE (
    (D.dname = 'Accounting') 
    OR 
    (D.loc IN ('Dallas', 'Chicago') AND e.grade BETWEEN 3 AND 5)
)
AND floor(datediff(CURRENT_DATE,E.hiredate) / 365)  > 6;

 
 -- 217)List the grades 3 emps of research and operations depts.. joined
 -- after 1987 andwhose names should not be either miller or allen.
 SELECT a.*, b.*
FROM empy a
JOIN dept b ON a.deptno = b.deptno
WHERE a.grade = 3
AND b.dname IN ('Research', 'Operations')
AND a.hiredate > '1987-12-31'
AND a.ename NOT IN ('Miller', 'Allen');

 SELECT a.*, b.*
FROM empy a
WHERE a.grade = 3
AND a.deptno IN (
    SELECT b.deptno
    FROM dept b
    WHERE b.dname IN ('Research', 'Operations')
)
AND a.hiredate > '1987-12-31'
AND a.ename NOT IN ('Miller', 'Allen');

 -- 218)List the emps whose job is same as smith.
 SELECT a.*
FROM empy a
JOIN empy b ON a.job = b.job
WHERE b.ename = 'Smith';

SELECT *
FROM empy a
WHERE a.job = (
    SELECT b.job
    FROM empy b
    WHERE b.ename = 'Smith'
);

SELECT *
FROM empy a
WHERE a.job IN (
    SELECT b.job
    FROM empy b
    WHERE b.ename = 'Smith'
);


 -- 219)List the emps who are senior to miller.
 SELECT *
FROM empy a
WHERE a.hiredate < (
    SELECT b.hiredate
    FROM empy b
    WHERE b.ename = 'Miller'
);

 SELECT a.*
FROM empy a
JOIN empy b ON a.hiredate < b.hiredate
WHERE b.ename = 'Miller';

SELECT *
FROM empy a
WHERE NOT EXISTS (
    SELECT 1
    FROM empy b
    WHERE b.ename = 'Miller' AND a.hiredate >= b.hiredate
);

 -- 220)List the emps whose job is same as either allen or sal>allen.
 SELECT *
FROM empy a
WHERE a.job IN (
    SELECT b.job
    FROM empy b
    WHERE b.ename IN ('Allen', 'Sal')
);

 SELECT *
FROM empy a
WHERE a.job = (SELECT b.job FROM empy b WHERE b.ename = 'Allen')
OR a.job = (SELECT c.job FROM empy c WHERE c.ename = 'Sal');
 
 SELECT a.*
FROM empy a
JOIN empy b ON a.job = b.job
WHERE b.ename IN ('Allen', 'Sal');

 -- 221)List the emps who are senior to their own manager.
 SELECT a.*
FROM empy a
JOIN empy b ON a.mgr = b.empno
WHERE a.hiredate < b.hiredate;

 SELECT *
FROM empy a
WHERE a.hiredate < (
    SELECT b.hiredate
    FROM empy b
    WHERE b.empno = a.mgr
);

SELECT *
FROM empy a
WHERE NOT EXISTS (
    SELECT 1
    FROM empy b
    WHERE b.empno = a.mgr AND a.hiredate >= b.hiredate
);

 -- 222)List the emps whose sal greater than blakes sal.
 SELECT *
FROM empy a
WHERE a.sal > (
    SELECT b.sal
    FROM empy b
    WHERE b.ename = 'Blake'
);

 SELECT a.*
FROM empy a
JOIN empy b ON a.sal > b.sal
WHERE b.ename = 'Blake';

SELECT *
FROM empy a
WHERE NOT EXISTS (
    SELECT 1
    FROM empy b
    WHERE b.ename = 'Blake' AND a.sal <= b.sal
);

 -- 223)List the dept 10 emps whose sal>allen sal.
 SELECT *
FROM empy a
WHERE a.deptno = 10
AND a.sal > (
    SELECT b.sal
    FROM empy b
    WHERE b.ename = 'Allen'
);

SELECT a.*
FROM empy a
JOIN empy b ON a.sal > b.sal
WHERE b.ename = 'Allen' AND a.deptno = 10;

SELECT *
FROM empy a
WHERE a.deptno = 10
AND NOT EXISTS (
    SELECT 1
    FROM empy b
    WHERE b.ename = 'Allen' AND a.sal <= b.sal
);

 -- 224)List the mgrs who are senior to king and who are junior to smith.
 SELECT DISTINCT a.*
FROM empy a
WHERE a.empno IN (
    SELECT DISTINCT e.mgr
    FROM empy e
    WHERE e.hiredate < (
        SELECT b.hiredate
        FROM empy b
        WHERE b.ename = 'King'
    )
    AND e.hiredate > (
        SELECT c.hiredate
        FROM empy c
        WHERE c.ename = 'Smith' ));


 SELECT DISTINCT a.*
FROM empy a
JOIN empy b ON a.empno = b.mgr
WHERE b.hiredate < (SELECT c.hiredate FROM empy c WHERE c.ename = 'King')
AND b.hiredate > (SELECT d.hiredate FROM empy d WHERE d.ename = 'Smith');


 -- 225)List the empno,ename,loc,sal,dname,loc of the all the emps belonging to king dept.
 SELECT a.empno, a.ename,a.sal, b.dname, b.loc
FROM empy a
JOIN dept b ON a.deptno = b.deptno
WHERE a.deptno = (
    SELECT b.deptno
    FROM empy a
    JOIN dept b ON a.deptno = b.deptno
    WHERE a.ename = 'King'
);

 SELECT a.empno, a.ename,a.sal, b.dname, b.loc
FROM empy a
JOIN dept b ON a.deptno = b.deptno
WHERE a.deptno = (SELECT c.deptno FROM empy c WHERE c.ename = 'King');

    
    
    SELECT a.empno, a.ename,a.sal, b.dname, b.loc
FROM empy a
INNER JOIN dept b ON a.deptno = b.deptno
WHERE b.deptno = (
    SELECT deptno FROM empy WHERE ename = 'King'
);

-- 226)List the emps whose sal ,grade are greater than the grade of miller.
SELECT *
FROM empy a
WHERE a.grade > (
    SELECT b.grade
    FROM empy b
    WHERE b.ename = 'Miller'
);

SELECT a.*
FROM empy a
JOIN empy b ON a.grade > b.grade
WHERE b.ename = 'Miller';

SELECT *
FROM empy a
WHERE NOT EXISTS (
    SELECT 1
    FROM empy b
    WHERE b.ename = 'Miller' AND a.grade <= b.grade
);

 -- 227)List the emps who are belonging dallas or Chicago with the
 -- grade same as adams or exp more than smith.
select a.*,b.* from empy a 
join dept b on a.deptno = b.deptno
where loc in ('chicago','dallas')
and a.ename = 'adams'
and (a.grade = a.grade 
or year(current_date) - year(hiredate) > year(current_date) - year(hiredate));

select a.*,b.* from empy a 
join dept b on a.deptno = b.deptno
where loc in ('chicago','dallas')
and a.ename = 'adams'
and (a.grade = a.grade 
or year(curdate() - year(hiredate)) > year(curdate() - year(hiredate)));

 SELECT a.*
FROM empy a
JOIN dept b ON a.deptno = b.deptno
JOIN empy d ON d.ename = 'Adams'
JOIN empy e ON e.ename = 'Smith'
WHERE b.loc IN ('Dallas', 'Chicago')
AND (a.grade = d.grade
     OR TIMESTAMPDIFF(YEAR, a.hiredate, CURRENT_DATE) > TIMESTAMPDIFF(YEAR, e.hiredate, CURRENT_DATE));

 -- 228)List the emps whose sal is same as ford or blake.
SELECT a.*
FROM empy a
JOIN (
    SELECT sal
    FROM empy
    WHERE ename = 'Ford'
    UNION
    SELECT sal
    FROM empy
    WHERE ename = 'Blake'
) b ON a.sal = b.sal;

 
 SELECT a.*
FROM empy a
WHERE a.sal = (
        SELECT b.sal
        FROM empy b
        WHERE b.ename = 'Ford'
    )
   OR a.sal = (
        SELECT c.sal
        FROM empy c
        WHERE c.ename = 'Blake'
    );

 
 -- 229)List the emps whose sal is same as any one of the following.
 SELECT a.*
FROM empy a
WHERE a.sal IN (
    SELECT sal
    FROM empy
    WHERE ename IN ('Ford', 'Blake', 'Adams')
);

 SELECT a.*
FROM empy a
WHERE a.sal = (SELECT sal FROM empy WHERE ename = 'Ford')
   OR a.sal = (SELECT sal FROM empy WHERE ename = 'Blake')
   OR a.sal = (SELECT sal FROM empy WHERE ename = 'Adams');

 -- 230)Sal of any clerk of emp1 table.
 SELECT sal
FROM empy
WHERE job = 'CLERK';

 SELECT DISTINCT sal
FROM empy
WHERE job = 'CLERK';

 
 -- 231)Any emp of emp2 joined before 82.
 SELECT *
FROM empy
WHERE hiredate < '1982-01-01';

 SELECT *
FROM empy
WHERE YEAR(hiredate) < 1982;

SELECT *
FROM empy
WHERE hiredate BETWEEN '1900-01-01' AND '1981-12-31';

 -- 232)The total remuneration (sal+comm.) of all sales person of Sales dept belongingto emp3 table.
 SELECT SUM(sal + comm) AS total_remuneration
FROM empy
WHERE job = 'SALESMAN'
  AND deptno = (SELECT deptno FROM dept WHERE dname = 'Sales');

SELECT SUM(e.sal + e.comm) AS total_remuneration
FROM empy e
JOIN dept d ON e.deptno = d.deptno
WHERE e.job = 'SALESMAN'
  AND d.dname = 'Sales';

 SELECT SUM(sal + COALESCE(comm, 0)) AS total_remuneration
FROM empy
WHERE job = 'SALESMAN'
  AND deptno = (SELECT deptno FROM dept WHERE dname = 'Sales');

 -- 233)Any Grade 4 emps Sal of emp 4 table.
 SELECT sal
FROM empy
WHERE grade = 4;

 SELECT DISTINCT sal
FROM empy
WHERE grade = 4;

SELECT e.sal, e.ename, d.dname
FROM empy e
JOIN dept d ON e.deptno = d.deptno
WHERE e.grade = 4;

 -- 234)Any emp Sal of emp5 table.
 SELECT sal
FROM empy;

 SELECT DISTINCT sal
FROM empy;

SELECT e.sal, e.ename, d.dname
FROM empy e
JOIN dept d ON e.deptno = d.deptno;

 -- 235)List the highest paid emp.
 SELECT *
FROM empy
ORDER BY sal DESC
LIMIT 1;

 SELECT *
FROM empy
WHERE sal = (SELECT MAX(sal) FROM empy);

 SELECT *
FROM (
    SELECT *, RANK() OVER (ORDER BY sal DESC) AS salary_rank
    FROM empy
) AS ranked_emps
WHERE salary_rank = 1;

-- top 2nd rank
 SELECT *
FROM (
    SELECT *, RANK() OVER (ORDER BY sal DESC) AS salary_rank
    FROM empy
) AS ranked_emps
WHERE salary_rank = 2;

 -- 236)List the details of most recently hired emp of dept 30.
 SELECT *
FROM empy
WHERE deptno = 30
ORDER BY hiredate DESC
limit 1;

 SELECT *
FROM empy
WHERE hiredate = (SELECT MAX(hiredate) FROM empy WHERE deptno = 30)
  AND deptno = 30;

SELECT *
FROM (
    SELECT *, ROW_NUMBER() OVER (PARTITION BY deptno ORDER BY hiredate DESC) AS row_num
    FROM empy
    WHERE deptno = 30
) AS ranked_emps
WHERE row_num = 1;

 -- 237)List the highest paid emp of Chicago joined before the most recently hired emp of grade 2.
 SELECT *
FROM empy
WHERE deptno = (SELECT deptno FROM dept WHERE loc = 'Chicago')
  AND hiredate < (
    SELECT hiredate
    FROM empy
    WHERE grade = 2
    ORDER BY hiredate DESC
    LIMIT 1
  )
ORDER BY sal DESC
LIMIT 1;


 SELECT *
FROM (
    SELECT *, ROW_NUMBER() OVER (ORDER BY hiredate DESC) AS rn
    FROM empy
    WHERE grade = 2
) AS recent_grade2_emps
WHERE rn = 1;


 
 -- 238)List the highest paid emp working under King
    SELECT *
FROM empy
WHERE mgr = (SELECT empno FROM empy WHERE ename = 'King')
ORDER BY sal DESC
LIMIT 1;

    SELECT *
FROM empy
WHERE mgr = (SELECT empno FROM empy WHERE ename = 'King')
  AND sal = (SELECT MAX(sal) FROM empy WHERE mgr = (SELECT empno FROM empy WHERE ename = 'King'));

    
    SELECT *
FROM (
    SELECT *, RANK() OVER (PARTITION BY mgr ORDER BY sal DESC) AS rnk
    FROM empy
    WHERE mgr = (SELECT empno FROM empy WHERE ename = 'King')
) AS ranked_emps
WHERE rnk = 1;

    
    SELECT *
FROM (
    SELECT *, ROW_NUMBER() OVER (PARTITION BY mgr ORDER BY sal DESC) AS rn
    FROM empy
    WHERE mgr = (SELECT empno FROM empy WHERE ename = 'King')
) AS ranked_emps
WHERE rn = 1;

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    











































































































