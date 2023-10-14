-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Customers`
--

DROP TABLE IF EXISTS `Customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customers` (
  `idCustomers` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `birthDate` date DEFAULT NULL,
  `phoneNumber` varchar(10) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCustomers`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customers`
--

LOCK TABLES `Customers` WRITE;
/*!40000 ALTER TABLE `Customers` DISABLE KEYS */;
INSERT INTO `Customers` VALUES (1,'Gerardo','Gutierrez','1995-11-25','3330661530','gerardo.gutierrez@gmail.com'),(2,'Alejandra','Rodriguez','1995-07-02','3380569023','alejandra.rodriguez@gmail.com'),(3,'Manuel','Gomez','1985-09-17','3325964510','hector.gomez@gmail.com'),(4,'Maritza','Padilla','1962-04-30','3389601452','maritza.padilla@gmail.com'),(5,'Hector','Rocha','1957-09-24','3355896045','hector.rocha@gmail.com'),(6,'Elizabeth','Gomez','1982-01-27','3360352896','elizabeth.gomez@gmail.com'),(8,'José Luis','López','1992-10-05','3320258030','jose.jeronimo@gmail.com');
/*!40000 ALTER TABLE `Customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employees`
--

DROP TABLE IF EXISTS `Employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Employees` (
  `idEmployees` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `birthDate` date DEFAULT NULL,
  `phoneNumber` varchar(10) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `position` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT 'Active',
  PRIMARY KEY (`idEmployees`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employees`
--

