USE WMS;
GO

------------------------------------------[ CATEGORIES ]---------------------------------------------------------------------------
-- Chèn nhiều dòng cùng lúc
INSERT INTO [WMS].[dbo].[Categories] ([Id], [Name])
VALUES 
    (NEWID(), N'Laptop'),
    (NEWID(), N'Smartphone'),
    (NEWID(), N'Tablet'),
    (NEWID(), N'Smartwatch'),
    (NEWID(), N'Camera'),
    (NEWID(), N'Monitor'),
    (NEWID(), N'Mouse');
	--------------------------------------[ PRODUCTS ]--------------------------------------------------------------------------
-- Khai báo các biến dùng chung cho sản phẩm
DECLARE @BaseCost DECIMAL(18,2) = 100.00;
DECLARE @BasePrice DECIMAL(18,2) = 150.00;
DECLARE @BaseCount INT = 10;
DECLARE @ImageUrl NVARCHAR(MAX) = NULL;
DECLARE @Description NVARCHAR(2000) = NULL; 

-- CAMERA
INSERT INTO [dbo].[Products]
([Id], [Name], [Description], [Cost], [Price], [Count], [ImageUrl], [CategoryId])
VALUES
(NEWID(), 'Camera-001', @Description, @BaseCost, @BasePrice, @BaseCount, @ImageUrl, '6AF8B542-8E41-4D5D-9831-1547BD6CD376'),
(NEWID(), 'Camera-002', @Description, @BaseCost, @BasePrice, @BaseCount, @ImageUrl, '6AF8B542-8E41-4D5D-9831-1547BD6CD376'),
(NEWID(), 'Camera-003', @Description, @BaseCost, @BasePrice, @BaseCount, @ImageUrl, '6AF8B542-8E41-4D5D-9831-1547BD6CD376'),
(NEWID(), 'Camera-004', @Description, @BaseCost, @BasePrice, @BaseCount, @ImageUrl, '6AF8B542-8E41-4D5D-9831-1547BD6CD376'),
(NEWID(), 'Camera-005', @Description, @BaseCost, @BasePrice, @BaseCount, @ImageUrl, '6AF8B542-8E41-4D5D-9831-1547BD6CD376');

-- MOUSE
INSERT INTO [dbo].[Products]
([Id], [Name], [Description], [Cost], [Price], [Count], [ImageUrl], [CategoryId])
VALUES
(NEWID(), 'Mouse-001', @Description, @BaseCost, @BasePrice, @BaseCount, @ImageUrl, 'DA65FB3C-DF76-4F6A-8921-1643EE1A2820'),
(NEWID(), 'Mouse-002', @Description, @BaseCost, @BasePrice, @BaseCount, @ImageUrl, 'DA65FB3C-DF76-4F6A-8921-1643EE1A2820'),
(NEWID(), 'Mouse-003', @Description, @BaseCost, @BasePrice, @BaseCount, @ImageUrl, 'DA65FB3C-DF76-4F6A-8921-1643EE1A2820'),
(NEWID(), 'Mouse-004', @Description, @BaseCost, @BasePrice, @BaseCount, @ImageUrl, 'DA65FB3C-DF76-4F6A-8921-1643EE1A2820'),
(NEWID(), 'Mouse-005', @Description, @BaseCost, @BasePrice, @BaseCount, @ImageUrl, 'DA65FB3C-DF76-4F6A-8921-1643EE1A2820');

-- MONITOR
INSERT INTO [dbo].[Products]
([Id], [Name], [Description], [Cost], [Price], [Count], [ImageUrl], [CategoryId])
VALUES
(NEWID(), 'Monitor-001', @Description, @BaseCost, @BasePrice, @BaseCount, @ImageUrl, '3D60AF77-032A-4CE7-8EDF-3100594A053F'),
(NEWID(), 'Monitor-002', @Description, @BaseCost, @BasePrice, @BaseCount, @ImageUrl, '3D60AF77-032A-4CE7-8EDF-3100594A053F'),
(NEWID(), 'Monitor-003', @Description, @BaseCost, @BasePrice, @BaseCount, @ImageUrl, '3D60AF77-032A-4CE7-8EDF-3100594A053F'),
(NEWID(), 'Monitor-004', @Description, @BaseCost, @BasePrice, @BaseCount, @ImageUrl, '3D60AF77-032A-4CE7-8EDF-3100594A053F'),
(NEWID(), 'Monitor-005', @Description, @BaseCost, @BasePrice, @BaseCount, @ImageUrl, '3D60AF77-032A-4CE7-8EDF-3100594A053F');

