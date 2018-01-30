USE TSQL2012
---HERE we select customers thet made a banch purchase in one day---
SELECT O.custid, MAX(C.contactname) as Customer_name, MAX(C.city) as Customer_city, 
MAX(C.phone) as Custome_contact_phone, MAX(O.orderdate) as orderdate, COUNT(O.custid) as number_of_orders 
FROM Sales.Orders AS O 
INNER JOIN Sales.Customers AS C ON O.custid = C.custid
GROUP BY O.custid, O.orderdate
ORDER BY number_of_orders DESC;

---Find the most active customers countries----
SELECT C.country as Country, COUNT(O.custid) as Number_of_orders
FROM Sales.Orders AS O INNER JOIN Sales.Customers AS C ON O.custid = C.custid
GROUP BY C.country
ORDER BY Number_of_orders DESC;