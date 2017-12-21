USE TSQL2012
---This is not the best way to use indexes.
SELECT orderid, orderdate, custid,empid
FROM Sales.Orders 
WHERE orderdate = EOMONTH(orderdate)
ORDER BY orderdate
