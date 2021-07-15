-- MySQL dump 10.13  Distrib 8.0.25, for macos11.3 (x86_64)
--
-- Host: localhost    Database: tempo
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `textparse_data`
--

DROP TABLE IF EXISTS `textparse_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `textparse_data` (
  `id` tinyint DEFAULT NULL,
  `topic` varchar(10) DEFAULT NULL,
  `body` text,
  `parsed` text,
  `keys` varchar(112) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `textparse_data`
--

LOCK TABLES `textparse_data` WRITE;
/*!40000 ALTER TABLE `textparse_data` DISABLE KEYS */;
INSERT INTO `textparse_data` VALUES (9,'Bank','Activate your new card and update recurring payments\r\nDebit card ending in 6915\r\nHi, David Tim,\r\nWe recently mailed you a new debit card to help keep your account safe. Please activate your card as soon as you receive it.\r\nWhat you should do next (if you haven\'t already):\r\nActivate your new card right away by following the instructions found on the card\'s sticker.\r\nContact any merchants who automatically charge your card and provide them with your new card information.\r\nReview your transaction history and contact us immediately if there are transactions that you didn\'t make.','Activate your new card and update recurring payments\r\nDebit card ending in DATE\r\nHi, PERSON,\r\nWe recently mailed you a new debit card to help keep your account safe. Please activate your card as soon as you receive it.\r\nWhat you should do next (if you haven\'t already):\r\nActivate your new card right away by following the instructions found on the card\'s sticker.\r\nContact any merchants who automatically charge your card and provide them with your new card information.\r\nReview your transaction history and contact us immediately if there are transactions that you didn\'t make.','{\"6915\": \"DATE\", \"David Tim\": \"PERSON\"}'),(10,'Insurance','Dear Member,\r\n\r\nA new Explanation of Benefit (EOB) for you or a covered member of your family is now available in your My Account. An EOB is not a bill, but it includes amounts processed by your plan and/or amounts you may owe. It may also includes claims not processed due to lack of information from you and/or your provider.\r\n\r\nTo view your EOB:\r\n\r\nCreate or login to My Account by clicking here\r\nIf the link above does not work, please go to https://myaccount.uhcsr.com\r\nOnce logged in, select Completed Claims in My Claims/Balances and then select View Details.\r\nMy Account is a valuable tool to help manage your health care benefits. Once logged in you can access your ID card, plan materials, check claim status, and several other features.','Dear ORGANIZATION,\r\n\r\nA new ORGANIZATION (ORGANIZATION) for you or a covered member of your family is now available in your My Account. An ORGANIZATION is not a bill, but it includes amounts processed by your plan and/or amounts you may owe. It may also includes claims not processed due to lack of information from you and/or your provider.\r\n\r\nTo view your ORGANIZATION:\r\n\r\nPRODUCT or login to My Account by clicking here\r\nIf the link above does not work, please go to https://myaccount.uhcsr.com\r\nOnce logged in, select Completed Claims in My Claims/Balances and then select View Details.\r\nMy Account is a valuable tool to help manage your health care benefits. Once logged in you can access your ID card, plan materials, check claim status, and several other features.','{\"Member\": \"ORGANIZATION\", \"Explanation of Benefit\": \"ORGANIZATION\", \"EOB\": \"ORGANIZATION\", \"Create\": \"PRODUCT\"}'),(11,'kid call','Call me kid on 555-555-5555 now','Call me kid on FINANCIAL now','{\"555-555-5555\": \"FINANCIAL\"}'),(12,'d','709-098-6767','COMMUNICATION','{\"709-098-6767\": \"COMMUNICATION\"}'),(13,'dd','898-000-3434\r\n788SR','COMMUNICATION\r\nPRODUCT','{\"898-000-3434\": \"COMMUNICATION\", \"788SR\": \"PRODUCT\"}'),(14,'Insurance','Dear Member,\r\n\r\nA new Explanation of Benefit (EOB) for you or a covered member of your family is now available in your My Account. An EOB is not a bill, but it includes amounts processed by your plan and/or amounts you may owe. It may also includes claims not processed due to lack of information from you and/or your provider.\r\n\r\nTo view your EOB:\r\n\r\nCreate or login to My Account by clicking here\r\nIf the link above does not work, please go to https://myaccount.uhcsr.com\r\nOnce logged in, select Completed Claims in My Claims/Balances and then select View Details.\r\nMy Account is a valuable tool to help manage your health care benefits. Once logged in you can access your ID card, plan materials, check claim status, and several other features.','Dear ORGANIZATION,\r\n\r\nA new ORGANIZATION (ORGANIZATION) for you or a covered member of your family is now available in your My Account. An ORGANIZATION is not a bill, but it includes amounts processed by your plan and/or amounts you may owe. It may also includes claims not processed due to lack of information from you and/or your provider.\r\n\r\nTo view your ORGANIZATION:\r\n\r\nPRODUCT or login to My Account by clicking here\r\nIf the link above does not work, please go to https://myaccount.uhcsr.com\r\nOnce logged in, select Completed Claims in My Claims/Balances and then select View Details.\r\nMy Account is a valuable tool to help manage your health care benefits. Once logged in you can access your ID card, plan materials, check claim status, and several other features.','{\"Member\": \"ORGANIZATION\", \"Explanation of Benefit\": \"ORGANIZATION\", \"EOB\": \"ORGANIZATION\", \"Create\": \"PRODUCT\"}'),(15,'Test1','Test 2','Test SSN','{\"2\": \"SSN\"}'),(16,'Test 100','Hello Mr. Saloh\r\nHow 909-000-0987','Hello Mr. PERSONHow COMMUNICATION','{\"909-000-0987\": \"COMMUNICATION\", \"Saloh\r\n\": \"PERSON\"}'),(17,'Hello','Hello Mr. Sallou\r\nHppd 909-098-7788','Hello Mr. Sallou\r\nHppd 909-098-7788','{\"909-098-7788\": \"COMMUNICATION\", \"Sallou\": \"PERSON\"}'),(18,'Hello','Hello Mr. Sallou\r\nHppd 909-098-7788','Hello Mr. Sallou\r\nHppd 909-098-7788','{\"909-098-7788\": \"COMMUNICATION\", \"Sallou\": \"PERSON\"}'),(19,'Test 11','Heoo','Heoo','{}'),(20,'TestAbood','909-009-3399miaoote@gmail.com','909-009-3399miaoote@gmail.com','{\"miaoote@gmail.com\": \"COMMUNICATION\", \"909-009-3399\": \"COMMUNICATION\"}'),(21,'AboodRK','Hello Dr. Aolye\r\nI hope this email finds you well\r\n\r\nThank you so much for gift card that you gave me for $500 \r\nthanks','Hello Dr. Aolye\r\nI hope this email finds you well\r\n\r\nThank you so much for gift card that you gave me for $500 \r\nthanks','{\"$500\": \"SSN\", \"Aolye\r\n\": \"PERSON\", \"500\": \"FINANCIAL\"}'),(22,'AboodMMM','Dear Dr.Sam','Dear Dr.Sam','{\"Sam\": \"PERSON\"}'),(23,'HHHHHH','Dear Dr. Donald \r\nPlease','Dear Dr. Donald \r\nPlease','{\"Donald \r\n\": \"PERSON\"}'),(24,'olo','Dr. Donald','Dr. Donald','{\"Donald\": \"PERSON\"}'),(25,'2','Dear Tbazz','Dear Tbazz','{\"Tbazz\": \"ORGANIZATION\"}'),(26,'e','Mr. Tbazz \r\nHey','Mr. Tbazz \r\nHey','{\"Tbazz\": \"PERSON\"}'),(27,'Ye','Ms. Tbazz \r\nI hope you are well.\r\n\r\nThis is an example of hidden info','Ms. Tbazz \r\nI hope you are well.\r\n\r\nThis is an example of hidden info','{\"Tbazz\": \"PERSON\"}'),(28,'Tbazz test','Dear Sam\r\nmy phone is 8883339999\r\n\r\nthank','Dear Sam\r\nmy phone is 8883339999\r\n\r\nthank','{\"8883339999\": \"DATE\", \"Sam\r\n\": \"PERSON\"}'),(29,'Tbazz Test','Dear Dr. Dema\r\n\r\nThis is my phone 3339879876\r\n\r\nThank you','Dear Dr. Dema\r\n\r\nThis is my phone 3339879876\r\n\r\nThank you','{\"3339879876\": \"DATE\"}'),(30,'Tbazz TEST','Dear Dr. Tom\r\n\r\nThis is my phone 333-987-9876\r\n\r\nThank you','Dear Dr. Tom\r\n\r\nThis is my phone 333-987-9876\r\n\r\nThank you','{\"333-987-9876\": \"COMMUNICATION\", \"Tom\": \"PERSON\"}');
/*!40000 ALTER TABLE `textparse_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-15 12:43:28
