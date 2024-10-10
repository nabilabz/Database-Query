INSERT INTO MsStaff VALUES  --10
('ST001', 'Jamila Sugeng', 'Female', 'sugengsti@gmail.com', 'Cibinong Tenggara', 120000),
('ST002', 'Satria Tutul', 'Male', 'satriatutul@gmail.com', 'Soekarno Hatta Jakarta', 350000),
('ST003', 'Arkan Mahendra', 'Male', 'mahendrarkan@gmail.com', 'Alahan Panjang', 220000),
('ST004', 'Bambang Kurniawan', 'Male', 'kurniawansekali@gmail.com', 'Virginia Hazelwood', 140000),
('ST005', 'Maulana Ibrahim', 'Male', 'ibrahimoveit@gmail.com', 'Kademangan Kota', 300000),
('ST006', 'Yulaktu Mufit', 'Female', 'madagascar@gmail.com', 'Ajeng Agung', 420000),
('ST007', 'Riyana Grande', 'Female', 'musisihandal@gmail.com', 'Sukajadi Sulthan', 135000),
('ST008', 'Miranda Maiden', 'Female', 'maidengirl@gmail.com', 'Jurumudi Ajeng', 310000),
('ST009', 'Invoker Hartono', 'Male', 'spiritguy@gmail.com', 'Batuceper Gaga', 134000),
('ST010', 'Abdul Kahfiu', 'Male', 'kahfiukali@gmail.com', 'Central Karang Tengah', 450000)



INSERT INTO MsCustomer VALUES --10
('CU001', 'Fumi Sumiyati', 'FEMALE', '2003-08-09', 'Kegangsaan Timur Laut', 'Sumiyati@gmail.com'),
('CU002', 'Baraka Kumilatif', 'MALE', '1999-09-25', 'Pesantren Jurang Manggu', 'kumilatifah@gmail.com'),
('CU003', 'Kamida Paseo', 'MALE', '1995-12-20', 'Cluster Korea Tenggara', 'paseobrand@gmail.com'),
('CU004', 'Nigma Toretto', 'MALE', '1990-06-22', 'Suramadu Town', 'torettofamily@gmail.com'),
('CU005', 'Letty Sukmawan', 'FEMALE', '1997-03-18', 'Los Santos City', 'furiousbanget@gmail.com'),
('CU006', 'Yudoyouknow Watiwah', 'MALE', '1988-11-10', 'Miami Ciater', 'youknowme@gmail.com'),
('CU007', 'Latifah Anggun', 'FEMALE', '1987-12-23', 'Kampung Vegas', 'latiang@gmail.com'),
('CU008', 'Karen Permatasari', 'FEMALE', '1959-08-08', 'Pekayon Green Lake', 'permata@gmail.com'),
('CU009', 'Alex Jabatan', 'MALE', '1973-05-17', 'Klapanunggal Sigantang', 'jabadtangan@gmail.com'),
('CU010', 'Nunung Ginggatara', 'FEMALE', '1964-07-19', 'Katingan Ujung Selatan', 'nungging@gmail.com')



INSERT INTO MsShoe VALUES --10
--shoe id, shoe name, shoe price, shoe description
('SH001', 'Air Encoy', 780000, 'Trendy and popular'),
('SH002', 'Chalkzone', 860000, 'Made of environmentally friendly materials'),
('SH003', 'Bulldozer', 600000, 'Casual sneakers'),
('SH004', 'Yuka kaca', 1100000, 'Provide comfort'),
('SH005', 'Benjiro', 300000, 'Anti-slip for hiking'),
('SH006', 'Kacumi', 300000, 'Most legendary'),
('SH007', 'Ultraboost', 900000, 'Classic style'),
('SH008', 'Yeezy Parsley', 920000, 'Cushioned, thick midsole'),
('SH009', 'Pharrell Chu', 1700000, 'Co-designed with Pharrell'),
('SH010', 'Mnisi ZX Wavian', 1500000, 'Relaxed and trendy casual type')




INSERT INTO MsVendor VALUES --10
--id, name, address, email, phone number
('VE001', 'Megasakti', 'Jalani Bersamamu' , 'mega15@gmail.com', '0856713350978'),
('VE002', 'Megahujan', 'Muncul Jaya' , 'hujani23@gmail.com', '081279094627'),
('VE003', 'ShoeShrine', 'Uragawacina' , 'shrinee@gmail.com', '0806532893072'),
('VE004', 'Jayastar', 'Pagangsaan Timur' , 'starxx@gmail.com', '083467890754'),
('VE005', 'Kembang Bulan', 'Pojok Satir' , 'kembangsatir@gmail.com', '083467899824'),
('VE006', 'Toreto Family', 'Ujung Kulon' , 'tortor@gmail.com', '0845467890632'),
('VE007', 'Wijin Rasa', 'Sabang Sana' , 'jindul@gmail.com', '082467890076'),
('VE008', 'Cloud Fam', 'Merauke Situ' , 'cloudyy@gmail.com', '08767890754'),
('VE009', 'Witra Abadi', 'Paku Ghoib' , 'alamastral@gmail.com', '081267890746'),
('VE010', 'Mugnificient', 'Ujung Kaki' , 'mugii@gmail.com', '085267890712')


