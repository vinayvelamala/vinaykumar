create database project_2;
use project_2;
-- Mini Project:  E-Commerce Database Design and Documentation
-- Project Title: E-Commerce Database System

-- Objective: To design a scalable e-commerce database system that includes:
-- Transactional Database - For storing real-time operations data.
-- Data Warehouse - For analytical reporting and decision-making.
-- Data Mart - Focused subset of the warehouse for department-specific analytics.
-- The design will include tables, relationships, and columns aligned with Slowly Changing Dimension (SCD) types.


-- Functional Requirements

-- Transactional Database Requirements:
-- Store information on users, products, orders, payments, inventory, shipping, and reviews.
-- Capture real-time transactional data for processing e-commerce activities.
-- Ensure 2NF for transactional consistency.


-- Data Warehouse Requirements:
-- Aggregate transactional data for historical analysis.
-- Support Slowly Changing Dimensions (Type 1 and Type 2).
-- Optimize for read-heavy analytics queries.

-- Transactional  Requirements:
------------------------------
-- Provide department-specific insights such as Sales, Inventory, and Customer Behavior.

-- Users	        -Stores customer details.
-- Products	-Stores product catalog details.
-- Orders	        -Tracks customer orders.
-- OrderDetails	-Line items in customer orders.
-- Payments	-Payment transactions for orders.
-- Inventory	-Current stock details.
-- Shipments	-Shipment and delivery tracking.
-- Reviews	        -Customer reviews for products.
-- coupons         -coupons need to create based on fixed or percentage 

-- Data Warehouse:
----------------
-- DWH_Users	Stores customer dimensions.	UserStatus (SCD Type 2)
-- DWH_Products	Stores product dimensions.	Price, Category (SCD Type 2)
-- DWH_Time	Tracks time dimensions for analytics.	N/A
-- DWH_Orders	Stores order transactions.	N/A
-- DWH_Payments	Stores payment transactions.	N/A
-- DWH_Inventory	Tracks inventory movements.	N/A
-- DWH_Warehouse   captures inventory movements, stock levels,transactions.DWH_Warehouse_details.               





-- Column Name	Description
----------      -----------
-- WarehouseKey	Primary key, uniquely identifies a record.
-- TimeKey	Foreign key referencing timestamp.
-- ProductKey	Foreign key referencing DimProducts.
-- WarehouseID	Identifier for the warehouse.
-- LocationKey	Foreign key referencing DimLocation.
-- StockIn	Quantity of stock received into the warehouse.
-- StockOut	Quantity of stock dispatched from the warehouse.
-- StockReturn	Quantity of stock returned.
-- StockDamaged	Quantity of stock damaged or lost.
-- CurrentStock	Current stock level for the product.

-- Data Mart:
---------
-- DM_Sales: Aggregated sales data for reporting.(daily sales - id,qty,revenue, discount, net revenue)
-- DM_Warehouse: Aggregated  stock report(WarehouseKey,TimeKey,ProductKey,WarehouseID,StockIn,StockOut,CurrentStock)

-- Documentation Deliverables: 
-- ER Diagram for Transactional Database.
-- Detailed SCD Implementation Guidelines.
-- SQL Scripts for table creation.

 --  For idea check this portal 
 -- user https://zenkartstore.in/
 -- admin- https://zenkartstore.in/admin
 -- User: admin@gmail.com
--  Password: 12345678

-- Example SQL for creating a Users table in the transactional database.
CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(15),
    Address VARCHAR(255),
    JoinDate DATE,
    Status VARCHAR(10));


