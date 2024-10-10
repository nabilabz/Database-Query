--nomor 1
SELECT mc.CustomerID, LEFT(CustomerName, CHARINDEX (' ', CustomerName)) AS [Customer Name], CustomerGender, SUM (pd.Quantity) AS [Total Item Purchased]
FROM MsCustomer mc 
JOIN TransactionHeader th ON mc.CustomerID =th.CustomerID
JOIN TransactionDetail td ON th.TransactionID = td.TransactionID
JOIN MsShoe ms ON td.ShoeID = ms.ShoeID
JOIN PurchaseDetail pd ON ms.ShoeID = pd.ShoeID
WHERE CustomerGender = 'Male'
AND pd.Quantity > 1
GROUP BY mc.CustomerID, CustomerName, CustomerGender


--nomor 2
SELECT REPLACE (ms.ShoeID, 'SH', 'Shoes ') AS [Shoes Id], StaffID, DAY(th.TransactionDate) AS [Transaction Day], ShoeName AS [ShoesName], SUM(Quantity) AS[Total Sold]
FROM MsShoe ms 
JOIN TransactionDetail td ON ms.ShoeID = td.ShoeID
JOIN TransactionHeader th ON td.TransactionID = th.TransactionID
WHERE ShoePrice >  120000
AND (Quantity) % 2 = 0
GROUP BY ms.ShoeID, StaffID, TransactionDate, ShoeName


--nomor 3
SELECT RIGHT(ms.StaffID, 3) AS [Staff Number], UPPER (StaffName) AS [StaffName], StaffSalary, SUM(Quantity) AS [Total Purchase Made], MAX(Quantity) AS [Max Shoe Purchased]
FROM MsStaff ms 
JOIN PurchaseHeader ph ON ms.StaffID = ph.StaffID
JOIN PurchaseDetail pd ON ph.PurchaseID = pd.PurchaseID
WHERE StaffSalary > 150000
GROUP BY ms.StaffID, StaffName, StaffSalary
HAVING SUM(Quantity) > 2


--nomor 4
SELECT mv.VendorID, CONVERT (VARCHAR, VendorName) + ' Vendor' AS [Vendor Name], UPPER(REPLACE (VendorEmail, '@gmail.com', '@mail.co.id')) AS [Vendor Mail], SUM(Quantity) AS [Total Shoes Sold], MIN(Quantity) [Minimum Shoes Sold]
FROM MsVendor mv
JOIN PurchaseHeader ph ON mv.VendorID = ph.VendorID
JOIN PurchaseDetail pd ON ph.PurchaseID = pd.PurchaseID
WHERE Quantity > 13
GROUP BY mv.VendorID, VendorName, VendorEmail
HAVING SUM(Quantity) > 10


--nomor 5
SELECT mv.VendorID, CONVERT (VARCHAR, VendorName) + ' Company' AS [Vendor Name], VendorPhoneNumber, MONTH (PurchaseDate) AS [Purchase Month]
FROM MsVendor mv 
JOIN PurchaseHeader ph ON mv.VendorID = ph.VendorID 
JOIN PurchaseDetail pd ON pd.PurchaseID = ph.PurchaseID,(
	SELECT AVG(Quantity) as ayam
	FROM PurchaseHeader ph
	JOIN PurchaseDetail pd ON ph.PurchaseID = pd.PurchaseID 
) AS bebek
WHERE Month(PurchaseDate) = 4 AND bebek.ayam < Quantity

--nomor 6
SELECT REPLACE (td.TransactionID, 'TR', 'Invoice ') AS [Invoice Number] , YEAR(TransactionDate) AS [Sales Year], ShoeName AS [ShoesName] , ShoePrice AS [ShoesPrice], CONCAT(CONVERT(VARCHAR,Quantity), ' piece(s)') AS [Total Item]
FROM TransactionHeader th 
JOIN  TransactionDetail td ON th.TransactionID = td.TransactionID
JOIN MsShoe ms ON td.ShoeID = ms.ShoeID, (
	SELECT AVG(ShoePrice) AS harga
	FROM MsShoe ms
	) AS hirgi
