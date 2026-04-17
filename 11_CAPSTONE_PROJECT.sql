-- Capstone Project: Customer Database

-- Task 1: Database Schema Creation
-- Define tables: Customers, Policies, Claims, PolicyTypes.
    -- Include fields such as CustomerID, PolicyID, ClaimID, PolicyTypeID, ClaimAmount, ClaimDate, 
	-- PolicyStartDate, PolicyEndDate, etc.

-- This SQL script creates a customer database with a table to store customer information.
CREATE TABLE customer (
	CustomerID SERIAL PRIMARY KEY,
	FirstName VARCHAR(50),
	LastName VARCHAR(50),
	DateOfBirth DATE,
	Gender CHAR(1),
	Address VARCHAR(100),
	City VARCHAR(50),
	State VARCHAR(50),
	ZipCode VARCHAR(10)
);

-- This SQL script creates a table to store policy information, linking it to the customer and policy type tables.
CREATE TABLE policy_types (
	PolicyTypeID SERIAL PRIMARY KEY,
	PolicyTypeName VARCHAR(50),
	Description TEXT
);

