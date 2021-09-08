-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: smart_library
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `admin_login`
--

DROP TABLE IF EXISTS `admin_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_login` (
  `aId` varchar(100) NOT NULL,
  `aPassword` varchar(50) NOT NULL,
  PRIMARY KEY (`aId`),
  UNIQUE KEY `id_UNIQUE` (`aId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_login`
--

LOCK TABLES `admin_login` WRITE;
/*!40000 ALTER TABLE `admin_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocked_user`
--

DROP TABLE IF EXISTS `blocked_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blocked_user` (
  `bEmail` varchar(100) NOT NULL,
  `bDate` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`bEmail`),
  UNIQUE KEY `idnew_table_UNIQUE` (`bEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocked_user`
--

LOCK TABLES `blocked_user` WRITE;
/*!40000 ALTER TABLE `blocked_user` DISABLE KEYS */;
INSERT INTO `blocked_user` VALUES ('a@gmail.com',NULL),('c@gmail.com','gs'),('r6@gmail.com','Tue Sep 07 12:00:04 IST 2021'),('rd2@gmail.com',NULL),('rd3@gmail.com','Tue Sep 07 01:42:10 IST 2021');
/*!40000 ALTER TABLE `blocked_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `bId` int NOT NULL AUTO_INCREMENT,
  `bName` varchar(100) NOT NULL,
  `authorName` varchar(100) NOT NULL,
  `publisherName` varchar(100) NOT NULL,
  `edition` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `location` varchar(100) NOT NULL,
  `bTime` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`bId`),
  UNIQUE KEY `id_UNIQUE` (`bId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'flawkf','agkk','akfk','jaflj','fjoj','afjoa',NULL),(2,'jgujguyg','nkjj','bikjhnjhn','ghjhb','fjoj','E:\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\smartLibrary\\media\\nkjj - jgujguyg',NULL);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moderator`
--

DROP TABLE IF EXISTS `moderator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `moderator` (
  `mId` int NOT NULL AUTO_INCREMENT,
  `mFirstName` varchar(50) NOT NULL,
  `mLastName` varchar(50) NOT NULL,
  `mEmail` varchar(100) NOT NULL,
  `mPassword` varchar(50) NOT NULL,
  `mTime` varchar(50) NOT NULL,
  PRIMARY KEY (`mId`,`mEmail`),
  UNIQUE KEY `email_UNIQUE` (`mEmail`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moderator`
--

LOCK TABLES `moderator` WRITE;
/*!40000 ALTER TABLE `moderator` DISABLE KEYS */;
INSERT INTO `moderator` VALUES (37,'Riju','Das','r@gmail.com','1234','Wed Jul 07 10:11:51 IST 2021'),(38,'Sagar ','Debnath','sa@gmai.com','1234','Wed Jul 07 10:15:32 IST 2021'),(39,'Sovan','Das','so@gmai.com','1234','Wed Jul 07 10:16:10 IST 2021'),(47,'dgdx','hfd','h@gmail.com','','Wed Sep 08 21:53:57 IST 2021');
/*!40000 ALTER TABLE `moderator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pending_books`
--

DROP TABLE IF EXISTS `pending_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pending_books` (
  `bId` int NOT NULL AUTO_INCREMENT,
  `bName` varchar(100) DEFAULT NULL,
  `authorName` varchar(100) DEFAULT NULL,
  `publisherName` varchar(100) DEFAULT NULL,
  `edition` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `bTime` varchar(45) DEFAULT NULL,
  `status` varchar(10) DEFAULT 'pending',
  PRIMARY KEY (`bId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pending_books`
--

LOCK TABLES `pending_books` WRITE;
/*!40000 ALTER TABLE `pending_books` DISABLE KEYS */;
INSERT INTO `pending_books` VALUES (6,'gjg,','fmk,','mgm','dnx','gn','E:\\smartLibrary\\BOOKS\\','Thu Sep 09 01:09:25 IST 2021','pending');
/*!40000 ALTER TABLE `pending_books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `uId` int NOT NULL AUTO_INCREMENT,
  `uFirstName` varchar(50) NOT NULL,
  `uLastName` varchar(50) NOT NULL,
  `uEmail` varchar(100) NOT NULL,
  `uPassword` varchar(50) NOT NULL,
  `uTime` varchar(50) NOT NULL,
  PRIMARY KEY (`uId`,`uEmail`),
  UNIQUE KEY `uId_UNIQUE` (`uId`),
  UNIQUE KEY `uEmail_UNIQUE` (`uEmail`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'riju','das','e@gmail.com','','Fri Jul 09 13:24:14 IST 2021'),(5,'riju ','das','rd@gmail.com','','Wed Jul 28 12:14:56 IST 2021');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-09  1:36:51
