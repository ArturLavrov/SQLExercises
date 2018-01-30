USE TSQL2012

SELECT orderid, orderdate, custid,empid
FROM Sales.Orders 
WHERE orderdate = EOMONTH(orderdate)
ORDER BY orderdate
