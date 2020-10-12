-- MySQL dump 10.13  Distrib 8.0.21, for Linux (x86_64)
--
-- Host: localhost    Database: twitch
-- ------------------------------------------------------
-- Server version	8.0.21-0ubuntu0.20.04.4

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
-- Temporary view structure for view `category_number_viewers`
--

DROP TABLE IF EXISTS `category_number_viewers`;
/*!50001 DROP VIEW IF EXISTS `category_number_viewers`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `category_number_viewers` AS SELECT 
 1 AS `category`,
 1 AS `total_users`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `channel_points`
--

DROP TABLE IF EXISTS `channel_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `channel_points` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `link_channel` int unsigned DEFAULT NULL,
  `user_id` int unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `points` int NOT NULL COMMENT 'Количестов баллов зрителя',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  KEY `channel_points_link_channel_fk` (`link_channel`),
  KEY `channel_points_user_id_fk` (`user_id`),
  CONSTRAINT `channel_points_link_channel_fk` FOREIGN KEY (`link_channel`) REFERENCES `streamers_channels` (`id`),
  CONSTRAINT `channel_points_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `profiles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Баллы каналы за активность';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel_points`
--

LOCK TABLES `channel_points` WRITE;
/*!40000 ALTER TABLE `channel_points` DISABLE KEYS */;
INSERT INTO `channel_points` VALUES (1,16,80,976,'2011-10-16 01:25:28','2018-05-16 11:59:31'),(2,9,89,400,'2017-03-02 19:23:02','2019-02-11 02:12:07'),(3,14,92,681,'2014-09-30 03:26:33','2015-05-26 00:47:18'),(4,7,62,2632,'2019-07-14 15:26:30','2019-10-11 09:56:54'),(5,15,47,38,'2012-06-30 11:15:20','2020-06-07 14:16:01'),(6,6,13,636,'2014-12-11 01:13:17','2019-02-20 10:39:12'),(7,16,39,364,'2015-08-14 07:20:23','2019-01-11 12:08:56'),(8,16,55,61,'2014-04-21 16:32:40','2018-05-13 04:56:46'),(9,12,37,6337,'2015-02-08 23:58:31','2019-02-14 08:37:21'),(10,12,24,6256,'2018-06-27 16:36:27','2020-08-11 20:04:45'),(11,14,14,635,'2014-06-30 08:59:37','2019-08-02 12:16:03'),(12,10,96,20,'2015-11-16 13:59:00','2018-11-26 19:30:50'),(13,1,81,8932,'2016-01-24 10:40:09','2018-12-22 16:10:01'),(14,4,62,4678,'2011-05-06 02:24:11','2018-04-24 23:16:29'),(15,4,26,3445,'2020-04-24 02:28:16','2020-08-26 20:57:16'),(16,4,14,4564,'2012-09-02 07:09:05','2020-05-15 16:19:52'),(17,1,72,5123,'2017-01-10 23:16:17','2019-02-08 06:47:38'),(18,1,87,831,'2018-07-21 18:18:23','2019-01-13 09:20:13'),(19,11,40,43784,'2011-03-22 16:18:51','2019-07-03 18:49:01'),(20,9,50,4736,'2011-07-06 12:22:27','2019-11-28 05:53:04'),(21,15,79,7747,'2018-12-23 10:50:02','2019-04-07 06:38:31'),(22,11,75,362,'2017-04-27 08:14:56','2019-06-28 06:54:12'),(23,3,55,472,'2018-04-23 16:46:45','2019-03-17 12:22:10'),(24,5,85,471,'2018-06-23 03:36:51','2019-05-22 07:01:09'),(25,16,97,545,'2017-04-17 17:08:25','2019-07-12 03:05:37'),(26,2,73,453,'2019-01-10 05:09:01','2019-03-10 05:59:45'),(27,2,63,0,'2015-12-15 13:13:03','2019-09-01 09:04:53'),(28,12,16,545,'2018-01-27 13:25:49','2019-05-01 08:09:28'),(29,8,87,592,'2020-04-18 17:32:01','2020-09-12 01:57:04'),(30,14,67,5957,'2012-06-02 02:15:48','2016-10-17 11:34:20'),(31,3,1,9552,'2013-05-31 08:50:32','2018-11-27 03:55:51'),(32,14,17,4858,'2011-08-17 15:09:13','2018-04-24 06:44:08'),(33,13,83,5542,'2012-11-02 13:09:19','2018-06-24 22:56:44'),(34,1,36,0,'2018-08-25 19:18:19','2019-12-05 16:33:52'),(35,4,52,589,'2018-11-16 12:18:54','2019-03-07 21:37:59'),(36,15,8,558,'2018-06-25 19:26:37','2019-01-17 14:40:09'),(37,6,47,9995,'2011-03-02 08:10:19','2019-11-24 09:07:34'),(38,14,48,36897,'2020-02-29 19:27:00','2020-06-08 09:50:54'),(39,1,11,5638,'2018-06-03 18:54:43','2018-03-29 13:58:45'),(40,6,92,100,'2020-06-19 00:55:56','2019-10-08 05:03:50'),(41,2,41,60,'2016-09-18 09:34:07','2019-07-19 11:59:41'),(42,12,19,436,'2012-01-31 22:58:24','2018-11-21 16:33:15'),(43,1,33,9085,'2014-01-25 16:30:41','2017-07-15 12:24:04'),(44,6,47,8742,'2013-01-06 01:06:13','2019-10-22 06:04:40'),(45,4,12,771,'2012-11-11 03:00:09','2019-03-12 04:05:23'),(46,3,32,41,'2016-09-10 16:09:01','2019-11-20 23:37:56'),(47,3,93,0,'2013-06-10 06:12:56','2019-10-25 08:22:56'),(48,9,86,7848,'2017-05-20 18:02:19','2018-12-30 04:24:35'),(49,13,53,4573,'2018-05-31 20:43:39','2019-10-01 01:19:48'),(50,4,97,8908,'2018-06-25 05:02:21','2019-12-18 16:53:31'),(51,1,6,5123,'2017-12-09 01:41:55','2019-12-17 01:02:20'),(52,1,35,8367,'2015-07-02 06:00:21','2019-02-26 23:59:30'),(53,9,86,3543,'2016-09-20 15:38:31','2018-05-11 08:28:59'),(54,14,54,5959,'2019-01-20 15:36:08','2019-02-01 03:15:01'),(55,17,14,954,'2018-06-25 15:05:03','2019-05-04 15:32:03'),(56,8,4,587,'2018-11-30 15:19:34','2019-09-19 16:13:49'),(57,10,10,588,'2015-06-05 07:21:16','2019-06-19 01:15:14'),(58,4,56,998,'2012-04-18 02:47:03','2019-10-04 11:55:13'),(59,8,57,56783,'2013-07-16 04:02:09','2018-11-09 07:48:41'),(60,1,63,451,'2020-06-19 21:12:54','2020-07-07 09:34:35'),(61,12,15,149,'2018-08-20 10:57:54','2019-02-28 14:09:31'),(62,16,82,2503,'2019-02-07 14:34:21','2019-04-09 22:58:05'),(63,2,43,9552,'2011-06-11 13:53:11','2019-06-01 15:41:46'),(64,12,83,5154,'2013-02-04 17:26:59','2019-05-28 03:39:43'),(65,17,87,14452,'2019-04-22 23:03:29','2020-04-21 00:54:15'),(66,14,99,10,'2018-03-18 09:50:40','2019-07-11 23:14:03'),(67,16,83,5746,'2018-11-18 08:08:12','2019-07-10 15:10:14'),(68,6,45,9863,'2020-05-19 06:22:36','2020-06-06 07:46:38'),(69,12,14,7904,'2020-04-03 02:17:33','2020-05-10 02:49:35'),(70,17,65,26562,'2012-06-13 10:04:36','2017-02-10 11:16:27'),(71,5,43,254,'2015-08-08 01:26:07','2018-08-14 06:25:34'),(72,12,81,1569,'2014-05-22 11:32:25','2020-06-02 20:13:21'),(73,9,90,5228,'2017-07-03 16:06:13','2017-08-15 10:26:06'),(74,7,95,428,'2012-01-09 19:55:13','2018-01-14 15:31:28'),(75,8,39,81254,'2014-07-12 17:06:05','2019-08-05 03:02:31'),(76,10,15,355,'2011-03-14 16:37:44','2018-05-05 13:32:54'),(77,10,52,6212,'2011-08-08 08:49:21','2018-09-12 10:01:31'),(78,17,62,2262,'2017-10-16 13:15:59','2018-10-07 19:17:50'),(79,16,62,25677,'2015-10-27 16:35:36','2019-12-03 16:05:57'),(80,8,89,25362,'2019-06-02 02:08:23','2018-09-02 06:25:37'),(81,9,23,16848,'2015-07-20 14:40:26','2019-10-17 06:52:09'),(82,15,42,478348,'2018-07-28 22:46:38','2019-12-31 19:38:32'),(83,1,20,47896,'2011-09-03 18:35:14','2019-08-08 18:44:32'),(84,15,74,4782,'2018-08-05 07:26:56','2019-04-11 14:26:40'),(85,6,84,4472,'2014-02-24 13:47:57','2019-11-12 20:12:19'),(86,7,61,2859,'2016-03-01 08:22:02','2019-10-24 23:54:17'),(87,5,6,0,'2017-08-09 14:32:53','2020-05-04 10:49:12'),(88,8,79,0,'2017-06-06 19:07:15','2017-03-14 10:38:30'),(89,17,78,985,'2017-12-16 01:27:45','2018-12-15 16:09:44'),(90,13,42,458,'2010-01-28 14:12:49','2018-07-30 05:50:54'),(91,3,30,8995,'2010-10-09 08:36:56','2018-08-10 09:52:27'),(92,10,70,7482,'2010-12-06 02:43:50','2015-10-06 02:31:37'),(93,14,52,773,'2011-01-11 10:31:29','2019-01-23 00:49:58'),(94,6,75,7841,'2018-12-02 11:44:33','2019-11-17 19:08:21'),(95,3,75,85672,'2015-05-10 12:30:43','2019-12-10 07:55:19'),(96,11,63,6433,'2012-07-12 15:51:06','2019-10-29 06:57:45'),(97,17,50,6506,'2015-07-24 07:39:58','2017-11-23 16:13:54'),(98,1,4,54602,'2017-09-29 15:08:36','2018-12-19 05:22:57'),(99,12,90,0,'2020-05-04 09:17:53','2020-06-28 15:11:11'),(100,14,4,34352,'2011-03-24 10:19:35','2015-11-14 02:58:07');
/*!40000 ALTER TABLE `channel_points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friendship_statuses`
--

DROP TABLE IF EXISTS `friendship_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friendship_statuses` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(150) NOT NULL COMMENT 'Название статуса',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Статусы дружбы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friendship_statuses`
--

LOCK TABLES `friendship_statuses` WRITE;
/*!40000 ALTER TABLE `friendship_statuses` DISABLE KEYS */;
INSERT INTO `friendship_statuses` VALUES (1,'Requested','2020-09-20 20:53:37','2020-09-20 20:53:37'),(2,'Confirmed','2020-09-20 20:53:37','2020-09-20 20:53:37'),(3,'Rejected','2020-09-20 20:53:37','2020-09-20 20:53:37');
/*!40000 ALTER TABLE `friendship_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friendships`
--

DROP TABLE IF EXISTS `friendships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friendships` (
  `user_id` int unsigned NOT NULL COMMENT 'Ссылка на инициатора дружеских отношений',
  `friend_id` int unsigned NOT NULL COMMENT 'Ссылка на получателя приглашения дружить',
  `status_id` int unsigned NOT NULL COMMENT 'Ссылка на статус (текущее состояние) отношений',
  `requested_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время отправления приглашения дружить',
  `confirmed_at` datetime DEFAULT NULL COMMENT 'Время подтверждения приглашения',
  PRIMARY KEY (`user_id`,`friend_id`) COMMENT 'Составной первичный ключ',
  KEY `friendship_friend_id_fk` (`friend_id`),
  KEY `friendship_status_id_fk` (`status_id`),
  CONSTRAINT `friendship_friend_id_fk` FOREIGN KEY (`friend_id`) REFERENCES `profiles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `friendship_status_id_fk` FOREIGN KEY (`status_id`) REFERENCES `friendship_statuses` (`id`),
  CONSTRAINT `friendship_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `profiles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Таблица дружбы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friendships`
--

LOCK TABLES `friendships` WRITE;
/*!40000 ALTER TABLE `friendships` DISABLE KEYS */;
INSERT INTO `friendships` VALUES (1,46,3,'2015-05-08 00:00:00','2019-09-24 00:00:00'),(4,46,3,'2015-07-01 00:00:00','2018-11-25 00:00:00'),(5,2,2,'2013-03-18 00:00:00','2019-05-11 00:00:00'),(5,9,3,'2014-08-14 00:00:00','2020-06-05 00:00:00'),(5,64,3,'2016-12-10 00:00:00','2020-04-03 00:00:00'),(5,91,1,'2014-03-28 00:00:00','2020-01-22 00:00:00'),(6,10,1,'2016-12-31 00:00:00','2017-07-31 00:00:00'),(6,24,1,'2017-08-25 00:00:00','2020-05-02 00:00:00'),(6,38,2,'2016-07-01 00:00:00','2018-08-16 00:00:00'),(7,39,1,'2016-10-23 00:00:00','2020-04-07 00:00:00'),(8,5,2,'2017-04-05 00:00:00','2019-05-08 00:00:00'),(8,10,1,'2015-10-03 00:00:00','2019-10-17 00:00:00'),(8,86,3,'2016-09-22 00:00:00','2019-09-17 00:00:00'),(9,35,2,'2015-02-03 00:00:00','2020-08-27 00:00:00'),(10,51,3,'2014-09-07 00:00:00','2017-02-13 00:00:00'),(10,96,1,'2016-03-20 00:00:00','2017-03-10 00:00:00'),(12,68,1,'2014-10-02 00:00:00','2018-01-24 00:00:00'),(14,47,3,'2016-04-13 00:00:00','2019-02-09 00:00:00'),(14,55,1,'2017-04-08 00:00:00','2018-04-11 00:00:00'),(15,42,2,'2016-08-12 00:00:00','2020-06-08 00:00:00'),(16,30,1,'2015-06-11 00:00:00','2018-01-26 00:00:00'),(17,38,1,'2015-05-20 00:00:00','2020-03-22 00:00:00'),(18,15,3,'2016-06-08 00:00:00','2019-09-07 00:00:00'),(18,78,3,'2015-08-23 00:00:00','2017-08-05 00:00:00'),(19,55,2,'2018-04-26 00:00:00','2020-02-24 00:00:00'),(21,41,2,'2016-11-19 00:00:00','2019-03-01 00:00:00'),(23,65,3,'2015-02-06 00:00:00','2019-04-12 00:00:00'),(25,6,3,'2019-10-09 00:00:00','2020-07-16 00:00:00'),(25,29,3,'2018-08-01 00:00:00','2020-04-24 00:00:00'),(25,83,2,'2017-10-03 00:00:00','2020-08-04 00:00:00'),(26,41,1,'2018-09-25 00:00:00','2019-10-08 00:00:00'),(26,67,1,'2016-06-25 00:00:00','2020-05-28 00:00:00'),(27,46,1,'2017-12-14 00:00:00','2019-12-22 00:00:00'),(27,57,1,'2017-03-08 00:00:00','2020-04-03 00:00:00'),(27,70,1,'2018-05-18 00:00:00','2019-11-12 00:00:00'),(27,81,1,'2018-04-04 00:00:00','2019-12-30 00:00:00'),(31,68,2,'2019-01-25 00:00:00','2020-09-08 00:00:00'),(36,21,1,'2020-04-25 00:00:00','2020-09-20 00:00:00'),(36,60,3,'2019-06-14 00:00:00','2019-03-05 00:00:00'),(38,5,1,'2018-06-11 00:00:00','2020-04-06 00:00:00'),(38,66,3,'2019-11-14 00:00:00','2020-04-15 00:00:00'),(39,48,1,'2018-08-17 00:00:00','2019-10-26 00:00:00'),(40,16,2,'2019-12-28 00:00:00','2020-04-29 00:00:00'),(40,57,3,'2014-07-29 00:00:00','2018-05-03 00:00:00'),(41,34,1,'2019-01-07 00:00:00','2020-06-23 00:00:00'),(43,51,1,'2015-09-16 00:00:00','2019-02-01 00:00:00'),(44,44,1,'2016-01-09 00:00:00','2018-04-01 00:00:00'),(45,73,2,'2017-02-19 00:00:00','2020-07-17 00:00:00'),(46,93,3,'2019-11-30 00:00:00','2020-03-09 00:00:00'),(47,19,2,'2017-12-17 00:00:00','2019-08-09 00:00:00'),(47,78,3,'2018-07-27 00:00:00','2019-01-01 00:00:00'),(47,92,2,'2019-04-04 00:00:00','2020-01-14 00:00:00'),(48,8,2,'2019-08-08 00:00:00','2020-03-15 00:00:00'),(48,55,2,'2019-02-06 00:00:00','2020-02-25 00:00:00'),(49,8,3,'2019-06-23 00:00:00','2020-06-20 00:00:00'),(49,61,1,'2019-07-06 00:00:00','2020-07-05 00:00:00'),(49,85,1,'2019-07-16 00:00:00','2020-02-16 00:00:00'),(50,57,1,'2018-08-22 00:00:00','2020-03-06 00:00:00'),(50,74,3,'2017-07-19 00:00:00','2020-05-26 00:00:00'),(51,26,3,'2018-06-19 00:00:00','2019-12-27 00:00:00'),(54,34,3,'2018-04-28 00:00:00','2020-08-14 00:00:00'),(54,70,2,'2019-11-16 00:00:00','2020-03-13 00:00:00'),(55,46,2,'2020-01-23 00:00:00','2020-02-16 00:00:00'),(56,46,3,'2020-03-16 00:00:00','2020-06-14 00:00:00'),(58,53,3,'2019-10-01 00:00:00','2020-04-25 00:00:00'),(60,57,1,'2019-03-31 00:00:00','2019-09-29 00:00:00'),(61,16,1,'2018-10-09 00:00:00','2019-09-28 00:00:00'),(61,57,1,'2019-08-06 00:00:00','2019-12-31 00:00:00'),(62,5,3,'2018-10-11 00:00:00','2020-02-16 00:00:00'),(63,44,3,'2018-07-26 00:00:00','2019-11-04 00:00:00'),(63,47,1,'2019-06-08 00:00:00','2020-04-28 00:00:00'),(66,66,2,'2019-07-19 00:00:00','2019-11-01 00:00:00'),(67,1,3,'2019-05-09 00:00:00','2019-10-01 00:00:00'),(67,7,3,'2018-03-17 00:00:00','2020-06-24 00:00:00'),(67,40,2,'2019-06-06 00:00:00','2019-12-17 00:00:00'),(68,12,3,'2018-02-02 00:00:00','2020-02-08 00:00:00'),(68,66,3,'2018-03-18 00:00:00','2020-05-24 00:00:00'),(69,53,1,'2019-07-28 00:00:00','2020-02-07 00:00:00'),(69,71,3,'2019-08-25 00:00:00','2020-05-13 00:00:00'),(71,20,3,'2019-05-04 00:00:00','2020-04-16 00:00:00'),(73,72,2,'2020-06-11 00:00:00','2020-09-02 00:00:00'),(76,15,3,'2019-02-08 00:00:00','2019-12-21 00:00:00'),(78,46,3,'2019-11-22 00:00:00','2020-05-10 00:00:00'),(79,98,1,'2018-03-23 00:00:00','2019-12-19 00:00:00'),(81,5,3,'2020-03-04 00:00:00','2020-06-04 00:00:00'),(85,6,1,'2018-09-13 00:00:00','2019-12-14 00:00:00'),(86,1,3,'2018-05-30 00:00:00','2020-01-23 00:00:00'),(86,81,3,'2017-10-18 00:00:00','2019-08-09 00:00:00'),(89,18,2,'2017-08-23 00:00:00','2020-03-23 00:00:00'),(89,21,1,'2018-03-23 00:00:00','2020-02-24 00:00:00'),(92,27,2,'2019-10-05 00:00:00','2020-07-28 00:00:00'),(94,65,3,'2018-02-12 00:00:00','2020-01-09 00:00:00'),(95,1,2,'2019-10-20 00:00:00','2020-08-29 00:00:00'),(95,52,2,'2019-08-10 00:00:00','2019-10-14 00:00:00'),(96,2,3,'2019-04-21 00:00:00','2020-08-15 00:00:00'),(96,84,2,'2017-03-18 00:00:00','2018-10-07 00:00:00'),(97,28,2,'2019-03-13 00:00:00','2020-05-11 00:00:00'),(98,10,3,'2017-03-13 00:00:00','2019-11-23 00:00:00'),(100,7,3,'2019-10-07 00:00:00','2020-09-14 00:00:00'),(100,13,1,'2017-01-12 00:00:00','2019-10-15 00:00:00');
/*!40000 ALTER TABLE `friendships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int unsigned NOT NULL COMMENT 'Ссылка на пользователя, который создал файл',
  `filename` varchar(255) NOT NULL COMMENT 'Путь к файлу',
  `size` int NOT NULL COMMENT 'Размер файла',
  `media_type_id` int unsigned NOT NULL COMMENT 'Ссылка на тип контента',
  `link_channel` int unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  KEY `media_filename_idx` (`filename`),
  KEY `media_size_idx` (`size`),
  KEY `media_user_id_fk` (`user_id`),
  KEY `media_media_type_id_fk` (`media_type_id`),
  KEY `media_link_channel_fk` (`link_channel`),
  CONSTRAINT `media_link_channel_fk` FOREIGN KEY (`link_channel`) REFERENCES `streamers_channels` (`id`),
  CONSTRAINT `media_media_type_id_fk` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`),
  CONSTRAINT `media_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `profiles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Медиафайлы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,44,'reprehenderit',26520,2,3,'2019-01-23 12:10:57','2020-01-28 00:09:14'),(2,87,'provident',320915678,1,1,'2016-12-05 00:51:48','2019-03-01 11:14:29'),(3,27,'ipsa',99446,2,8,'2019-08-28 12:44:22','2020-04-22 21:37:42'),(4,71,'aliquid',3737,1,1,'2017-05-31 04:36:16','2019-12-24 14:50:01'),(5,44,'atque',460726,1,4,'2017-12-20 11:29:50','2020-01-27 00:22:29'),(6,64,'est',809416410,2,4,'2019-04-26 10:25:56','2020-02-25 23:56:14'),(7,50,'possimus',3783,1,7,'2018-05-17 08:08:49','2020-01-28 01:02:38'),(8,67,'rerum',925104485,2,11,'2016-01-23 19:15:10','2019-12-17 01:22:39'),(9,31,'sit',49845,2,10,'2013-12-10 23:38:02','2020-01-24 18:20:43'),(10,18,'inventore',7089059,1,2,'2014-03-06 14:06:43','2018-12-13 19:53:57'),(11,27,'et',8212375,2,16,'2018-08-26 12:36:14','2019-01-30 16:45:25'),(12,41,'voluptatibus',3537,1,4,'2017-02-03 11:35:49','2020-06-24 14:20:49'),(13,43,'iure',3783,2,1,'2011-03-30 04:04:08','2017-08-10 16:39:30'),(14,87,'animi',2682,1,1,'2012-04-19 18:39:55','2017-10-23 12:51:31'),(15,89,'autem',6382,2,7,'2011-11-28 06:04:28','2015-04-12 21:18:38'),(16,10,'exercitationem',55949053,2,16,'2013-08-26 02:33:51','2019-01-03 04:55:48'),(17,32,'et',4926,2,1,'2011-11-12 11:30:53','2018-07-18 07:21:52'),(18,69,'reiciendis',6382,2,13,'2018-03-12 18:24:58','2019-04-23 08:19:27'),(19,31,'nihil',38980,2,7,'2019-10-15 23:39:54','2020-01-18 16:13:33'),(20,86,'non',4463,1,9,'2014-10-29 02:32:01','2018-12-08 15:28:03'),(21,94,'sit',71687376,1,2,'2014-06-23 22:38:46','2019-11-16 03:40:37'),(22,85,'dolorem',9022,2,10,'2013-04-28 03:12:58','2020-08-18 18:40:27'),(23,9,'et',649990,1,6,'2018-04-23 21:46:33','2019-12-20 08:46:16'),(24,12,'occaecati',29050470,1,13,'2015-07-31 20:59:08','2019-09-22 13:30:13'),(25,15,'quia',5881434,2,11,'2015-07-14 06:08:36','2018-12-22 22:23:00'),(26,52,'et',252,1,2,'2012-08-19 16:39:36','2016-03-27 03:27:13'),(27,45,'minus',90,1,2,'2016-08-15 14:29:20','2017-08-03 23:26:45'),(28,49,'quos',89562743,1,13,'2013-05-25 01:11:41','2014-07-30 14:42:30'),(29,21,'pariatur',49,1,13,'2011-10-11 00:19:10','2014-05-03 13:06:20'),(30,57,'dolorum',10771305,1,15,'2014-08-05 00:24:07','2017-04-11 11:14:30'),(31,8,'harum',9625,1,5,'2011-04-11 03:55:58','2019-04-30 14:29:13'),(32,19,'quisquam',8620,1,2,'2016-03-11 09:27:55','2018-11-27 22:03:56'),(33,76,'vitae',3722,1,6,'2014-06-11 04:06:34','2018-01-26 11:04:26'),(34,7,'ipsa',345856,1,7,'2013-05-28 07:25:51','2019-05-16 17:11:01'),(35,80,'et',937,1,7,'2011-01-26 05:35:54','2018-04-03 00:04:08'),(36,41,'quod',2370,2,9,'2012-02-16 03:49:15','2018-09-01 01:27:27'),(37,51,'unde',83782,1,15,'2011-07-27 07:14:25','2020-07-15 07:07:27'),(38,61,'non',9939,2,17,'2013-01-03 08:45:15','2016-12-05 13:40:27'),(39,37,'et',9373,1,6,'2011-05-29 21:18:55','2015-04-01 09:00:03'),(40,8,'asperiores',899304948,2,10,'2011-12-12 15:06:31','2017-08-19 13:19:27'),(41,94,'nam',26733,2,13,'2011-07-07 01:36:14','2016-05-06 09:24:30'),(42,20,'sint',66243,2,14,'2015-12-27 01:46:15','2020-08-26 10:22:13'),(43,28,'qui',23622,2,15,'2013-06-01 06:16:13','2016-08-19 04:17:37'),(44,59,'beatae',6906688,2,2,'2017-09-04 15:28:10','2020-04-27 21:41:05'),(45,100,'non',7168462,1,8,'2012-11-26 23:33:51','2016-04-04 05:48:30'),(46,39,'dolore',369,2,6,'2013-10-02 02:30:52','2020-08-11 11:01:40'),(47,86,'velit',103634,1,12,'2017-11-11 02:47:50','2018-07-04 23:03:36'),(48,73,'repellat',2899464,2,9,'2012-01-09 03:58:25','2020-05-17 19:24:58'),(49,68,'ut',238910,1,9,'2019-08-28 19:20:15','2020-02-05 00:20:54'),(50,1,'repellendus',145444973,1,2,'2018-04-23 07:16:20','2019-07-19 20:54:55'),(51,58,'qui',145165884,1,13,'2016-11-15 07:46:49','2019-05-13 17:48:31'),(52,33,'et',1363,2,11,'2017-04-16 20:53:04','2019-10-25 04:35:10'),(53,11,'aut',9168,2,4,'2012-05-07 00:29:51','2016-03-11 02:41:07'),(54,98,'id',4132575,1,16,'2018-03-10 02:07:22','2020-03-07 11:37:03'),(55,7,'architecto',54879,1,6,'2010-04-17 03:22:19','2015-11-26 04:56:31'),(56,54,'cumque',7234,2,4,'2015-09-07 22:08:04','2019-05-27 18:56:59'),(57,88,'tenetur',47431,2,11,'2011-06-27 19:27:47','2015-06-06 00:29:29'),(58,55,'omnis',6658538,1,10,'2018-01-21 11:21:14','2018-04-18 08:44:01'),(59,4,'sed',14114,1,16,'2011-10-26 15:40:55','2016-06-24 03:38:11'),(60,55,'nam',854239663,1,6,'2017-03-23 23:58:04','2017-07-19 23:40:20'),(61,64,'sed',41188,2,12,'2014-02-10 04:13:02','2016-09-01 22:59:13'),(62,40,'et',14154,2,5,'2015-01-22 16:52:23','2018-01-26 10:20:54'),(63,2,'id',42321149,1,2,'2014-07-29 05:05:23','2019-09-28 13:14:12'),(64,24,'non',55410,1,9,'2018-10-12 13:38:58','2018-11-19 12:40:10'),(65,12,'fuga',4634,1,16,'2012-07-15 06:21:32','2019-05-02 09:46:01'),(66,48,'perferendis',15703,2,12,'2017-12-25 16:19:26','2018-03-21 21:47:20'),(67,70,'esse',8964,2,6,'2016-01-02 01:53:50','2017-06-02 17:16:54'),(68,29,'id',30404,1,13,'2013-03-18 18:10:26','2016-12-21 18:20:23'),(69,87,'voluptatum',95673860,1,13,'2013-12-31 01:08:50','2015-11-18 21:41:56'),(70,80,'nulla',4716,2,14,'2012-08-18 08:38:04','2017-08-08 02:49:49'),(71,15,'nulla',4267,1,8,'2018-04-18 04:16:39','2019-06-07 13:00:43'),(72,85,'exercitationem',7260,2,8,'2017-04-23 20:41:05','2018-12-27 21:00:48'),(73,10,'quia',64808,2,9,'2014-04-16 00:45:00','2015-08-04 20:46:41'),(74,19,'harum',4514,2,9,'2019-11-28 13:11:46','2020-06-19 03:04:13'),(75,68,'repellendus',2,1,11,'2011-10-24 15:53:58','2012-09-05 05:29:15'),(76,58,'rerum',13012,2,5,'2013-05-09 16:35:13','2015-05-10 09:55:15'),(77,27,'veniam',30697551,1,14,'2018-01-01 04:37:30','2019-07-31 10:25:38'),(78,60,'et',8603,1,15,'2018-06-04 20:03:51','2019-02-20 21:40:00'),(79,31,'officia',375,1,17,'2015-07-04 10:36:35','2016-10-17 01:59:12'),(80,7,'laudantium',4426,1,10,'2017-06-19 07:09:03','2019-10-23 00:17:43'),(81,89,'magni',473673201,1,15,'2010-10-26 23:40:56','2013-11-14 14:32:26'),(82,34,'et',3898,1,10,'2011-10-04 14:57:01','2012-11-09 18:41:30'),(83,76,'qui',3731,1,4,'2020-04-24 00:54:06','2020-06-08 13:36:35'),(84,24,'quibusdam',95439394,1,3,'2018-01-01 01:37:42','2018-10-10 22:22:41'),(85,76,'totam',1961800,1,3,'2014-02-08 18:01:37','2015-02-21 16:07:01'),(86,39,'sint',2370,2,12,'2012-03-27 18:41:29','2017-07-23 07:24:59'),(87,67,'ducimus',43344030,2,15,'2018-09-15 04:11:05','2019-08-25 08:52:05'),(88,46,'et',2497,2,7,'2017-03-06 19:50:24','2017-05-23 13:14:21'),(89,32,'nihil',9197970,2,13,'2018-03-15 16:19:45','2019-01-01 11:31:54'),(90,27,'blanditiis',40,2,15,'2015-09-03 05:17:31','2018-05-08 14:20:30'),(91,85,'iste',7969,2,3,'2014-02-23 03:19:28','2019-07-19 11:57:16'),(92,72,'ex',2373,1,6,'2014-01-29 18:59:19','2019-09-18 04:32:15'),(93,25,'qui',8269,2,10,'2015-07-17 20:43:05','2017-04-06 18:12:57'),(94,47,'nesciunt',7315623,1,17,'2017-06-18 15:31:21','2018-02-17 16:28:21'),(95,61,'autem',3373,2,2,'2017-06-05 15:02:07','2019-02-22 03:07:39'),(96,78,'sit',36730,1,13,'2014-01-31 05:43:32','2019-02-17 15:31:06'),(97,46,'eos',35630,2,12,'2013-03-16 07:27:55','2014-05-11 03:06:07'),(98,34,'laborum',8008461,1,4,'2017-04-27 15:24:08','2018-07-31 21:34:08'),(99,71,'voluptatem',6,2,1,'2016-12-15 00:08:33','2019-02-23 02:46:39'),(100,43,'tenetur',69,2,16,'2011-07-20 07:05:11','2019-06-10 20:47:35');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `validate_filename_size_insert` BEFORE INSERT ON `media` FOR EACH ROW BEGIN
  IF NEW.filename IS NULL AND NEW.`size` IS NULL THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Both name and description are NULL';
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `validate_filename_size_update` BEFORE UPDATE ON `media` FOR EACH ROW BEGIN
  IF NEW.filename IS NULL AND NEW.`size` IS NULL THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Both filename or size are NULL';
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `media_types`
--

DROP TABLE IF EXISTS `media_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) NOT NULL COMMENT 'Название типа',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Типы медиафайлов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_types`
--

LOCK TABLES `media_types` WRITE;
/*!40000 ALTER TABLE `media_types` DISABLE KEYS */;
INSERT INTO `media_types` VALUES (1,'video_broadcast','2020-09-26 21:02:32','2020-09-26 21:02:32'),(2,'clip','2020-09-26 21:02:32','2020-09-26 21:02:32');
/*!40000 ALTER TABLE `media_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `from_user_id` int unsigned NOT NULL COMMENT 'Ссылка на отправителя сообщения',
  `to_user_id` int unsigned NOT NULL COMMENT 'Ссылка на получателя сообщения',
  `body` text NOT NULL COMMENT 'Текст сообщения',
  `is_important` tinyint(1) DEFAULT NULL COMMENT 'Признак важности',
  `is_delivered` tinyint(1) DEFAULT NULL COMMENT 'Признак доставки',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  KEY `messages_from_user_id_fk` (`from_user_id`),
  KEY `messages_to_user_id_fk` (`to_user_id`),
  CONSTRAINT `messages_from_user_id_fk` FOREIGN KEY (`from_user_id`) REFERENCES `profiles` (`id`),
  CONSTRAINT `messages_to_user_id_fk` FOREIGN KEY (`to_user_id`) REFERENCES `profiles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=401 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Сообщения';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (301,69,15,'Dolor minus ut tempora et dolor velit sit. Officia culpa alias reprehenderit optio illo eaque quod omnis. Quod minus qui quisquam non repellat quia delectus.',0,1,'2018-09-02 00:00:00','2018-09-02 00:00:00'),(302,45,70,'Perspiciatis labore perspiciatis maxime sunt. Ut aut delectus beatae nisi aliquid. Aut vel architecto voluptas rerum.',1,1,'2017-11-24 00:00:00','2020-08-30 00:00:00'),(303,70,25,'Eveniet magni libero quam labore est. Cum voluptas quia et cupiditate assumenda sed.',1,0,'2019-04-04 00:00:00','2019-04-04 00:00:00'),(304,8,64,'Debitis maxime voluptas rem. Assumenda quibusdam hic quasi qui. Qui consequuntur vitae adipisci ullam tempora officiis at. Voluptatum vero dolores laudantium recusandae ad.',0,0,'2015-04-15 00:00:00','2020-08-30 00:00:00'),(305,43,73,'Laboriosam ab et quod exercitationem. Quisquam voluptatem quia occaecati adipisci cumque. Asperiores veniam ea distinctio fugit eum excepturi et. Vel doloremque ut harum ut eum iusto eum.',0,0,'2012-06-02 00:00:00','2013-06-27 00:00:00'),(306,19,79,'Aspernatur sit omnis hic aut earum eligendi perspiciatis. Molestiae omnis nihil repellendus eum voluptatem et voluptatum ut. Repellat culpa cumque officiis architecto vel.',1,1,'2012-02-14 00:00:00','2012-03-24 00:00:00'),(307,97,5,'Consectetur consequatur facilis iste temporibus quia. Aut omnis ea sint eos.',1,1,'2012-11-05 00:00:00','2014-07-25 00:00:00'),(308,60,87,'Repellat reiciendis ducimus qui et. Ut quae deleniti voluptatem molestiae provident. Adipisci vel beatae a eveniet.',1,1,'2018-07-13 00:00:00','2018-07-17 00:00:00'),(309,24,13,'Enim laudantium voluptatibus modi quo tempora quia commodi. Sapiente sunt placeat eum at consequatur harum. Necessitatibus natus fugiat et ullam beatae nemo. Illo quod voluptates provident ut sit dicta accusantium.',0,1,'2019-07-21 00:00:00','2019-07-22 00:00:00'),(310,12,66,'Debitis assumenda ipsam saepe. Ullam aperiam quod illo magni et libero. Ullam doloremque quibusdam pariatur nobis quis sunt.',0,1,'2019-06-11 00:00:00','2019-06-12 00:00:00'),(311,41,45,'Corporis totam dicta ut dolorem. Quo qui consequatur quis provident nihil qui. Rerum quia voluptas corrupti nihil deleniti iure. Voluptas et eaque quae alias vel saepe id.',1,1,'2019-09-13 00:00:00','2019-09-28 00:00:00'),(312,45,4,'Quis commodi possimus inventore et qui tempore. Minus dolores enim vitae et consequatur dolores quis. Doloribus aut occaecati molestiae distinctio. Maxime ut voluptatem tempora aut voluptas amet.',1,0,'2020-07-05 00:00:00','2020-07-15 00:00:00'),(313,48,77,'Eum enim quae eos voluptas sit nostrum. Nisi doloribus architecto maiores enim sit. Modi doloribus architecto quibusdam voluptatem aut beatae.',1,1,'2018-04-23 00:00:00','2018-06-01 00:00:00'),(314,24,8,'Nam repudiandae praesentium neque. Earum aut unde quasi maiores et libero omnis et. Sit nihil accusantium cupiditate autem velit. Accusantium excepturi molestiae assumenda eveniet et.',0,0,'2019-01-01 00:00:00','2019-01-06 00:00:00'),(315,53,40,'Voluptas sequi maxime qui occaecati ducimus dolorem voluptatem iure. Eaque dolorem libero mollitia. Aut sed error facere doloribus.',1,0,'2018-10-04 00:00:00','2018-11-08 00:00:00'),(316,48,22,'Et quia pariatur non sit soluta. Voluptatem perferendis laboriosam velit libero. Eveniet voluptatem voluptatum et eos. Voluptate iure tempore qui modi asperiores.',1,1,'2018-04-18 00:00:00','2018-05-05 00:00:00'),(317,55,92,'Officia omnis voluptatibus quos dolorem sequi. Et illum inventore eaque debitis ratione placeat enim.',1,0,'2020-04-08 00:00:00','2020-04-16 00:00:00'),(318,91,24,'Impedit omnis quo maxime atque. At non sunt aut. Similique veniam tempora tempora.',1,0,'2019-05-12 00:00:00','2019-05-28 00:00:00'),(319,17,98,'Nobis dolorem pariatur quis corporis voluptate natus. Perspiciatis esse sunt corporis aut doloremque nihil iste. Aut nesciunt illo voluptatem officiis dolores omnis.',1,1,'2017-07-27 00:00:00','2017-08-09 00:00:00'),(320,88,59,'Ut corrupti officiis enim nihil autem. Consequuntur ea dolore maxime sapiente asperiores. Quod esse incidunt amet neque ratione et voluptatem. Ut cupiditate ipsum in.',0,1,'2016-11-07 00:00:00','2016-11-30 00:00:00'),(321,70,6,'Nihil assumenda reiciendis in non accusantium incidunt et. Adipisci ut aut et repellendus neque molestiae consequatur. Quia dolores ullam ut quia amet enim aut sequi. In repellat ut veritatis minus sint repellat commodi.',1,1,'2018-05-11 00:00:00','2018-05-16 00:00:00'),(322,37,67,'Quis eveniet esse saepe nihil accusantium cum. Atque nisi rem consectetur dolor. Autem ex quis voluptas voluptatum consequatur.',1,1,'2019-01-23 00:00:00','2019-04-16 00:00:00'),(323,11,97,'Sed sit vel nihil et excepturi voluptas placeat. Nulla laboriosam sit dolor cumque maxime. Soluta ducimus architecto consequuntur. Aliquam cum ut voluptatum aut alias quas.',1,1,'2016-06-01 00:00:00','2016-06-08 00:00:00'),(324,53,34,'Sequi temporibus qui quo ea exercitationem. Similique officia sit et dolores. Possimus illo voluptatibus suscipit alias.',0,1,'2014-12-07 00:00:00','2014-12-19 00:00:00'),(325,10,64,'Quo est labore repudiandae. Rem aut quia tenetur sit recusandae iure repellendus. Impedit consectetur animi beatae dolores voluptas provident et repudiandae.',0,1,'2017-05-01 00:00:00','2017-05-20 00:00:00'),(326,100,50,'Est voluptatem beatae et enim unde optio. Cupiditate rerum at sed eos ut. Exercitationem sed sint deleniti et totam. Voluptates aut est laudantium beatae atque.',0,0,'2020-08-08 00:00:00','2020-08-16 00:00:00'),(327,9,44,'Ipsum sequi ut aut ducimus adipisci. Et accusamus harum nihil. Voluptatum sit totam accusantium cum. Ipsum aut quasi ullam quas libero et consequuntur harum. Voluptas aut ut doloribus et eum occaecati rerum incidunt.',0,1,'2018-12-17 00:00:00','2018-12-26 00:00:00'),(328,53,57,'Voluptatem nesciunt reiciendis fuga. Unde iste quod error voluptatum dolorem quam. Nemo beatae et qui voluptas. Eius nisi repellendus neque id consequatur fugiat harum dolorum.',0,0,'2017-12-17 00:00:00','2017-12-19 00:00:00'),(329,21,77,'Autem quis quae qui quia. Et qui laudantium praesentium qui quia. Eveniet eum id tempore sed laboriosam sed. Minus facilis et sapiente perferendis vel.',1,0,'2017-04-06 00:00:00','2017-05-07 00:00:00'),(330,65,74,'Odio eos nisi itaque et veniam voluptatem voluptatem velit. Et commodi non aliquam labore et recusandae. Laborum aut nemo porro libero officia magni.',1,0,'2017-10-23 00:00:00','2017-11-12 00:00:00'),(331,17,12,'Eligendi molestiae quam ea nostrum minima est et. Sed dolor reprehenderit similique ex. Iure doloribus animi dolorum nulla molestiae et nisi et.',1,0,'2017-07-09 00:00:00','2017-07-17 00:00:00'),(332,95,71,'Dolores dolores sunt aspernatur qui enim hic. Voluptatem quibusdam aut et sed dolorem. Nisi ut et et perferendis.',1,0,'2019-05-12 00:00:00','2019-05-20 00:00:00'),(333,4,85,'Sunt sit debitis iure et at. Optio nisi odio ut vitae consequatur et. Veniam reprehenderit vitae deleniti sed rerum.',1,0,'2020-03-06 00:00:00','2020-03-09 00:00:00'),(334,95,20,'Laborum est a nemo quam dignissimos doloremque esse. Cupiditate amet voluptatum adipisci velit voluptate voluptatum dolor. Et magnam eius et quisquam. Molestiae id eos qui quia est.',1,0,'2011-10-12 00:00:00','2015-08-02 07:25:53'),(335,82,83,'Provident rerum laborum ducimus doloremque porro. Ipsa non eaque qui delectus iure. Deserunt exercitationem est quis aperiam.',1,1,'2016-03-24 00:00:00','2012-02-11 00:00:00'),(336,79,52,'Ipsum et qui et possimus. Corporis voluptatem nam autem nemo. Alias ea atque modi optio odio ea dolorum. Expedita nemo fugiat repudiandae vel reiciendis.',1,1,'2018-06-23 00:00:00','2018-08-12 00:00:00'),(337,88,16,'Labore omnis est facere unde explicabo error. Est occaecati maxime accusamus. Est sunt qui veritatis. Beatae repudiandae vero quia cupiditate cumque quia corrupti. Qui repellat voluptatem ipsam.',1,0,'2013-11-04 00:00:00','2013-11-05 00:00:00'),(338,18,99,'Minus odio accusamus possimus totam libero qui non modi. Nihil sed libero et error nam eum quo repellendus. Voluptatem vero quaerat at non veritatis voluptatem. Nobis maiores voluptas occaecati.',1,1,'2018-06-28 00:00:00','2018-06-29 00:00:00'),(339,13,70,'Eligendi voluptate ut unde tenetur magni earum. Sit rerum aliquid amet quo omnis. Id et quis possimus molestias.',0,0,'2014-12-03 00:00:00','2014-12-05 00:00:00'),(340,32,22,'Incidunt omnis placeat quo neque recusandae voluptatem ducimus. Atque placeat at vel mollitia assumenda doloribus. Deserunt autem voluptatem eveniet voluptatem amet amet velit eos. Id quis praesentium eveniet non.',0,1,'2020-06-04 00:00:00','2020-07-01 00:00:00'),(341,34,31,'Et voluptatum velit asperiores et sint at. Perspiciatis ipsa ut id quia dolores dicta. Iure minima aut et nobis. Quia voluptas aliquam voluptates ab vel suscipit. Voluptas ab eum doloribus qui.',0,1,'2013-03-01 00:00:00','2013-03-24 00:00:00'),(342,71,42,'Repellendus occaecati officia sit sint et nihil officiis. Rem eius aperiam incidunt in illo voluptatem. Qui repellendus eaque corrupti consequuntur est excepturi. Quisquam rem aut rerum omnis quod quod.',0,0,'2015-07-28 00:00:00','2015-07-30 00:00:00'),(343,75,24,'Sint voluptate veritatis est et quia unde recusandae. Cupiditate provident iure optio quia culpa et. Nisi culpa dolorem voluptate dolores numquam quaerat.',1,0,'2014-05-10 00:00:00','2014-05-14 00:00:00'),(344,99,95,'Quidem nesciunt aut aut aliquid voluptas ratione magni. Aut nulla inventore aspernatur occaecati. Quia dolorem autem explicabo facere beatae. Omnis in vel dolorem possimus est qui in molestiae. Omnis totam sapiente nihil molestiae laudantium.',0,1,'2018-07-16 00:00:00','2018-07-29 00:00:00'),(345,1,63,'Et aspernatur maiores consectetur sed nulla. A ut numquam aperiam in voluptatibus repellendus. Facilis aliquid natus qui fuga et et. Voluptate officiis eligendi culpa molestiae deserunt.',1,0,'2016-09-07 00:00:00','2016-09-08 00:00:00'),(346,69,17,'Sit ea amet enim deserunt tempore dicta molestias. Quam nulla ut consequatur ex. Voluptatem est error mollitia eveniet.',1,1,'2019-07-14 00:00:00','2019-07-17 00:00:00'),(347,74,63,'Sit aut quas quis veniam. Hic aliquid aut similique aut quisquam. Et incidunt molestiae omnis et saepe iusto qui.',1,1,'2019-12-25 00:00:00','2020-01-01 00:00:00'),(348,88,78,'Ratione consequuntur dolorem nihil inventore iusto qui. Vel ut non ut nisi magnam soluta itaque. Quaerat velit sequi ducimus et culpa illum.',1,1,'2015-10-12 00:00:00','2015-10-13 00:00:00'),(349,47,82,'Sit aliquam non corrupti dolorum occaecati quia et. Iure rerum in unde qui vitae.',1,1,'2018-10-22 09:26:40','2013-01-07 15:00:20'),(350,98,29,'Voluptatibus deleniti autem aut occaecati suscipit. Ut cupiditate minus dolores aut aut neque. Aperiam incidunt sequi optio sint a autem. Cupiditate provident quae rem suscipit eaque.',1,0,'2017-06-09 00:00:00','2017-06-23 00:00:00'),(351,64,77,'Expedita et eius ea voluptatum fuga id. Quo accusamus vel dolorem omnis. Laborum rerum eos id quisquam qui inventore. Optio cupiditate tempore accusantium voluptatibus eos qui sit ab.',1,0,'2018-06-19 00:00:00','2018-07-07 00:00:00'),(352,80,52,'Veritatis quaerat voluptates totam. Harum ex ullam quam aut temporibus beatae.',1,1,'2016-11-30 00:00:00','2016-12-06 00:00:00'),(353,92,97,'Tempora minima minus soluta quia quae. Pariatur aut eos et ab rerum aut non consectetur. Molestias tenetur adipisci veniam deleniti esse.',0,1,'2020-05-28 00:00:00','2020-06-01 00:00:00'),(354,50,4,'Non illo et odit magnam quo fugit laboriosam. Quod error veritatis et excepturi qui vel veritatis officiis. In beatae vel quo nihil veniam culpa. Sit facere qui omnis recusandae ipsam adipisci molestiae.',1,0,'2018-04-06 00:00:00','2018-04-08 00:00:00'),(355,67,82,'Maiores iusto sunt harum officiis atque. Odit libero iure et laboriosam enim deserunt reiciendis quia. Eos ad sint iste et.',1,1,'2020-02-17 00:00:00','2020-02-20 00:00:00'),(356,26,100,'Illum odit expedita omnis laudantium adipisci aut rerum dicta. Sed est sint non aut. Dolorem sequi autem aut optio odit.',0,0,'2017-08-06 00:00:00','2017-08-07 00:00:00'),(357,12,97,'Ut et ab eum facere sit exercitationem. Est nihil repudiandae neque nihil. Blanditiis cum commodi assumenda velit.',0,1,'2019-02-23 00:00:00','2019-02-24 00:00:00'),(358,42,87,'Vel iusto cum aut ratione tenetur voluptas voluptates. Praesentium totam ipsam veritatis impedit ipsa adipisci. Ullam voluptas sed sequi molestiae incidunt accusantium aut. Officia debitis aut totam et doloremque eos.',1,0,'2020-06-06 00:00:00','2020-06-07 00:00:00'),(359,21,40,'Vitae voluptates eos atque aut vel totam quibusdam. Optio impedit blanditiis nihil tempore. Tempore quia suscipit voluptatum pariatur saepe. Dolor debitis nam itaque.',1,0,'2019-07-17 00:00:00','2019-07-20 00:00:00'),(360,82,21,'Quo aliquid aut et esse quae. Est fugit illum facilis vitae iusto sint magni. Iste aspernatur quaerat ducimus harum. Debitis possimus consequatur facere expedita magni et ut. Veritatis et velit dolorum.',1,1,'2018-06-01 00:00:00','2018-06-03 00:00:00'),(361,2,50,'Perspiciatis rerum dolorum illo est quis voluptatibus libero. Molestias eveniet dolores reiciendis quae. Fuga sequi sapiente ab omnis cumque aut placeat. Et rerum ipsam culpa voluptatem.',1,1,'2019-08-17 00:00:00','2019-09-21 00:00:00'),(362,38,76,'Corrupti iste laboriosam doloribus facilis. Dicta repellendus non officia quae.',0,0,'2017-05-20 00:00:00','2017-05-20 00:00:00'),(363,12,26,'Natus corrupti libero tenetur ratione consequuntur quaerat quaerat perferendis. Laboriosam dicta et quod vel necessitatibus vero est. Quia quibusdam non natus consequatur eaque cumque veritatis voluptas. Nemo exercitationem omnis in repellat.',1,0,'2019-01-21 00:00:00','2019-01-28 00:00:00'),(364,54,59,'Nam dolorum totam explicabo magni mollitia cumque aspernatur fuga. Eum dolores dolor ut praesentium. Aut deleniti at voluptatibus ipsa. Et minus quam aliquid quos.',0,0,'2019-09-25 00:00:00','2019-09-29 00:00:00'),(365,7,52,'Nostrum adipisci optio fuga accusantium est. Quis sit deleniti eaque voluptas. Aspernatur velit officia sit rerum sit. Autem amet ab quam omnis. Est quibusdam ut sed nihil.',1,1,'2020-05-10 00:00:00','2020-05-12 00:00:00'),(366,87,71,'Et omnis voluptatem sapiente et optio eveniet. Consectetur cumque at quos quia. A repellendus et cum vitae est voluptas voluptatem. Tenetur explicabo consequatur ut beatae itaque illum.',0,1,'2019-10-18 00:00:00','2019-10-25 00:00:00'),(367,28,66,'Ipsum sunt repellendus et quam vero corrupti. Consequatur praesentium adipisci sunt dolor quam sunt ullam. Reiciendis voluptas ipsa distinctio atque maxime sequi.',0,0,'2019-07-11 00:00:00','2019-07-22 00:00:00'),(368,22,19,'Sunt quasi qui nemo in magnam sed earum. Et velit rem quidem asperiores officiis commodi.',1,0,'2018-10-16 00:00:00','2018-10-25 00:00:00'),(369,63,72,'Modi harum blanditiis doloremque quod excepturi animi. Et in voluptatem aliquid iusto. Qui corrupti tempora placeat laborum recusandae. Eligendi sapiente corrupti et quos facilis minus nihil doloremque.',1,0,'2018-05-22 00:00:00','2018-06-13 00:00:00'),(370,23,29,'Ducimus nihil omnis voluptas expedita dolores. Et a voluptas sed maxime itaque. Itaque error odit sequi. Est magnam ipsum iure molestiae vero.',1,1,'2020-02-27 00:00:00','2020-03-07 00:00:00'),(371,53,49,'Nisi nisi et eligendi sequi et. Fugit et error nisi aliquam. Repellat qui quisquam consequuntur maiores. Quis praesentium ut asperiores numquam sed autem fugiat iusto. Non provident est odit maiores distinctio non mollitia.',1,1,'2020-08-25 00:00:00','2020-08-27 00:00:00'),(372,29,65,'Totam qui dolorum similique dolores est quas sit. Ex ducimus vitae accusantium voluptas non dicta non. Qui explicabo et pariatur consequatur sed fuga.',0,0,'2019-09-04 00:00:00','2019-09-07 00:00:00'),(373,45,70,'Aliquid modi cupiditate nemo maxime eveniet ducimus. Nam maxime blanditiis nulla fuga dolorem omnis facere.',0,0,'2018-03-27 00:00:00','2018-04-01 00:00:00'),(374,51,65,'Repudiandae quos cupiditate quos et numquam est. Debitis dolorum repudiandae eum qui in exercitationem. Eum placeat eligendi quam beatae ea.',1,1,'2018-09-21 00:00:00','2018-10-07 00:00:00'),(375,10,33,'Nihil culpa aspernatur in blanditiis. Molestiae exercitationem sequi sequi autem aperiam. Quas consequatur iure consequuntur placeat aliquid officiis voluptatem. Quis id vel voluptatem recusandae et aut.',1,0,'2019-11-08 00:00:00','2019-11-14 00:00:00'),(376,86,12,'Quaerat ad nostrum delectus numquam unde. Asperiores soluta tenetur nemo provident. Laudantium vero omnis modi aut. Suscipit maxime porro odit numquam optio.',0,1,'2020-09-15 00:00:00','2020-09-18 00:00:00'),(377,82,23,'Fuga praesentium reiciendis quo reprehenderit. Dolorum recusandae exercitationem id officia vel deleniti. Sapiente occaecati molestias quos fuga nam. Amet at maiores quisquam eum numquam.',1,1,'2011-11-22 00:00:00','2018-09-23 00:00:00'),(378,88,93,'Est atque occaecati omnis sed numquam eum. Iusto asperiores exercitationem doloribus quis hic enim dolore. Quia a fuga consectetur nihil est ut quidem. Qui iure dolore excepturi officiis. Totam corrupti saepe quia fugit dolore.',1,0,'2020-06-16 00:00:00','2020-08-06 00:00:00'),(379,48,42,'Perspiciatis officiis non quaerat eos deserunt quaerat. Laboriosam rem aut ea voluptatem. Rerum ex accusamus sed ad impedit.',0,0,'2019-05-26 00:00:00','2019-06-04 00:00:00'),(380,52,55,'Fugiat minus mollitia et iste accusamus. Ipsa accusamus sapiente quibusdam velit asperiores commodi voluptas. Illum quia dolores aut.',1,1,'2018-10-30 00:00:00','2018-12-24 00:00:00'),(381,93,38,'Architecto pariatur itaque in aut quod rerum cupiditate. Omnis accusantium repellendus et. Et beatae nihil molestias qui fugit assumenda. Asperiores tempore dolor eos cum.',1,0,'2020-02-15 00:00:00','2020-02-21 00:00:00'),(382,26,20,'Beatae quibusdam ut necessitatibus tenetur aut praesentium unde. Corrupti adipisci expedita officia. Possimus est et quis a rerum qui. Aut consequatur quo modi laborum nam aliquid quo.',0,1,'2020-09-08 00:00:00','2020-09-09 00:00:00'),(383,4,48,'Sunt ex necessitatibus magni error repellat ea et expedita. Est beatae in dolores aut ut. Rerum nihil commodi vel eum excepturi earum fugit.',1,1,'2017-10-19 00:00:00','2017-11-16 00:00:00'),(384,39,66,'Aut dolorem occaecati qui eius. Aspernatur similique recusandae non dolor quod. Distinctio numquam id rerum aut.',0,1,'2020-06-25 00:00:00','2020-06-27 00:00:00'),(385,19,61,'Et aliquam laudantium atque. Nemo dolor itaque distinctio id deserunt. Aut et autem asperiores earum animi rem nihil.',0,1,'2019-10-08 00:00:00','2019-11-15 00:00:00'),(386,95,71,'Aspernatur sunt quia hic rerum nulla nobis vero rerum. Iste voluptates ea molestias quo sunt corrupti et ipsum. Occaecati tempore perferendis harum quidem vel unde impedit omnis. Repellendus esse impedit alias quibusdam alias quia.',0,1,'2018-08-05 00:00:00','2018-08-08 00:00:00'),(387,9,24,'Autem ut accusamus nobis odio in ut autem. Sit voluptate laboriosam maxime aliquid animi omnis expedita quo. Explicabo quam quia natus molestiae nihil natus. Sunt odio accusantium placeat laborum quas dolores.',1,0,'2019-05-05 00:00:00','2019-05-14 00:00:00'),(388,35,54,'Sit quia ipsam cupiditate omnis maiores fugit cumque. Necessitatibus sint sit rerum nostrum. Eos voluptate recusandae quibusdam rerum facere. Sequi tempora consequatur laborum placeat voluptates esse tenetur eos.',1,1,'2019-02-04 00:00:00','2019-02-13 00:00:00'),(389,94,86,'Adipisci est sequi facere a repudiandae atque aliquam. Tempore qui dicta et illum odit id. Officia cupiditate quo expedita aut esse.',0,0,'2020-03-28 00:00:00','2020-04-05 00:00:00'),(390,18,3,'Hic dolorem est ut eum qui. Dignissimos unde eaque eaque. Enim eum saepe exercitationem aspernatur aut.',0,1,'2020-05-22 00:00:00','2017-05-23 00:00:00'),(391,18,3,'Aut sed veniam excepturi. Cum est cum aliquid expedita. Non quia quibusdam possimus aut. Dolore iusto culpa voluptas inventore ipsam animi qui voluptatem.',1,0,'2017-10-10 00:00:00','2017-10-11 00:00:00'),(392,15,99,'Suscipit optio placeat placeat temporibus. In quos ex officia voluptatum. Rerum numquam ipsam quos sed.',1,0,'2019-01-05 00:00:00','2019-01-23 00:00:00'),(393,26,2,'Fugit et molestiae dolor aut nihil porro nihil. Distinctio ea ut soluta ut. Repellat rerum ut maxime magnam eveniet natus. Iusto sunt accusantium et et qui qui aliquam fuga. Et nobis quo aut repudiandae iusto odit velit et.',0,0,'2020-07-01 00:00:00','2015-07-07 00:00:00'),(394,92,74,'Minima magni molestias enim ut commodi et quam. Id ut id laudantium ut est consequatur. Tenetur repellat temporibus id illum. Repellendus fugit deleniti omnis et.',1,1,'2019-07-05 00:00:00','2019-09-01 00:00:00'),(395,44,43,'Consequatur quod commodi delectus voluptates aperiam dicta sit ex. Qui facere modi aspernatur sed explicabo eum optio. Adipisci rem quia illo.',0,1,'2016-10-22 00:00:00','2016-11-04 00:00:00'),(396,29,36,'Sequi voluptate sunt eveniet dolor sint. Incidunt rerum ipsa consequuntur reprehenderit velit minima provident. Culpa quia laborum facere sint beatae. Ratione ipsum non ipsum.',0,0,'2018-10-27 00:00:00','2018-11-02 00:00:00'),(397,81,54,'Et mollitia voluptas quia sunt voluptate pariatur repellat. Doloremque et sequi nulla. Velit ut molestias velit porro molestiae et. Sit corrupti voluptates minus.',1,1,'2018-04-26 00:00:00','2019-10-30 00:00:00'),(398,55,84,'Eum rerum itaque quia minima dolor quam. Et quo quam in ipsa et optio. Voluptatibus fugiat ut distinctio qui ullam voluptates nobis.',1,1,'2019-02-04 00:00:00','2019-04-04 00:00:00'),(399,1,93,'Consequatur a ut voluptas enim libero doloremque. Rerum quaerat rerum dolorem sint sapiente. Quia qui expedita earum aut id. Qui magni quisquam voluptas pariatur.',1,1,'2020-01-09 00:00:00','2020-01-26 00:00:00'),(400,50,19,'Laboriosam et illum voluptatem nulla. Accusamus sit alias impedit et saepe quae. Laboriosam id tempore sint sed eos optio aperiam. Consectetur id error et eveniet.',1,1,'2019-02-01 00:00:00','2017-02-06 00:00:00');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `points_channel`
--

DROP TABLE IF EXISTS `points_channel`;
/*!50001 DROP VIEW IF EXISTS `points_channel`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `points_channel` AS SELECT 
 1 AS `streamer`,
 1 AS `viewer`,
 1 AS `points`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Ссылка на пользователя',
  `user_name` varchar(150) NOT NULL COMMENT 'Имя пользователя',
  `display_name` varchar(150) DEFAULT NULL COMMENT 'Отображаемое имя',
  `information` text COMMENT 'Краткая информация пользователя',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  KEY `profiles_display_name_idx` (`display_name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Профили';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,'vito.rosenbaum','illo','Qui necessitatibus ut iste illum autem iure dolorum.','2016-10-30 14:36:13','2017-04-30 15:17:11'),(2,'shirley71','fuga','In non nemo delectus et.','2013-04-13 01:21:08','2016-03-07 21:00:26'),(3,'mae.gusikowski','maiores','Natus eveniet quis aspernatur tempora cumque commodi aut.','2017-01-27 17:34:42','2018-09-20 12:58:31'),(4,'bbradtke','itaque','Non sit velit iure omnis aut reiciendis doloribus.','2018-08-17 19:28:51','2019-10-16 06:27:14'),(5,'nickolas.quigley','facilis','Officia inventore optio animi repellendus.','2012-04-25 01:33:58','2019-11-06 02:55:39'),(6,'lyda26','ad','Est nobis aut aut rerum dolore natus perferendis.','2017-06-22 16:54:47','2019-01-05 16:10:00'),(7,'jkihn','rem','Velit error doloremque cumque eum aperiam.','2012-05-28 10:08:05','2020-02-07 11:13:55'),(8,'blick.nova','facilis','Praesentium aut officia dolorem ut voluptas dolorem culpa ut.','2012-06-23 10:22:23','2016-02-26 10:40:26'),(9,'pfannerstill.melba','rerum','Porro autem soluta est illum libero et vel.','2018-12-29 09:20:36','2019-04-07 14:55:40'),(10,'cordell.donnelly','consequuntur','Illum et sequi perspiciatis fugiat aut aut.','2013-02-20 20:41:14','2019-10-19 11:17:03'),(11,'jarrett.waelchi','quis','Ut sed et aspernatur ut sequi sint alias.','2014-10-22 17:01:45','2018-08-12 16:04:04'),(12,'mbeier','aliquid','Magni nisi doloremque omnis corrupti.','2017-11-18 21:47:29','2018-02-14 07:51:39'),(13,'adolph08','qui','Dolores iste numquam et saepe architecto.','2018-05-19 22:28:53','2019-07-04 02:07:43'),(14,'graham.yesenia','sed','Sint architecto occaecati ullam nobis.','2015-07-18 03:33:38','2020-07-25 19:37:37'),(15,'monte.sipes','occaecati','Sit eaque necessitatibus ullam ullam nihil est.','2013-01-13 21:50:56','2018-04-30 12:46:23'),(16,'tfriesen','exercitationem','Quia nemo sit fugit cum magni.','2016-03-27 13:44:01','2020-03-26 15:12:28'),(17,'rdooley','perspiciatis','Sed porro ea consectetur soluta sit officia dolores.','2013-02-09 23:53:10','2019-08-26 02:14:35'),(18,'hipolito.abshire','ut','Excepturi laudantium commodi quis assumenda qui nihil.','2011-05-14 14:57:04','2015-05-25 13:09:10'),(19,'paolo.konopelski','et','Illum a laboriosam commodi fugiat.','2017-12-13 01:02:17','2018-10-03 00:40:58'),(20,'daron69','asperiores','Laboriosam non quo laborum est et aut.','2015-07-28 06:01:55','2016-01-17 11:23:00'),(21,'constance.nienow','ea','Sed dolores ea dolores eveniet aspernatur repellat.','2011-10-10 03:58:46','2017-02-05 16:54:57'),(22,'aron.swaniawski','omnis','Accusantium accusantium quis officia.','2012-06-14 21:16:37','2017-09-12 07:20:16'),(23,'maxie.bartoletti','quisquam','Repudiandae tempora ipsum reprehenderit numquam sed cumque.','2013-10-25 08:53:59','2017-05-31 23:06:32'),(24,'lcarter','sequi','Dolor enim nesciunt omnis.','2012-04-29 18:25:58','2018-12-15 08:51:03'),(25,'xadams','rerum','Aut culpa qui rem ut.','2011-02-03 04:23:21','2019-05-10 13:39:54'),(26,'wehner.barton','velit','Optio praesentium est minima optio illo sequi.','2011-11-04 05:58:25','2014-09-15 01:43:36'),(27,'madelyn04','hic','Corrupti qui nesciunt dicta harum beatae minus sapiente.','2014-11-19 21:32:22','2019-03-27 13:41:24'),(28,'gaylord.everardo','eius','Ut rerum praesentium minima inventore quibusdam.','2016-03-22 00:08:38','2020-05-26 18:57:40'),(29,'bernadine49','error','Ipsa repellat consequatur sed repellendus et officiis magnam quam.','2017-09-06 10:44:39','2019-02-14 19:30:18'),(30,'neil.smitham','nihil','Alias harum quaerat est.','2012-02-27 18:26:03','2011-09-25 02:46:51'),(31,'paucek.hester','non','Quos sed distinctio quis accusamus est rerum id.','2014-01-20 02:43:02','2016-06-24 04:13:28'),(32,'devonte20','ut','Sequi quod repellat excepturi dolor.','2010-10-28 04:11:40','2018-10-19 13:41:35'),(33,'tbalistreri','quaerat','Sed maxime itaque neque.','2016-04-29 06:09:52','2019-09-21 07:43:59'),(34,'katarina.reichert','distinctio','Dolores mollitia magni voluptas enim placeat.','2013-07-08 03:46:35','2019-10-02 11:43:03'),(35,'tremayne60','quis','Voluptate tempora natus quam.','2011-07-19 00:31:50','2020-01-30 21:11:53'),(36,'fabiola.spencer','consequatur','Deleniti unde hic accusamus ut non soluta eligendi.','2013-05-06 20:09:35','2019-11-02 05:01:40'),(37,'ayla.kutch','culpa','Sed rerum consequatur et accusamus pariatur nihil.','2011-05-08 22:18:51','2015-10-17 09:16:47'),(38,'tbarrows','deleniti','Rem maiores exercitationem facilis quia.','2011-10-08 21:00:46','2019-08-28 10:44:02'),(39,'akovacek','eum','Sunt doloribus non officiis recusandae.','2015-10-16 13:00:06','2017-05-19 06:35:19'),(40,'skirlin','doloremque','Voluptatem quia in ut facilis.','2010-11-17 01:56:29','2013-10-27 17:53:26'),(41,'qdavis','repellat','Sed est veniam reiciendis magnam ipsum culpa.','2017-06-04 06:30:32','2018-06-05 07:55:20'),(42,'kroob','dignissimos','Voluptatem quo id dolorum qui et voluptas iusto.','2017-10-13 17:06:18','2018-04-15 02:26:18'),(43,'flatley.judy','dolorem','Voluptatem asperiores culpa temporibus.','2012-01-11 14:06:30','2019-12-16 02:13:29'),(44,'ghills','aut','Facere aperiam quidem suscipit porro dolorem quo neque.','2019-02-15 21:50:09','2020-04-11 01:35:35'),(45,'margarette74','voluptatem','Omnis quae voluptate maxime quisquam possimus et et.','2014-03-02 12:51:13','2019-06-25 09:51:30'),(46,'brakus.mellie','quasi','Laudantium illo at perferendis et eius est.','2013-03-04 00:54:39','2014-08-20 08:35:05'),(47,'buddy52','a','Odit enim molestiae ea unde laborum voluptate quia.','2017-02-26 01:47:54','2018-04-06 18:03:34'),(48,'oda.boehm','et','Soluta ab quia beatae corrupti.','2017-03-04 01:37:06','2018-09-22 13:12:18'),(49,'bernadette.west','id','Voluptas et iure beatae magni.','2016-04-09 18:52:33','2018-11-25 18:26:21'),(50,'tward','enim','Facilis distinctio maiores et quia.','2013-12-31 13:26:49','2016-08-16 13:06:17'),(51,'ubahringer','reprehenderit','Omnis rerum mollitia est qui dolor et.','2013-04-13 16:05:02','2015-09-26 04:27:50'),(52,'julianne.hammes','beatae','Reprehenderit dolor et eos unde.','2014-04-14 23:57:10','2015-09-03 11:48:45'),(53,'aanderson','rem','Error asperiores aut eum animi qui id quam excepturi.','2011-04-18 21:04:17','2018-05-10 19:59:36'),(54,'fvolkman','tenetur','Officia porro quia ullam voluptatem perspiciatis.','2015-08-26 11:38:30','2018-08-03 17:42:17'),(55,'fernando60','asperiores','Sed vel ex et nobis cum facilis aliquid.','2013-07-28 05:56:23','2015-11-01 20:41:32'),(56,'sincere.hills','qui','Ab est ut nam dolorem mollitia voluptatem.','2012-06-12 04:55:40','2020-05-15 12:28:36'),(57,'cgibson','aperiam','Est rerum qui reiciendis.','2013-01-15 04:23:01','2017-10-07 21:37:56'),(58,'dexter51','ut','Voluptatem eos officiis nihil facilis.','2013-11-06 21:16:08','2018-05-21 20:38:58'),(59,'hermiston.isabelle','repudiandae','Repellendus facilis et est rerum.','2014-04-13 08:26:57','2016-12-26 12:55:06'),(60,'zkemmer','in','Qui assumenda neque nesciunt fuga ut expedita modi.','2012-12-03 01:37:16','2013-04-13 21:11:14'),(61,'clementine10','sunt','Ut ipsum impedit debitis eveniet suscipit dolor.','2015-05-14 02:36:18','2019-09-30 13:56:02'),(62,'swaniawski.rolando','ducimus','Excepturi vitae at beatae numquam maiores excepturi minima nam.','2018-08-20 17:29:15','2019-07-07 12:43:05'),(63,'ebony.jenkins','aperiam','Vero placeat magnam quia ut doloribus optio.','2012-02-15 22:27:13','2019-02-26 01:03:49'),(64,'paula.gulgowski','animi','Reiciendis ut enim soluta maxime aut.','2012-05-07 18:43:38','2013-01-11 09:31:10'),(65,'bridget69','amet','Alias reprehenderit sed pariatur voluptatem.','2015-02-26 06:47:59','2018-07-26 09:15:55'),(66,'elta05','iste','Sed adipisci omnis velit sequi laboriosam similique.','2012-05-30 05:15:11','2017-10-23 08:14:32'),(67,'bart59','et','Illo fugit odit eos est tempore.','2013-03-02 08:12:54','2018-07-15 16:02:27'),(68,'o\'conner.abraham','impedit','Quod est est dolor aut ipsum aut accusamus.','2015-02-19 10:44:32','2018-08-25 18:54:40'),(69,'qkuvalis','repellat','Dolorem consequuntur soluta qui adipisci suscipit et.','2019-05-15 13:29:04','2019-07-23 02:22:01'),(70,'madisen91','occaecati','Aliquid odit ipsum ipsum numquam.','2020-02-21 10:31:52','2020-03-08 16:15:38'),(71,'herta.conn','aut','Reprehenderit cupiditate rerum accusamus eos dolorem eum assumenda.','2017-10-13 08:40:38','2019-08-01 14:00:15'),(72,'ncronin','exercitationem','Placeat mollitia itaque ut officia.','2016-04-07 01:57:50','2017-04-22 04:53:03'),(73,'nils.witting','non','Molestiae ad sint ratione beatae voluptas quis voluptas.','2018-05-07 13:47:27','2019-01-07 02:42:17'),(74,'nyah81','quos','Repellat omnis adipisci reiciendis provident harum et corporis mollitia.','2014-05-30 22:36:17','2016-10-19 18:48:54'),(75,'hkunde','deserunt','Voluptates laboriosam tempora omnis est earum aliquid.','2012-08-17 00:50:07','2014-09-02 11:18:49'),(76,'sheila.larson','ullam','Nobis repudiandae eius aut provident non.','2011-05-10 18:35:37','2013-06-03 16:30:54'),(77,'lquigley','ex','Cupiditate eos numquam alias hic quia.','2012-07-24 15:57:18','2019-06-04 14:58:57'),(78,'dayton51','repellendus','Voluptatem odio dignissimos est hic.','2015-11-21 11:57:22','2018-10-29 19:31:39'),(79,'pollich.juliet','accusantium','Dolorem perferendis sit eius reiciendis fugiat iste dolore sit.','2017-12-09 00:24:29','2019-09-12 12:54:28'),(80,'tlakin','nulla','Fugiat architecto illum id at et.','2016-10-26 06:18:26','2018-02-22 11:51:21'),(81,'xanderson','ratione','Aut voluptas placeat ratione autem asperiores.','2014-07-20 09:01:15','2015-03-19 01:47:42'),(82,'casper.fernando','nulla','Ut maxime et ut nostrum voluptatem eos qui.','2013-06-29 20:43:55','2019-11-16 16:45:41'),(83,'josiane.quigley','dolorem','Molestiae et delectus rerum aliquid.','2017-03-20 12:55:07','2020-07-19 18:39:15'),(84,'west.maymie','exercitationem','Ea minus vero quos quis cupiditate asperiores est.','2017-10-09 15:41:29','2019-09-15 03:18:04'),(85,'erenner','corrupti','Sint similique aut esse asperiores harum ut.','2012-10-02 03:04:52','2018-07-13 22:19:33'),(86,'anabel.mayert','libero','Quo ut molestias quod velit officia velit.','2016-04-14 09:56:39','2016-08-05 09:34:13'),(87,'lmccullough','illum','Eligendi esse earum quaerat neque est iste modi.','2018-06-24 22:33:39','2018-08-29 07:36:36'),(88,'amayer','dicta','Sapiente ullam necessitatibus vero inventore.','2017-12-05 23:10:14','2018-02-13 10:57:42'),(89,'percy.johnston','quidem','Ipsam vero enim et voluptas fuga ut qui saepe.','2011-07-13 00:52:39','2018-10-23 22:23:36'),(90,'oliver04','saepe','Consequuntur ut aut aliquid qui.','2015-10-29 13:27:21','2017-08-21 18:29:09'),(91,'okris','quia','Cupiditate qui occaecati nihil nam quia quam.','2013-09-19 20:13:56','2014-11-13 23:35:29'),(92,'rgreen','et','Vel consequuntur mollitia autem at dolorem delectus.','2017-10-18 21:08:03','2019-11-26 12:28:01'),(93,'ali.walker','ut','Voluptatem sit voluptatem itaque id voluptatibus aut.','2013-02-21 17:47:51','2016-09-30 00:44:38'),(94,'strosin.lorenza','rerum','Officia iure minus nisi sint eligendi qui ducimus.','2015-08-10 10:08:01','2018-12-08 22:07:06'),(95,'malvina.bednar','et','Aut consectetur expedita qui.','2013-04-19 18:54:22','2018-10-27 23:58:08'),(96,'huels.houston','voluptatem','Numquam eum ipsum perspiciatis qui magni.','2017-05-13 12:15:00','2019-05-30 14:14:41'),(97,'zhahn','aspernatur','Ea repellendus natus quia eligendi accusamus.','2015-04-23 14:15:04','2016-03-02 20:08:22'),(98,'wisoky.alicia','et','Molestiae delectus et et consequatur ea ratione ex.','2016-06-11 00:10:18','2017-08-28 11:55:09'),(99,'linda42','deleniti','Saepe voluptas id labore maxime et distinctio.','2018-10-15 20:42:37','2019-09-12 19:17:29'),(100,'marilie46','alias','Qui veniam perferendis aliquid ullam.','2014-11-02 09:47:19','2018-12-08 12:40:34');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sections` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) NOT NULL COMMENT 'Название типа раздела',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Категории по которым определяют, какой тип контента';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections`
--

LOCK TABLES `sections` WRITE;
/*!40000 ALTER TABLE `sections` DISABLE KEYS */;
INSERT INTO `sections` VALUES (1,'Communication','2020-09-20 20:32:02','2020-09-20 20:32:02'),(2,'Music','2020-09-20 20:32:02','2020-09-20 20:32:02'),(3,'eSport','2020-09-20 20:32:02','2020-09-20 20:32:02'),(4,'tournaments','2020-09-20 20:32:02','2020-09-20 20:32:02');
/*!40000 ALTER TABLE `sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `streamer_subscribers`
--

DROP TABLE IF EXISTS `streamer_subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `streamer_subscribers` (
  `community_id` int unsigned NOT NULL COMMENT 'Ссылка на канал',
  `user_id` int unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `type_subscriptions_id` int unsigned NOT NULL COMMENT 'Ссылка на тип подписки',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'Составной первичный ключ',
  KEY `streamer_subscribers_user_id_fk` (`user_id`),
  KEY `streamer_subscribers_type_subscriptions_id_fk` (`type_subscriptions_id`),
  CONSTRAINT `streamer_channel_subscriptions_types_id_fk` FOREIGN KEY (`type_subscriptions_id`) REFERENCES `subscriptions_types` (`id`),
  CONSTRAINT `streamer_subscribers_type_subscriptions_id_fk` FOREIGN KEY (`type_subscriptions_id`) REFERENCES `subscriptions_types` (`id`),
  CONSTRAINT `streamer_subscribers_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `profiles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Участники канала';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `streamer_subscribers`
--

LOCK TABLES `streamer_subscribers` WRITE;
/*!40000 ALTER TABLE `streamer_subscribers` DISABLE KEYS */;
INSERT INTO `streamer_subscribers` VALUES (1,15,1,'2011-01-20 00:00:00','2019-12-25 00:00:00'),(1,17,3,'2014-12-30 00:00:00','2015-08-17 00:00:00'),(1,24,3,'2013-03-05 00:00:00','2014-11-23 00:00:00'),(1,48,3,'2013-09-22 00:00:00','2017-11-04 00:00:00'),(1,63,2,'2017-12-18 00:00:00','2018-03-14 00:00:00'),(1,71,4,'2014-10-01 00:00:00','2015-05-08 00:00:00'),(2,10,3,'2012-06-16 00:00:00','2016-10-17 00:00:00'),(2,67,1,'2018-01-28 00:00:00','2019-06-16 00:00:00'),(2,81,4,'2015-10-08 00:00:00','2017-10-15 00:00:00'),(2,100,3,'2015-04-25 00:00:00','2020-01-09 00:00:00'),(3,7,1,'2019-11-18 00:00:00','2020-03-06 00:00:00'),(3,8,1,'2015-06-04 00:00:00','2017-11-30 00:00:00'),(3,38,4,'2015-06-12 00:00:00','2017-05-21 00:00:00'),(3,63,1,'2011-06-04 00:00:00','2015-11-08 00:00:00'),(3,71,4,'2016-06-20 00:00:00','2020-05-11 00:00:00'),(3,77,4,'2016-11-02 00:00:00','2019-12-19 00:00:00'),(4,35,3,'2012-08-07 00:00:00','2019-10-21 00:00:00'),(4,41,2,'2017-06-26 00:00:00','2020-04-10 00:00:00'),(4,62,4,'2016-06-20 00:00:00','2020-04-03 00:00:00'),(4,80,1,'2013-04-04 00:00:00','2020-04-23 00:00:00'),(4,90,1,'2018-02-27 00:00:00','2019-11-09 00:00:00'),(4,96,3,'2019-01-07 00:00:00','2019-12-26 00:00:00'),(4,99,1,'2017-02-13 00:00:00','2019-11-04 00:00:00'),(5,5,2,'2020-06-03 00:00:00','2020-09-25 00:00:00'),(5,18,4,'2015-06-07 00:00:00','2020-04-13 00:00:00'),(5,21,2,'2015-08-26 00:00:00','2020-01-12 00:00:00'),(5,32,2,'2017-04-11 00:00:00','2020-05-18 00:00:00'),(5,37,3,'2012-08-23 00:00:00','2019-12-22 00:00:00'),(5,54,4,'2017-05-25 00:00:00','2020-08-07 00:00:00'),(5,98,3,'2011-08-29 00:00:00','2020-01-06 00:00:00'),(6,22,4,'2016-05-20 00:00:00','2020-01-17 00:00:00'),(6,35,1,'2015-02-16 00:00:00','2017-12-18 00:00:00'),(6,58,3,'2011-05-10 00:00:00','2020-08-15 00:00:00'),(6,67,2,'2018-04-20 00:00:00','2019-11-08 00:00:00'),(6,76,3,'2013-12-29 00:00:00','2020-06-11 00:00:00'),(6,80,1,'2012-01-31 00:00:00','2020-08-08 00:00:00'),(7,4,2,'2012-06-22 00:00:00','2019-10-23 00:00:00'),(7,46,4,'2017-10-03 00:00:00','2020-08-08 00:00:00'),(7,84,4,'2011-12-10 00:00:00','2012-09-25 00:00:00'),(7,90,1,'2014-02-23 00:00:00','2020-03-25 00:00:00'),(8,1,2,'2019-10-31 00:00:00','2020-01-05 00:00:00'),(8,11,4,'2018-09-21 00:00:00','2020-04-15 00:00:00'),(8,16,4,'2019-06-23 00:00:00','2020-07-26 00:00:00'),(8,18,3,'2011-08-13 00:00:00','2014-11-02 00:00:00'),(8,28,2,'2011-01-17 00:00:00','2019-04-25 00:00:00'),(8,30,3,'2019-01-05 00:00:00','2019-10-18 00:00:00'),(8,50,1,'2013-10-01 00:00:00','2019-12-06 00:00:00'),(8,54,1,'2010-10-09 00:00:00','2020-07-02 00:00:00'),(8,69,4,'2020-06-19 00:00:00','2020-01-23 00:00:00'),(9,7,2,'2010-10-10 00:00:00','2020-04-18 00:00:00'),(9,20,3,'2014-10-05 00:00:00','2020-09-01 00:00:00'),(9,33,2,'2011-03-30 00:00:00','2020-09-11 00:00:00'),(9,42,1,'2015-10-26 00:00:00','2020-02-14 00:00:00'),(9,50,3,'2013-09-15 00:00:00','2020-09-15 00:00:00'),(9,78,1,'2010-12-14 00:00:00','2019-10-01 00:00:00'),(9,83,2,'2014-04-24 00:00:00','2020-03-27 00:00:00'),(9,88,3,'2019-03-06 00:00:00','2020-02-05 00:00:00'),(9,93,3,'2014-12-11 00:00:00','2020-06-09 00:00:00'),(10,33,4,'2013-10-24 00:00:00','2020-07-21 00:00:00'),(10,54,4,'2014-11-03 00:00:00','2020-02-05 00:00:00'),(10,59,4,'2016-05-05 00:00:00','2020-09-18 00:00:00'),(11,13,2,'2018-01-01 00:00:00','2020-04-06 00:00:00'),(11,36,2,'2018-11-01 00:00:00','2020-12-14 00:00:00'),(11,61,4,'2019-12-01 00:00:00','2020-05-05 00:00:00'),(11,88,4,'2018-08-11 00:00:00','2019-10-07 00:00:00'),(11,100,3,'2012-03-17 00:00:00','2020-09-17 00:00:00'),(12,5,1,'2015-10-06 00:00:00','2019-09-29 00:00:00'),(12,11,1,'2012-02-06 00:00:00','2018-09-28 00:00:00'),(12,21,3,'2013-11-03 00:00:00','2019-10-21 00:00:00'),(12,39,3,'2018-06-14 00:00:00','2019-08-31 00:00:00'),(12,40,1,'2016-06-09 00:00:00','2020-05-23 00:00:00'),(12,45,4,'2014-12-06 00:00:00','2019-10-04 00:00:00'),(12,66,4,'2015-11-27 00:00:00','2020-04-27 00:00:00'),(12,76,2,'2017-03-17 00:00:00','2020-05-26 00:00:00'),(12,85,4,'2015-04-21 00:00:00','2019-06-22 00:00:00'),(13,5,1,'2020-04-30 00:00:00','2020-07-28 00:00:00'),(13,10,2,'2019-03-24 00:00:00','2019-05-24 00:00:00'),(13,11,1,'2015-09-08 00:00:00','2018-08-01 00:00:00'),(13,61,3,'2010-12-24 00:00:00','2020-07-21 00:00:00'),(13,86,3,'2016-08-08 00:00:00','2020-04-16 00:00:00'),(14,2,1,'2012-12-30 00:00:00','2020-05-05 00:00:00'),(14,22,1,'2013-10-02 00:00:00','2020-06-30 00:00:00'),(14,23,1,'2016-10-05 00:00:00','2018-06-23 00:00:00'),(14,57,1,'2013-06-10 00:00:00','2017-03-03 00:00:00'),(14,62,4,'2019-11-29 00:00:00','2020-04-11 00:00:00'),(14,73,3,'2017-05-13 00:00:00','2019-08-21 00:00:00'),(14,74,1,'2015-03-01 00:00:00','2017-05-27 00:00:00'),(14,80,1,'2020-01-31 00:00:00','2020-03-16 00:00:00'),(15,7,4,'2017-02-25 00:00:00','2019-09-12 00:00:00'),(15,23,4,'2014-04-25 00:00:00','2020-05-21 00:00:00'),(15,37,2,'2011-07-20 00:00:00','2013-09-10 00:00:00'),(15,62,2,'2013-04-15 00:00:00','2019-03-25 00:00:00'),(15,73,2,'2016-04-08 00:00:00','2020-09-20 00:00:00'),(15,98,3,'2014-12-10 00:00:00','2020-07-08 00:00:00'),(16,97,4,'2012-11-24 00:00:00','2017-02-27 00:00:00'),(17,28,1,'2014-08-08 00:00:00','2020-09-03 00:00:00'),(17,56,2,'2011-06-21 00:00:00','2020-08-25 00:00:00'),(17,66,1,'2015-05-14 00:00:00','2017-03-01 00:00:00'),(17,78,3,'2015-12-06 00:00:00','2018-10-09 00:00:00');
/*!40000 ALTER TABLE `streamer_subscribers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `streamers_channels`
--

DROP TABLE IF EXISTS `streamers_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `streamers_channels` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор сроки',
  `name` varchar(150) NOT NULL COMMENT 'Название канала',
  `sections_id` int unsigned NOT NULL COMMENT 'Ссылка на раздел трансляции',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  KEY `streamer_channel_name_idx` (`name`),
  KEY `streamer_channel_sections_id_fk` (`sections_id`),
  CONSTRAINT `streamer_channel_id_fk` FOREIGN KEY (`id`) REFERENCES `streamer_subscribers` (`community_id`),
  CONSTRAINT `streamer_channel_sections_id_fk` FOREIGN KEY (`sections_id`) REFERENCES `sections` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Канал пользователя';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `streamers_channels`
--

LOCK TABLES `streamers_channels` WRITE;
/*!40000 ALTER TABLE `streamers_channels` DISABLE KEYS */;
INSERT INTO `streamers_channels` VALUES (1,'EVELON',1,'2020-09-26 20:31:20','2020-09-26 20:31:20'),(2,'BUSTER',4,'2020-09-26 20:31:20','2020-09-26 20:31:20'),(3,'JUICE',4,'2020-09-26 20:31:20','2020-09-26 20:31:20'),(4,'Mapke',2,'2020-09-26 20:31:20','2020-09-26 20:31:20'),(5,'Strogo',1,'2020-09-26 20:31:20','2020-09-26 20:31:20'),(6,'Salamandr',2,'2020-09-26 20:31:20','2020-09-26 20:31:20'),(7,'Olyasha',3,'2020-09-26 20:31:20','2020-09-26 20:31:20'),(8,'Alina_Rin',4,'2020-09-26 20:31:20','2020-09-26 20:31:20'),(9,'Zloy',4,'2020-09-26 20:31:20','2020-09-26 20:31:20'),(10,'KaterinaSing',3,'2020-09-26 20:31:20','2020-09-26 20:31:20'),(11,'modestal',2,'2020-09-26 20:31:20','2020-09-26 20:31:20'),(12,'C_A_K_E',1,'2020-09-26 20:31:20','2020-09-26 20:31:20'),(13,'Medison',3,'2020-09-26 20:31:20','2020-09-26 20:31:20'),(14,'HoneyMad',3,'2020-09-26 20:31:20','2020-09-26 20:31:20'),(15,'GENSYXA',3,'2020-09-26 20:31:20','2020-09-26 20:31:20'),(16,'Irokezina',3,'2020-09-26 20:31:20','2020-09-26 20:31:20'),(17,'Sekiro',3,'2020-09-26 20:31:20','2020-09-26 20:31:20');
/*!40000 ALTER TABLE `streamers_channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptions_types`
--

DROP TABLE IF EXISTS `subscriptions_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscriptions_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) NOT NULL COMMENT 'Название типа',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Типы подписок на канал';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptions_types`
--

LOCK TABLES `subscriptions_types` WRITE;
/*!40000 ALTER TABLE `subscriptions_types` DISABLE KEYS */;
INSERT INTO `subscriptions_types` VALUES (1,'Followers','2020-09-20 20:40:05','2020-09-20 20:40:05'),(2,'subscription_1_lv','2020-09-20 20:40:05','2020-09-20 20:40:05'),(3,'subscription_2_lv','2020-09-20 20:40:05','2020-09-20 20:40:05'),(4,'subscription_3_lv','2020-09-20 20:40:05','2020-09-20 20:40:05');
/*!40000 ALTER TABLE `subscriptions_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `category_number_viewers`
--

/*!50001 DROP VIEW IF EXISTS `category_number_viewers`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `category_number_viewers` (`category`,`total_users`) AS select `sections`.`name` AS `name`,count(`streamer_subscribers`.`user_id`) AS `COUNT(streamer_subscribers.user_id)` from ((`sections` left join `streamers_channels` on((`streamers_channels`.`sections_id` = `sections`.`id`))) left join `streamer_subscribers` on((`streamer_subscribers`.`community_id` = `streamers_channels`.`id`))) group by `sections`.`name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `points_channel`
--

/*!50001 DROP VIEW IF EXISTS `points_channel`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `points_channel` (`streamer`,`viewer`,`points`) AS select `streamer_subscribers`.`community_id` AS `community_id`,`streamer_subscribers`.`user_id` AS `user_id`,`channel_points`.`points` AS `points` from (`streamer_subscribers` left join `channel_points` on(((`streamer_subscribers`.`user_id` = `channel_points`.`user_id`) and (`streamer_subscribers`.`community_id` = `channel_points`.`link_channel`)))) where (`channel_points`.`points` <> 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-12  6:30:18
