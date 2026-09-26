CREATE DATABASE September_24
USE September_24

SELECT * FROM dbo.Orders
SELECT * FROM dbo.Returns
SELECT * FROM dbo.People





--1.Find order details specifically for orders that appear in the Return log 
SELECT O.[Order ID],O.[Order Date],O.[Customer Name],O.[Product Name],R.[Returned],R.[Order ID]
FROM Orders O
JOIN
Returns R
ON
O.[Order ID]=R.[Order ID]

--2.GENERATE A LIST OF RETURNED ORDERS ALONGSIDE THE REGIONAL MANAGER
SELECT  O.[Order ID], P.Person AS Personal_Manager, O.[Region], O.[Category], R.[Returned]
FROM Orders O
INNER JOIN
Returns R
ON 
O.[Order ID]=R.[Order ID]
INNER JOIN
People P
On P.[Region]=O.[Region]


