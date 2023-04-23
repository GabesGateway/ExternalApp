-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: gabesgateway
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `useraccount`
--

DROP TABLE IF EXISTS `useraccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `useraccount` (
  `userID` varchar(50) NOT NULL,
  `fName` varchar(50) NOT NULL,
  `lName` varchar(40) NOT NULL,
  `email` varchar(45) NOT NULL,
  `shippingAddress` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL,
  `productID` varchar(45) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useraccount`
--

LOCK TABLES `useraccount` WRITE;
/*!40000 ALTER TABLE `useraccount` DISABLE KEYS */;
INSERT INTO `useraccount` VALUES ('12.865239603512219','Dalia','Delgadillo','delgadillo.d01@mymail.sxu','123456','12345','0'),('148.9463875794545','jjjj','ooooo','gqegih@gmail.com','irhgig','hihi','0'),('16.254825028915914','bob','mcKnight','something@gmail.com','1234 n state','SupGabe','12'),('243.11986122764728','John','O\'Grady','johnathonogrady@gmail.com','1234 S State St','hihi123','0'),('28.210211155360593','John','OG','ogrady.j01@mymail.sxu.edu','987 s stray st','cougs123','0'),('294.603989405731','Gabe','Wity','w....@gmail.com','123456 state','Round2','0'),('9.051369339087776','Dalia','Delgadillo','delgadillo.d01@mymail.sxu','1234567','12345','0'),('dt123','7','Jack Frost','','111 N Kipling St.','','0'),('gh321','8','John Kobe','','435 E Gabe St.','','0'),('kl456','4','Bone Jackson','','890 S Front St.','','0'),('qa789','9','Dame Loop','','716 E Jump St.','','0'),('vn654','1','Pops James','','190 W Go St.','','0');
/*!40000 ALTER TABLE `useraccount` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-22 22:14:30
