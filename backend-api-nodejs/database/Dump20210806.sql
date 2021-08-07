-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: payroll
-- ------------------------------------------------------
-- Server version	8.0.25


-- Made from Administration / Data Export

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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `emp_id` int NOT NULL AUTO_INCREMENT,
  `emp_first_name` varchar(50) NOT NULL,
  `emp_last_name` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `salary` double NOT NULL,
  `hourly_rate` float NOT NULL,
  `active` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Jeremy','Callinan','Developer',250000,125,1);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hours`
--

DROP TABLE IF EXISTS `hours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hours` (
  `hours_id` int NOT NULL AUTO_INCREMENT,
  `emp_id` int NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `paytype_id` int NOT NULL,
  `approved` int NOT NULL DEFAULT '0',
  `work_date` datetime DEFAULT NULL,
  `break` decimal(18,2) DEFAULT NULL,
  PRIMARY KEY (`hours_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hours`
--

LOCK TABLES `hours` WRITE;
/*!40000 ALTER TABLE `hours` DISABLE KEYS */;
/*!40000 ALTER TABLE `hours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paytype`
--

DROP TABLE IF EXISTS `paytype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paytype` (
  `paytype_id` int NOT NULL AUTO_INCREMENT,
  `paytype_name` varchar(50) NOT NULL,
  `paytype_rate` float NOT NULL,
  `active` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`paytype_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paytype`
--

LOCK TABLES `paytype` WRITE;
/*!40000 ALTER TABLE `paytype` DISABLE KEYS */;
INSERT INTO `paytype` VALUES (1,'Regular',30,1);
/*!40000 ALTER TABLE `paytype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'0123456','password'),(2,'[object Object]','[object Object]'),(3,'[object Object]','[object Object]'),(4,'[object Object]','[object Object]'),(5,'[object Object]','[object Object]'),(6,'[object Object]','[object Object]'),(7,'[object Object]','[object Object]'),(8,'werwerw','erwerwer'),(9,'werwerw','erwerwer'),(10,'werwer','erwerwer'),(11,'werwer','erwerwer'),(12,'werwer','erwerwer'),(13,'werwer','erwerwer'),(14,'w34','34234'),(15,'w34','34234'),(16,'w34','34234'),(17,'w34','34234'),(18,'w34','34234'),(19,'w34','34234'),(20,'344444','4444444'),(21,'344444','4444444'),(22,'344444','4444444'),(23,'344444','4444444'),(24,'344444','4444444'),(25,'344444','4444444'),(26,'231231','11111'),(27,'231231','11111'),(28,'231231','11111'),(29,'231231','11111'),(30,'231231','11111'),(31,'231231','11111'),(32,'34444121211','432121212'),(33,'3444412121','432121212'),(34,'3444412121','432121212'),(35,'34444121211','432121212'),(36,'3444412121','432121212'),(37,'3444412121','432121212'),(38,'0999','999999'),(39,'0999','999999'),(40,'0999','999999'),(41,'0999','999999'),(42,'VVVVV','23423'),(43,'VVVVV','23423'),(44,'VVVVV','23423'),(45,'HHJJ','JJJ'),(46,'HHJJ','JJJ'),(47,'HHJJ','JJJ'),(48,'HHJJ22','JJJ'),(49,'HHJJ22','JJJ'),(50,'HHJJ22','JJJ'),(51,'23423','4234234234'),(52,'23423','4234234234'),(53,'23423','4234234234');
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

-- Dump completed on 2021-08-06 22:37:15
