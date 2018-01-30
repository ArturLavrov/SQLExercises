USE TSQL2012

SELECT orderid,orderdate,custid,empid
FROM Sales.Orders
WHERE orderdate >= '20070601' AND orderdate <= '20070630'

----This solution is also correct but inefficient for indexes
SELECT orderid, orderdate, custid, empid 
FROM Sales.Orders 
WHERE YEAR(orderdate) = 2007 AND MONTH(orderdate) = 6;