INSERT INTO Users (UserID, FirstName, LastName, Email, Phone, Address, JoinDate, Status)
VALUES
(1, 'vinay', 'kumar', 'vinay.@example.com', '968548596', '123 Elm Street, hyd', '2023-05-10', 'Active'),
(2, 'sajana', 'reddy', 'reddy.@example.com', '7485966352', '456 Oak Avenue, hyd', '2023-06-15', 'Active'),
(3, 'priya', 'roy', 'priya.@example.com', '4152639685', '789 Pine Road, rajamundri', '2022-11-05', 'Inactive'),
(4, 'sunil', 'kumar', 'sunil.@example.com', '5263417485', '321 Maple Lane, usa', '2024-01-12', 'Active'),
(5, 'sai', 'kumar', 'sai.@example.com', '6352417485', '654 Birch Street, hyd', '2023-08-25', 'Active'),
(6, 'niraja', 'naidu', 'niraja.@example.com', '968258596', '123 Elm Street, hyd', '2023-05-10', 'Active'),
(7, 'dilep', 'reddy', 'dilep.@example.com', '7485941352', '456 Oak Avenue, vizag', '2023-06-15', 'Active'),
(8, 'teja', 'sajja', 'taja.@example.com', '4152638585', '789 Pine Road, rajamundri', '2022-11-05', 'Inactive'),
(9, 'vivk', 'kumar', 'vivk.@example.com', '5263417885', '321 Maple Lane, uk', '2024-01-12', 'Active'),
(10, 'vikas', 'kumar', 'vikas.@example.com', '6354117485', '654 Birch Street, amalapuram', '2023-08-25', 'Active');

select * from Users;


-- Products Table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    Name VARCHAR(100),
    Description TEXT,
    Price DECIMAL(10,2),
    Category VARCHAR(100),
    StockQuantity INT,
    ImageURL VARCHAR(255));

INSERT INTO Products (ProductID, Name, Description, Price, Category, StockQuantity, ImageURL)
VALUES
(1, 'Laptop', 'High performance laptop with 16GB RAM and 512GB SSD', 899.99, 'Electronics', 50, 'http://example.com/laptop.jpg'),
(2, 'Wireless Mouse', 'Ergonomic wireless mouse with Bluetooth connectivity', 29.99, 'Accessories', 150, 'http://example.com/mouse.jpg'),
(3, 'Gaming Headset', 'Noise-cancelling gaming headset with surround sound', 79.99, 'Gaming', 100, 'http://example.com/headset.jpg'),
(4, 'Smartphone', 'Latest model with 128GB storage and 5G support', 699.99, 'Electronics', 200, 'http://example.com/smartphone.jpg'),
(5, 'Bluetooth Speaker', 'Portable Bluetooth speaker with 360-degree sound', 49.99, 'Accessories', 120, 'http://example.com/speaker.jpg'),
(6, 'Smartwatch', 'Fitness-focused smartwatch with heart rate monitoring and GPS tracking', 199.99, 'Wearables', 120, 'http://example.com/smartwatch.jpg'),
(7, '4K TV', 'Ultra HD 4K smart TV with HDR and built-in streaming apps', 599.99, 'Electronics', 30, 'http://example.com/4ktv.jpg'),
(8, 'Laptop Stand', 'Adjustable ergonomic laptop stand for better posture and cooling', 39.99, 'Accessories', 180, 'http://example.com/laptopstand.jpg'),
(9, 'Wireless Charger', 'Qi-enabled wireless charger for fast charging of smartphones', 24.99, 'Accessories', 250, 'http://example.com/wirelesscharger.jpg'),
(10, 'Gaming Keyboard', 'RGB backlit gaming keyboard with mechanical switches and programmable keys', 79.99, 'Gaming', 60, 'http://example.com/gamingkeyboard.jpg');

select * from Products;

-- Orders Table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    UserID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),
    OrderStatus VARCHAR(20),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

INSERT INTO Orders (OrderID, UserID, OrderDate, TotalAmount, OrderStatus)
VALUES
(1, 1, '2024-01-15', 149.99, 'Shipped'),
(2, 2, '2024-01-18', 299.99, 'Processing'),
(3, 3, '2024-01-20', 79.99, 'Delivered'),
(4, 4, '2024-01-22', 199.99, 'Shipped'),
(5, 5, '2024-01-15', 149.99, 'Shipped'),
(6, 6, '2024-01-18', 299.99, 'Processing'),
(7, 7, '2024-01-20', 79.99, 'Delivered'),
(8, 8, '2024-01-22', 199.99, 'Shipped'),
(9, 9, '2024-01-22', 199.99, 'Shipped'),
(10, 10, '2024-01-23', 49.99, 'Cancelled');

