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