LOCK TABLES `Employees` WRITE;
/*!40000 ALTER TABLE `Employees` DISABLE KEYS */;
INSERT INTO `Employees` VALUES (1,'Juan','Vazquez','1992-08-15','3330463530','juan.vazquez@gmail.com','waiter','Active'),(2,'Lorena','Herrera','1990-02-02','3350509023','lorena.herrera@gmail.com','hostess','Active'),(3,'Jose','Gonzalez','1985-09-17','3360134510','jose.gonzalez@gmail.com','chef','Active'),(4,'Pedro','Sanchez','1973-05-10','3389602560','pedro.sanchez@gmail.com','manager','Active'),(5,'Martin','Hernandez','1987-06-25','3357896045','martin.hernandez@gmail.com','waiter','Active'),(6,'Hernan','Marinez','1982-01-27','3360352802','hernan.martinez@gmail.com','waiter','Active');
/*!40000 ALTER TABLE `Employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Orders`
--

DROP TABLE IF EXISTS `Orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Orders` (
  `idOrder` int NOT NULL AUTO_INCREMENT,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(45) DEFAULT 'Open',
  `idTable` int NOT NULL,
  `idCustomers` int NOT NULL,
  `idEmployees` int NOT NULL,
  PRIMARY KEY (`idOrder`),
  KEY `fk_Order_Table1_idx` (`idTable`),
  KEY `fk_Order_Customers1_idx` (`idCustomers`),
  KEY `fk_Order_Employees` (`idEmployees`),
  CONSTRAINT `fk_Order_Customers1` FOREIGN KEY (`idCustomers`) REFERENCES `Customers` (`idCustomers`),
  CONSTRAINT `fk_Order_Employees` FOREIGN KEY (`idEmployees`) REFERENCES `Employees` (`idEmployees`),
  CONSTRAINT `fk_Order_Table1` FOREIGN KEY (`idTable`) REFERENCES `Tables` (`idTable`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Orders`
--

LOCK TABLES `Orders` WRITE;
/*!40000 ALTER TABLE `Orders` DISABLE KEYS */;
INSERT INTO `Orders` VALUES (1,'2023-10-11 05:50:07','Open',1,2,5),(2,'2023-10-11 05:50:07','Open',3,3,6),(3,'2023-10-11 05:50:07','Open',5,1,5),(4,'2023-10-11 05:50:07','Open',6,4,5),(5,'2023-10-11 05:50:07','Open',3,2,5),(6,'2023-10-11 05:50:07','Open',3,2,5),(7,'2023-10-11 05:50:07','Open',3,2,6),(8,'2023-10-11 05:50:07','Open',3,2,5),(9,'2023-10-11 05:50:07','Open',3,2,6),(10,'2023-10-11 05:50:07','Open',2,5,6),(11,'2023-10-11 05:50:07','Open',3,5,5),(12,'2023-10-11 05:50:07','Open',3,5,6),(13,'2023-10-11 05:50:07','Open',2,5,6),(14,'2023-10-11 05:50:07','Open',8,5,6),(15,'2023-10-11 06:26:44','Open',1,6,5),(16,'2023-10-11 06:26:44','Open',3,6,6),(17,'2023-10-11 06:28:42','Open',1,6,5);
/*!40000 ALTER TABLE `Orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrdersProducts`
--

DROP TABLE IF EXISTS `OrdersProducts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OrdersProducts` (
  `idOrder` int NOT NULL,
  `idProduct` int NOT NULL,
  KEY `fk_Order_has_Products_Products1_idx` (`idProduct`),
  KEY `fk_Order_has_Products_Order1_idx` (`idOrder`),
  CONSTRAINT `fk_Order_has_Products_Order1` FOREIGN KEY (`idOrder`) REFERENCES `Orders` (`idOrder`),
  CONSTRAINT `fk_Order_has_Products_Products1` FOREIGN KEY (`idProduct`) REFERENCES `Products` (`idProduct`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrdersProducts`
--

LOCK TABLES `OrdersProducts` WRITE;
/*!40000 ALTER TABLE `OrdersProducts` DISABLE KEYS */;
INSERT INTO `OrdersProducts` VALUES (1,1),(1,4),(1,13),(1,12),(1,1),(1,4),(1,13),(1,12),(2,1),(2,2),(2,3),(2,10),(5,1),(5,10),(6,1),(6,10),(6,9),(7,6),(7,4),(7,2),(8,1),(8,10),(9,1),(9,10),(9,8),(10,2),(10,2),(10,10),(10,4),(10,8),(10,9),(11,1),(11,10),(11,9),(12,6),(12,6),(12,6),(12,9),(13,5),(13,3),(14,4),(14,4),(14,13),(16,8),(16,9),(17,8),(17,8),(17,11),(17,8),(17,8),(17,11),(17,3),(17,3),(17,3),(17,3);
/*!40000 ALTER TABLE `OrdersProducts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Products`
--

DROP TABLE IF EXISTS `Products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Products` (
  `idProduct` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `price` decimal(10,0) NOT NULL,
  PRIMARY KEY (`idProduct`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Products`
--

LOCK TABLES `Products` WRITE;
/*!40000 ALTER TABLE `Products` DISABLE KEYS */;
INSERT INTO `Products` VALUES (1,'Lasagna',184),(2,'Risotto',152),(3,'Pizza',120),(4,'Pasta Carbonara',192),(5,'Carpaccio',220),(6,'Ensalada Capresse',110),(7,'Risotto',152),(8,'Gnocci',180),(9,'Agua mineral',60),(10,'Botella de vino tinto',250),(11,'Botella de vino rosado',200),(12,'Copa de vino tinto',110),(13,'Copa de vino rosado',100);
/*!40000 ALTER TABLE `Products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Reservations`
--

DROP TABLE IF EXISTS `Reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Reservations` (
  `idReservations` int NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `idCustomer` int NOT NULL,
  `idTable` int NOT NULL,
  `idEmployees` int NOT NULL,
  PRIMARY KEY (`idReservations`),
  KEY `fk_Reservations_Customers_idx` (`idCustomer`),
  KEY `fk_Reservations_Table1_idx` (`idTable`),
  KEY `fk_Reservations_Employees1_idx` (`idEmployees`),
  CONSTRAINT `fk_Reservations_Customers` FOREIGN KEY (`idCustomer`) REFERENCES `Customers` (`idCustomers`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Reservations_Employees1` FOREIGN KEY (`idEmployees`) REFERENCES `Employees` (`idEmployees`),
  CONSTRAINT `fk_Reservations_Table1` FOREIGN KEY (`idTable`) REFERENCES `Tables` (`idTable`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reservations`
--

LOCK TABLES `Reservations` WRITE;
/*!40000 ALTER TABLE `Reservations` DISABLE KEYS */;
INSERT INTO `Reservations` VALUES (1,'2023-11-20 20:30:00',1,1,2),(2,'2023-10-15 21:30:00',3,2,2),(3,'2023-10-20 21:30:00',4,3,2),(4,'2023-11-16 22:00:00',5,4,2),(5,'2023-10-17 19:30:00',6,5,2),(6,'2023-10-18 21:30:00',5,6,2),(7,'2023-11-18 20:30:00',3,7,2),(8,'2023-10-20 21:30:00',2,8,2),(9,'2023-11-30 21:00:00',1,4,2);
/*!40000 ALTER TABLE `Reservations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tables`
--

DROP TABLE IF EXISTS `Tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tables` (
  `idTable` int NOT NULL AUTO_INCREMENT,
  `status` varchar(45) NOT NULL DEFAULT 'Free',
  `places` int NOT NULL,
  PRIMARY KEY (`idTable`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tables`
--

LOCK TABLES `Tables` WRITE;
/*!40000 ALTER TABLE `Tables` DISABLE KEYS */;
INSERT INTO `Tables` VALUES (1,'Free',5),(2,'Free',4),(3,'Free',2),(4,'Free',2),(5,'Free',4),(6,'Free',4),(7,'Free',4),(8,'Free',4),(9,'Free',8),(10,'Free',2),(11,'Free',2),(12,'Free',10);
/*!40000 ALTER TABLE `Tables` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-12 21:51:05
