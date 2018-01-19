USE TSQL2012;

SELECT DISTINCT S.empid, S.orderdate, S.orderid, S.custid
FROM (SELECT empid, MAX(orderdate) AS max_order_date 
	  FROM Sales.Orders 
	  GROUP BY empid) AS C
INNER JOIN Sales.Orders AS S 
ON C.max_order_date = S.orderdate AND C.empid = S.empid
ORDER BY empid DESC;
