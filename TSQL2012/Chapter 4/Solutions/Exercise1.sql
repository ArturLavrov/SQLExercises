/****** Script for SelectTopNRows command from SSMS  ******/
USE TSQL2012
SELECT orderid, orderdate, custid, empid FROM Sales.Orders 
WHERE orderdate = (SELECT MAX(orderdate) FROM Sales.Orders)

