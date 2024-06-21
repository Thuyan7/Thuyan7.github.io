-- MySQL dump 10.13  Distrib 8.0.27, for macos11 (x86_64)
--
-- Host: 127.0.0.1    Database: tech
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `laptop`
--

DROP TABLE IF EXISTS `laptop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `laptop` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `image` varchar(150) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laptop`
--

LOCK TABLES `laptop` WRITE;
/*!40000 ALTER TABLE `laptop` DISABLE KEYS */;
INSERT INTO `laptop` VALUES (1,'HP 14s-em0086AU R5 7520U','15.000.000 ₫',2,'D:\\Đồ Án Cơ Sở 1\\Ảnh Java\\hp14s.jpg','RAM 8GB-SSD 512GB'),(3,'Asus Vivobook X1404ZA-NK387W','20.500.000 ₫',3,'D:\\Đồ Án Cơ Sở 1\\Ảnh Java\\vivo.jpg','RAM 8GB-SSD 512GB'),(4,'Acer Aspire 7 Gaming A715-76-57CY','10.800.000 ₫',3,'D:\\Đồ Án Cơ Sở 1\\Ảnh Java\\acer.jpg','RAM 8GB-SSD 512GB'),(5,'Lenovo IdeaPad 1 15ALC7 R5 5500U','17.850.000 ₫',3,'D:\\Đồ Án Cơ Sở 1\\Ảnh Java\\lenovo.jpg','RAM 8GB-SSD 512GB'),(7,'MSI Summit E14 Evo A12M-211VN','23.990.000 ₫',3,'D:\\Đồ Án Cơ Sở 1\\Ảnh Java\\sum.jpg','RAM 8GB-SSD 512GB'),(9,'LG Gram 16Z90R-G.AH76A5 i7','26.460.000 ₫',3,'D:\\Đồ Án Cơ Sở 1\\Ảnh Java\\lg.jpg','RAM 8GB-SSD 512GB'),(18,'Laptop Lenovo IdeaPad 3 14IAH8 i5 12450H','10.000.000 đ',3,'D:\\Đồ Án Cơ Sở 1\\Ảnh Java\\lenovo.jpg','4GB-265GB'),(23,'laptop','5.000.000 ₫',3,'D:Đồ Án Cơ Sở 1Ảnh Javahuawei.jpg','4GB');
/*!40000 ALTER TABLE `laptop` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-21 10:06:26
