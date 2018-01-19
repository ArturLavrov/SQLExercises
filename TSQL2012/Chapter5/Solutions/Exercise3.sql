USE TSQL2012
DECLARE @januaryStart AS DATE = '20080101';
DECLARE @januaryEnd AS DATE = '20080201';
DECLARE @februaryEnd AS DATE = '20080301';
SELECT custid,empid FROM Sales.Orders WHERE orderdate >= @januaryStart AND orderdate <= @januaryEnd
INTERSECT
SELECT custid,empid FROM Sales.Orders WHERE orderdate >= @januaryEnd AND orderdate <= @februaryEnd