--Semana 9 Tarea 
--René Ismael Fuentes Benítez SMIS047221

CREATE DATABASE Northwind
USE Northwind
-- Utilice la función COUNT para obtener la cantidad de empleados agrupados por ciudad.

SELECT  City, COUNT(City) Empleados FROM Employees WHERE City IN(SELECT City FROM [EmployeeTerritories]) GROUP BY City


--Muestra el número de clientes, la primera fecha y la fecha más reciente de la tabla orders.
SELECT COUNT(CustomerID) "Numero de clientes", MIN(OrderDate) "Fecha mas antigua", MAX(OrderDate) "Fecha mas reciente" FROM Orders;


--. Mostrar companyName de la tabla customers, en donde el país sea Mexico y la región no sea NULL.
SELECT CompanyName Compania, Country Pais FROM Customers WHERE Country = 'Mexico' and Region IS NOT NULL



/*
Mostrar la cantidad de pedidos realizados por un cliente de la tabla orders en donde
los pedidos sean mayores a 5 y menores a 10 (Muestre 3 resultados, el primero
utilizando >=,<=; el segundo utilizando BETWEEN y el tercero utilizando IN).
*/
--SELECT COUNT(CustomerID) Ordenes FROM Orders WHERE CustomerID BETWEEN 5 AND 10 
--SELECT COUNT(OrderID) Ordenes FROM Orders WHERE CustomerID IN(SELECT CustomerID FROM [Customers] WHERE CustomerID BETWEEN 5 AND 10 ) GROUP BY CustomerID  
SELECT COUNT(CustomerID) Ordenes FROM Orders WHERE CustomerID IN(SELECT TRY_PARSE(CustomerID as int) FROM [Customers] WHERE OrderID >=5 AND OrderID <= 10) GROUP BY CustomerID



--Contar los nombres de productos que inician con la letra C
SELECT COUNT(ProductName) Productos FROM Products WHERE ProductName LIKE 'C%';
