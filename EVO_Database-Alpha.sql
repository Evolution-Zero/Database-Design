`-- // EVO Market // Alpha Database // 

-- // My Customers

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(20),
    LastName VARCHAR(50),
    UserName VARCHAR(50),
    Address VARCHAR(100),
    City VARCHAR(40),
    State VARCHAR(50)
    Zip VARCHAR(7)
);

-- // My Products
CREATE TABLE Products (
    OrderID INT PRIMARY KEY,
    ProductName VARCHAR(25),
    ProductDesc VARCHAR(255),
    ProductPrice DECIMAL (10, 2),
    QtyInStock INT
);

-- // Pending/Complete Orders
CREATE TABLE Listings (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE, 
    ShippedDate DATETIME, 
    OrderStatus VARCHAR(12),
    CONSTRAINT
FK_CustomerOrders FOREIGN KEY
(CustomerID) REFERENCES
Customers(CustomerID)
);

-- // Displaying results of orders based on customer's unique ID

SELECT TOP (100) [Order_ID]
      ,[Customer_ID]
      ,[Order_Date]
      ,[Order_Total]
  FROM [Evolution_DB].[dbo].[orders]`