select * from Orders;


-- OrderDetails Table (Line items in Orders)
CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    Price DECIMAL(10,2),
    Discount DECIMAL(10,2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductID, Quantity, Price, Discount)
VALUES
(1, 1, 1, 2, 799.99, 0),  
(2, 1, 3, 1, 29.99, 5),   
(3, 2, 2, 1, 1199.99, 10), 
(4, 2, 4, 1, 89.99, 0),   
(5, 3, 5, 3, 49.99, 0),   
(6, 3, 6, 2, 199.99, 0),  
(7, 4, 7, 1, 599.99, 15), 
(8, 4, 8, 1, 39.99, 0),   
(9, 5, 9, 4, 24.99, 0),   
(10, 5, 10, 2, 79.99, 5); 

select * from OrderDetails;


-- Payments Table
CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY,
    OrderID INT,
    PaymentDate DATE,
    Amount DECIMAL(10,2),
    PaymentMethod VARCHAR(50),
    PaymentStatus VARCHAR(20),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);


INSERT INTO Payments (PaymentID, OrderID, PaymentDate, Amount, PaymentMethod, PaymentStatus)
VALUES
(1, 1, '2024-01-16', 1599.97, 'Credit Card', 'Completed'),  
(2, 2, '2024-01-19', 1399.98, 'PayPal', 'Pending'),      
(3, 3, '2024-01-21', 299.97, 'Debit Card', 'Completed'),  
(4, 4, '2024-01-23', 639.98, 'Credit Card', 'Completed'), 
(5, 5, '2024-01-24', 179.97, 'Credit Card', 'Failed'),     
(6, 6, '2024-01-25', 599.98, 'Bank Transfer', 'Completed'),
(7, 7, '2024-01-26', 599.99, 'Credit Card', 'Completed'), 
(8, 8, '2024-01-27', 39.99, 'PayPal', 'Completed'),       
(9, 9, '2024-01-28', 99.96, 'Debit Card', 'Pending'),     
(10, 10, '2024-01-29', 159.98, 'Credit Card', 'Completed');

select * from Payments;

-- Inventory Table
CREATE TABLE Inventory (
    InventoryID INT PRIMARY KEY,
    ProductID INT,
    QuantityInStock INT,
    ReorderLevel INT,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);


INSERT INTO Inventory (InventoryID, ProductID, QuantityInStock, ReorderLevel)
VALUES
(1, 1, 100, 20),   
(2, 2, 50, 10),    
(3, 3, 200, 50),   
(4, 4, 75, 20),    
(5, 5, 150, 30),  
(6, 6, 120, 30),  
(7, 7, 30, 10),   
(8, 8, 180, 40),  
(9, 9, 250, 60),  
(10, 10, 60, 15); 

select * from Inventory;


-- Shipments Table
CREATE TABLE Shipments (
    ShipmentID INT PRIMARY KEY,
    OrderID INT,
    ShippingDate DATE,
    EstimatedArrival DATE,
    ShippingStatus VARCHAR(20),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);


INSERT INTO Shipments (ShipmentID, OrderID, ShippingDate, EstimatedArrival, ShippingStatus)
VALUES
(1, 1, '2024-01-17', '2024-01-20', 'Shipped'),   
(2, 2, '2024-01-20', '2024-01-25', 'In Transit'), 
(3, 3, '2024-01-22', '2024-01-24', 'Delivered'),  
(4, 4, '2024-01-23', '2024-01-26', 'Shipped'),  
(5, 5, '2024-01-24', '2024-01-28', 'Cancelled'),  
(6, 6, '2024-01-25', '2024-01-30', 'In Transit'), 
(7, 7, '2024-01-27', '2024-02-01', 'Shipped'),  
(8, 8, '2024-01-28', '2024-02-02', 'In Transit'), 
(9, 9, '2024-01-29', '2024-02-04', 'Shipped'),  
(10, 10, '2024-01-30', '2024-02-05', 'Shipped'); 

