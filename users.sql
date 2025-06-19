-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: data
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `First_name` varchar(255) NOT NULL,
  `Last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(50) NOT NULL,
  `delivery_unit` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `isactive` int DEFAULT '0',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Swaroop','Bidkar','swaroop.bidkar@harbingergroup.com','$2b$2b$10$HqZi9j9stkqaKWmoUcwSGe2YTe9O.HEAKqaWMd/khr6ffMk5vG.Yq','Admin','DU1','2025-04-08 05:06:43',1),(63,'Tanuja','Toke','tanuja.toke@harbingergroup.com',NULL,'Admin','DU-1','2025-06-19 19:04:48',1),(64,'Shweta','Kulkarni','shwetap@harbingergroup.com',NULL,'Admin','DU-1','2025-06-19 19:05:20',1),(65,'Umesh','Sodmise','umeshs@harbingergroup.com',NULL,'Delivery Head','DU-1','2025-06-19 19:06:13',1),(66,'Bharati','Satpute','bharti@harbingergroup.com',NULL,'Delivery Head','DU-2','2025-06-19 19:07:06',1),(67,'Parag','Deshpande','parag.deshpande@harbingergroup.com',NULL,'Delivery Head','DU-3','2025-06-19 19:07:49',1),(68,'Dhara','Masani','dhara.masani@harbingergroup.com',NULL,'Delivery Manager','DU-4','2025-06-19 19:09:25',1),(69,'Naina','Gandhe','naina.gandhe@harbingergroup.com',NULL,'Delivery Manager','DU-3','2025-06-19 19:10:05',1),(70,'Prachi','Jamadar','prachi.jamadar@harbingergroup.com',NULL,'Delivery Manager','DU-5','2025-06-19 19:10:54',1),(71,'Vishal','Nerkar','vishaln@harbingergroup.com',NULL,'Delivery Manager','DU-5','2025-06-19 19:11:44',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-20  0:46:18
