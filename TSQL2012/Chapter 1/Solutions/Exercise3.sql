USE TSQL2012

SELECT empid,firstname,lastname
FROM HR.Employees
WHERE LEN(lastname) - LEN(REPLACE(lastname,'a','')) >= 2;
