CREATE DATABASE  IF NOT EXISTS `dawii` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `dawii`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: dawii
-- ------------------------------------------------------
-- Server version	5.6.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `data`
--

DROP TABLE IF EXISTS `data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data` (
  `iddata` int(11) NOT NULL AUTO_INCREMENT,
  `mensaje` text,
  `fechaRegistro` datetime DEFAULT NULL,
  `fechaVencimiento` date DEFAULT NULL,
  `correo` varchar(200) DEFAULT NULL,
  `ciudad` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`iddata`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data`
--

LOCK TABLES `data` WRITE;
/*!40000 ALTER TABLE `data` DISABLE KEYS */;
INSERT INTO `data` VALUES (1,'Spring',NULL,NULL,NULL,NULL),(2,'Java',NULL,NULL,NULL,NULL),(3,'Kotlin',NULL,NULL,NULL,NULL),(4,'Sede Norte',NULL,NULL,NULL,NULL),(5,'Meza cruz',NULL,NULL,NULL,NULL),(6,'Meza cruz',NULL,NULL,NULL,NULL),(7,'dsdsdsds',NULL,'2020-09-18',NULL,NULL),(8,'Sede Norte','2020-09-16 02:42:51','2020-09-11',NULL,NULL),(9,'Sede Norte 2','2020-09-16 02:45:18','2020-09-18',NULL,NULL),(10,'Sede requipa','2020-09-15 21:50:17','2020-09-18',NULL,NULL),(11,'Sede Norte','2020-09-15 22:16:56','2020-09-02','jorgejacinto@gmail.com','Lima'),(12,'Java','2020-09-15 22:17:22','2020-09-26','lu@gmail.com','Arequipa');
/*!40000 ALTER TABLE `data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'dawii'
--

--
-- Dumping routines for database 'dawii'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-15 22:20:48
