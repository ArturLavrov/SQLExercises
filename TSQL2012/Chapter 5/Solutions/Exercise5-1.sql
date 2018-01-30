----TVF---
USE [TSQL2012]
GO
/****** Object:  UserDefinedFunction [Production].[TopProducts]    Script Date: 16.01.18 16:32:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER FUNCTION [Production].[TopProducts]  (@supid AS INT, @n AS INT)
RETURNS TABLE 
AS 
  RETURN   
	SELECT TOP(@n)productid, productname, unitprice 
	FROM Production.Products AS P 
	WHERE P.supplierid = @supid;
---Query TVF TopProducts()---
SELECT * FROM Production.TopProducts(5,2)