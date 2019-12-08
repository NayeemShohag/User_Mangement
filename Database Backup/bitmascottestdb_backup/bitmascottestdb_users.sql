CREATE DATABASE  IF NOT EXISTS `bitmascottestdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bitmascottestdb`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: bitmascottestdb
-- ------------------------------------------------------
-- Server version	8.0.18

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
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Phone` varchar(255) NOT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `FirstName` varchar(255) NOT NULL,
  `BirthDate` varchar(255) NOT NULL,
  `Age` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `IsAdmin` bit(1) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'0',NULL,'admin','2019-11-28','0','21232f297a57a5a743894a0e4a801fc3',_binary '','admin','admin@localhost.local'),(2,'511-636-4261','1 Shoshone Street','Lyndsie','1990-02-28','29','202cb962ac59075b964b07152d234b70',_binary '\0','Helwig','lhelwig0@blogger.com'),(3,'876-134-5188','2 Orin Poin','Zelda','1996-07-10','23','202cb962ac59075b964b07152d234b70',_binary '\0','Sent','zsent1@yahoo.com'),(4,'698-835-5873','42 Claremont Alley','Laurianne','1993-07-14','26','202cb962ac59075b964b07152d234b70',_binary '\0','Konig','lkonig2@cloudflare.com'),(5,'837-768-8384','34017 Rigney Court','Luther','1998-02-11','21','202cb962ac59075b964b07152d234b70',_binary '\0','Angrove','langrove3@miibeian.gov.cn'),(6,'605-650-1431','6 Homewood Road','Raquel','1997-06-17','22','202cb962ac59075b964b07152d234b70',_binary '\0','Powderham','rpowderham4@ox.ac.uk');
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

-- Dump completed on 2019-11-28 21:26:01
