CREATE DATABASE VadidaS
GO
USE VadidaS
GO


CREATE TABLE MsStaff (
StaffID CHAR(5) PRIMARY KEY CHECK (StaffID LIKE 'ST[0-9][0-9][0-9]'),
StaffName VARCHAR(50) CHECK (LEN(StaffName) > 10) NOT NULL,
StaffGender CHAR(10) CHECK (StaffGender IN ('FEMALE', 'MALE')) NOT NULL,
StaffEmail VARCHAR(50) CHECK (StaffEmail LIKE '%@gmail.com') NOT NULL,
StaffAddress VARCHAR(50) NOT NULL,
StaffSalary INT check (StaffSalary BETWEEN 120000 AND 500000) NOT NULL
)

CREATE TABLE MsCustomer (
CustomerID CHAR(5) PRIMARY KEY CHECK (CustomerID LIKE 'CU[0-9][0-9][0-9]'),
CustomerName VARCHAR(50) CHECK (LEN(CustomerName) > 10) NOT NULL,
CustomerGender VARCHAR(50) CHECK (CustomerGender IN ('FEMALE', 'MALE')),
CustomerDOB DATE check (DATEDIFF(YEAR,CustomerDOB,GETDATE()) >= 17) NOT NULL,
CustomerAddress VARCHAR(50) NOT NULL,
CustomerEmail VARCHAR(50) CHECK (CustomerEmail LIKE '%@gmail.com') NOT NULL
)

CREATE TABLE MsShoe (
ShoeID CHAR(5) PRIMARY KEY CHECK (ShoeID LIKE 'SH[0-9][0-9][0-9]'),
ShoeName VARCHAR(50) NOT NULL,
ShoePrice INT NOT NULL,
ShoeDescription VARCHAR(255) NOT NULL
)

CREATE TABLE MsVendor (
VendorID CHAR(5) PRIMARY KEY CHECK (VendorID LIKE 'VE[0-9][0-9][0-9]'),
VendorName VARCHAR(50) NOT NULL,
VendorAddress VARCHAR(50) NOT NULL,
VendorEmail VARCHAR(50) CHECK (VendorEmail LIKE '%@gmail.com') NOT NULL,
VendorPhoneNumber VARCHAR(15) NOT NULL
)


CREATE TABLE PurchaseHeader (
PurchaseID CHAR(5) PRIMARY KEY CHECK (PurchaseID LIKE 'PU[0-9][0-9][0-9]'),
StaffID CHAR(5) FOREIGN KEY REFERENCES MsStaff (StaffID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
VendorID CHAR(5) FOREIGN KEY REFERENCES MsVendor (VendorID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
PurchaseDate DATE NOT NULL
)



CREATE TABLE TransactionHeader (
TransactionID CHAR(5) PRIMARY KEY CHECK (TransactionID LIKE 'TR[0-9][0-9][0-9]'),
StaffID CHAR(5) FOREIGN KEY REFERENCES MsStaff (StaffID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
CustomerID CHAR(5) FOREIGN KEY REFERENCES MsCustomer (CustomerID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
TransactionDate DATE NOT NULL
)


CREATE TABLE TransactionDetail (
TransactionID CHAR(5) FOREIGN KEY REFERENCES TransactionHeader (TransactionID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
ShoeID CHAR(5) FOREIGN KEY REFERENCES MsShoe (ShoeID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
Quantity INT NOT NULL,
PRIMARY KEY (TransactionID, ShoeID)
)


CREATE TABLE PurchaseDetail (
PurchaseID CHAR(5) FOREIGN KEY REFERENCES PurchaseHeader (PurchaseID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
ShoeID CHAR(5) FOREIGN KEY REFERENCES MsShoe(ShoeID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
Quantity INT NOT NULL,
PRIMARY KEY (PurchaseID, ShoeID)
)





