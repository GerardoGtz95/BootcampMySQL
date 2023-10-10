INSERT INTO Customers (name, lastName , birthDate, phoneNumber, email)
VALUES
('Gerardo', 'Gutierrez', '1995-11-25', '3330661530', 'gerardo.gutierrez@gmail.com'),
('Alejandra', 'Rodriguez', '1995-07-02', '3380569023', 'alejandra.rodriguez@gmail.com'),
('Manuel', 'Gomez', '1985-09-17', '3325964510', 'hector.gomez@gmail.com'),
('Maritza', 'Padilla', '1962-04-30', '3389601452', 'maritza.padilla@gmail.com'),
('Hector', 'Rocha', '1957-09-24', '3355896045', 'hector.rocha@gmail.com'),
('Elizabeth', 'Gomez', '1982-01-27', '3360352896', 'elizabeth.gomez@gmail.com');

INSERT INTO Employees (name, lastName, birthDate, phoneNumber, email,  position)
VALUES
('Juan', 'Vazquez', '1992-08-15', '3330463530', 'juan.vazquez@gmail.com', 'waiter'),
('Lorena', 'Herrera', '1990-02-02', '3350509023', 'lorena.herrera@gmail.com', 'hostess'),
('Jose', 'Gonzalez', '1985-09-17', '3360134510', 'jose.gonzalez@gmail.com', 'chef'),
('Pedro', 'Sanchez', '1973-05-10', '3389602560', 'pedro.sanchez@gmail.com', 'manager'),
('Martin', 'Hernandez', '1987-06-25', '3357896045', 'martin.hernandez@gmail.com', 'waiter'),
('Hernan', 'Marinez', '1982-01-27', '3360352802', 'hernan.martinez@gmail.com', 'waiter');

INSERT INTO Tables (places)
VALUES 
(5),(4),(2),(2),(4),(4),(4),(4),(8),(2),(2),(10);

INSERT INTO Products (name, price)
VALUES 
('Lasagna', 183.50),
('Risotto', 152.22),
('Pizza', 120.22),
('Pasta Carbonara', 192),
('Carpaccio', 220),
('Ensalada Capresse', 110.25),
('Risotto', 152.22),
('Gnocci', 180.00),
('Agua mineral', 60.00),
('Botella de vino tinto', 250),
('Botella de vino rosado', 200),
('Copa de vino tinto', 110),
('Copa de vino rosado', 100);

INSERT INTO Reservations (date, idCustomer, idTable, idEmployees)
VALUES 
('2023-11-20 20:30:00', 1, 1, 2),
('2023-10-15 21:30:00', 3, 2, 2),
('2023-10-20 21:30:00', 4, 3, 2),
('2023-11-16 22:00:00', 5, 4, 2),
('2023-10-17 19:30:00', 6, 5, 2),
('2023-10-18 21:30:00', 5, 6, 2),
('2023-11-18 20:30:00', 3, 7, 2),
('2023-10-20 21:30:00', 2, 8, 2),
('2023-11-30 21:00:00', 1, 4, 2);

INSERT INTO Orders (idTable, idCustomers, idEmployees)
VALUES 
(1, 2, 5),
(3, 3, 6),
(5, 1, 5),
(6, 4, 5);

INSERT INTO OrdersProducts (idOrder, idProduct)
VALUES (1, 1), (1, 4), (1, 13), (1, 12);

INSERT INTO OrdersProducts (idOrder, idProduct)
VALUES (2, 1), (2, 2), (2, 3), (2, 10);













drop database mydb;
use mydb;




  