select * from Shipments;

-- Reviews Table
CREATE TABLE Reviews (
    ReviewID INT PRIMARY KEY,
    ProductID INT,
    UserID INT,
    Rating INT,
    ReviewText TEXT,
    ReviewDate DATE,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);


INSERT INTO Reviews (ReviewID, ProductID, UserID, Rating, ReviewText, ReviewDate)
VALUES
(1, 1, 1, 5, 'Great smartphone with excellent camera and battery life. Highly recommend!', '2024-01-10'), 
(2, 2, 2, 4, 'Powerful laptop, but a bit heavy. Good for gaming and work tasks.', '2024-01-12'),       
(3, 3, 3, 3, 'Mouse is okay, but could be more responsive. A bit overpriced.', '2024-01-15'),         
(4, 4, 4, 5, 'Amazing headset for gaming! The sound quality and comfort are top-notch.', '2024-01-18'), 
(5, 5, 5, 2, 'The speaker broke after one week of use. Poor sound quality and durability.', '2024-01-20'), 
(6, 6, 6, 4, 'Nice smartwatch with good fitness features. Could use a better display.', '2024-01-22'),    
(7, 7, 7, 5, 'The 4K TV is fantastic! The picture quality is exceptional, and setup was easy.', '2024-01-25'), 
(8, 8, 8, 3, 'The laptop stand is okay. It helps with posture, but it’s a bit flimsy.', '2024-01-28'),    
(9, 9, 9, 4, 'Wireless charger works great, but it’s a bit slow compared to wired charging.', '2024-01-30'), 
(10, 10, 10, 5, 'Excellent keyboard with smooth keys and great customization options for gaming.', '2024-02-01'); 

select * from Reviews;

-- Coupons Table
CREATE TABLE Coupons (
    CouponID INT PRIMARY KEY,
    Code VARCHAR(50),
    DiscountType VARCHAR(20), -- 'Percentage' or 'Fixed Amount'
    DiscountValue DECIMAL(10,2),
    ExpiryDate DATE
);


INSERT INTO Coupons (CouponID, Code, DiscountType, DiscountValue, ExpiryDate)
VALUES
(1, 'SAVE20', 'Percentage', 20.00, '2024-03-31'),  
(2, 'FREESHIP', 'Fixed Amount', 5.00, '2024-02-28'), 
(3, 'BLACKFRIDAY', 'Percentage', 50.00, '2024-11-30'),
(4, 'WELCOME10', 'Percentage', 10.00, '2024-06-15'),  
(5, 'XMAS25', 'Percentage', 25.00, '2024-12-25'),     
(6, 'NEWYEAR30', 'Percentage', 30.00, '2025-01-01'), 
(7, 'CLEARANCE15', 'Percentage', 15.00, '2024-07-31'),
(8, 'FIXED10', 'Fixed Amount', 10.00, '2024-09-30'),  
(9, 'SEASONAL5', 'Fixed Amount', 5.00, '2024-04-15'), 
(10, 'VIP100', 'Fixed Amount', 100.00, '2024-12-31'); 

select * from Coupons;


------ . SQL Table Creation for Data Warehouse

-- DWH_Users Table (SCD Type 2)
CREATE TABLE DWH_Users (
    UserKey INT PRIMARY KEY,
    UserID INT,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Email VARCHAR(100),
    StartDate DATE,
    EndDate DATE,
    IsActive BOOLEAN
);


