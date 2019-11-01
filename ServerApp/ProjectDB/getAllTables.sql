USE GlobalHyper
GO

IF EXISTS(SELECT name FROM sys.procedures
		  WHERE name = 'getAllTables')
		  DROP PROC getAllTables
GO

CREATE PROC getAllTables
AS
SELECT * FROM WORKER
SELECT * FROM CLIENT
SELECT * FROM AVAILABLESTOCK
SELECT * FROM FINANCIALREPORT
SELECT * FROM HOURSWORKED
SELECT * FROM PRODUCTDETAILS
SELECT * FROM PRODUCTS
GO
