-- MODIFICAR AGREGAR Y ELIMINAR DATOS


-- MUESTRA LA LISTA DE PRODUCTOS DE LA ORDEN 1
SELECT o.idOrder, p.name, p.price
FROM Orders o
JOIN OrdersProducts op
ON o.idOrder = op.idOrder
JOIN Products p
ON p.idProduct = op.idProduct
WHERE o.idOrder = 1;

-- TOTAL DE LA ORDEN 2
SELECT SUM(p.price)
FROM Orders o
JOIN OrdersProducts op
ON o.idOrder = op.idOrder
JOIN Products p
ON p.idProduct = op.idProduct
WHERE o.idOrder = 2;

-- RESERVACIONES DEL CLIENTE CON NOMBRE GERARDO Y APELLIDO GUTIERREZ
SELECT c.name, r.date, t.idTable, t.places
FROM Reservations r
JOIN Customers c
ON r.idCustomer = c.idCustomers
JOIN Tables t
on r.idTable = t.idTable
WHERE c.name = 'Gerardo' AND c.lastName = 'Gutierrez';