INSERT INTO DWH_Users (UserKey, UserID, FirstName, LastName, Email, StartDate, EndDate, IsActive)
VALUES
(1, 1, 'vinay', 'reddy', 'reddy@example.com', '2020-01-01', '2022-06-30', FALSE),  
(2, 1, 'sanjana', 'naidu', 'naidu@newemail.com', '2022-07-01', '9999-12-31', TRUE),   
(3, 2, 'priya', 'reddy', 'reddy@example.com', '2021-03-15', '9999-12-31', TRUE), 
(4, 3, 'sai', 'ram', 'ram@example.com', '2021-08-10', '2023-02-28', FALSE), 
(5, 3, 'dilep', 'kumar', 'kumar@newemail.com', '2023-03-01', '9999-12-31', TRUE), 
(6, 4, 'teja', 'reddy', 'reddy@example.com', '2022-01-20', '9999-12-31', TRUE), 
(7, 5, 'niraja', 'rao', 'rao@example.com', '2020-06-01', '2021-12-31', FALSE),
(9, 6, 'vivk', 'sagar', 'sagar@example.com', '2022-03-05', '9999-12-31', TRUE), 
(10, 7, 'vikas', 'roy', 'roy.vikas@example.com', '2023-01-10', '9999-12-31', TRUE); 

select * from DWH_Users;


-- DWH_Products Table (SCD Type 2)
CREATE TABLE DWH_Products (
    ProductKey INT PRIMARY KEY,
    ProductID INT,
    Name VARCHAR(100),
    Price DECIMAL(10,2),
    Category VARCHAR(100),
    StartDate DATE,
    EndDate DATE,
    IsActive BOOLEAN
);


INSERT INTO DWH_Products (ProductKey, ProductID, Name, Price, Category, StartDate, EndDate, IsActive)
VALUES
(1, 1, 'Smartphone', 799.99, 'Electronics', '2020-01-01', '2021-06-30', FALSE),  
(2, 1, 'Smartphone', 749.99, 'Electronics', '2021-07-01', '9999-12-31', TRUE),   
(3, 2, 'Laptop', 1199.99, 'Electronics', '2020-03-15', '9999-12-31', TRUE),      
(4, 3, 'Wireless Mouse', 29.99, 'Accessories', '2021-05-10', '2022-02-28', FALSE),  
(5, 3, 'Wireless Mouse', 24.99, 'Accessories', '2022-03-01', '9999-12-31', TRUE),   
(6, 4, 'Gaming Headset', 129.99, 'Accessories', '2021-01-01', '9999-12-31', TRUE),  
(7, 5, 'Bluetooth Speaker', 89.99, 'Audio', '2020-06-01', '2021-12-31', FALSE),  
(8, 5, 'Bluetooth Speaker', 99.99, 'Audio', '2022-01-01', '9999-12-31', TRUE),   
(9, 6, 'Smartwatch', 199.99, 'Electronics', '2022-03-01', '9999-12-31', TRUE),    
(10, 7, '4K TV', 899.99, 'Electronics', '2023-01-10', '9999-12-31', TRUE);       

select * from DWH_Products;

-- DWH_Time Table
CREATE TABLE DWH_Time (
    TimeKey INT PRIMARY KEY,
    Date DATE,
    Week INT,
    Month INT,
    Quarter INT,
    Year INT
);


INSERT INTO DWH_Time (TimeKey, Date, Week, Month, Quarter, Year)
VALUES
(1, '2024-01-01', 1, 1, 1, 2024), 
(2, '2024-01-02', 1, 1, 1, 2024),  
(3, '2024-01-10', 2, 1, 1, 2024),  
(4, '2024-02-15', 7, 2, 1, 2024),  
(5, '2024-03-05', 10, 3, 1, 2024), 
(6, '2024-04-20', 16, 4, 2, 2024),
(7, '2024-05-15', 20, 5, 2, 2024), 
(8, '2024-06-30', 26, 6, 2, 2024), 
(9, '2024-09-05', 36, 9, 3, 2024), 
(10, '2024-12-25', 52, 12, 4, 2024);

