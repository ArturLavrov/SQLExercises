USE TSQL2012

SELECT TOP(3) shipcountry, AVG(freight) AS avarage
FROM Sales.Orders
WHERE shippeddate >= '20070101' AND shippeddate <= '20080101'
GROUP BY shipcountry
ORDER BY avarage DESC