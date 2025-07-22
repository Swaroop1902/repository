-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: matrix
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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `account_id` int NOT NULL AUTO_INCREMENT,
  `account_name` varchar(255) DEFAULT NULL,
  `short_name` varchar(100) DEFAULT NULL,
  `alternate_name` varchar(100) DEFAULT NULL,
  `size_id` int DEFAULT NULL,
  `industry_category` varchar(100) DEFAULT NULL,
  `hq_location` varchar(100) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `account_manager` int DEFAULT NULL,
  `account_since` date DEFAULT NULL,
  `present_state_id` int DEFAULT NULL,
  `account_lob_id` int DEFAULT NULL,
  `description` text,
  `project_delivered_by` varchar(100) DEFAULT NULL,
  `customer_segment_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`account_id`),
  KEY `size_id` (`size_id`),
  KEY `present_state_id` (`present_state_id`),
  KEY `account_lob_id` (`account_lob_id`),
  KEY `customer_segment_id` (`customer_segment_id`),
  KEY `account_manager` (`account_manager`),
  CONSTRAINT `account_ibfk_1` FOREIGN KEY (`size_id`) REFERENCES `accountsize` (`size_id`),
  CONSTRAINT `account_ibfk_2` FOREIGN KEY (`present_state_id`) REFERENCES `accountstate` (`state_id`),
  CONSTRAINT `account_ibfk_3` FOREIGN KEY (`account_lob_id`) REFERENCES `accountlob` (`lob_id`),
  CONSTRAINT `account_ibfk_4` FOREIGN KEY (`customer_segment_id`) REFERENCES `customersegment` (`customer_segment_id`),
  CONSTRAINT `account_ibfk_5` FOREIGN KEY (`account_manager`) REFERENCES `neworganizationalrole` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'Tech Solutions Inc.','TSI','Techsol',1,'Information Technology','Mumbai','https://www.techsolutions.com',1,'2025-07-08',1,2,'Leading provider of software development and IT consulting services.','In-house Team',3,'2025-07-08 14:32:11','2025-07-08 14:32:46',NULL,NULL),(8,'Greenfield Ventures','Greenfield','GV',6,'Renewable energy','California','https://www.greenfieldventures.com',2,'2024-01-01',1,10,'none','Partnered Teams',3,'2025-07-08 20:23:34','2025-07-08 20:23:34',NULL,NULL);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accountlob`
--

