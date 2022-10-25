-- MySQL dump 10.13  Distrib 8.0.26, for macos11.3 (x86_64)
--
-- Host: localhost    Database: gmail_clone_onespot
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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add data',1,'add_data'),(2,'Can change data',1,'change_data'),(3,'Can delete data',1,'delete_data'),(4,'Can view data',1,'view_data'),(5,'Can add log entry',2,'add_logentry'),(6,'Can change log entry',2,'change_logentry'),(7,'Can delete log entry',2,'delete_logentry'),(8,'Can view log entry',2,'view_logentry'),(9,'Can add permission',3,'add_permission'),(10,'Can change permission',3,'change_permission'),(11,'Can delete permission',3,'delete_permission'),(12,'Can view permission',3,'view_permission'),(13,'Can add group',4,'add_group'),(14,'Can change group',4,'change_group'),(15,'Can delete group',4,'delete_group'),(16,'Can view group',4,'view_group'),(17,'Can add user',5,'add_user'),(18,'Can change user',5,'change_user'),(19,'Can delete user',5,'delete_user'),(20,'Can view user',5,'view_user'),(21,'Can add content type',6,'add_contenttype'),(22,'Can change content type',6,'change_contenttype'),(23,'Can delete content type',6,'delete_contenttype'),(24,'Can view content type',6,'view_contenttype'),(25,'Can add session',7,'add_session'),(26,'Can change session',7,'change_session'),(27,'Can delete session',7,'delete_session'),(28,'Can view session',7,'view_session'),(29,'Can add messages',8,'add_messages'),(30,'Can change messages',8,'change_messages'),(31,'Can delete messages',8,'delete_messages'),(32,'Can view messages',8,'view_messages'),(33,'Can add records',9,'add_records'),(34,'Can change records',9,'change_records'),(35,'Can delete records',9,'delete_records'),(36,'Can view records',9,'view_records');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (2,'admin','logentry'),(4,'auth','group'),(3,'auth','permission'),(5,'auth','user'),(6,'contenttypes','contenttype'),(7,'sessions','session'),(1,'textparse','data'),(8,'textparse','messages'),(9,'textparse','records');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-07-12 03:22:13.667819'),(2,'auth','0001_initial','2021-07-12 03:22:13.818347'),(3,'admin','0001_initial','2021-07-12 03:22:14.191391'),(4,'admin','0002_logentry_remove_auto_add','2021-07-12 03:22:14.292919'),(5,'admin','0003_logentry_add_action_flag_choices','2021-07-12 03:22:14.303367'),(6,'contenttypes','0002_remove_content_type_name','2021-07-12 03:22:14.400473'),(7,'auth','0002_alter_permission_name_max_length','2021-07-12 03:22:14.454361'),(8,'auth','0003_alter_user_email_max_length','2021-07-12 03:22:14.486812'),(9,'auth','0004_alter_user_username_opts','2021-07-12 03:22:14.500705'),(10,'auth','0005_alter_user_last_login_null','2021-07-12 03:22:14.558776'),(11,'auth','0006_require_contenttypes_0002','2021-07-12 03:22:14.563233'),(12,'auth','0007_alter_validators_add_error_messages','2021-07-12 03:22:14.581593'),(13,'auth','0008_alter_user_username_max_length','2021-07-12 03:22:14.639644'),(14,'auth','0009_alter_user_last_name_max_length','2021-07-12 03:22:14.704714'),(15,'auth','0010_alter_group_name_max_length','2021-07-12 03:22:14.726501'),(16,'auth','0011_update_proxy_permissions','2021-07-12 03:22:14.738407'),(17,'auth','0012_alter_user_first_name_max_length','2021-07-12 03:22:14.798409'),(18,'sessions','0001_initial','2021-07-12 03:22:14.826623'),(19,'textparse','0001_initial','2021-07-12 03:22:14.860220'),(20,'textparse','0002_auto_20210712_0322','2021-07-12 03:22:14.864997'),(21,'textparse','0003_auto_20210712_0328','2021-07-12 03:28:29.438362'),(22,'textparse','0004_auto_20210712_0329','2021-07-12 03:29:14.468274');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Messages`
--

DROP TABLE IF EXISTS `Messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Messages` (
  `_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `to` varchar(255) DEFAULT NULL,
  `message` text,
  `subject` varchar(255) DEFAULT NULL,
  `startTime` datetime DEFAULT NULL,
  `endTime` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Messages`
--

LOCK TABLES `Messages` WRITE;
/*!40000 ALTER TABLE `Messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `Messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Records`
--

