USE TSQL2012

SELECT C.custid, COUNT(DISTINCT O.orderid) AS totalNumberOfOrders, SUM(OD.qty)
FROM Sales.Customers AS C 
	INNER JOIN Sales.Orders AS O ON C.custid = O.custid
	INNER JOIN Sales.OrderDetails AS OD ON O.orderid = OD.orderid
WHERE C.country = 'USA'
	GROUP BY C.custid