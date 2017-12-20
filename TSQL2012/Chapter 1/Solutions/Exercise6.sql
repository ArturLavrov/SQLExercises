
USE TSQL2012

SELECT custid,orderdate,orderid,
      ROW_NUMBER() OVER(PARTITION BY custid ORDER BY orderid) AS rownum
FROM Sales.Orders
ORDER BY custid
