-- PAIR 2.6 SQL QUERIES BASICAS

/* Conociendo a las empleadas: vamos a diseñar una consulta SQL para obtener una lista con los datos de las empleadas
 y empleados de la empresa Northwind. Esta consulta incluirá los campos EmployeeID, LastName y FirstName */

USE northwind;

SELECT employeeID, FirstName, LastName
FROM employees;

SELECT *
FROM products;

SELECT ProductID, ProductName, UnitPrice
FROM products
WHERE UnitPrice BETWEEN 0 AND 5;

SELECT *
FROM products
WHERE UnitPrice IS NULL;

SELECT *
FROM products
WHERE UnitPrice <15 AND ProductID <20; 

SELECT *
FROM products
WHERE NOT UnitPrice <15 AND NOT ProductID <20; 

SELECT ShipCountry
FROM orders;

SELECT ProductID, ProductName, UnitPrice
FROM Products
LIMIT 10;

SELECT ProductID, ProductName, UnitPrice
FROM Products
ORDER BY ProductID DESC
LIMIT 10;

SELECT *
FROM orderdetails;

SELECT DISTINCT OrderID
FROM orderdetails;

-- BONUS

SELECT OrderID, (UnitPrice * Quantity) AS IMPORTE_TOTAL 
FROM orderdetails
ORDER BY IMPORTE_TOTAL ASC
LIMIT 3;