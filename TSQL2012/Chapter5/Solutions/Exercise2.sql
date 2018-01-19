USE TSQL2012
SELECT  custid,empid FROM Sales.Orders AS O WHERE O.orderdate >= '20080101' AND O.orderdate <= '20080201'
INTERSECT
SELECT custid,empid FROM Sales.Orders AS O WHERE O.orderdate 
			NOT IN 
		    (SELECT orderdate FROM Sales.Orders WHERE orderdate > '20080201' AND orderdate < '20080301')