INSERT INTO PurchaseHeader VALUES --15
--purchase id, staff id, vendor id, purchase date
('PU001', 'ST002', 'VE005', '2023-06-06'),
('PU002', 'ST005', 'VE005', '2023-04-07'),
('PU003', 'ST007', 'VE002', '2023-02-08'),
('PU004', 'ST008', 'VE001', '2023-09-25'),
('PU005', 'ST001', 'VE007', '2023-12-20'),
('PU006', 'ST007', 'VE001', '2023-06-08'),
('PU007', 'ST003', 'VE002', '2023-06-13'),
('PU008', 'ST004', 'VE003', '2023-01-06'),
('PU009', 'ST009', 'VE004', '2023-09-14'),
('PU010', 'ST010', 'VE003', '2023-10-25'),
('PU011', 'ST001', 'VE010', '2023-08-13'),
('PU012', 'ST003', 'VE006', '2023-06-29'),
('PU013', 'ST006', 'VE008', '2023-02-18'),
('PU014', 'ST002', 'VE003', '2023-07-23'),
('PU015', 'ST010', 'VE009', '2023-06-21')

INSERT INTO PurchaseDetail VALUES --25
--PURCHASEID, SHOEID, QTY
('PU001', 'SH002', 20),
('PU003', 'SH003', 50),
('PU007', 'SH002', 76),
('PU012', 'SH007', 20),
('PU005', 'SH001', 28),
('PU008', 'SH010', 10),
('PU015', 'SH006', 31),
('PU003', 'SH001', 54),
('PU002', 'SH004', 78),
('PU004', 'SH006', 98),
('PU010', 'SH007', 20),
('PU009', 'SH003', 23),
('PU007', 'SH004', 44),
('PU006', 'SH001', 31),
('PU011', 'SH005', 13),
('PU013', 'SH008', 56),
('PU014', 'SH001', 65),
('PU001', 'SH003', 11),
('PU009', 'SH009', 19),
('PU004', 'SH003', 21),
('PU015', 'SH010', 13),
('PU004', 'SH009', 18),
('PU014', 'SH002', 32),
('PU012', 'SH004', 16),
('PU005', 'SH007', 25)

INSERT INTO TransactionHeader VALUES --15
--TransactionID, StaffID, CustomerID, TransactionDate
('TR001', 'ST003', 'CU001', '2023-08-20'),
('TR002', 'ST007', 'CU001', '2023-01-27'),
('TR003', 'ST010', 'CU005', '2023-05-24'),
('TR004', 'ST001', 'CU003', '2023-04-27'),
('TR005', 'ST004', 'CU004', '2023-05-19'),
('TR006', 'ST009', 'CU003', '2023-03-23'),
('TR007', 'ST002', 'CU008', '2023-02-17'),
('TR008', 'ST006', 'CU009', '2023-06-27'),
('TR009', 'ST009', 'CU003', '2023-05-27'),
('TR010', 'ST003', 'CU007', '2023-07-12'),
('TR011', 'ST008', 'CU010', '2023-08-25'),
('TR012', 'ST005', 'CU002', '2023-07-15'),
('TR013', 'ST001', 'CU003', '2023-09-18'),
('TR014', 'ST005', 'CU002', '2023-07-14'),
('TR015', 'ST009', 'CU006', '2023-05-16')

INSERT INTO TransactionDetail VALUES --25
--TransactionID, ShoeID, Quantity
('TR010', 'SH001', 2),
('TR002', 'SH008', 1),
('TR009', 'SH002', 4),
('TR011', 'SH004', 3),
('TR012', 'SH001', 2),
('TR014', 'SH006', 2),
('TR006', 'SH007', 1),
('TR012', 'SH009', 3),
('TR007', 'SH006', 1),
('TR002', 'SH004', 2),
('TR005', 'SH003', 5),
('TR001', 'SH001', 2),
('TR008', 'SH008', 1),
('TR015', 'SH004', 3),
('TR013', 'SH009', 4),
('TR011', 'SH001', 2),
('TR003', 'SH002', 1),
('TR004', 'SH007', 2),
('TR006', 'SH005', 3),
('TR010', 'SH007', 2),
('TR015', 'SH009', 1),
('TR009', 'SH010', 1),
('TR007', 'SH003', 4),
('TR003', 'SH010', 3),
('TR005', 'SH005', 2)