select * from DWH_Time;

-- DWH_Orders Table
CREATE TABLE DWH_Orders (
    OrderKey INT PRIMARY KEY,
    OrderID INT,
    UserKey INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (UserKey) REFERENCES DWH_Users(UserKey)
);

INSERT INTO DWH_Orders (OrderKey, OrderID, UserKey, OrderDate, TotalAmount)
VALUES
(1, 1001, 1, '2024-01-10', 259.99), 
(2, 1002, 2, '2024-02-15', 1199.99), 
(3, 1003, 3, '2024-03-01', 49.99), 
(4, 1004, 4, '2024-04-20', 129.99), 
(5, 1005, 5, '2024-05-05', 89.99),  
(6, 1006, 6, '2024-06-10', 199.99), 
(7, 1007, 7, '2024-07-15', 449.99),
(8, 1008, 1, '2024-08-20', 799.99),
(9, 1009, 2, '2024-09-10', 349.99), 
(10, 1010, 3, '2024-10-25', 159.99); 

select * from DWH_Orders;

-- DWH_Payments Table
CREATE TABLE DWH_Payments (
    PaymentKey INT PRIMARY KEY,
    PaymentID INT,
    OrderKey INT,
    PaymentDate DATE,
    Amount DECIMAL(10,2),
    PaymentMethod VARCHAR(50),
    FOREIGN KEY (OrderKey) REFERENCES DWH_Orders(OrderKey)
);


INSERT INTO DWH_Payments (PaymentKey, PaymentID, OrderKey, PaymentDate, Amount, PaymentMethod)
VALUES
(1, 201, 1, '2024-01-12', 259.99, 'Credit Card'), 
(2, 202, 2, '2024-02-17', 1199.99, 'PayPal'),    
(3, 203, 3, '2024-03-03', 49.99, 'Credit Card'),  
(4, 204, 4, '2024-04-22', 129.99, 'Debit Card'),  
(5, 205, 5, '2024-05-06', 89.99, 'Bank Transfer'),
(6, 206, 6, '2024-06-12', 199.99, 'PayPal'),    
(7, 207, 7, '2024-07-18', 449.99, 'Credit Card'), 
(8, 208, 8, '2024-08-22', 799.99, 'Debit Card'),  
(9, 209, 9, '2024-09-15', 349.99, 'Bank Transfer'), 
(10, 210, 10, '2024-10-28', 159.99, 'PayPal');   

select * from DWH_Payments;

-- DWH_Inventory Table
CREATE TABLE DWH_Inventory (
    InventoryKey INT PRIMARY KEY,
    ProductKey INT,
    Date DATE,
    QuantityIn INT,
    QuantityOut INT,
    QuantityLeft INT,
    FOREIGN KEY (ProductKey) REFERENCES DWH_Products(ProductKey)
);

INSERT INTO DWH_Inventory (InventoryKey, ProductKey, Date, QuantityIn, QuantityOut, QuantityLeft)
VALUES
(1, 1, '2024-01-01', 100, 0, 100),  
(2, 2, '2024-01-05', 50, 10, 40),   
(3, 3, '2024-01-10', 200, 20, 180),  
(4, 4, '2024-02-01', 150, 30, 120),  
(5, 5, '2024-02-10', 70, 15, 55),    
(6, 6, '2024-03-01', 120, 50, 70),   
(7, 7, '2024-03-10', 80, 20, 60),    
(8, 1, '2024-04-01', 100, 40, 60),   
(9, 2, '2024-04-15', 50, 10, 40),   
(10, 3, '2024-05-01', 150, 50, 100);

select * from DWH_Inventory;

-- DWH_Warehouse Table
CREATE TABLE DWH_Warehouse (
    WarehouseKey INT PRIMARY KEY,
    TimeKey INT,
    ProductKey INT,
    WarehouseID INT,
    StockIn INT,
    StockOut INT,
    StockReturn INT,
    StockDamaged INT,
    CurrentStock INT,
    FOREIGN KEY (TimeKey) REFERENCES DWH_Time(TimeKey),
    FOREIGN KEY (ProductKey) REFERENCES DWH_Products(ProductKey)
);


