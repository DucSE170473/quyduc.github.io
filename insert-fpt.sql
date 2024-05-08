-- Create database FPTManagement
CREATE DATABASE FPTShopManagement;
GO

-- Use DB FPTManagement
USE [FPTShopManagement];
GO

-- Create table tblProducts
CREATE TABLE tblProducts(
				productID VARCHAR(10) PRIMARY KEY,
                productName NVARCHAR(255),
                category NVARCHAR(50),
                brand NVARCHAR(50),
                [description] NVARCHAR(255),
                price INT,
                [image] VARCHAR(255))
-- Create table tblUsers
CREATE TABLE tblUsers(
				userID VARCHAR(10) PRIMARY KEY,
				fullName NVARCHAR(100),
				[password] VARCHAR(30),
				roleID VARCHAR(10))

-- Create table tblOrders

CREATE TABLE tblOrders(
				orderID INT PRIMARY KEY,
				dateBuy DATETIME,
				total INT,
				userID VARCHAR(10) REFERENCES tblUsers(userID),
				phone VARCHAR(10),
				[address] NVARCHAR(100))

-- Create table tblOrderDetails
CREATE TABLE tblOrderDetails(
				orderDetailsID INT PRIMARY KEY IDENTITY(1, 1),
				productID VARCHAR(10) REFERENCES tblProducts(productID),
				orderID INT REFERENCES tblOrders(orderID),
				price INT,
				quantity INT,
				total INT)
