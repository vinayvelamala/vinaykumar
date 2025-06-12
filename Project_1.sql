-- Mini-Project 1.1: Handling Foreign Key Errors in Insert Operation
-- Mini-Project 1.2: Deleting Duplicates in ld_eng Table
drop database project_2;
create database project_2;
use project_2;

CREATE TABLE Customers (
    cust_id INT PRIMARY KEY,
    customer_name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    phone VARCHAR(15),
    dob DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE Agreement (
    ag_no INT PRIMARY KEY,
    cust_id INT,
    agreement_date DATE NOT NULL,
    agreement_details VARCHAR(255),
    amount DECIMAL(10, 2) DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (cust_id) REFERENCES Customers(cust_id)
);



-- Dataware house 



CREATE TABLE DWH_Customers (
    dwh_cust_id INT AUTO_INCREMENT PRIMARY KEY,
    cust_id INT,
    customer_name VARCHAR(255),
    email VARCHAR(255),
    phone VARCHAR(15),
    dob VARCHAR(10),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Load Tables---


CREATE TABLE ld_eng (
    ag_no INT,
    cust_id INT,
    agreement_date DATE,
    agreement_details VARCHAR(255)
);

CREATE TABLE ld_eng2 (
    ag_no INT,
    cust_id INT,
    agreement_date DATE,
    agreement_details VARCHAR(255)
);

CREATE TABLE ld_eng3 (
    ag_no INT,
    cust_id INT,
    agreement_date DATE,
    agreement_details VARCHAR(255)
);

CREATE TABLE ld_eng4 (
    ag_no INT,
    cust_id INT,
    agreement_date DATE,
    amount DECIMAL(10, 2),
    agreement_details VARCHAR(255)
);


INSERT INTO ld_eng4 (ag_no, cust_id, agreement_date, agreement_details, amount)
VALUES 
    (5, 1, '2024-11-20', 'Service Renewal', 250.00),
    (6, 2, '2024-11-22', 'Consultation Fee', 400.50);



select * from ld_eng;

INSERT INTO ld_eng (ag_no, cust_id, agreement_date, agreement_details)
VALUES 
    (1, 101, '2024-01-01', 'Annual Maintenance'),
    (2, 102, '2024-02-01', 'Monthly Subscription'),
    (3, 103, '2024-03-01', 'One-time Purchase'),
    (4, 104, '2024-04-01', 'Support Extension'),
    (5, 105, '2024-05-01', 'Software Update'),
    (6, 106, '2024-06-01', 'System Upgrade'),
    (7, 107, '2024-07-01', 'Custom Development'),
    (8, 108, '2024-08-01', 'Consultation Service'),
    (2, 102, '2024-02-01', 'Monthly Subscription'),
    (9, 109, '2024-09-01', 'Infrastructure Setup'),
    (4, 104, '2024-04-01', 'Support Extension'),
    (5, 105, '2024-05-01', 'Software Update'),
   (4, 104, '2024-04-01', 'Support Extension'),
    (5, 105, '2024-05-01', 'Software Update'),
   (4, 104, '2024-04-01', 'Support Extension'),
    (5, 105, '2024-05-01', 'Software Update'),
    (10, 110, '2024-10-01', 'Training Package');




INSERT INTO ld_eng2 (ag_no, cust_id, agreement_date, agreement_details)
VALUES 
    (11, 201, '2024-01-15', 'Security Enhancement'),
    (12, 202, '2024-02-15', 'Backup Solutions'),
    (13, 203, '2024-03-15', 'Website Hosting'),
    (14, 204, '2024-04-15', 'Cloud Storage'),
    (15, 205, '2024-05-15', 'Database Optimization'),
    (16, 206, '2024-06-15', 'Application Monitoring'),
    (17, 207, '2024-07-15', 'Performance Tuning'),
    (18, 208, '2024-08-15', 'Compliance Audit'),
    (19, 209, '2024-09-15', 'Penetration Testing'),
    (20, 210, '2024-10-15', 'Disaster Recovery Plan');



INSERT INTO ld_eng3 (ag_no, cust_id, agreement_date, agreement_details)
VALUES 
    (21, 301, '2024-01-30', 'Data Migration'),
    (22, 302, '2024-02-28', 'Code Refactoring'),
    (23, 303, '2024-03-30', 'Hardware Replacement'),
    (24, 304, '2024-04-30', 'Performance Analysis'),
    (25, 305, '2024-05-30', 'Capacity Planning'),
    (26, 306, '2024-06-30', 'User Training'),
    (27, 307, '2024-07-30', 'Feature Rollout'),
    (28, 308, '2024-08-30', 'Platform Migration'),
    (29, 309, '2024-09-30', 'Support SLA Renewal'),
    (30, 310, '2024-10-30', 'Infrastructure Scaling');


INSERT INTO Customers (cust_id, customer_name, email, phone, dob)
VALUES 
    (101, 'Alice Johnson', 'alice.johnson@example.com', '1234567890', '1985-06-15'),
    (102, 'Bob Smith', 'bob.smith@example.com', '2345678901', '1990-07-20'),
    (103, 'Charlie Davis', 'charlie.davis@example.com', '3456789012', '1988-03-10'),
    (104, 'Diana Evans', 'diana.evans@example.com', '4567890123', '1992-01-25'),
    (105, 'Edward Brown', 'edward.brown@example.com', '5678901234', '1984-09-15'),
    (106, 'Fiona Wilson', 'fiona.wilson@example.com', '6789012345', '1995-12-05'),
    (107, 'George White', 'george.white@example.com', '7890123456', '1987-11-18'),
    (108, 'Hannah Thomas', 'hannah.thomas@example.com', '8901234567', '1993-04-22'),
    (109, 'Ian Moore', 'ian.moore@example.com', '9012345678', '1986-08-14'),
    (110, 'Julia Scott', 'julia.scott@example.com', '1230987654', '1989-02-11');




INSERT INTO Agreement (ag_no, cust_id, agreement_date, agreement_details, amount)
VALUES 
    (31, 101, '2024-11-01', 'Annual Maintenance Plan', 1200.50),
    (32, 102, '2024-11-05', 'Website Hosting Renewal', 350.00),
    (33, 103, '2024-11-10', 'Cloud Service Subscription', 550.75),
    (34, 104, '2024-11-15', 'IT Support Services', 800.00),
    (35, 105, '2024-11-20', 'Custom Development Project', 4500.00),
    (36, 106, '2024-11-25', 'Software Licensing', 2300.00),
    (37, 107, '2024-11-30', 'Performance Optimization', 1500.25),
    (38, 108, '2024-12-05', 'Data Migration Service', 700.00),
    (39, 109, '2024-12-10', 'Security Audit', 1200.00),
    (40, 110, '2024-12-15', 'Infrastructure Scaling', 5000.00);






INSERT INTO DWH_Customers (cust_id, customer_name, email, phone, dob)
VALUES 
    -- 101 to 110
    (101, 'Alice Johnson', 'alice.johnson@example.com', '1234567890', '1985-06-15'),
    (102, 'Bob Smith', 'bob.smith@example.com', '2345678901', '1990-07-20'),
    (103, 'Charlie Davis', 'charlie.davis@example.com', '3456789012', '1988-03-10'),
    (104, 'Diana Evans', 'diana.evans@example.com', '4567890123', '1992-01-25'),
    (105, 'Edward Brown', 'edward.brown@example.com', '5678901234', '1984-09-15'),
    (106, 'Fiona Wilson', 'fiona.wilson@example.com', '6789012345', '1995-12-05'),
    (107, 'George White', 'george.white@example.com', '7890123456', '1987-11-18'),
    (108, 'Hannah Thomas', 'hannah.thomas@example.com', '8901234567', '1993-04-22'),
    (109, 'Ian Moore', 'ian.moore@example.com', '9012345678', '1986-08-14'),
    (110, 'Julia Scott', 'julia.scott@example.com', '1230987654', '1989-02-11'),

    -- 201 to 210
    (201, 'Kevin Turner', 'kevin.turner@example.com', '4567123890', '1991-05-10'),
    (202, 'Laura Adams', 'laura.adams@example.com', '6789123401', '1994-09-30'),
    (203, 'Mike Green', 'mike.green@example.com', '7890234512', '1983-07-23'),
    (204, 'Nancy Hall', 'nancy.hall@example.com', '8901345623', '1997-02-17'),
    (205, 'Oscar King', 'oscar.king@example.com', '9012456734', '1990-12-19'),
    (206, 'Patricia Lee', 'patricia.lee@example.com', '1234567845', '1988-08-28'),
    (207, 'Quincy Miller', 'quincy.miller@example.com', '2345678956', '1986-06-11'),
    (208, 'Rachel Harris', 'rachel.harris@example.com', '3456789067', '1985-10-03'),
    (209, 'Samuel Wright', 'samuel.wright@example.com', '4567890178', '1992-03-25'),
    (210, 'Tina Lewis', 'tina.lewis@example.com', '5678901289', '1989-04-15'),

    -- 301 to 310
    (301, 'Ursula Bell', 'ursula.bell@example.com', '6789012376', '1992-05-20'),
    (302, 'Victor Clark', 'victor.clark@example.com', '7890123487', '1987-12-10'),
    (303, 'Wendy Foster', 'wendy.foster@example.com', '8901234598', '1983-11-11'),
    (304, 'Xander Gray', 'xander.gray@example.com', '9012345609', '1989-04-25'),
    (305, 'Yara Hughes', 'yara.hughes@example.com', '1234567710', '1991-07-30'),
    (306, 'Zane Price', 'zane.price@example.com', '2345677821', '1994-08-15'),
    (307, 'Aaron Davis', 'aaron.davis@example.com', '3456787932', '1988-02-13'),
    (308, 'Briana Lopez', 'briana.lopez@example.com', '4567898043', '1992-06-03'),
    (309, 'Cameron Morgan', 'cameron.morgan@example.com', '5678909154', '1985-01-21'),
    (310, 'Diana Peterson', 'diana.peterson@example.com', '6789010265', '1990-03-18');








DELIMITER //

CREATE PROCEDURE InsertOrUpdateFromStaging1()
BEGIN
    -- Insert from ld_eng
    INSERT INTO Agreement (ag_no, cust_id, agreement_date, agreement_details)
    SELECT ag_no, cust_id, agreement_date, agreement_details FROM ld_eng;

    -- Insert from ld_eng2
    INSERT INTO Agreement (ag_no, cust_id, agreement_date, agreement_details)
    SELECT ag_no, cust_id, agreement_date, agreement_details FROM ld_eng2;

    -- Insert from ld_eng3
    INSERT INTO Agreement (ag_no, cust_id, agreement_date, agreement_details)
    SELECT ag_no, cust_id, agreement_date, agreement_details FROM ld_eng3;

    -- Update amount in Agreement from ld_eng4
    UPDATE Agreement A
    JOIN ld_eng4 L
    ON A.ag_no = L.ag_no
    SET A.amount = L.amount;

    -- Insert new records from ld_eng4
    INSERT INTO Agreement (ag_no, cust_id, agreement_date, agreement_details, amount)
    SELECT ag_no, cust_id, agreement_date, agreement_details, amount
    FROM ld_eng4
    WHERE ag_no NOT IN (SELECT ag_no FROM Agreement);
END;


CALL InsertOrUpdateFromStaging1();

INSERT INTO Customers (cust_id, customer_name, email, phone, dob)
SELECT 
    cust_id, 
    customer_name, 
    email, 
    phone, 
    CAST(dob AS DATE) 
FROM  DWH_Customers where id in(values);



-- task
drop PROCEDURE InsertOrUpdateFromStaging;

create table ld_eng_bkp like ld_eng;
insert into ld_eng_bkp(select * from ld_eng);
drop table ld_eng;
create table ld_eng like ld_eng_bkp;
insert into ld_eng(select distinct * from ld_eng_bkp);
delete from agreement;
set sql_safe_updates=0;
insert into  customers(cust_id,customer_name,email,phone,dob,created_at)
(select a.cust_id,a.customer_name,a.email,a.phone,a.dob,a.created_at from
 dwh_customers as a join ld_eng2 as b on  a.cust_id=b.cust_id);
    insert into  customers(cust_id,customer_name,email,phone,dob,created_at)
(select a.cust_id,a.customer_name,a.email,a.phone,a.dob,a.created_at from dwh_customers
 as a join ld_eng3 as b on  a.cust_id=b.cust_id);
 truncate table agreement;
 truncate ld_eng4;
select * from agreement;