-- TABLET
INSERT INTO [dbo].[Products]
([Id], [Name], [Description], [Cost], [Price], [Count], [ImageUrl], [CategoryId])
VALUES
(NEWID(), 'Tablet-001', @Description, @BaseCost, @BasePrice, @BaseCount, @ImageUrl, '7D61EACF-A768-4D5C-A2C8-41B51B082559'),
(NEWID(), 'Tablet-002', @Description, @BaseCost, @BasePrice, @BaseCount, @ImageUrl, '7D61EACF-A768-4D5C-A2C8-41B51B082559'),
(NEWID(), 'Tablet-003', @Description, @BaseCost, @BasePrice, @BaseCount, @ImageUrl, '7D61EACF-A768-4D5C-A2C8-41B51B082559'),
(NEWID(), 'Tablet-004', @Description, @BaseCost, @BasePrice, @BaseCount, @ImageUrl, '7D61EACF-A768-4D5C-A2C8-41B51B082559'),
(NEWID(), 'Tablet-005', @Description, @BaseCost, @BasePrice, @BaseCount, @ImageUrl, '7D61EACF-A768-4D5C-A2C8-41B51B082559');

-- LAPTOP
INSERT INTO [dbo].[Products]
([Id], [Name], [Description], [Cost], [Price], [Count], [ImageUrl], [CategoryId])
VALUES
(NEWID(), 'Laptop-001', @Description, @BaseCost, @BasePrice, @BaseCount, @ImageUrl, '91473F43-8BE8-4BFB-B003-6B4DEE54115D'),
(NEWID(), 'Laptop-002', @Description, @BaseCost, @BasePrice, @BaseCount, @ImageUrl, '91473F43-8BE8-4BFB-B003-6B4DEE54115D'),
(NEWID(), 'Laptop-003', @Description, @BaseCost, @BasePrice, @BaseCount, @ImageUrl, '91473F43-8BE8-4BFB-B003-6B4DEE54115D'),
(NEWID(), 'Laptop-004', @Description, @BaseCost, @BasePrice, @BaseCount, @ImageUrl, '91473F43-8BE8-4BFB-B003-6B4DEE54115D'),
(NEWID(), 'Laptop-005', @Description, @BaseCost, @BasePrice, @BaseCount, @ImageUrl, '91473F43-8BE8-4BFB-B003-6B4DEE54115D');

-- SMARTPHONE
INSERT INTO [dbo].[Products]
([Id], [Name], [Description], [Cost], [Price], [Count], [ImageUrl], [CategoryId])
VALUES
(NEWID(), 'Smartphone-001', @Description, @BaseCost, @BasePrice, @BaseCount, @ImageUrl, '28350759-2B71-4556-AB5C-78531D6F9C67'),
(NEWID(), 'Smartphone-002', @Description, @BaseCost, @BasePrice, @BaseCount, @ImageUrl, '28350759-2B71-4556-AB5C-78531D6F9C67'),
(NEWID(), 'Smartphone-003', @Description, @BaseCost, @BasePrice, @BaseCount, @ImageUrl, '28350759-2B71-4556-AB5C-78531D6F9C67'),
(NEWID(), 'Smartphone-004', @Description, @BaseCost, @BasePrice, @BaseCount, @ImageUrl, '28350759-2B71-4556-AB5C-78531D6F9C67'),
(NEWID(), 'Smartphone-005', @Description, @BaseCost, @BasePrice, @BaseCount, @ImageUrl, '28350759-2B71-4556-AB5C-78531D6F9C67');

-- SMARTWATCH
INSERT INTO [dbo].[Products]
([Id], [Name], [Description], [Cost], [Price], [Count], [ImageUrl], [CategoryId])
VALUES
(NEWID(), 'Smartwatch-001', @Description, @BaseCost, @BasePrice, @BaseCount, @ImageUrl, '603ECEDD-F7E7-418E-A373-C57DE756000F'),
(NEWID(), 'Smartwatch-002', @Description, @BaseCost, @BasePrice, @BaseCount, @ImageUrl, '603ECEDD-F7E7-418E-A373-C57DE756000F'),
(NEWID(), 'Smartwatch-003', @Description, @BaseCost, @BasePrice, @BaseCount, @ImageUrl, '603ECEDD-F7E7-418E-A373-C57DE756000F'),
(NEWID(), 'Smartwatch-004', @Description, @BaseCost, @BasePrice, @BaseCount, @ImageUrl, '603ECEDD-F7E7-418E-A373-C57DE756000F'),
(NEWID(), 'Smartwatch-005', @Description, @BaseCost, @BasePrice, @BaseCount, @ImageUrl, '603ECEDD-F7E7-418E-A373-C57DE756000F');