DROP TABLE IF EXISTS `accountlob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accountlob` (
  `lob_id` int NOT NULL AUTO_INCREMENT,
  `lob_name` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`lob_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accountlob`
--

LOCK TABLES `accountlob` WRITE;
/*!40000 ALTER TABLE `accountlob` DISABLE KEYS */;
INSERT INTO `accountlob` VALUES (1,'Content',1,'2025-06-20 12:32:20','2025-06-20 12:32:20',NULL,NULL),(2,'EdTech',1,'2025-06-20 12:32:20','2025-06-20 12:32:20',NULL,NULL),(3,'Enterprice',1,'2025-06-20 12:32:20','2025-06-20 12:32:20',NULL,NULL),(4,'HealthTech',1,'2025-06-20 12:32:20','2025-06-20 12:32:20',NULL,NULL),(5,'HRTech',1,'2025-06-20 12:32:20','2025-06-20 12:32:20',NULL,NULL),(6,'Learning Tools',1,'2025-06-20 12:32:20','2025-06-20 12:32:20',NULL,NULL),(7,'Pool',1,'2025-06-20 12:32:20','2025-06-20 12:32:20',NULL,NULL),(8,'PEG',1,'2025-06-20 12:32:20','2025-06-20 12:32:20',NULL,NULL),(9,'Others',1,'2025-06-20 12:32:20','2025-06-20 12:32:20',NULL,NULL),(10,'New Industry Vertical',1,'2025-06-20 12:32:20','2025-06-20 12:32:20',NULL,NULL),(11,'HighTech',1,'2025-06-20 12:32:20','2025-06-20 12:32:20',NULL,NULL);
/*!40000 ALTER TABLE `accountlob` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accountsize`
--

DROP TABLE IF EXISTS `accountsize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accountsize` (
  `size_id` int NOT NULL AUTO_INCREMENT,
  `size_description` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`size_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accountsize`
--

LOCK TABLES `accountsize` WRITE;
/*!40000 ALTER TABLE `accountsize` DISABLE KEYS */;
INSERT INTO `accountsize` VALUES (1,'Large ISV',1,'2025-06-20 12:31:53','2025-06-20 12:31:53',NULL,NULL),(2,'Mid-Size ISV',1,'2025-06-20 12:31:53','2025-06-20 12:31:53',NULL,NULL),(3,'Start-up ISV',1,'2025-06-20 12:31:53','2025-06-20 12:31:53',NULL,NULL),(4,'Hardware',1,'2025-06-20 12:31:53','2025-06-20 12:31:53',NULL,NULL),(5,'Large NonISV',1,'2025-06-20 12:31:53','2025-06-20 12:31:53',NULL,NULL),(6,'Mid-Size NonISV',1,'2025-06-20 12:31:53','2025-06-20 12:31:53',NULL,NULL),(7,'Large Infusant NonISV',1,'2025-06-20 12:31:53','2025-06-20 12:31:53',NULL,NULL),(8,'Mid-Size Infusant NonISV',1,'2025-06-20 12:31:53','2025-06-20 12:31:53',NULL,NULL);
/*!40000 ALTER TABLE `accountsize` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accountstate`
--

DROP TABLE IF EXISTS `accountstate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accountstate` (
  `state_id` int NOT NULL AUTO_INCREMENT,
  `state_name` varchar(50) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accountstate`
--

LOCK TABLES `accountstate` WRITE;
/*!40000 ALTER TABLE `accountstate` DISABLE KEYS */;
INSERT INTO `accountstate` VALUES (1,'Active',1,'2025-06-20 12:32:16','2025-06-20 12:32:16',NULL,NULL),(2,'Inactive',1,'2025-06-20 12:32:16','2025-06-20 12:32:16',NULL,NULL);
/*!40000 ALTER TABLE `accountstate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `allocationbillingcategory`
--

DROP TABLE IF EXISTS `allocationbillingcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `allocationbillingcategory` (
  `allocation_billing_category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`allocation_billing_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allocationbillingcategory`
--

LOCK TABLES `allocationbillingcategory` WRITE;
/*!40000 ALTER TABLE `allocationbillingcategory` DISABLE KEYS */;
INSERT INTO `allocationbillingcategory` VALUES (1,'Billable',1,'2025-06-20 12:48:55','2025-06-20 12:48:55',NULL,NULL),(2,'Investment',1,'2025-06-20 12:48:55','2025-06-20 12:48:55',NULL,NULL),(3,'Available',1,'2025-06-20 12:48:55','2025-06-20 12:48:55',NULL,NULL),(4,'Cannot use',1,'2025-06-20 12:48:55','2025-06-20 12:48:55',NULL,NULL);
/*!40000 ALTER TABLE `allocationbillingcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `allocationbillingsubcategory`
--

DROP TABLE IF EXISTS `allocationbillingsubcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `allocationbillingsubcategory` (
  `allocation_billing_subcategory_id` int NOT NULL AUTO_INCREMENT,
  `subcategory_name` varchar(100) NOT NULL,
  `allocation_billing_category_id` int NOT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`allocation_billing_subcategory_id`),
  KEY `allocation_billing_category_id` (`allocation_billing_category_id`),
  CONSTRAINT `allocationbillingsubcategory_ibfk_1` FOREIGN KEY (`allocation_billing_category_id`) REFERENCES `allocationbillingcategory` (`allocation_billing_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allocationbillingsubcategory`
--

LOCK TABLES `allocationbillingsubcategory` WRITE;
/*!40000 ALTER TABLE `allocationbillingsubcategory` DISABLE KEYS */;
INSERT INTO `allocationbillingsubcategory` VALUES (1,'Billable',1,1,'2025-06-20 12:49:02','2025-06-20 12:49:02',NULL,NULL),(2,'Org Level Buffer',2,1,'2025-06-20 12:49:02','2025-06-20 12:49:02',NULL,NULL),(3,'New / Upsell',2,1,'2025-06-20 12:49:02','2025-06-20 12:49:02',NULL,NULL),(4,'Replacement',2,1,'2025-06-20 12:49:02','2025-06-20 12:49:02',NULL,NULL),(5,'Execution Issues',2,1,'2025-06-20 12:49:02','2025-06-20 12:49:02',NULL,NULL),(6,'Strategic',2,1,'2025-06-20 12:49:02','2025-06-20 12:49:02',NULL,NULL),(7,'Transit (less than week)',3,1,'2025-06-20 12:49:02','2025-06-20 12:49:02',NULL,NULL),(8,'Internal project',3,1,'2025-06-20 12:49:02','2025-06-20 12:49:02',NULL,NULL),(9,'Learning',3,1,'2025-06-20 12:49:02','2025-06-20 12:49:02',NULL,NULL),(10,'Reserved for prospect',3,1,'2025-06-20 12:49:02','2025-06-20 12:49:02',NULL,NULL),(11,'Reserved for project',3,1,'2025-06-20 12:49:02','2025-06-20 12:49:02',NULL,NULL),(12,'Non performer',4,1,'2025-06-20 12:49:02','2025-06-20 12:49:02',NULL,NULL),(13,'Resigned',4,1,'2025-06-20 12:49:02','2025-06-20 12:49:02',NULL,NULL),(14,'NonActive',4,1,'2025-06-20 12:49:02','2025-06-20 12:49:02',NULL,NULL),(15,'Overheads',4,1,'2025-06-20 12:49:02','2025-06-20 12:49:02',NULL,NULL);
/*!40000 ALTER TABLE `allocationbillingsubcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billed_status`
--

DROP TABLE IF EXISTS `billed_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billed_status` (
  `billed_status_id` int NOT NULL AUTO_INCREMENT,
  `status_name` varchar(50) NOT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`billed_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billed_status`
--

LOCK TABLES `billed_status` WRITE;
/*!40000 ALTER TABLE `billed_status` DISABLE KEYS */;
INSERT INTO `billed_status` VALUES (1,'Billed',1,'2025-06-28 12:49:24','2025-06-28 12:49:24',NULL,NULL),(2,'Unbilled',1,'2025-06-28 12:49:24','2025-06-28 12:49:24',NULL,NULL),(3,'Pool',1,'2025-06-28 12:49:24','2025-06-28 12:49:24',NULL,NULL),(4,'Non Active',1,'2025-06-28 12:49:24','2025-06-28 12:49:24',NULL,NULL),(5,'Overhead',1,'2025-06-28 12:49:24','2025-06-28 12:49:24',NULL,NULL);
/*!40000 ALTER TABLE `billed_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billingcategory`
--

DROP TABLE IF EXISTS `billingcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billingcategory` (
  `billing_category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`billing_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billingcategory`
--

LOCK TABLES `billingcategory` WRITE;
/*!40000 ALTER TABLE `billingcategory` DISABLE KEYS */;
INSERT INTO `billingcategory` VALUES (1,'Billable',1,'2025-06-20 12:33:15','2025-06-20 12:33:15',NULL,NULL),(2,'Investment',1,'2025-06-20 12:33:15','2025-06-20 12:33:15',NULL,NULL);
/*!40000 ALTER TABLE `billingcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billingmodel`
--

DROP TABLE IF EXISTS `billingmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billingmodel` (
  `billing_model_id` int NOT NULL AUTO_INCREMENT,
  `billing_model` varchar(50) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`billing_model_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billingmodel`
--

LOCK TABLES `billingmodel` WRITE;
/*!40000 ALTER TABLE `billingmodel` DISABLE KEYS */;
INSERT INTO `billingmodel` VALUES (1,'T&M',1,'2025-06-20 12:32:42','2025-06-20 12:32:42',NULL,NULL),(2,'Fixed Bid',1,'2025-06-20 12:32:42','2025-06-20 12:32:42',NULL,NULL),(3,'Hybrid',1,'2025-06-20 12:32:42','2025-06-20 12:32:42',NULL,NULL);
/*!40000 ALTER TABLE `billingmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billingstatenextproject`
--

DROP TABLE IF EXISTS `billingstatenextproject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billingstatenextproject` (
  `billing_state_next_project_id` int NOT NULL AUTO_INCREMENT,
  `state_name` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`billing_state_next_project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billingstatenextproject`
--

LOCK TABLES `billingstatenextproject` WRITE;
/*!40000 ALTER TABLE `billingstatenextproject` DISABLE KEYS */;
INSERT INTO `billingstatenextproject` VALUES (1,'Billable',1,'2025-06-20 15:17:12','2025-06-20 15:17:12',NULL,NULL),(2,'Buffer - Available',1,'2025-06-20 15:17:12','2025-06-20 16:05:42',NULL,NULL),(3,'Buffer - Project execution issues',1,'2025-06-20 16:10:37','2025-06-20 16:10:37',NULL,NULL),(4,'Buffer - Project billing issues',1,'2025-06-20 16:10:57','2025-06-20 16:10:57',NULL,NULL),(5,'Buffer - 10% quota\'',1,'2025-06-20 16:11:26','2025-06-20 16:11:26',NULL,NULL),(6,'Buffer - For project benefit',1,'2025-06-20 16:11:26','2025-06-20 16:11:26',NULL,NULL),(7,'Buffer - For organization benefit',1,'2025-06-20 16:11:56','2025-06-20 16:11:56',NULL,NULL),(8,'Buffer - Underperformer',1,'2025-06-20 16:11:56','2025-06-20 16:11:56',NULL,NULL),(9,'Buffer - On paid leave',1,'2025-06-20 16:12:26','2025-06-20 16:12:26',NULL,NULL),(10,'Buffer - On unpaid leave',1,'2025-06-20 16:12:26','2025-06-20 16:12:26',NULL,NULL);
/*!40000 ALTER TABLE `billingstatenextproject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `business_type`
--

DROP TABLE IF EXISTS `business_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `business_type` (
  `business_type_id` int NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) NOT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`business_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_type`
--

LOCK TABLES `business_type` WRITE;
/*!40000 ALTER TABLE `business_type` DISABLE KEYS */;
INSERT INTO `business_type` VALUES (1,'NA',1,'2025-06-24 19:22:47','2025-06-24 19:22:47',NULL,NULL),(2,'ISV',1,'2025-06-24 19:22:47','2025-06-24 19:22:47',NULL,NULL),(3,'Adobe',1,'2025-06-24 19:22:47','2025-06-24 19:22:47',NULL,NULL),(4,'eLearning partner',1,'2025-06-24 19:22:47','2025-06-24 19:22:47',NULL,NULL),(5,'Enterprise',1,'2025-06-24 19:22:47','2025-06-24 19:22:47',NULL,NULL),(6,'Corporate University',1,'2025-06-24 19:22:47','2025-06-24 19:22:47',NULL,NULL);
/*!40000 ALTER TABLE `business_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `contact_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `account_id` int DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `work_location` varchar(100) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `important_notes` text,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`contact_id`),
  KEY `account_id` (`account_id`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (208,'Sayali Khedkar',1,'CEO','sayali.khedkar@TechSolution.in','Mumbai','-','none','2025-07-08 20:32:27','2025-07-08 20:32:27',NULL,NULL),(209,'Rachel Geller',8,'CTO','rachel.geller@greenfield.in','california','-','none','2025-07-08 20:33:45','2025-07-08 20:33:45',NULL,NULL),(210,'Jane Geller',8,'VP','jane.geller@greenfield.in','california','-','none','2025-07-08 20:36:26','2025-07-08 20:36:26',NULL,NULL),(211,'Ravi Kumar',1,'Vice president','ravi.kumar@techsolutions.in','mumbai','-','none','2025-07-08 20:37:40','2025-07-08 20:37:40',NULL,NULL);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customersegment`
--

DROP TABLE IF EXISTS `customersegment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customersegment` (
  `customer_segment_id` int NOT NULL AUTO_INCREMENT,
  `segment_name` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`customer_segment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customersegment`
--

LOCK TABLES `customersegment` WRITE;
/*!40000 ALTER TABLE `customersegment` DISABLE KEYS */;
INSERT INTO `customersegment` VALUES (1,'Bulk Development',1,'2025-06-20 12:33:15','2025-06-20 12:33:15',NULL,NULL),(2,'New Feature Development',1,'2025-06-20 12:33:15','2025-06-20 12:33:15',NULL,NULL),(3,'New Technology',1,'2025-06-20 12:33:15','2025-06-20 12:33:15',NULL,NULL),(4,'Consulting',1,'2025-06-20 12:33:15','2025-06-20 12:33:15',NULL,NULL),(5,'Premium Staffing',1,'2025-06-20 12:33:15','2025-06-20 12:33:15',NULL,NULL),(6,'Support',1,'2025-06-20 12:33:15','2025-06-20 12:33:15',NULL,NULL);
/*!40000 ALTER TABLE `customersegment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `designation`
--

DROP TABLE IF EXISTS `designation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `designation` (
  `designation_id` int NOT NULL AUTO_INCREMENT,
  `designation_name` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `designation_group_id` int DEFAULT NULL,
  PRIMARY KEY (`designation_id`),
  KEY `designation_fk_group` (`designation_group_id`),
  CONSTRAINT `designation_fk_group` FOREIGN KEY (`designation_group_id`) REFERENCES `designation_group` (`designation_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `designation`
--

LOCK TABLES `designation` WRITE;
/*!40000 ALTER TABLE `designation` DISABLE KEYS */;
INSERT INTO `designation` VALUES (1,'Business Analyst',1,'2025-06-20 12:48:18','2025-06-24 21:55:43',NULL,NULL,1),(2,'Senior Business Analyst',1,'2025-06-20 12:48:18','2025-06-24 21:55:43',NULL,NULL,1),(3,'Architect',1,'2025-06-20 12:48:18','2025-06-24 21:55:43',NULL,NULL,2),(4,'Associate Architect',1,'2025-06-20 12:48:18','2025-06-24 21:55:43',NULL,NULL,2),(5,'Associate Architect - User Experience',1,'2025-06-20 12:48:18','2025-06-24 21:55:43',NULL,NULL,2),(6,'Senior Software Architect',1,'2025-06-20 12:48:18','2025-06-24 21:55:43',NULL,NULL,2),(7,'Consultant',1,'2025-06-20 12:48:18','2025-06-24 21:58:01',NULL,NULL,3),(8,'Consultant -Associate Architect',1,'2025-06-20 12:48:18','2025-06-24 21:58:01',NULL,NULL,3),(9,'Software Engineer',1,'2025-06-20 12:48:18','2025-06-24 21:58:01',NULL,NULL,4),(10,'Software Engineer - Professional Services',1,'2025-06-20 12:48:18','2025-06-24 21:58:01',NULL,NULL,4),(11,'Software Test Engineer',1,'2025-06-20 12:48:18','2025-06-24 21:58:01',NULL,NULL,4),(12,'Professional Services Lead',1,'2025-06-20 12:48:18','2025-06-24 22:03:04',NULL,NULL,5),(13,'Senior Design Lead',1,'2025-06-20 12:48:18','2025-06-24 22:03:04',NULL,NULL,5),(14,'Senior UI Development Lead',1,'2025-06-20 12:48:18','2025-06-24 22:03:04',NULL,NULL,5),(15,'Product Owner',1,'2025-06-20 12:48:18','2025-06-24 22:03:04',NULL,NULL,6),(16,'Sr. Tech Specialist',1,'2025-06-20 12:48:18','2025-06-24 22:03:04',NULL,NULL,6),(17,'Associate Project Manager',1,'2025-06-20 12:48:18','2025-06-24 22:03:04',NULL,NULL,7),(18,'Associate Technical Project Manager',1,'2025-06-20 12:48:18','2025-06-24 22:03:04',NULL,NULL,7),(19,'Project Manager',1,'2025-06-20 12:48:18','2025-06-24 22:03:04',NULL,NULL,7),(20,'Technical Manager',1,'2025-06-24 22:03:04','2025-06-24 22:03:04',NULL,NULL,7),(21,'Technical Project Manager',1,'2025-06-24 22:03:04','2025-06-24 22:03:04',NULL,NULL,7),(22,'VP Strategy and Business Development',1,'2025-06-24 22:03:58','2025-06-24 22:03:58',NULL,NULL,8),(23,'Senior Project Lead',1,'2025-06-24 22:03:58','2025-06-24 22:03:58',NULL,NULL,9),(24,'Associate QA Lead',1,'2025-06-24 22:13:00','2025-06-24 22:13:00',NULL,NULL,10),(25,'Associate QA Specialist',1,'2025-06-24 22:15:39','2025-06-24 22:15:39',NULL,NULL,10),(26,'QA Lead',1,'2025-06-24 22:15:39','2025-06-24 22:15:39',NULL,NULL,10),(27,'QA Specialist',1,'2025-06-24 22:15:39','2025-06-24 22:15:39',NULL,NULL,10),(28,'Senior QA Lead',1,'2025-06-24 22:15:39','2025-06-24 22:15:39',NULL,NULL,10),(29,'Senior Software Engineer',1,'2025-06-24 22:17:07','2025-06-24 22:17:07',NULL,NULL,11),(30,'Senior Software Engineer - Professional Services',1,'2025-06-24 22:17:07','2025-06-24 22:17:07',NULL,NULL,11),(31,'Senior Software Test Engineer',1,'2025-06-24 22:17:07','2025-06-24 22:17:07',NULL,NULL,11),(32,'Senior User Experience Designer',1,'2025-06-24 22:17:07','2025-06-24 22:17:07',NULL,NULL,11),(33,'Senior User Interface Designer',1,'2025-06-24 22:17:07','2025-06-24 22:17:07',NULL,NULL,11),(34,'Senior User Interface Developer',1,'2025-06-24 22:17:07','2025-06-24 22:17:07',NULL,NULL,11),(35,'Associate Tech Lead',1,'2025-06-24 22:18:06','2025-06-24 22:18:06',NULL,NULL,12),(36,'Senior Tech Lead',1,'2025-06-24 22:18:06','2025-06-24 22:18:06',NULL,NULL,12),(37,'Tech Lead',1,'2025-06-24 22:18:06','2025-06-24 22:18:06',NULL,NULL,12),(38,'Associate Tech Specialist',1,'2025-06-24 22:19:38','2025-06-24 22:19:38',NULL,NULL,13),(39,'Associate Tech Specialist - Professional Services',1,'2025-06-24 22:19:38','2025-06-24 22:19:38',NULL,NULL,13),(40,'Senior QA Specialist',1,'2025-06-24 22:19:38','2025-06-24 22:19:38',NULL,NULL,13),(41,'Tech Specialist',1,'2025-06-24 22:19:38','2025-06-24 22:19:38',NULL,NULL,13),(42,'Senior Technical Project Manager',1,'2025-06-24 22:20:05','2025-06-24 22:20:05',NULL,NULL,14),(43,'Trainee',1,'2025-06-24 22:20:32','2025-06-24 22:20:32',NULL,NULL,15),(44,'Associate UI Development Lead',1,'2025-06-24 22:21:23','2025-06-24 22:21:23',NULL,NULL,16),(45,'Design lead',1,'2025-06-24 22:21:23','2025-06-24 22:21:23',NULL,NULL,16),(46,'Senior Designer',1,'2025-06-24 22:21:23','2025-06-24 22:21:23',NULL,NULL,16),(47,'UI Development Lead',1,'2025-06-24 22:21:23','2025-06-24 22:21:23',NULL,NULL,16);
/*!40000 ALTER TABLE `designation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `designation_group`
--

DROP TABLE IF EXISTS `designation_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `designation_group` (
  `designation_group_id` int NOT NULL AUTO_INCREMENT,
  `group_name` varchar(100) NOT NULL,
  `is_active` tinyint DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`designation_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `designation_group`
--

LOCK TABLES `designation_group` WRITE;
/*!40000 ALTER TABLE `designation_group` DISABLE KEYS */;
INSERT INTO `designation_group` VALUES (1,'Analyst',1,'2025-06-24 20:56:14','2025-06-24 20:56:14',NULL,NULL),(2,'Architect',1,'2025-06-24 20:56:14','2025-06-24 20:56:14',NULL,NULL),(3,'Consultant',1,'2025-06-24 20:56:14','2025-06-24 20:56:14',NULL,NULL),(4,'Engineer',1,'2025-06-24 20:56:14','2025-06-24 20:56:14',NULL,NULL),(5,'Lead',1,'2025-06-24 20:56:14','2025-06-24 20:56:14',NULL,NULL),(6,'Learning Management System',1,'2025-06-24 20:56:14','2025-06-24 20:56:14',NULL,NULL),(7,'Manager',1,'2025-06-24 20:56:14','2025-06-24 20:56:14',NULL,NULL),(8,'Overheads',1,'2025-06-24 20:56:14','2025-06-24 20:56:14',NULL,NULL),(9,'Project Lead',1,'2025-06-24 20:56:14','2025-06-24 20:56:14',NULL,NULL),(10,'QA Lead',1,'2025-06-24 20:56:14','2025-06-24 20:56:14',NULL,NULL),(11,'Senior Engineer',1,'2025-06-24 20:56:14','2025-06-24 20:56:14',NULL,NULL),(12,'Tech Lead',1,'2025-06-24 20:56:14','2025-06-24 20:56:14',NULL,NULL),(13,'Tech Specialist',1,'2025-06-24 20:56:14','2025-06-24 20:56:14',NULL,NULL),(14,'Technical Project Manager',1,'2025-06-24 20:56:14','2025-06-24 20:56:14',NULL,NULL),(15,'Trainee',1,'2025-06-24 20:56:14','2025-06-24 20:56:14',NULL,NULL),(16,'UI/UX Lead',1,'2025-06-24 20:56:14','2025-06-24 20:56:14',NULL,NULL);
/*!40000 ALTER TABLE `designation_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dh`
--

DROP TABLE IF EXISTS `dh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dh` (
  `dh_id` int NOT NULL AUTO_INCREMENT,
  `dh_name` varchar(100) DEFAULT NULL,
  `du_id` int NOT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `emp_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`dh_id`),
  KEY `fk_dm_du` (`du_id`),
  KEY `idx_emp_id` (`emp_id`),
  CONSTRAINT `fk_dh_emp_id` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`),
  CONSTRAINT `fk_dm_du` FOREIGN KEY (`du_id`) REFERENCES `du` (`du_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dh`
--

LOCK TABLES `dh` WRITE;
/*!40000 ALTER TABLE `dh` DISABLE KEYS */;
INSERT INTO `dh` VALUES (1,'Ravi Sharma',1,1,'2025-06-25 14:19:20','2025-07-16 14:42:20',NULL,NULL,'1'),(2,'Anita Mehra',2,1,'2025-06-25 14:19:20','2025-07-16 14:42:20',NULL,NULL,'2'),(3,'Kunal Kapoor',3,1,'2025-06-25 14:19:20','2025-07-16 14:42:20',NULL,NULL,'3'),(4,'Sneha Iyer',4,1,'2025-06-25 14:19:20','2025-07-16 14:42:20',NULL,NULL,'4'),(5,'Aditya Rao',5,1,'2025-06-25 14:19:20','2025-06-25 14:19:20',NULL,NULL,NULL),(6,'Meera Nair',6,1,'2025-06-25 14:19:20','2025-06-25 14:19:20',NULL,NULL,NULL),(7,'Vikram Desai',7,1,'2025-06-25 14:19:20','2025-06-25 14:19:20',NULL,NULL,NULL),(8,'Neha Joshi',8,1,'2025-06-25 14:19:20','2025-06-25 14:19:20',NULL,NULL,NULL),(9,'Amit Khanna',9,1,'2025-06-25 14:19:20','2025-06-25 14:19:20',NULL,NULL,NULL),(10,'Divya Sethi',10,1,'2025-06-25 14:19:20','2025-06-25 14:19:20',NULL,NULL,NULL),(11,'Rajeev Menon',11,1,'2025-06-25 14:19:20','2025-06-25 14:19:20',NULL,NULL,NULL),(12,'Tanya Bhatia',12,1,'2025-06-25 14:19:20','2025-06-25 14:19:20',NULL,NULL,NULL);
/*!40000 ALTER TABLE `dh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domain`
--

DROP TABLE IF EXISTS `domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `domain` (
  `domain_id` int NOT NULL AUTO_INCREMENT,
  `domain_name` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`domain_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domain`
--

LOCK TABLES `domain` WRITE;
/*!40000 ALTER TABLE `domain` DISABLE KEYS */;
INSERT INTO `domain` VALUES (1,'HRTech',1,'2025-06-20 12:32:25','2025-06-20 12:32:25',NULL,NULL),(2,'FinTech',1,'2025-06-20 12:32:25','2025-06-20 12:32:25',NULL,NULL),(3,'InsurTech',1,'2025-06-20 12:32:25','2025-06-20 12:32:25',NULL,NULL),(4,'HealthTech',1,'2025-06-20 12:32:25','2025-06-20 12:32:25',NULL,NULL),(5,'Publishing',1,'2025-06-20 12:32:25','2025-06-20 12:32:25',NULL,NULL),(6,'DevOps',1,'2025-06-20 12:32:25','2025-06-20 12:32:25',NULL,NULL),(7,'Other',1,'2025-06-20 12:32:25','2025-06-20 12:32:25',NULL,NULL);
/*!40000 ALTER TABLE `domain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `du`
--

DROP TABLE IF EXISTS `du`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `du` (
  `du_id` int NOT NULL AUTO_INCREMENT,
  `du_name` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`du_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `du`
--

LOCK TABLES `du` WRITE;
/*!40000 ALTER TABLE `du` DISABLE KEYS */;
INSERT INTO `du` VALUES (1,'Consulting Biz Group',1,'2025-06-20 12:32:32','2025-06-20 12:32:32',NULL,NULL),(2,'DPU',1,'2025-06-20 12:32:32','2025-06-20 12:32:32',NULL,NULL),(3,'DU1',1,'2025-06-20 12:32:32','2025-06-20 12:32:32',NULL,NULL),(4,'DU2',1,'2025-06-20 12:32:32','2025-06-20 12:32:32',NULL,NULL),(5,'DU3',1,'2025-06-20 12:32:32','2025-06-20 12:32:32',NULL,NULL),(6,'DU4',1,'2025-06-20 12:32:32','2025-06-20 12:32:32',NULL,NULL),(7,'DU5',1,'2025-06-20 12:32:32','2025-06-20 12:32:32',NULL,NULL),(8,'DU6',1,'2025-06-20 12:32:32','2025-06-20 12:32:32',NULL,NULL),(9,'HSPL Consultant',1,'2025-06-20 12:32:32','2025-06-20 12:32:32',NULL,NULL),(10,'Products',1,'2025-06-20 12:32:32','2025-06-20 12:32:32',NULL,NULL),(11,'Sales & Account Management',1,'2025-06-20 12:32:32','2025-06-20 12:32:32',NULL,NULL),(12,'Workforce Pool',1,'2025-06-20 12:32:32','2025-06-20 12:32:32',NULL,NULL);
/*!40000 ALTER TABLE `du` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `du_dh_map`
--

DROP TABLE IF EXISTS `du_dh_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `du_dh_map` (
  `id` int NOT NULL AUTO_INCREMENT,
  `du_id` int NOT NULL,
  `dh_login_id` int NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `du_id` (`du_id`),
  KEY `du_dh_map_ibfk_2` (`dh_login_id`),
  CONSTRAINT `du_dh_map_ibfk_1` FOREIGN KEY (`du_id`) REFERENCES `du` (`du_id`) ON DELETE CASCADE,
  CONSTRAINT `du_dh_map_ibfk_2` FOREIGN KEY (`dh_login_id`) REFERENCES `login` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `du_dh_map`
--

LOCK TABLES `du_dh_map` WRITE;
/*!40000 ALTER TABLE `du_dh_map` DISABLE KEYS */;
INSERT INTO `du_dh_map` VALUES (1,3,4,'2025-07-18 16:34:07'),(2,4,5,'2025-07-18 16:34:07'),(3,5,1,'2025-07-18 16:34:07'),(4,6,6,'2025-07-18 16:34:07'),(5,6,2,'2025-07-18 16:34:07'),(6,7,8,'2025-07-18 16:34:07'),(7,7,2,'2025-07-18 16:34:07'),(8,2,7,'2025-07-18 16:34:07'),(9,1,3,'2025-07-18 16:34:07');
/*!40000 ALTER TABLE `du_dh_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `du_gdh_map`
--

DROP TABLE IF EXISTS `du_gdh_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `du_gdh_map` (
  `id` int NOT NULL AUTO_INCREMENT,
  `du_id` int NOT NULL,
  `gdh_login_id` int NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `du_id` (`du_id`),
  KEY `du_gdh_map_ibfk_2` (`gdh_login_id`),
  CONSTRAINT `du_gdh_map_ibfk_1` FOREIGN KEY (`du_id`) REFERENCES `du` (`du_id`) ON DELETE CASCADE,
  CONSTRAINT `du_gdh_map_ibfk_2` FOREIGN KEY (`gdh_login_id`) REFERENCES `login` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `du_gdh_map`
--

LOCK TABLES `du_gdh_map` WRITE;
/*!40000 ALTER TABLE `du_gdh_map` DISABLE KEYS */;
INSERT INTO `du_gdh_map` VALUES (1,3,1,'2025-07-18 16:34:07'),(2,4,1,'2025-07-18 16:34:07'),(3,5,1,'2025-07-18 16:34:07'),(4,6,2,'2025-07-18 16:34:07'),(5,7,2,'2025-07-18 16:34:07'),(6,2,3,'2025-07-18 16:34:07'),(7,1,3,'2025-07-18 16:34:07');
/*!40000 ALTER TABLE `du_gdh_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `emp_id` varchar(50) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `emp_mail` varchar(255) DEFAULT NULL,
  `designation_id` int DEFAULT NULL,
  `reporting_manager` varchar(50) DEFAULT NULL,
  `skill_cluster` varchar(100) DEFAULT NULL,
  `total_experience` decimal(4,2) DEFAULT NULL,
  `new_org_role_id` int DEFAULT NULL,
  `comments` text,
  `employment_status_id` int DEFAULT NULL,
  `offshore_onsite` varchar(50) DEFAULT NULL,
  `date_of_joining` date DEFAULT NULL,
  `resigned_flag` tinyint(1) DEFAULT NULL,
  `resignation_revoked_flag` tinyint(1) DEFAULT NULL,
  `IsDMDHPM` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `staffing_model_id` int DEFAULT NULL,
  `designation_group_id` int DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  `resignation_date` date DEFAULT NULL,
  `resignation_reason` text,
  `last_working_day` date DEFAULT NULL,
  `primary_tech_stack_id` int DEFAULT NULL,
  `secondary_tech_stack_id` int DEFAULT NULL,
  `skill_competency_group_id` int DEFAULT NULL,
  `fullstack_skillset_id` int DEFAULT NULL,
  `fullstack_desig_group_id` int DEFAULT NULL,
  `fullstack` varchar(255) DEFAULT NULL,
  `skill_proficiency_status_id` int DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `designation_id` (`designation_id`),
  KEY `new_org_role_id` (`new_org_role_id`),
  KEY `employment_status_id` (`employment_status_id`),
  KEY `staffing_model_id` (`staffing_model_id`),
  KEY `designation_group_id` (`designation_group_id`),
  KEY `role_id` (`role_id`),
  KEY `idx_primary_tech_stack_id` (`primary_tech_stack_id`),
  KEY `idx_secondary_tech_stack_id` (`secondary_tech_stack_id`),
  KEY `idx_skill_competency_group_id` (`skill_competency_group_id`),
  KEY `idx_fullstack_skillset_id` (`fullstack_skillset_id`),
  KEY `idx_fullstack_desig_group_id` (`fullstack_desig_group_id`),
  KEY `idx_skill_proficiency_status_id` (`skill_proficiency_status_id`),
  CONSTRAINT `employee_fk_designation_group` FOREIGN KEY (`designation_group_id`) REFERENCES `designation_group` (`designation_group_id`),
  CONSTRAINT `employee_fk_role` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`),
  CONSTRAINT `employee_fk_staffing_model` FOREIGN KEY (`staffing_model_id`) REFERENCES `staffing_model` (`staffing_model_id`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`designation_id`) REFERENCES `designation` (`designation_id`),
  CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`new_org_role_id`) REFERENCES `neworganizationalrole` (`role_id`),
  CONSTRAINT `employee_ibfk_3` FOREIGN KEY (`employment_status_id`) REFERENCES `employmentstatus` (`employment_status_id`),
  CONSTRAINT `fk_fullstack_desig_group` FOREIGN KEY (`fullstack_desig_group_id`) REFERENCES `fullstack_designation_group` (`fs_desig_group_id`),
  CONSTRAINT `fk_fullstack_skillset` FOREIGN KEY (`fullstack_skillset_id`) REFERENCES `fullstack_skillset` (`skillset_id`),
  CONSTRAINT `fk_primary_tech_stack` FOREIGN KEY (`primary_tech_stack_id`) REFERENCES `primary_tech_stack` (`primary_tech_stack_id`),
  CONSTRAINT `fk_secondary_tech_stack` FOREIGN KEY (`secondary_tech_stack_id`) REFERENCES `secondary_tech_stack` (`secondary_tech_stack_id`),
  CONSTRAINT `fk_skill_competency_group` FOREIGN KEY (`skill_competency_group_id`) REFERENCES `skill_competency_group` (`group_id`),
  CONSTRAINT `fk_skill_proficiency_status` FOREIGN KEY (`skill_proficiency_status_id`) REFERENCES `skill_proficiency_status` (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('1','Theresa','Chalil','theresa.chalil@harbingergroup.com',2,'1','Frontend',6.00,1,'no comment',2,'Offshore','2025-01-06',0,0,'1','2025-07-08 14:28:22','2025-07-15 12:35:27',NULL,NULL,2,1,2,NULL,NULL,NULL,3,4,2,1,2,'yes',2),('2','Sharman','Joshi','sharman.joshi@harbingergroup.com',36,'1','Backend',3.00,3,'no comments',3,'Onsite','2020-01-08',1,0,'0','2025-07-08 14:55:45','2025-07-11 14:11:14',NULL,NULL,NULL,12,14,'2025-08-01','Other opportunity','2025-09-01',12,11,4,6,3,'no',1),('3','Vicky','Raghuwanshi','vicky.raghuwanshi@harbingergroup.com',4,'2','Fullstack',9.00,13,'No comments',5,'Onsite','2025-07-31',0,0,'0','2025-07-08 19:52:21','2025-07-11 14:11:14',NULL,NULL,NULL,2,13,NULL,NULL,NULL,4,3,2,2,1,'yes',1),('4','Dharmendra','Gulati','dharmendra.gulati@harbingergroup.com',26,'3','Backend',5.00,12,'no comments',8,'Onsite','2025-07-09',0,0,'0','2025-07-08 20:01:45','2025-07-09 15:53:52',NULL,NULL,NULL,10,7,NULL,NULL,NULL,36,23,16,6,8,'yes',2),('5','Bhushan','Kumar','bhushan.kumar@harbingergroup.com',47,'4','UI',7.00,16,NULL,3,'Offshore','2025-01-01',0,0,'0','2025-07-11 14:09:12','2025-07-11 14:09:12',64,61,NULL,16,8,NULL,NULL,NULL,64,61,20,21,9,'no',2);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employmentstatus`
--

DROP TABLE IF EXISTS `employmentstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employmentstatus` (
  `employment_status_id` int NOT NULL AUTO_INCREMENT,
  `status_name` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`employment_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employmentstatus`
--

LOCK TABLES `employmentstatus` WRITE;
/*!40000 ALTER TABLE `employmentstatus` DISABLE KEYS */;
INSERT INTO `employmentstatus` VALUES (1,'Payroll',1,'2025-06-20 12:33:01','2025-06-20 12:33:01',NULL,NULL),(2,'Payroll - On notice',1,'2025-06-20 12:33:01','2025-06-20 12:33:01',NULL,NULL),(3,'Contract',1,'2025-06-20 12:33:01','2025-06-20 12:33:01',NULL,NULL),(4,'Contract - On notice',1,'2025-06-20 12:33:01','2025-06-20 12:33:01',NULL,NULL),(5,'Third Party Contract',1,'2025-06-20 12:33:01','2025-06-20 12:33:01',NULL,NULL),(6,'Third Party Contract - On notice',1,'2025-06-20 12:33:01','2025-06-20 12:33:01',NULL,NULL),(7,'Loaned',1,'2025-06-20 12:33:01','2025-06-20 12:33:01',NULL,NULL),(8,'New Hire',1,'2025-06-20 12:33:01','2025-06-20 12:33:01',NULL,NULL),(9,'Exited',1,'2025-06-20 12:33:01','2025-06-20 12:33:01',NULL,NULL);
/*!40000 ALTER TABLE `employmentstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ept`
--

DROP TABLE IF EXISTS `ept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ept` (
  `feedback_id` int NOT NULL AUTO_INCREMENT,
  `employee_name` varchar(100) NOT NULL,
  `current_project` varchar(100) DEFAULT NULL,
  `current_relieving_date` date DEFAULT NULL,
  `current_start_date` date DEFAULT NULL,
  `current_project_manager` varchar(100) DEFAULT NULL,
  `new_project` varchar(100) DEFAULT NULL,
  `new_project_manager` varchar(100) DEFAULT NULL,
  `new_start_date` date DEFAULT NULL,
  `new_end_date` date DEFAULT NULL,
  `role` text,
  `performance` enum('Top 5%','Top 20%','Solid 70%','Rest 5%') DEFAULT NULL,
  `aspirations` text,
  `concerns` text,
  `strengths` text,
  `weaknesses` text,
  `specific_concerns` text,
  `performance_ratings` json DEFAULT NULL,
  `software_uninstall` json DEFAULT NULL,
  `planned_leaves` json DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`feedback_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ept`
--

LOCK TABLES `ept` WRITE;
/*!40000 ALTER TABLE `ept` DISABLE KEYS */;
INSERT INTO `ept` VALUES (1,'Dharmendra Gulati','NextGen Analytics Platform','2025-07-12','2025-07-05','Sharman Joshi','AI learning hub','Theresa Chalil','2025-07-18','2025-07-30','good very good','Top 20%','','','','','','null','[{\"remarks\": \"\", \"software\": \"node \"}]','[{\"reason\": \"\", \"endDate\": \"\", \"duration\": \"\", \"startDate\": \"\"}]','2025-07-15 12:13:18','2025-07-15 12:13:18');
/*!40000 ALTER TABLE `ept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fullstack_designation_group`
--

DROP TABLE IF EXISTS `fullstack_designation_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fullstack_designation_group` (
  `fs_desig_group_id` int NOT NULL AUTO_INCREMENT,
  `group_name` varchar(100) NOT NULL,
  `is_active` tinyint DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`fs_desig_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fullstack_designation_group`
--

LOCK TABLES `fullstack_designation_group` WRITE;
/*!40000 ALTER TABLE `fullstack_designation_group` DISABLE KEYS */;
INSERT INTO `fullstack_designation_group` VALUES (1,'Architect',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(2,'Dev Lead',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(3,'Engineer',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(4,'Support Lead',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(5,'Not Applicable',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(6,'PM-PO',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(7,'PM-SM/BA',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(8,'Tech PM',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(9,'UX-UI Lead',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL);
/*!40000 ALTER TABLE `fullstack_designation_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fullstack_skillset`
--

DROP TABLE IF EXISTS `fullstack_skillset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fullstack_skillset` (
  `skillset_id` int NOT NULL AUTO_INCREMENT,
  `skillset_name` varchar(100) NOT NULL,
  `is_active` tinyint DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`skillset_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fullstack_skillset`
--

LOCK TABLES `fullstack_skillset` WRITE;
/*!40000 ALTER TABLE `fullstack_skillset` DISABLE KEYS */;
INSERT INTO `fullstack_skillset` VALUES (1,'Across',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(2,'AI',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(3,'ATG',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(4,'Automation QA',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(5,'Data',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(6,'DevOps',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(7,'Infra/SRE',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(8,'Java',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(9,'MEAN',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(10,'MERN',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(11,'MERVN',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(12,'MEVN',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(13,'Microsoft .Net',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(14,'Mobile',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(15,'Not Applicable',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(16,'PHP-Moodle',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(17,'PM + SM/BA',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(18,'Python',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(19,'ROR',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(20,'ROR+ReactJs',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(21,'UX-UI',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL);
/*!40000 ALTER TABLE `fullstack_skillset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `harbinger_bu`
--

DROP TABLE IF EXISTS `harbinger_bu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `harbinger_bu` (
  `harbinger_bu_id` int NOT NULL AUTO_INCREMENT,
  `bu_name` varchar(100) NOT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`harbinger_bu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `harbinger_bu`
--

LOCK TABLES `harbinger_bu` WRITE;
/*!40000 ALTER TABLE `harbinger_bu` DISABLE KEYS */;
INSERT INTO `harbinger_bu` VALUES (1,'Core',1,'2025-06-24 19:20:30','2025-06-24 19:20:30',NULL,NULL),(2,'Products',1,'2025-06-24 19:20:30','2025-06-24 19:20:30',NULL,NULL),(3,'Digital Publishers (DP)',1,'2025-06-24 19:20:30','2025-06-24 19:20:30',NULL,NULL);
/*!40000 ALTER TABLE `harbinger_bu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `role_id` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `fk_login_role_id` (`role_id`),
  CONSTRAINT `fk_login_role_id` FOREIGN KEY (`role_id`) REFERENCES `matrix_roles` (`matrix_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'shwetap@example.com','1234','Shweta Kulkarni','2025-07-18 10:47:01',1,NULL,'2025-07-21 19:11:47',1),(2,'jaidev.bhatia@example.com','1234','Jaidev Bhatia','2025-07-18 10:47:01',1,NULL,'2025-07-21 19:14:03',1),(3,'poonam@example.com','1234','Poonam Jaypuriya','2025-07-18 10:47:01',3,NULL,'2025-07-21 17:59:22',1),(4,'bharti@example.com','1234','Bharti Satpute','2025-07-18 10:52:23',4,NULL,'2025-07-21 17:59:22',1),(5,'parag.deshpande@example.com','1234','Parag Deshpande','2025-07-18 10:52:23',4,NULL,'2025-07-21 17:59:22',1),(6,'jayashree.shidhye@example.com','1234','Jayashree Shidhaye','2025-07-18 10:52:23',4,NULL,'2025-07-21 17:59:22',1),(7,'deepashree.kulkarni@example.com','1234','Deepashri Kulkarni','2025-07-18 10:52:23',4,NULL,'2025-07-21 17:59:22',1),(8,'deepali.tharkude@example.com','1234','Deepali Tharkude','2025-07-18 10:52:23',4,NULL,'2025-07-21 17:57:22',0),(9,'swa@example.com','1234','Swaroop','2025-07-18 10:52:23',5,NULL,'2025-07-21 17:34:45',0),(10,'s@example.com','1234','Shreyansh','2025-07-18 10:52:23',1,NULL,'2025-07-21 17:34:43',0),(11,'theresa.chalil@harbingergroup.com',NULL,'Theresa Chalil','2025-07-21 15:48:12',5,NULL,'2025-07-21 17:34:33',0),(12,'sharman.joshi@harbingergroup.com',NULL,'Sharman Joshi','2025-07-21 19:12:36',5,NULL,'2025-07-21 19:12:43',1);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `market`
--

DROP TABLE IF EXISTS `market`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `market` (
  `market_id` int NOT NULL AUTO_INCREMENT,
  `market_name` varchar(100) NOT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`market_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `market`
--

LOCK TABLES `market` WRITE;
/*!40000 ALTER TABLE `market` DISABLE KEYS */;
INSERT INTO `market` VALUES (1,'NA',1,'2025-06-24 19:22:47','2025-06-24 19:22:47',NULL,NULL),(2,'New - Freshers - India',1,'2025-06-24 19:22:47','2025-06-24 19:22:47',NULL,NULL),(3,'Learning Tools',1,'2025-06-24 19:22:47','2025-06-24 19:22:47',NULL,NULL),(4,'HCM',1,'2025-06-24 19:22:47','2025-06-24 19:22:47',NULL,NULL),(5,'Platform Partner',1,'2025-06-24 19:22:47','2025-06-24 19:22:47',NULL,NULL),(6,'Enterprise',1,'2025-06-24 19:22:47','2025-06-24 19:22:47',NULL,NULL),(7,'High Tech',1,'2025-06-24 19:22:47','2025-06-24 19:22:47',NULL,NULL),(8,'Catalog',1,'2025-06-24 19:22:47','2025-06-24 19:22:47',NULL,NULL),(9,'Association',1,'2025-06-24 19:22:47','2025-06-24 19:22:47',NULL,NULL);
/*!40000 ALTER TABLE `market` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matrix_roles`
--

DROP TABLE IF EXISTS `matrix_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matrix_roles` (
  `matrix_role_id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) NOT NULL,
  `role_description` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`matrix_role_id`),
  UNIQUE KEY `role_name` (`role_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matrix_roles`
--

LOCK TABLES `matrix_roles` WRITE;
/*!40000 ALTER TABLE `matrix_roles` DISABLE KEYS */;
INSERT INTO `matrix_roles` VALUES (1,'Admin',NULL,'2025-07-07 11:56:51','2025-07-07 11:56:51'),(2,'SuperAdmin',NULL,'2025-07-07 11:56:51','2025-07-16 09:44:55'),(3,'GDH',NULL,'2025-07-07 11:56:51','2025-07-16 09:45:16'),(4,'Delhivery Head',NULL,'2025-07-07 11:56:51','2025-07-07 11:56:51'),(5,'Delhivery Manager',NULL,'2025-07-07 11:56:51','2025-07-07 11:56:51');
/*!40000 ALTER TABLE `matrix_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `neworganizationalrole`
--

DROP TABLE IF EXISTS `neworganizationalrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `neworganizationalrole` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `neworganizationalrole`
--

LOCK TABLES `neworganizationalrole` WRITE;
/*!40000 ALTER TABLE `neworganizationalrole` DISABLE KEYS */;
INSERT INTO `neworganizationalrole` VALUES (1,'Council Management',1,'2025-06-20 12:33:15','2025-06-20 12:33:15',NULL,NULL),(2,'Project Management',1,'2025-06-20 12:33:15','2025-06-20 12:33:15',NULL,NULL),(3,'Engineering',1,'2025-06-20 12:33:15','2025-06-20 12:33:15',NULL,NULL),(4,'Sales and Account Management',1,'2025-06-20 12:33:15','2025-06-20 12:33:15',NULL,NULL),(5,'Marketing',1,'2025-06-20 12:33:15','2025-06-20 12:33:15',NULL,NULL),(6,'Business Unit Management',1,'2025-06-20 12:33:15','2025-06-20 12:33:15',NULL,NULL),(7,'COE',1,'2025-06-20 12:33:15','2025-06-20 12:33:15',NULL,NULL),(8,'CoE Head',1,'2025-06-20 12:33:15','2025-06-20 12:33:15',NULL,NULL),(9,'CoE - HR Tech',1,'2025-06-20 12:33:15','2025-06-20 12:33:15',NULL,NULL),(10,'CoE - Health Tech',1,'2025-06-20 12:33:15','2025-06-20 12:33:15',NULL,NULL),(11,'CoE - Edu Content',1,'2025-06-20 12:33:15','2025-06-20 12:33:15',NULL,NULL),(12,'CoE - Design',1,'2025-06-20 12:33:15','2025-06-20 12:33:15',NULL,NULL),(13,'CoE - AI & Data',1,'2025-06-20 12:33:15','2025-06-20 12:33:15',NULL,NULL),(14,'Delivery Overheads - Group DH',1,'2025-06-20 12:33:15','2025-06-20 12:33:15',NULL,NULL),(15,'Delivery Overheads - DH',1,'2025-06-20 12:33:15','2025-06-20 12:33:15',NULL,NULL),(16,'Delivery Overheads - DM',1,'2025-06-20 12:33:15','2025-06-20 12:33:15',NULL,NULL),(17,'Delivery Overheads - EE',1,'2025-06-20 12:33:15','2025-06-20 12:33:15',NULL,NULL),(18,'Delivery Overheads - RM',1,'2025-06-20 12:33:15','2025-06-20 12:33:15',NULL,NULL),(19,'Special Function - Proposals',1,'2025-06-20 12:33:15','2025-06-20 12:33:15',NULL,NULL),(20,'Special Function - Capability Devp',1,'2025-06-20 12:33:15','2025-06-20 12:33:15',NULL,NULL),(21,'Special Function - Sales Devp',1,'2025-06-20 12:33:15','2025-06-20 12:33:15',NULL,NULL),(22,'Special Function - ATG',1,'2025-06-20 12:33:15','2025-06-20 12:33:15',NULL,NULL),(23,'Special Function - Others',1,'2025-06-20 12:33:15','2025-06-20 12:33:15',NULL,NULL);
/*!40000 ALTER TABLE `neworganizationalrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pprstatus`
--

DROP TABLE IF EXISTS `pprstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pprstatus` (
  `status_id` int NOT NULL AUTO_INCREMENT,
  `status_name` varchar(50) NOT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pprstatus`
--

LOCK TABLES `pprstatus` WRITE;
/*!40000 ALTER TABLE `pprstatus` DISABLE KEYS */;
INSERT INTO `pprstatus` VALUES (1,'Open',1,'2025-06-20 12:33:25','2025-06-20 12:33:25',NULL,NULL),(2,'In Progress',1,'2025-06-20 12:33:25','2025-06-20 12:33:25',NULL,NULL),(3,'Fulfilled',1,'2025-06-20 12:33:25','2025-06-20 12:33:25',NULL,NULL),(4,'On Hold',1,'2025-06-20 12:33:25','2025-06-20 12:33:25',NULL,NULL),(5,'Cancelled',1,'2025-06-20 12:33:25','2025-06-20 12:33:25',NULL,NULL);
/*!40000 ALTER TABLE `pprstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `primary_tech_stack`
--

DROP TABLE IF EXISTS `primary_tech_stack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `primary_tech_stack` (
  `primary_tech_stack_id` int NOT NULL AUTO_INCREMENT,
  `primary_tech_stack_name` varchar(100) NOT NULL,
  `is_active` tinyint DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`primary_tech_stack_id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `primary_tech_stack`
--

LOCK TABLES `primary_tech_stack` WRITE;
/*!40000 ALTER TABLE `primary_tech_stack` DISABLE KEYS */;
INSERT INTO `primary_tech_stack` VALUES (1,'Across technologies',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(2,'Automation Testing',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(3,'AI',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(4,'AI-ML',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(5,'Data Science',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(6,'Data',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(7,'Data, Power BI',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(8,'Database',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(9,'DBA',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(10,'SSRS',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(11,'AWS & Azure DevOps',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(12,'AWS Devops',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(13,'Azure DevOps',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(14,'Azure Infrastructure & Security',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(15,'Infrastructure',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(16,'Java',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(17,'LogiAnalytics',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(18,'Workato',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(19,'.Net Core',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(20,'.Net Core, ReactJs',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(21,'.Net MVC',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(22,'Professional Services',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(23,'Android',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(24,'iOS',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(25,'React Native',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(26,'Programmer',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(27,'WorkDay',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(28,'IOMAD',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(29,'Moodle',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(30,'PHP',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(31,'PHP, Moodle',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(32,'Wordpress',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(33,'Product Manager',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(34,'Delivery Management',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(35,'Project Mgmt',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(36,'QA Manager',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(37,'Python',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(38,'ATG',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(39,'Automation Testing',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(40,'Functional Testing',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(41,'Performance Testing',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(42,'SDET',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(43,'Angular',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(44,'Angular 12+',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(45,'Angular 16',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(46,'Angular12',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(47,'Angular12+',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(48,'Angular16',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(49,'Angular17',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(50,'Angular8+',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(51,'AngularJS',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(52,'JavaScript',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(53,'MERN',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(54,'NodeJs',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(55,'React.JS',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(56,'ReactJs',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(57,'ReactJs, VueJS, JS, Angular',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(58,'ROR',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(59,'Scrum Master',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(60,'BA',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(61,'HTML+CSS',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(62,'UI Design',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(63,'UX',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(64,'UX & UI Design',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(65,'UX & UI Design & HTML+CSS',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL);
/*!40000 ALTER TABLE `primary_tech_stack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `priority`
--

DROP TABLE IF EXISTS `priority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `priority` (
  `priority_id` int NOT NULL AUTO_INCREMENT,
  `priority_name` varchar(50) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`priority_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `priority`
--

LOCK TABLES `priority` WRITE;
/*!40000 ALTER TABLE `priority` DISABLE KEYS */;
INSERT INTO `priority` VALUES (1,'Low',1,'2025-06-20 12:33:15','2025-06-20 12:33:15',NULL,NULL),(2,'Medium',1,'2025-06-20 12:33:15','2025-06-20 12:33:15',NULL,NULL),(3,'High',1,'2025-06-20 12:33:15','2025-06-20 12:33:15',NULL,NULL),(4,'None',1,'2025-06-20 12:33:15','2025-06-20 12:33:15',NULL,NULL);
/*!40000 ALTER TABLE `priority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project` (
  `project_id` int NOT NULL AUTO_INCREMENT,
  `project_code` varchar(100) DEFAULT NULL,
  `account_id` int DEFAULT NULL,
  `project_name` varchar(255) DEFAULT NULL,
  `product_description` text,
  `service_offered` varchar(255) DEFAULT NULL,
  `solution_description` text,
  `integration_platform` varchar(100) DEFAULT NULL,
  `product_website` varchar(255) DEFAULT NULL,
  `primary_contact_id` int DEFAULT NULL,
  `du_id` int DEFAULT NULL,
  `project_manager` varchar(50) DEFAULT NULL,
  `domain_id` int DEFAULT NULL,
  `dm` varchar(25) DEFAULT NULL,
  `project_location_id` int DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `planned_end_date` date DEFAULT NULL,
  `sow_efforts_proposal` varchar(100) DEFAULT NULL,
  `sow_efforts_delivery` varchar(100) DEFAULT NULL,
  `billing_model_id` int DEFAULT NULL,
  `project_size_id` int DEFAULT NULL,
  `project_type_id` int DEFAULT NULL,
  `state_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `harbinger_bu_id` int DEFAULT NULL,
  `market_id` int DEFAULT NULL,
  `business_type_id` int DEFAULT NULL,
  `service_type_id` int DEFAULT NULL,
  `staffing_model_id` int DEFAULT NULL,
  PRIMARY KEY (`project_id`),
  KEY `account_id` (`account_id`),
  KEY `primary_contact_id` (`primary_contact_id`),
  KEY `du_id` (`du_id`),
  KEY `domain_id` (`domain_id`),
  KEY `project_location_id` (`project_location_id`),
  KEY `billing_model_id` (`billing_model_id`),
  KEY `project_size_id` (`project_size_id`),
  KEY `project_type_id` (`project_type_id`),
  KEY `state_id` (`state_id`),
  KEY `harbinger_bu_id` (`harbinger_bu_id`),
  KEY `market_id` (`market_id`),
  KEY `business_type_id` (`business_type_id`),
  KEY `service_type_id` (`service_type_id`),
  KEY `staffing_model_id` (`staffing_model_id`),
  KEY `project_ibfk_dm` (`dm`),
  CONSTRAINT `project_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`),
  CONSTRAINT `project_ibfk_10` FOREIGN KEY (`harbinger_bu_id`) REFERENCES `harbinger_bu` (`harbinger_bu_id`),
  CONSTRAINT `project_ibfk_11` FOREIGN KEY (`market_id`) REFERENCES `market` (`market_id`),
  CONSTRAINT `project_ibfk_12` FOREIGN KEY (`business_type_id`) REFERENCES `business_type` (`business_type_id`),
  CONSTRAINT `project_ibfk_13` FOREIGN KEY (`service_type_id`) REFERENCES `service_type` (`service_type_id`),
  CONSTRAINT `project_ibfk_14` FOREIGN KEY (`staffing_model_id`) REFERENCES `staffing_model` (`staffing_model_id`),
  CONSTRAINT `project_ibfk_2` FOREIGN KEY (`primary_contact_id`) REFERENCES `customer` (`contact_id`),
  CONSTRAINT `project_ibfk_3` FOREIGN KEY (`du_id`) REFERENCES `du` (`du_id`),
  CONSTRAINT `project_ibfk_4` FOREIGN KEY (`domain_id`) REFERENCES `domain` (`domain_id`),
  CONSTRAINT `project_ibfk_5` FOREIGN KEY (`project_location_id`) REFERENCES `projectlocation` (`project_location_id`),
  CONSTRAINT `project_ibfk_6` FOREIGN KEY (`billing_model_id`) REFERENCES `billingmodel` (`billing_model_id`),
  CONSTRAINT `project_ibfk_7` FOREIGN KEY (`project_size_id`) REFERENCES `projectsize` (`project_size_id`),
  CONSTRAINT `project_ibfk_8` FOREIGN KEY (`project_type_id`) REFERENCES `projecttype` (`project_type_id`),
  CONSTRAINT `project_ibfk_9` FOREIGN KEY (`state_id`) REFERENCES `projectstate` (`state_id`),
  CONSTRAINT `project_ibfk_dm` FOREIGN KEY (`dm`) REFERENCES `employee` (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (7,'1',1,'NextGen Analytics Platform','This is a tech based innovative data analysis project ','Data Analytics and BI Reporting','Data analysis through machine learning algorithms','AWS','https://www.techsolution.com',211,3,'3',7,'2',1,'2025-07-08','2025-08-21','2025-08-27','23','21',2,3,1,2,'2025-07-08 20:50:54','2025-07-15 11:52:07',NULL,NULL,1,6,5,1,2),(8,'2',8,'AI learning hub','Development of an AI-driven learning hub platform that adapts educational content based on learner behavior and performance.','AI-based Personalized Learning Solutions','Custom AI modules integrated with adaptive learning algorithms and data analytics dashboards.','Microsoft Teams, Google Classroom','https://www.greenfieldlearninghub.com',209,4,'2',7,'1',5,'2025-07-01','2025-11-01','2025-12-08','75','68',3,2,1,2,'2025-07-08 20:58:57','2025-07-08 20:58:57',NULL,NULL,2,7,4,3,1),(9,'2321',8,'ABC Development','project description for abc development ','Technical Accumulation','solution description','AWS','www.accdev.com',209,10,'2',1,'1',5,'2025-07-18','2025-09-18','2025-09-18','89','85',2,3,1,1,'2025-07-14 12:57:31','2025-07-14 12:57:31',NULL,NULL,2,6,6,2,1);
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectallocation`
--

DROP TABLE IF EXISTS `projectallocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projectallocation` (
  `allocation_id` int NOT NULL AUTO_INCREMENT,
  `emp_id` varchar(50) DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  `allocation_billing_category` int DEFAULT NULL,
  `allocation_billing_subCategory` int DEFAULT NULL,
  `pm_dm_comments` text,
  `rm_comments` text,
  `involvement` decimal(5,2) DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `project_category_id` int DEFAULT NULL,
  `training_skills` text,
  `suppress_notification` tinyint(1) DEFAULT NULL,
  `allocated_till` date DEFAULT NULL,
  `productivity_reason` text,
  `billing_state_next_project_id` int DEFAULT NULL,
  `next_project_id` int DEFAULT NULL,
  `productivity` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `billed_status_id` int DEFAULT NULL,
  `useful_buffer` tinyint(1) DEFAULT NULL COMMENT '0 = No, 1 = Yes',
  `will_be_billable` date DEFAULT NULL,
  `useful_buffer_2` tinyint(1) DEFAULT NULL COMMENT '0 = No, 1 = Yes',
  `reserved_for_project_date` date DEFAULT NULL,
  `replacement_of` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`allocation_id`),
  KEY `project_id` (`project_id`),
  KEY `role_id` (`role_id`),
  KEY `allocation_billing_category` (`allocation_billing_category`),
  KEY `allocation_billing_subCategory` (`allocation_billing_subCategory`),
  KEY `project_category_id` (`project_category_id`),
  KEY `billing_state_next_project_id` (`billing_state_next_project_id`),
  KEY `next_project_id` (`next_project_id`),
  KEY `emp_id` (`emp_id`),
  KEY `projectallocation_ibfk_9` (`billed_status_id`),
  CONSTRAINT `projectallocation_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`project_id`),
  CONSTRAINT `projectallocation_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `neworganizationalrole` (`role_id`),
  CONSTRAINT `projectallocation_ibfk_3` FOREIGN KEY (`allocation_billing_category`) REFERENCES `allocationbillingcategory` (`allocation_billing_category_id`),
  CONSTRAINT `projectallocation_ibfk_4` FOREIGN KEY (`allocation_billing_subCategory`) REFERENCES `allocationbillingsubcategory` (`allocation_billing_subcategory_id`),
  CONSTRAINT `projectallocation_ibfk_5` FOREIGN KEY (`project_category_id`) REFERENCES `projectcategory` (`project_category_id`),
  CONSTRAINT `projectallocation_ibfk_6` FOREIGN KEY (`billing_state_next_project_id`) REFERENCES `billingstatenextproject` (`billing_state_next_project_id`),
  CONSTRAINT `projectallocation_ibfk_7` FOREIGN KEY (`next_project_id`) REFERENCES `project` (`project_id`),
  CONSTRAINT `projectallocation_ibfk_8` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`),
  CONSTRAINT `projectallocation_ibfk_9` FOREIGN KEY (`billed_status_id`) REFERENCES `billed_status` (`billed_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectallocation`
--

LOCK TABLES `projectallocation` WRITE;
/*!40000 ALTER TABLE `projectallocation` DISABLE KEYS */;
INSERT INTO `projectallocation` VALUES (2,'2',8,3,1,1,'none','none',0.50,'2025-07-13','2025-08-13',1,'-',1,'2025-08-13','none',1,7,'100','2025-07-11 14:29:11','2025-07-14 15:34:18',NULL,NULL,1,1,'2025-07-08',1,'2025-07-08',NULL),(3,'5',8,3,4,14,'-','-',0.50,'2025-07-14','2025-08-14',3,'-',1,'2025-08-14','-',9,8,'-','2025-07-14 11:28:56','2025-07-16 16:47:38',NULL,NULL,4,1,'2025-07-14',1,'2025-07-14',NULL),(4,'3',7,12,4,15,'-','-',0.50,'2025-07-15','2025-08-15',2,'-',1,'2025-08-15','-',2,8,'-','2025-07-14 11:53:07','2025-07-14 11:53:07',NULL,NULL,5,0,'2025-08-07',1,'2025-07-24',NULL),(5,'1',9,3,1,1,'-','-',0.50,'2025-07-16','2025-08-16',2,'-',1,'2025-08-15','-',1,7,'-','2025-07-16 11:09:10','2025-07-16 11:09:10',NULL,NULL,1,1,'2025-07-17',1,'2025-07-24',NULL),(6,'3',9,12,2,4,'-','-',0.25,'2025-07-16','2025-08-21',2,'-',1,'2025-08-21','-',5,8,'-','2025-07-16 11:35:43','2025-07-16 11:35:43',NULL,NULL,2,1,'2025-08-06',1,'2025-07-29',NULL);
/*!40000 ALTER TABLE `projectallocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectcategory`
--

DROP TABLE IF EXISTS `projectcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projectcategory` (
  `project_category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`project_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectcategory`
--

LOCK TABLES `projectcategory` WRITE;
/*!40000 ALTER TABLE `projectcategory` DISABLE KEYS */;
INSERT INTO `projectcategory` VALUES (1,'Project NB',1,'2025-06-20 15:09:53','2025-06-20 16:02:22',NULL,NULL),(2,'Workforce Pool - CapDev Pool',1,'2025-06-20 15:09:53','2025-06-20 16:02:22',NULL,NULL),(3,'Sales and Account Management - Proposal',1,'2025-06-20 16:02:22','2025-06-20 16:02:22',NULL,NULL);
/*!40000 ALTER TABLE `projectcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectlocation`
--

DROP TABLE IF EXISTS `projectlocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projectlocation` (
  `project_location_id` int NOT NULL AUTO_INCREMENT,
  `location_name` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`project_location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectlocation`
--

LOCK TABLES `projectlocation` WRITE;
/*!40000 ALTER TABLE `projectlocation` DISABLE KEYS */;
INSERT INTO `projectlocation` VALUES (1,'Global Port',1,'2025-06-20 12:32:38','2025-06-20 12:32:38',NULL,NULL),(2,'Global Port First Floor',1,'2025-06-20 12:32:38','2025-06-20 12:32:38',NULL,NULL),(3,'Global Port Second Floor',1,'2025-06-20 12:32:38','2025-06-20 12:32:38',NULL,NULL),(4,'Microsoft Redmond',1,'2025-06-20 12:32:38','2025-06-20 12:32:38',NULL,NULL),(5,'SEZ',1,'2025-06-20 12:32:38','2025-06-20 12:32:38',NULL,NULL),(6,'SEZ Unit 1',1,'2025-06-20 12:32:38','2025-06-20 12:32:38',NULL,NULL),(7,'SEZ Unit 2',1,'2025-06-20 12:32:38','2025-06-20 12:32:38',NULL,NULL);
/*!40000 ALTER TABLE `projectlocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectpeoplerequest`
--

DROP TABLE IF EXISTS `projectpeoplerequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projectpeoplerequest` (
  `ppr_id` int NOT NULL AUTO_INCREMENT,
  `primary_skill_id` int DEFAULT NULL,
  `secondary_skill` int DEFAULT NULL,
  `designation_id` int DEFAULT NULL,
  `num_people` decimal(3,2) DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  `prospect_name` varchar(100) DEFAULT NULL,
  `reason_id` int DEFAULT NULL,
  `skill_details` text,
  `billing_category_id` int DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `duration` varchar(50) DEFAULT NULL COMMENT 'Duration with unit (e.g., "4 months", "2 weeks")',
  `duration_months` int DEFAULT NULL COMMENT 'Duration in months',
  `replacement_emp` text COMMENT 'Replacement employee name/details (free text)',
  `internal_external` varchar(20) DEFAULT NULL COMMENT 'Internal or External',
  `jr_number` varchar(100) DEFAULT NULL COMMENT 'JR Number for external candidates',
  `client_interview` tinyint(1) DEFAULT NULL COMMENT 'Boolean: 1=Yes, 0=No',
  `du_id` int DEFAULT NULL,
  `project_type_id` int DEFAULT NULL,
  `billable_start_date` date DEFAULT NULL COMMENT 'Required if billing category is billable',
  `closed_date` date DEFAULT NULL,
  `process_time_requested_to_closed` int DEFAULT NULL COMMENT 'Process time in days from requested to closed',
  `process_time_start_to_close` int DEFAULT NULL COMMENT 'Process time in days from start to close',
  `dh_dm_pm_comments` text,
  `priority_id` int DEFAULT NULL,
  `requested_date` date DEFAULT NULL,
  `additional_growth` tinyint(1) DEFAULT NULL COMMENT 'Boolean: 1=Yes, 0=No',
  `status_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`ppr_id`),
  KEY `designation_id` (`designation_id`),
  KEY `project_id` (`project_id`),
  KEY `billing_category_id` (`billing_category_id`),
  KEY `priority_id` (`priority_id`),
  KEY `reason_id` (`reason_id`),
  KEY `status_id` (`status_id`),
  KEY `idx_ppr_du` (`du_id`),
  KEY `idx_ppr_project_type` (`project_type_id`),
  KEY `idx_ppr_requested_date` (`requested_date`),
  KEY `idx_ppr_closed_date` (`closed_date`),
  KEY `projectpeoplerequest_ibfk_1_idx` (`primary_skill_id`),
  KEY `projectpeoplerequest_ibfk_2_idx` (`secondary_skill`),
  CONSTRAINT `fk_ppr_du` FOREIGN KEY (`du_id`) REFERENCES `du` (`du_id`),
  CONSTRAINT `fk_ppr_project_type` FOREIGN KEY (`project_type_id`) REFERENCES `projecttype` (`project_type_id`),
  CONSTRAINT `projectpeoplerequest_ibfk_1` FOREIGN KEY (`primary_skill_id`) REFERENCES `primary_tech_stack` (`primary_tech_stack_id`),
  CONSTRAINT `projectpeoplerequest_ibfk_2` FOREIGN KEY (`secondary_skill`) REFERENCES `secondary_tech_stack` (`secondary_tech_stack_id`),
  CONSTRAINT `projectpeoplerequest_ibfk_3` FOREIGN KEY (`designation_id`) REFERENCES `designation` (`designation_id`),
  CONSTRAINT `projectpeoplerequest_ibfk_4` FOREIGN KEY (`project_id`) REFERENCES `project` (`project_id`),
  CONSTRAINT `projectpeoplerequest_ibfk_5` FOREIGN KEY (`billing_category_id`) REFERENCES `billingcategory` (`billing_category_id`),
  CONSTRAINT `projectpeoplerequest_ibfk_6` FOREIGN KEY (`priority_id`) REFERENCES `priority` (`priority_id`),
  CONSTRAINT `projectpeoplerequest_ibfk_7` FOREIGN KEY (`reason_id`) REFERENCES `reason` (`reason_id`),
  CONSTRAINT `projectpeoplerequest_ibfk_8` FOREIGN KEY (`status_id`) REFERENCES `pprstatus` (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectpeoplerequest`
--

LOCK TABLES `projectpeoplerequest` WRITE;
/*!40000 ALTER TABLE `projectpeoplerequest` DISABLE KEYS */;
INSERT INTO `projectpeoplerequest` VALUES (1,26,15,6,0.50,7,NULL,2,'none',2,'2025-07-10','4 months',NULL,NULL,'external','12321',1,3,1,NULL,'2025-07-09',2,2,'none',3,'2025-07-08',1,4,'2025-07-08 21:10:14','2025-07-09 14:10:11',1,1);
/*!40000 ALTER TABLE `projectpeoplerequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectsize`
--

DROP TABLE IF EXISTS `projectsize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projectsize` (
  `project_size_id` int NOT NULL AUTO_INCREMENT,
  `size` varchar(50) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`project_size_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectsize`
--

LOCK TABLES `projectsize` WRITE;
/*!40000 ALTER TABLE `projectsize` DISABLE KEYS */;
INSERT INTO `projectsize` VALUES (1,'Small',1,'2025-06-20 12:32:46','2025-06-20 12:32:46',NULL,NULL),(2,'Medium',1,'2025-06-20 12:32:46','2025-06-20 12:32:46',NULL,NULL),(3,'Large',1,'2025-06-20 12:32:46','2025-06-20 12:32:46',NULL,NULL);
/*!40000 ALTER TABLE `projectsize` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectstate`
--

DROP TABLE IF EXISTS `projectstate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projectstate` (
  `state_id` int NOT NULL AUTO_INCREMENT,
  `state_name` varchar(50) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectstate`
--

LOCK TABLES `projectstate` WRITE;
/*!40000 ALTER TABLE `projectstate` DISABLE KEYS */;
INSERT INTO `projectstate` VALUES (1,'Active',1,'2025-06-20 12:32:55','2025-06-20 12:32:55',NULL,NULL),(2,'Acceptance',1,'2025-06-20 12:32:55','2025-06-20 12:32:55',NULL,NULL),(3,'Signed off',1,'2025-06-20 12:32:55','2025-06-20 12:32:55',NULL,NULL),(4,'Archived',1,'2025-06-20 12:32:55','2025-06-20 12:32:55',NULL,NULL);
/*!40000 ALTER TABLE `projectstate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projecttype`
--

DROP TABLE IF EXISTS `projecttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projecttype` (
  `project_type_id` int NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`project_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projecttype`
--

LOCK TABLES `projecttype` WRITE;
/*!40000 ALTER TABLE `projecttype` DISABLE KEYS */;
INSERT INTO `projecttype` VALUES (1,'Customer project',1,'2025-06-20 12:32:50','2025-06-20 12:32:50',NULL,NULL),(2,'Internal project',1,'2025-06-20 12:32:50','2025-06-20 12:32:50',NULL,NULL);
/*!40000 ALTER TABLE `projecttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reason`
--

DROP TABLE IF EXISTS `reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reason` (
  `reason_id` int NOT NULL AUTO_INCREMENT,
  `reason_name` varchar(50) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`reason_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reason`
--

LOCK TABLES `reason` WRITE;
/*!40000 ALTER TABLE `reason` DISABLE KEYS */;
INSERT INTO `reason` VALUES (1,'Execution Issues',1,'2025-06-20 12:48:43','2025-06-20 12:48:43',NULL,NULL),(2,'New',1,'2025-06-20 12:48:43','2025-06-20 12:48:43',NULL,NULL),(3,'Proposal',1,'2025-06-20 12:48:43','2025-06-20 12:48:43',NULL,NULL),(4,'Replacement',1,'2025-06-20 12:48:43','2025-06-20 12:48:43',NULL,NULL),(5,'Upsell',1,'2025-06-20 12:48:43','2025-06-20 12:48:43',NULL,NULL),(6,'PEG',1,'2025-06-20 12:48:43','2025-06-20 12:48:43',NULL,NULL),(7,'Inflight audit',1,'2025-06-20 12:48:43','2025-06-20 12:48:43',NULL,NULL);
/*!40000 ALTER TABLE `reason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) NOT NULL,
  `is_active` tinyint DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Software Engineer',1,'2025-06-24 20:50:30','2025-06-24 20:50:30',NULL,NULL),(2,'Sr. Software Engineer',1,'2025-06-24 20:50:30','2025-06-24 20:50:30',NULL,NULL),(3,'QA Engineer',1,'2025-06-24 20:50:30','2025-06-24 20:50:30',NULL,NULL),(4,'Trainee',1,'2025-06-24 20:50:30','2025-06-24 20:50:30',NULL,NULL),(5,'Architect',1,'2025-06-24 20:50:30','2025-06-24 20:50:30',NULL,NULL),(6,'Associate Tech Lead',1,'2025-06-24 20:50:30','2025-06-24 20:50:30',NULL,NULL),(7,'Sr. QA Engineer',1,'2025-06-24 20:50:30','2025-06-24 20:50:30',NULL,NULL),(8,'Sr. UX Lead',1,'2025-06-24 20:50:30','2025-06-24 20:50:30',NULL,NULL),(9,'Project Manager',1,'2025-06-24 20:50:30','2025-06-24 20:50:30',NULL,NULL),(10,'Sr. Business Analyst',1,'2025-06-24 20:50:30','2025-06-24 20:50:30',NULL,NULL),(11,'Associate QA Lead',1,'2025-06-24 20:50:30','2025-06-24 20:50:30',NULL,NULL),(12,'Consultant',1,'2025-06-24 20:50:30','2025-06-24 20:50:30',NULL,NULL),(13,'Associate Architect',1,'2025-06-24 20:50:30','2025-06-24 20:50:30',NULL,NULL),(14,'Tech Lead',1,'2025-06-24 20:50:30','2025-06-24 20:50:30',NULL,NULL),(15,'Sr. User Interface Designer',1,'2025-06-24 20:50:30','2025-06-24 20:50:30',NULL,NULL),(16,'Sr. Project Lead',1,'2025-06-24 20:50:30','2025-06-24 20:50:30',NULL,NULL),(17,'Associate Design Lead',1,'2025-06-24 20:50:30','2025-06-24 20:50:30',NULL,NULL),(18,'Business Analyst',1,'2025-06-24 20:50:30','2025-06-24 20:50:30',NULL,NULL),(19,'Sr. Tech Lead',1,'2025-06-24 20:50:30','2025-06-24 20:50:30',NULL,NULL),(20,'Sr. QA Lead',1,'2025-06-24 20:50:30','2025-06-24 20:50:30',NULL,NULL),(21,'Design Lead',1,'2025-06-24 20:50:30','2025-06-24 20:50:30',NULL,NULL),(22,'QA Lead',1,'2025-06-24 20:50:30','2025-06-24 20:50:30',NULL,NULL),(23,'Associate Project Manager',1,'2025-06-24 20:50:30','2025-06-24 20:50:30',NULL,NULL),(24,'QA Manager',1,'2025-06-24 20:50:30','2025-06-24 20:50:30',NULL,NULL),(25,'Technical Manager',1,'2025-06-24 20:50:30','2025-06-24 20:50:30',NULL,NULL),(26,'User Interface Designer',1,'2025-06-24 20:50:30','2025-06-24 20:50:30',NULL,NULL),(27,'Sr. User Experience Engineer',1,'2025-06-24 20:50:30','2025-06-24 20:50:30',NULL,NULL),(28,'Design Manager',1,'2025-06-24 20:50:30','2025-06-24 20:50:30',NULL,NULL),(29,'Project Lead',1,'2025-06-24 20:50:30','2025-06-24 20:50:30',NULL,NULL);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secondary_tech_stack`
--

DROP TABLE IF EXISTS `secondary_tech_stack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `secondary_tech_stack` (
  `secondary_tech_stack_id` int NOT NULL AUTO_INCREMENT,
  `secondary_tech_stack_name` varchar(100) NOT NULL,
  `is_active` tinyint DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`secondary_tech_stack_id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secondary_tech_stack`
--

LOCK TABLES `secondary_tech_stack` WRITE;
/*!40000 ALTER TABLE `secondary_tech_stack` DISABLE KEYS */;
INSERT INTO `secondary_tech_stack` VALUES (1,'Accessibility testing',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(2,'Advanced Testing',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(3,'AI-ML',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(4,'ALM',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(5,'Angular',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(6,'Angular 2+',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(7,'Angular16',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(8,'AngularJS',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(9,'Automation - Java Selenium',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(10,'AWS',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(11,'AWS Devops',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(12,'Azure',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(13,'DevOps',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(14,'BA',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(15,'Blockchain',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(16,'C++',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(17,'Canvas LMS',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(18,'Cloud',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(19,'Data Science',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(20,'Django',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(21,'DWH',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(22,'Flutter',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(23,'Functional QA',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(24,'GCP',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(25,'GoLang',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(26,'Google Cloud',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(27,'AWS Devops',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(28,'Terraforms',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(29,'HTML+CSS',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(30,'Instructure',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(31,'Java',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(32,'Jmeter',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(33,'Kubernetes',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(34,'LMS',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(35,'LogiAnalytics',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(36,'LTI',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(37,'Machine Learning (ML)',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(38,'Manual Testing',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(39,'MEAN',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(40,'MERN',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(41,'Microsoft .Net',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(42,'Moodle',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(43,'MS .Net',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(44,'Mulesoft',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(45,'MySQL',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(46,'Natural Language Processing (NLP)',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(47,'NextJs',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(48,'NodeJs',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(49,'NLP',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(50,'PHP',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(51,'PM',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(52,'GoLang',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(53,'Python',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(54,'Sharepoint',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(55,'WebFlow',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(56,'Power BI',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(57,'PS',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(58,'PS/Support',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(59,'.Net',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(60,'Selenium',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(61,'HTML/CSS',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(62,'NodeJs',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(63,'React Native',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(64,'ReactJs',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(65,'NextJs',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(66,'Workato',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(67,'Angular',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(68,'SAFE Agile certified',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(69,'BA',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(70,'ALM',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(71,'SAFE Agile certified',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(72,'Scrum Certified',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(73,'SM',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(74,'SQL',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(75,'PS',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(76,'SSIS',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(77,'SSRS',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(78,'Support',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(79,'SRE',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(80,'Terraform',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(81,'TypeScript',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(82,'TypeScript & PlayWright',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(83,'Vue.Js',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(84,'WebFlow',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(85,'Workato',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(86,'.Net Core',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(87,'LMS',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(88,'NextJs',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(89,'Wordpress',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(90,'MySQL',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(91,'NodeJS',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL);
/*!40000 ALTER TABLE `secondary_tech_stack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_type`
--

DROP TABLE IF EXISTS `service_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_type` (
  `service_type_id` int NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) NOT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`service_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_type`
--

LOCK TABLES `service_type` WRITE;
/*!40000 ALTER TABLE `service_type` DISABLE KEYS */;
INSERT INTO `service_type` VALUES (1,'Tech',1,'2025-06-24 19:22:47','2025-06-24 19:22:47',NULL,NULL),(2,'Content',1,'2025-06-24 19:22:47','2025-06-24 19:22:47',NULL,NULL),(3,'Product',1,'2025-06-24 19:22:47','2025-06-24 19:22:47',NULL,NULL);
/*!40000 ALTER TABLE `service_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill_competency_group`
--

DROP TABLE IF EXISTS `skill_competency_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill_competency_group` (
  `group_id` int NOT NULL AUTO_INCREMENT,
  `group_name` varchar(100) NOT NULL,
  `is_active` tinyint DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill_competency_group`
--

LOCK TABLES `skill_competency_group` WRITE;
/*!40000 ALTER TABLE `skill_competency_group` DISABLE KEYS */;
INSERT INTO `skill_competency_group` VALUES (1,'Across technologies',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(2,'AI-ML / Data Science',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(3,'Data (Database/DBA/DWH/Visualization)',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(4,'DevOps',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(5,'Infrastructure',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(6,'Java',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(7,'LCNC platform (Workato, Logi)',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(8,'Microsoft .Net',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(9,'Misc (Reporting tool, PS/Support)',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(10,'Mobile',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(11,'Other',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(12,'PHP (Core PHP, Drupal, IOMAD, Moodle)',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(13,'Product Manager',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(14,'Project Management',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(15,'Python',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(16,'QA (Manual, Automation, Performance, Security)',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(17,'Scripting (MEAN, MERN, RoR, JS, Vue..)',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(18,'Scrum Master',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(19,'SME/BA',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(20,'UX-UI-HTML',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL);
/*!40000 ALTER TABLE `skill_competency_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill_proficiency_status`
--

DROP TABLE IF EXISTS `skill_proficiency_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill_proficiency_status` (
  `status_id` int NOT NULL AUTO_INCREMENT,
  `status_name` varchar(100) NOT NULL,
  `is_active` tinyint DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill_proficiency_status`
--

LOCK TABLES `skill_proficiency_status` WRITE;
/*!40000 ALTER TABLE `skill_proficiency_status` DISABLE KEYS */;
INSERT INTO `skill_proficiency_status` VALUES (1,'Expert',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(2,'Proficient',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL),(3,'Intermediate',1,'2025-06-28 12:38:58','2025-06-28 12:38:58',NULL,NULL);
/*!40000 ALTER TABLE `skill_proficiency_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staffing_model`
--

DROP TABLE IF EXISTS `staffing_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staffing_model` (
  `staffing_model_id` int NOT NULL AUTO_INCREMENT,
  `model_name` varchar(100) NOT NULL,
  `is_active` tinyint DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`staffing_model_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staffing_model`
--

LOCK TABLES `staffing_model` WRITE;
/*!40000 ALTER TABLE `staffing_model` DISABLE KEYS */;
INSERT INTO `staffing_model` VALUES (1,'Pyramid',1,'2025-06-24 20:50:29','2025-06-24 20:50:29',NULL,NULL),(2,'Interview-Based',1,'2025-06-24 20:50:29','2025-06-24 20:50:29',NULL,NULL),(3,'NA',1,'2025-06-24 20:50:29','2025-06-24 20:50:29',NULL,NULL);
/*!40000 ALTER TABLE `staffing_model` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-22  0:56:59
