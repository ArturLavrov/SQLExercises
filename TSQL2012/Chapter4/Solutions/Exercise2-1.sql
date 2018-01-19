USE TSQL2012;

SELECT orderid, orderdate, custid, empid, ROW_NUMBER() OVER(ORDER BY orderid) AS 'row_number'
FROM Sales.Orders



