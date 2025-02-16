-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: mydatabase
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `phoneNumber` varchar(15) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `linkedId` int DEFAULT NULL,
  `linkPrecedence` enum('primary','secondary') DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `linkedId` (`linkedId`),
  CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`linkedId`) REFERENCES `contact` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1,'123456','lorraine@hillvalley.edu',NULL,'primary','2025-02-10 06:57:36','2025-02-10 06:57:36',NULL),(2,'123456','mcfly@hillvalley.edu',1,'secondary','2025-02-10 06:57:36','2025-02-10 06:57:36',NULL),(3,'1234567890','example@example.com',NULL,NULL,'2025-02-10 07:13:00','2025-02-10 07:13:00',NULL),(4,'0987654321','other@example.com',NULL,NULL,'2025-02-10 07:13:00','2025-02-10 07:13:00',NULL),(5,'1234509876','another@example.com',NULL,NULL,'2025-02-10 07:13:00','2025-02-10 07:13:00',NULL),(9,'987654','mcfly@hillvalley.edu',1,'secondary','2025-02-10 07:29:43','2025-02-10 15:33:14',NULL),(10,'987654','mcfly@hillvalley.edu',1,'secondary','2025-02-10 15:23:00','2025-02-10 15:33:14',NULL),(11,'717171','george@hillvalley.edu',NULL,'primary','2025-02-10 15:24:00','2025-02-10 15:24:00',NULL),(12,'9998887777','newuser@example.com',NULL,'primary','2025-02-10 15:37:49','2025-02-10 15:37:49',NULL),(13,NULL,'newuser@example.com',12,'secondary','2025-02-10 15:39:14','2025-02-10 15:39:14',NULL),(14,'1112223333','userA@example.com',NULL,'primary','2025-02-10 15:41:32','2025-02-10 15:41:32',NULL),(15,'4445556666','userB@example.com',NULL,'primary','2025-02-10 15:42:01','2025-02-10 15:42:01',NULL),(16,'4445556666','userA@example.com',14,'secondary','2025-02-10 15:42:41','2025-02-10 15:42:41',NULL),(17,'9998887777','newuser@example.com',12,'secondary','2025-02-10 15:43:14','2025-02-10 15:43:14',NULL),(18,'9998887777','newuser@example.com',12,'secondary','2025-02-10 15:46:09','2025-02-10 15:46:09',NULL),(19,'9998887777','newuser@example.com',12,'secondary','2025-02-10 15:47:15','2025-02-10 15:47:15',NULL),(20,'9998887777','newuser@example.com',12,'secondary','2025-02-10 15:50:41','2025-02-10 15:50:41',NULL),(21,'9998887777','newuser@example.com',12,'secondary','2025-02-10 16:42:30','2025-02-10 16:42:30',NULL),(22,'1234567890','test@example.com',3,'secondary','2025-02-10 16:48:22','2025-02-10 16:48:22',NULL),(23,'6262211328','anjalikolhatkar1803@gmail.com',NULL,'primary','2025-02-10 16:49:17','2025-02-10 16:49:17',NULL),(24,'8770792399','anjalikolhatkar1803@gmail.com',23,'secondary','2025-02-10 16:49:29','2025-02-10 16:49:29',NULL),(25,'123456','rohankolhatkar1803@gmail.com',1,'secondary','2025-02-10 16:51:51','2025-02-10 16:51:51',NULL),(26,'6262211328','anjalikolhatkar@gmail.com',23,'secondary','2025-02-10 17:00:56','2025-02-10 17:00:56',NULL),(27,'45272863892736','anjalikolhatkar@gmail.com',26,'secondary','2025-02-10 17:01:08','2025-02-10 17:01:08',NULL),(28,'2357397392','anjaligsks@gamil.com',NULL,'primary','2025-02-10 17:03:56','2025-02-10 17:03:56',NULL),(29,'467899','hehehuhu@gamil.com',NULL,'primary','2025-02-10 17:08:21','2025-02-10 17:08:21',NULL),(30,'2567899','hellooo@gmail.com',NULL,'primary','2025-02-10 17:08:59','2025-02-10 17:08:59',NULL),(31,'123409876','rohan@gmail.com',NULL,'primary','2025-02-10 17:13:32','2025-02-10 17:13:32',NULL),(32,'2233333','ghh@gmail.com',NULL,'primary','2025-02-10 17:21:54','2025-02-10 17:21:54',NULL),(33,'23333','bnj@gmail.com',NULL,'primary','2025-02-10 17:42:53','2025-02-10 17:42:53',NULL),(34,'6262211328','z@gmail.com',23,'secondary','2025-02-11 13:54:51','2025-02-11 13:54:51',NULL),(35,'9301111309','a@gmail.com',NULL,'primary','2025-02-11 13:55:14','2025-02-11 13:55:14',NULL),(36,'1233','hehe23@gmail.com',NULL,'primary','2025-02-11 14:27:25','2025-02-11 14:27:25',NULL);
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Anjali','anjali@example.com','securepassword');
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

-- Dump completed on 2025-02-12  9:45:18
