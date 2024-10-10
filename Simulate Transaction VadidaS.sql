USE VadidaS

--------VadidaS Transaction Process--------

--Customer datang ke toko VadidaS dan melihat sepatu yang tersedia beserta harga dan juga deskripsi sepatunya
SELECT ShoeName, ShoePrice, ShoeDescription
FROM MsShoe
ORDER BY ShoePrice ASC


--Jika customer tersebut merasa cocok dengan sepatunya, maka ia akan membeli. Lalu, staff akan meminta pelanggan untuk mengisi data diri
--ID, Name, Gender, Date of Birth, Address, Email
INSERT INTO MsCustomer VALUES
('CU011', 'Bardilindi Gaus', 'Male', '2001-09-08', 'Boulevard Praja', 'bardiiy08@gmail.com')

--Setelah customer mengisi data diri, staff akan mengisi nota pembelian sepatu 
--TransactionID, StaffID, CustomerID, TransactionDate
INSERT INTO TransactionHeader VALUES
('TR016', 'ST008', 'CU011', '2023-06-13')

--TransactionID, ShoeID, Quantity
INSERT INTO TransactionDetail VALUES
('TR016', 'SH002', '2')



-- staff membeli sepatu ke vendor, staff meminta vendor untuk mengisi data
-- ID, Name, Address, Email, PhoneNumber
INSERT INTO MsVendor VALUES
('VE011', 'Sagaleh', 'Ciputat Timur', 'galxx20@gmail.com', '079267891256')


--Setelah vendor mengisi data diri, staff akan mengisi bukti 
--PurchaseID, StaffID, VendorID, PurchaseDate
INSERT INTO PurchaseHeader VALUES 
('PU016', 'ST008', 'VE003', '2023-07-20')

--PurchaseID, ShoeID, Quantity
INSERT INTO PurchaseDetail VALUES
('PU016', 'SH003', '6')














