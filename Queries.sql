-- MODIFICAR AGREGAR Y ELIMINAR DATOS
-- AGREGAR UN USUARIO UNA RESERVACION AL ELIMINAR EL USUARIO TAMBIEN SE DEBE DE ELIMINAR SU RESERVACION
-- NOTA: LOS IDS PUEDEN CAMBIAR
INSERT INTO Customers (name, lastName , birthDate, phoneNumber, email)
VALUES
('José Luis', 'Jerónimo', '1992-10-05', '3320258030', 'jose.jeronimo@gmail.com');

INSERT INTO Reservations (date, idCustomer, idTable, idEmployees)
VALUES 
('2023-10-05 20:30:00', 7, 1, 2);

DELETE FROM Customers WHERE idCustomers = 7;
SELECT * FROM Customers;
SELECT * FROM Reservations;


-- MUESTRA LA LISTA DE PRODUCTOS DE LA ORDEN 1
SELECT o.idOrder, p.name, p.price
FROM Orders o
JOIN OrdersProducts op
ON o.idOrder = op.idOrder
JOIN Products p
ON p.idProduct = op.idProduct
WHERE o.idOrder = 2

-- TOTAL DE LA ORDEN 2
SELECT o.idOrder 'Orden No',SUM(p.price) as 'Total', SUM(p.price) * 1.16 as `Total IVA`, 
TRUNCATE((SUM(p.price) * 1.16) * 1.15, 2) as 'Total con Propina'
FROM Orders o
JOIN OrdersProducts op
ON o.idOrder = op.idOrder
JOIN Products p
ON p.idProduct = op.idProduct
WHERE o.idOrder = 2;

-- RESERVACIONES DEL CLIENTE CON NOMBRE GERARDO Y APELLIDO GUTIERREZ
SELECT c.name, c.lastName, r.date, t.idTable, t.places
FROM Reservations r
JOIN Customers c
ON r.idCustomer = c.idCustomers
JOIN Tables t
on r.idTable = t.idTable
WHERE c.name = 'José Luis' AND c.lastName = 'Jerónimo';


-- CUANTAS VECES SE HA PEDIDO LASAGNA
SELECT p.name, COUNT(p.name) as 'Total Lasagna'
FROM Orders o
JOIN OrdersProducts op
ON o.idOrder = op.idOrder
JOIN Products p
ON p.idProduct = op.idProduct
WHERE p.name = 'Lasagna';


-- REPORTE DE CUAL ES EL PLATILLO FAVPRITO POR CLIENTE (SUBCONSULTA)
SELECT Cliente, Platillo, MAX(Total) as 'Comida Favorita' FROM (
    SELECT COUNT(p.name) as Total, p.name as Platillo, c.name as Cliente
    FROM Customers c
    JOIN Orders o
    ON c.idCustomers = o.idCustomers
    JOIN OrdersProducts op
    ON o.idOrder = op.idOrder
    JOIN Products p
    ON p.idProduct = op.idProduct
    WHERE c.name = 'Alejandra' 
    GROUP BY p.name
) resultado;


-- MISMO REPORTE QUE EL ANTERIOR DIFERENTE MANERA
SELECT c.name as 'Cliente', p.name as 'Platillo', COUNT(p.name) as 'Comida Favorita'
FROM Customers c
JOIN Orders o
ON c.idCustomers = o.idCustomers
JOIN OrdersProducts op
ON o.idOrder = op.idOrder
JOIN Products p
ON p.idProduct = op.idProduct
WHERE c.name = 'Alejandra'
GROUP BY p.name
ORDER BY COUNT(p.name) DESC LIMIT 1;


-- Lista de compras por cliente
SELECT c.name as 'Cliente', p.name as 'Platillo', COUNT(p.name) as Total
FROM Customers c
JOIN Orders o
ON c.idCustomers = o.idCustomers
JOIN OrdersProducts op
ON o.idOrder = op.idOrder
JOIN Products p
ON p.idProduct = op.idProduct
WHERE c.name = 'Elizabeth'
GROUP BY p.name;