INSERT INTO DWH_Warehouse (WarehouseKey, TimeKey, ProductKey, WarehouseID, StockIn, StockOut, StockReturn, StockDamaged, CurrentStock)
VALUES
(1, 1, 1, 101, 100, 20, 5, 2, 83),  
(2, 2, 2, 102, 50, 30, 10, 1, 29),   
(3, 3, 3, 103, 200, 50, 15, 3, 152), 
(4, 4, 4, 104, 150, 60, 20, 4, 106), 
(5, 5, 5, 105, 70, 25, 5, 0, 50),   
(6, 6, 6, 106, 120, 30, 12, 1, 101),
(7, 7, 7, 107, 80, 40, 10, 2, 48),  
(8, 8, 1, 108, 100, 30, 7, 1, 76), 
(9, 9, 2, 109, 50, 10, 5, 0, 45), 
(10, 10, 3, 110, 150, 40, 20, 2, 128);

select * from DWH_Warehouse;


-- 3. SQL Table Creation for Data Mart
-- DM_Sales Table
CREATE TABLE DM_Sales (
    SalesID INT PRIMARY KEY,
    Date DATE,
    QuantitySold INT,
    Revenue DECIMAL(10,2),
    Discount DECIMAL(10,2),
    NetRevenue DECIMAL(10,2)
);

INSERT INTO DM_Sales (SalesID, Date, QuantitySold, Revenue, Discount, NetRevenue)
VALUES
(1, '2024-01-01', 10, 500.00, 50.00, 450.00),   
(2, '2024-01-02', 5, 200.00, 20.00, 180.00),    
(3, '2024-01-03', 15, 750.00, 75.00, 675.00),  
(4, '2024-01-04', 8, 320.00, 30.00, 290.00),    
(5, '2024-01-05', 20, 1000.00, 100.00, 900.00),  
(6, '2024-01-06', 12, 600.00, 60.00, 540.00),  
(7, '2024-01-07', 18, 900.00, 90.00, 810.00),   
(8, '2024-01-08', 7, 280.00, 28.00, 252.00),    
(9, '2024-01-09', 25, 1250.00, 125.00, 1125.00), 
(10, '2024-01-10', 10, 500.00, 50.00, 450.00);  

select * from DM_Sales;


-- DM_Warehouse Table
CREATE TABLE DM_Warehouse (
    WarehouseKey INT,
    TimeKey INT,
    ProductKey INT,
    WarehouseID INT,
    StockIn INT,
    StockOut INT,
    CurrentStock INT,
    PRIMARY KEY (WarehouseKey, TimeKey, ProductKey),
    FOREIGN KEY (WarehouseKey) REFERENCES DWH_Warehouse(WarehouseKey),
    FOREIGN KEY (TimeKey) REFERENCES DWH_Time(TimeKey),
    FOREIGN KEY (ProductKey) REFERENCES DWH_Products(ProductKey)
);


INSERT INTO DM_Warehouse (WarehouseKey, TimeKey, ProductKey, WarehouseID, StockIn, StockOut, CurrentStock)
VALUES
(1, 1, 1, 101, 100, 20, 80),  
(2, 2, 2, 102, 50, 30, 20),   
(3, 3, 3, 103, 200, 50, 150),  
(4, 4, 4, 104, 150, 60, 90), 
(5, 5, 5, 105, 70, 25, 45),   
(6, 6, 6, 106, 120, 30, 90),  
(7, 7, 7, 107, 80, 40, 40),   
(8, 8, 1, 108, 100, 30, 70), 
(9, 9, 2, 109, 50, 10, 40),  
(10, 10, 3, 110, 150, 40, 110);

select * from DM_Warehouse;


































































































































































