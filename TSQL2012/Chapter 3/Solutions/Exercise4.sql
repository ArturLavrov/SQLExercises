USE TSQL2012
SELECT C.custid,O.orderid
FROM Sales.Customers AS C 
LEFT OUTER JOIN Sales.Orders AS O ON C.custid = O.custid
WHERE O.orderdate is NULL