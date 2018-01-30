USE TSQL2012
INSERT INTO dbo.Customers(custid,companyname,country,region,city)
			SELECT MAX(C.custid), MAX(C.companyname),MAX(C.country),MAX(C.region),MAX(C.city
			FROM Sales.Orders AS O 
			INNER JOIN Sales.Customers AS C ON O.custid = C.custid
			GROUP BY  C.custid
			HAVING COUNT(O.orderid) >= 1
			