DROP TABLE IF EXISTS `Records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Records` (
  `_id` int NOT NULL AUTO_INCREMENT,
  `startTime` datetime DEFAULT NULL,
  `endTime` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Records`
--

LOCK TABLES `Records` WRITE;
/*!40000 ALTER TABLE `Records` DISABLE KEYS */;
INSERT INTO `Records` VALUES (1,'2021-07-25 14:51:49','2021-07-25 14:51:51','2021-07-25 14:36:41','2021-07-25 14:36:41'),(2,'2021-07-25 14:54:05','2021-07-25 14:54:08','2021-07-25 14:53:33','2021-07-25 14:53:33'),(3,'2021-07-25 15:11:32','2021-07-25 15:11:37','2021-07-25 14:53:33','2021-07-25 14:53:33'),(4,'2021-07-25 15:30:18','2021-07-25 15:35:17','2021-07-25 14:53:33','2021-07-25 14:53:33'),(5,'2021-07-25 15:35:19','2021-07-25 15:35:22','2021-07-25 14:53:33','2021-07-25 14:53:33'),(6,'2021-07-25 15:35:24','2021-07-25 15:35:29','2021-07-25 14:53:33','2021-07-25 14:53:33'),(7,'2021-07-25 15:37:22','2021-07-25 15:37:24','2021-07-25 14:53:33','2021-07-25 14:53:33'),(8,'2021-07-25 15:37:26','2021-07-25 15:37:27','2021-07-25 14:53:33','2021-07-25 14:53:33'),(9,'2021-07-25 15:37:53','2021-07-25 15:37:57','2021-07-25 14:53:33','2021-07-25 14:53:33'),(10,'2021-07-25 15:38:29','2021-07-25 15:38:31','2021-07-25 14:53:33','2021-07-25 14:53:33'),(11,'2021-07-25 15:38:32','2021-07-25 15:38:32','2021-07-25 14:53:33','2021-07-25 14:53:33'),(12,'2021-07-25 15:38:33','2021-07-25 15:38:33','2021-07-25 14:53:33','2021-07-25 14:53:33'),(13,'2021-07-25 15:38:33','2021-07-25 15:38:33','2021-07-25 14:53:33','2021-07-25 14:53:33'),(14,'2021-07-25 15:38:34','2021-07-25 15:38:34','2021-07-25 14:53:33','2021-07-25 14:53:33');
/*!40000 ALTER TABLE `Records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `textparse_data`
--

DROP TABLE IF EXISTS `textparse_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `textparse_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `topic` varchar(90) DEFAULT NULL,
  `body` text,
  `parsed` text,
  `keys` varchar(1000) DEFAULT NULL,
  `to` varchar(255) DEFAULT NULL,
  `startTime` datetime DEFAULT NULL,
  `endTime` datetime DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `textparse_data`
--

LOCK TABLES `textparse_data` WRITE;
/*!40000 ALTER TABLE `textparse_data` DISABLE KEYS */;
INSERT INTO `textparse_data` VALUES (1,'Bank','Activate your new card and update recurring payments Debit card ending in 6915 Hi, David Tim, We recently mailed you a new debit card to help keep your account safe. Please activate your card as soon as you receive it. What you should do next (if you haven\'t already): Activate your new card right away by following the instructions found on the card\'s sticker. Contact any merchants who automatically charge your card and provide them with your new card information. Review your transaction history and contact us immediately if there are transactions that you didn\'t make','Activate your new card and update recurring payments Debit card ending in 6915 Hi, David Tim, We recently mailed you a new debit card to help keep your account safe. Please activate your card as soon as you receive it. What you should do next (if you haven\'t already): Activate your new card right away by following the instructions found on the card\'s sticker. Contact any merchants who automatically charge your card and provide them with your new card information. Review your transaction history and contact us immediately if there are transactions that you didn\'t make','{\"6915\": \"DATE\", \"Debit\": \"PRODUCT\", \"David Tim\": \"PERSON\"}','akash6586@yahoo.com','2021-07-25 14:53:33','2021-07-25 14:53:33','2021-07-25 14:53:33','2021-07-25 14:53:33'),(2,'Insurance','Dear Member,  A new Explanation of Benefit (EOB) for you or a covered member of your family is now available in your My Account. An EOB is not a bill, but it includes amounts processed by your plan and/or amounts you may owe. It may also includes claims not processed due to lack of information from you and/or your provider.  To view your EOB:  Create or login to My Account by clicking here If the link above does not work, please go to https://myaccount.uhcsr.com Once logged in, select Completed Claims in My Claims/Balances and then select View Details. My Account is a valuable tool to help manage your health care benefits. Once logged in you can access your ID card, plan materials, check claim status, and several other features.	','Dear Member,  A new Explanation of Benefit (EOB) for you or a covered member of your family is now available in your My Account. An EOB is not a bill, but it includes amounts processed by your plan and/or amounts you may owe. It may also includes claims not processed due to lack of information from you and/or your provider.  To view your EOB:  Create or login to My Account by clicking here If the link above does not work, please go to https://myaccount.uhcsr.com Once logged in, select Completed Claims in My Claims/Balances and then select View Details. My Account is a valuable tool to help manage your health care benefits. Once logged in you can access your ID card, plan materials, check claim status, and several other features.','{\"Explanation of Benefit\": \"ORGANIZATION\", \"My Claims/Balances\": \"ORGANIZATION\", \"View Details\": \"WORK_OF_ART\", \"Account\": \"ORGANIZATION\"}','akash6586@yahoo.com','2021-07-25 14:53:33','2021-07-25 14:53:33','2021-07-25 14:53:33','2021-07-25 14:53:33'),(5,'kid call','Call me kid on 555-555-5555 now','Call me kid on 555-555-5555 now','{\"555-555-5555\": \"COMMUNICATION\"}','sam@gmail.com','2021-07-25 14:53:33','2021-07-25 14:53:33','2021-07-25 14:53:33','2021-07-25 14:53:33'),(6,'Insurance','Dear Member,  A new Explanation of Benefit (EOB) for you or a covered member of your family is now available in your My Account. An EOB is not a bill, but it includes amounts processed by your plan and/or amounts you may owe. It may also includes claims not processed due to lack of information from you and/or your provider.  To view your EOB:  Create or login to My Account by clicking here If the link above does not work, please go to https://myaccount.uhcsr.com Once logged in, select Completed Claims in My Claims/Balances and then select View Details. My Account is a valuable tool to help manage your health care benefits. Once logged in you can access your ID card, plan materials, check claim status, and several other features.	','Dear Member,  A new Explanation of Benefit (EOB) for you or a covered member of your family is now available in your My Account. An EOB is not a bill, but it includes amounts processed by your plan and/or amounts you may owe. It may also includes claims not processed due to lack of information from you and/or your provider.  To view your EOB:  Create or login to My Account by clicking here If the link above does not work, please go to https://myaccount.uhcsr.com Once logged in, select Completed Claims in My Claims/Balances and then select View Details. My Account is a valuable tool to help manage your health care benefits. Once logged in you can access your ID card, plan materials, check claim status, and several other features.','{\"Explanation of Benefit\": \"ORGANIZATION\", \"My Claims/Balances\": \"ORGANIZATION\", \"View Details\": \"WORK_OF_ART\", \"Account\": \"ORGANIZATION\"}','socrey@gmail.com','2021-07-25 14:53:33','2021-07-25 14:53:33','2021-07-25 14:53:33','2021-07-25 14:53:33'),(7,'Test 100','Hello Mr. Saloh How 909-000-0987','Hello Mr. Saloh How 909-000-0987','{\"909-000-0987\": \"COMMUNICATION\", \"Saloh\": \"PERSON\"}','akash@yahoo.com','2021-07-25 14:53:33','2021-07-25 14:53:33','2021-07-25 14:53:33','2021-07-25 14:53:33'),(8,'Tbazz Test','Dear Dr. Dema  This is my phone 3339879876  Thank you	','Dear Dr. Dema  This is my phone 3339879876  Thank you','{\"3339879876\": \"COMMUNICATION\", \"Dema  This\": \"PERSON\"}','sam@yahoo.com','2021-07-25 14:53:33','2021-07-25 14:53:33','2021-07-25 14:53:33','2021-07-25 14:53:33');
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

-- Dump completed on 2021-07-25 21:09:08