WHERE ShoeName LIKE '%c%' AND hirgi.harga < ShoePrice 



--nomor 7
SELECT ph.PurchaseID, CONVERT(varchar,Right(ms.StaffID,3)) AS [StaffID], UPPER(StaffName) AS [Staff Name], FORMAT(PurchaseDate, 'dd/MM/yyyy') AS [Purchase Date], CONCAT( 'Rp. ', (SUM(ShoePrice*Quantity))) AS [Total Expenses] 
FROM MsStaff ms 
JOIN PurchaseHeader ph ON ms.StaffID = ph.StaffID
JOIN PurchaseDetail pd ON ph.PurchaseID = pd.PurchaseID
JOIN MsShoe mh ON pd.ShoeID = mh.ShoeID, (
	SELECT AVG(ShoePrice*Quantity) AS jaya
	FROM MsShoe mh 
	JOIN PurchaseDetail pd ON mh.ShoeID = pd.ShoeID
	) AS jiyi
WHERE CONVERT(INT,RIGHT (ms.StaffID, 3)) % 2 = 1
GROUP BY Ph.PurchaseID,ms.StaffID, StaffName,PurchaseDate, jiyi.jaya
HAVING AVG(ShoePrice*Quantity) >jiyi.jaya



--nomor 8
SELECT th.TransactionID, ms.StaffID,  LEFT(StaffName, CHARINDEX (' ', StaffName)) AS [First Name], RIGHT(StaffName, CHARINDEX (' ', REVERSE (StaffName))) AS [Last Name], SUM(Quantity*ShoePrice) AS [Total Revenue]
FROM MsStaff as ms 
JOIN TransactionHeader th ON ms.StaffID = th.StaffID
JOIN TransactionDetail td ON th.TransactionID = td.TransactionID
JOIN MsShoe mh ON td.ShoeID = mh.ShoeID, (
	SELECT AVG(ShoePrice) AS witra
	FROM MsShoe
	) AS witri
WHERE ShoePrice > witri.witra
AND StaffGender LIKE 'Female'
GROUP BY th.TransactionID, ms.StaffID, StaffName	



--nomor 9
CREATE VIEW [Vendor Max Transaction] 
AS
SELECT REPLACE(mv.VendorID, 'VE', 'Vendor ') AS [Vendor Number], LOWER(VendorName) AS [Vendor Name], COUNT(ph.PurchaseID) AS [Total Transaction Made], MAX(Quantity) AS [Maximum Quantity]
FROM MsVendor mv 
JOIN PurchaseHeader ph ON mv.VendorID = ph.VendorID
JOIN PurchaseDetail pd ON ph.PurchaseID = pd.PurchaseID
WHERE VendorName LIKE '%a%'
GROUP BY mv.VendorID, VendorName
HAVING MAX(Quantity) > 20


SELECT * 
FROM [Vendor Max Transaction]


--nomor 10
CREATE VIEW [Shoes Minimum Transaction View]
AS
SELECT th.TransactionID, TransactionDate, StaffName, UPPER(StaffEmail) AS [Staff Email], MIN(Quantity) AS [Minimum Shoes Sold], SUM(Quantity) AS [Total Shoes Sold]
FROM MsStaff ms 
JOIN TransactionHeader th ON ms.StaffID = ms.StaffID
JOIN TransactionDetail td ON th.TransactionID = td.TransactionID
JOIN MsShoe mh ON td.ShoeID = mh.ShoeID
WHERE YEAR(TransactionDate) > 2020
AND ShoePrice > 10000
GROUP BY th.TransactionID, TransactionDate, StaffName, StaffEmail

SELECT *
FROM [Shoes Minimum Transaction View]
