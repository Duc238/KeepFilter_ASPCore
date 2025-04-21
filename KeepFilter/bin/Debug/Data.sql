CREATE DATABASE KeepFilter
GO
USE KeepFilter
GO
CREATE TABLE Product
(
	Id INT IDENTITY PRIMARY KEY,
	Name NVARCHAR(200) NOT NULL,
	Category NVARCHAR(100) NOT NULL,
	Price DECIMAL(18,0)
)
GO
INSERT INTO Product VALUES(N'Laptop HP Pavillon',N'Laptop HP',14000000)
GO
INSERT INTO Product VALUES(N'Máy tính khoa học flexio fx799VN',N'Máy tính',14000000)
GO
INSERT INTO Product VALUES(N'Máy tính văn phòng CAL-04S',N'Máy tính khoa học',14000000)
GO
INSERT INTO Product VALUES(N'Máy tính văn phòng CAL-07S',N'Máy tính khoa học',14000000)
GO
INSERT INTO Product VALUES(N'Laptop HP Pavillon X360',N'Laptop HP',14000000)
GO
INSERT INTO Product VALUES(N'OPPO N3 Flip',N'Điện thoại',14000000)
GO