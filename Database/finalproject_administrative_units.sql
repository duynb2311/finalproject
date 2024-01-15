CREATE DATABASE  IF NOT EXISTS `finalproject` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `finalproject`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: finalproject
-- ------------------------------------------------------
-- Server version	5.7.41-log

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
-- Table structure for table `administrative_units`
--

DROP TABLE IF EXISTS `administrative_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrative_units` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `full_name_en` varchar(255) DEFAULT NULL,
  `short_name` varchar(255) DEFAULT NULL,
  `short_name_en` varchar(255) DEFAULT NULL,
  `code_name` varchar(255) DEFAULT NULL,
  `code_name_en` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrative_units`
--

LOCK TABLES `administrative_units` WRITE;
/*!40000 ALTER TABLE `administrative_units` DISABLE KEYS */;
INSERT INTO `administrative_units` VALUES (1,'Thành phố trực thuộc trung ương','Municipality','Thành phố','City','thanh_pho_truc_thuoc_trung_uong','municipality'),(2,'Tỉnh','Province','Tỉnh','Province','tinh','province'),(3,'Thành phố thuộc thành phố trực thuộc trung ương','Municipal city','Thành phố','City','thanh_pho_thuoc_thanh_pho_truc_thuoc_trung_uong','municipal_city'),(4,'Thành phố thuộc tỉnh','Provincial city','Thành phố','City','thanh_pho_thuoc_tinh','provincial_city'),(5,'Quận','Urban district','Quận','District','quan','urban_district'),(6,'Thị xã','District-level town','Thị xã','Town','thi_xa','district_level_town'),(7,'Huyện','District','Huyện','District','huyen','district'),(8,'Phường','Ward','Phường','Ward','phuong','ward'),(9,'Thị trấn','Commune-level town','Thị trấn','Township','thi_tran','commune_level_town'),(10,'Xã','Commune','Xã','Commune','xa','commune');
/*!40000 ALTER TABLE `administrative_units` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-15 20:34:07
