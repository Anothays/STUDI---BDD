-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (x86_64)
--
-- Host: localhost    Database: Cinema
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `Movies`
--

DROP TABLE IF EXISTS `Movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Movies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` time NOT NULL,
  `director` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Movies`
--

LOCK TABLES `Movies` WRITE;
/*!40000 ALTER TABLE `Movies` DISABLE KEYS */;
INSERT INTO `Movies` VALUES (1,'One piece','02:30:15','Oda','L\'équipage au chapeau de paille fait une halte dans une ville portuaire de l\'île d\'Asuka. Peu après leur arrivée, Zoro disparaît. Pendant que l\'équipage part à sa recherche, Sanji suit Maya, une fille originaire de l\'île, vers un village. Ici, Zoro y est aperçu accompagné de soldats de la Marine. Zoro est désormais enrôlé dans la Marine et volera à la prêtresse du village des perles magiques. Derrière toute cette magouille se trouverait Saga, un ancien ami de Zoro, qui tenterait de faire revivre la terrible épée aux sept étoiles. Luffy décide donc d\'aider Maya, la prêtresse du village, à contrecarrer les plans de Saga pour avoir une explication avec Zoro.'),(2,'Independance Day','01:45:30','Roland Emmerich','Il raconte l\'invasion d\'extraterrestres venus piller les ressources de la Terre, devant lesquels des groupes d\'individus et de familles fuient et convergent vers le désert du Nevada. Avec le reste de la population américaine, ils espèrent participer à une bataille de la dernière chance pour la survie de l\'espèce humaine. Symboliquement cette bataille a lieu le 4 juillet, le jour de la fête nationale américaine. '),(3,'Barbie','02:15:10','Greta Gerwig','A Barbie Land, vous êtes un être parfait dans un monde parfait. Sauf si vous êtes en crise existentielle, ou si vous êtes Ken.'),(4,'Oppenheimer','03:15:20','Christopher Nolan','Le nouveau film de Christopher Nolan sur l’univers palpitant de l‘homme complexe qui a mis en jeu la vie du monde entier pour mieux le sauver.'),(5,'Anatomie d\'une chute','02:31:00','Justine Triet','Sandra, Samuel et leur fils malvoyant de 11 ans, Daniel, vivent depuis un an loin de tout, à la montagne. Un jour, Samuel est retrouvé mort au pied de leur maison. Une enquête pour mort suspecte est ouverte. Sandra est bientôt inculpée malgré le doute : suicide ou homicide ? Un an plus tard, Daniel assiste au procès de sa mère, véritable dissection du couple.'),(6,'Green Book : Sur les routes du sud','02:00:00','Peter Farrelly','En 1962, alors que règne la ségrégation, Tony Lip, un videur italo-américain du Bronx, est engagé pour conduire et protéger le Dr Don Shirley, un pianiste noir de renommée mondiale, lors d’une tournée de concerts.'),(7,'Les as de la jungle 2','01:29:00','Laurent Bru','Qui appelle-t-on à la rescousse quand un mystérieux super-vilain recouvre la jungle d’une mousse rose qui explose au contact de l’eau ? Les As de la Jungle ! Moins d’un mois avant la saison des pluies, la course contre la montre est lancée. Du Pôle Nord à l’Extrême-Orient, traversant des montagnes, des déserts et des océans, nos héros vont devoir parcourir le monde à la recherche d’un antidote, loin de leur jungle favorite !');
/*!40000 ALTER TABLE `Movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MovieTheaters`
--

DROP TABLE IF EXISTS `MovieTheaters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MovieTheaters` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MovieTheaters`
--

LOCK TABLES `MovieTheaters` WRITE;
/*!40000 ALTER TABLE `MovieTheaters` DISABLE KEYS */;
INSERT INTO `MovieTheaters` VALUES (1,'PLS','Plaisir','100 rue de la paix'),(2,'SQY','Montigny','7 place de la médiathèque'),(3,'TRP','Trappes','39 route des fleurs'),(4,'PAR','Paris','104 impasse des arroseurs arrosés');
/*!40000 ALTER TABLE `MovieTheaters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProjectionEvents`
--

DROP TABLE IF EXISTS `ProjectionEvents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ProjectionEvents` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_room` int NOT NULL,
  `id_movie` int NOT NULL,
  `date` datetime NOT NULL,
  `options` json DEFAULT NULL,
  `language` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_room` (`id_room`,`date`),
  KEY `id_movie` (`id_movie`),
  CONSTRAINT `projectionevents_ibfk_1` FOREIGN KEY (`id_room`) REFERENCES `Rooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `projectionevents_ibfk_2` FOREIGN KEY (`id_movie`) REFERENCES `Movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProjectionEvents`
--

LOCK TABLES `ProjectionEvents` WRITE;
/*!40000 ALTER TABLE `ProjectionEvents` DISABLE KEYS */;
INSERT INTO `ProjectionEvents` VALUES (1,1,1,'2023-09-16 10:30:00','[\"IMAX\"]','VO'),(2,1,1,'2023-09-16 14:00:00','[\"IMAX\"]','VF'),(3,1,1,'2023-09-16 18:00:00','[\"IMAX\"]','VO'),(4,1,1,'2023-09-16 20:30:00','[\"IMAX\"]','VO'),(5,4,1,'2023-09-20 10:30:00','[\"3D\"]','VO'),(6,4,1,'2023-09-20 12:30:00','[\"3D\"]','VF'),(7,4,1,'2023-09-20 15:00:00','[\"4DX\"]','VF'),(8,4,1,'2023-09-20 18:00:00','[\"4DX\"]','VO'),(9,2,2,'2023-09-16 10:30:00','[\"IMAX\", \"4DX\"]','VO'),(10,2,2,'2023-09-16 14:00:00','[\"IMAX\", \"4DX\"]','VF'),(11,2,2,'2023-09-16 18:00:00','[\"IMAX\"]','VF'),(12,2,2,'2023-09-16 20:30:00','[\"IMAX\", \"3D\"]','V0'),(13,3,4,'2023-09-16 10:30:00','[\"IMAX\"]','VO'),(14,3,4,'2023-09-16 14:00:00','[\"IMAX\", \"4DX\"]','VF'),(15,3,4,'2023-09-16 18:00:00','[\"3D\"]','VO'),(16,3,4,'2023-09-16 20:30:00',NULL,'VO'),(17,3,4,'2024-09-16 10:30:00',NULL,'VO'),(18,3,4,'2024-09-16 12:30:00','[\"IMAX\", \"3D\"]','VO'),(19,3,4,'2024-09-16 14:30:00','[\"IMAX\", \"3D\"]','VF'),(20,3,4,'2024-09-16 16:30:00','[\"IMAX\"]','VF'),(21,3,4,'2024-09-16 19:30:00','[\"3D\"]','VO');
/*!40000 ALTER TABLE `ProjectionEvents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Roles`
--

DROP TABLE IF EXISTS `Roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Roles`
--

LOCK TABLES `Roles` WRITE;
/*!40000 ALTER TABLE `Roles` DISABLE KEYS */;
INSERT INTO `Roles` VALUES (1,'ROLE_USER'),(2,'ROLE_SUPER_ADMIN'),(3,'ROLE_ADMIN'),(4,'ROLE_CLIENT');
/*!40000 ALTER TABLE `Roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Roles_Users`
--

DROP TABLE IF EXISTS `Roles_Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Roles_Users` (
  `id_user` int NOT NULL,
  `id_role` int NOT NULL,
  PRIMARY KEY (`id_user`,`id_role`),
  KEY `id_role` (`id_role`),
  CONSTRAINT `roles_users_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `Users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `roles_users_ibfk_2` FOREIGN KEY (`id_role`) REFERENCES `Roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Roles_Users`
--

LOCK TABLES `Roles_Users` WRITE;
/*!40000 ALTER TABLE `Roles_Users` DISABLE KEYS */;
INSERT INTO `Roles_Users` VALUES (1,1),(2,1),(3,1),(4,1),(1,2),(2,3),(3,4),(4,4);
/*!40000 ALTER TABLE `Roles_Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Rooms`
--

DROP TABLE IF EXISTS `Rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Rooms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seatings` int NOT NULL,
  `id_movieTheater` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`,`id_movieTheater`),
  KEY `id_movieTheater` (`id_movieTheater`),
  CONSTRAINT `rooms_ibfk_1` FOREIGN KEY (`id_movieTheater`) REFERENCES `MovieTheaters` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Rooms`
--

LOCK TABLES `Rooms` WRITE;
/*!40000 ALTER TABLE `Rooms` DISABLE KEYS */;
INSERT INTO `Rooms` VALUES (1,'A',300,1),(2,'B',300,1),(3,'C',250,1),(4,'D',250,1),(5,'E',250,1),(6,'F',250,1),(7,'G',250,1),(8,'A',300,2),(9,'B',300,2),(10,'C',250,2),(11,'D',250,2),(12,'E',250,2),(13,'F',250,2),(14,'G',250,2),(15,'A',300,3),(16,'B',300,3),(17,'C',250,3),(18,'D',250,3),(19,'E',250,3),(20,'F',250,3),(21,'G',250,3),(22,'A',300,4),(23,'B',300,4),(24,'C',250,4),(25,'D',250,4),(26,'E',250,4),(27,'F',250,4),(28,'G',250,4);
/*!40000 ALTER TABLE `Rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tariffs`
--

DROP TABLE IF EXISTS `Tariffs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tariffs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tariffs`
--

LOCK TABLES `Tariffs` WRITE;
/*!40000 ALTER TABLE `Tariffs` DISABLE KEYS */;
INSERT INTO `Tariffs` VALUES (1,'Plein',9.2),(2,'Étudiant',7.6),(3,'Moins de 14 ans',5.9);
/*!40000 ALTER TABLE `Tariffs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tickets`
--

DROP TABLE IF EXISTS `Tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tickets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `paid` tinyint DEFAULT NULL,
  `id_projectionEvent` int NOT NULL,
  `id_tariff` int NOT NULL,
  `id_user` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_projectionEvent` (`id_projectionEvent`),
  KEY `id_tariff` (`id_tariff`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`id_projectionEvent`) REFERENCES `ProjectionEvents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tickets_ibfk_2` FOREIGN KEY (`id_tariff`) REFERENCES `Tariffs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tickets_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `Users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tickets`
--

LOCK TABLES `Tickets` WRITE;
/*!40000 ALTER TABLE `Tickets` DISABLE KEYS */;
INSERT INTO `Tickets` VALUES (1,1,1,1,1),(2,1,1,1,1),(3,1,1,3,1),(4,1,1,3,1),(5,1,1,1,2),(6,1,1,1,2),(7,1,1,1,2),(8,1,1,1,2),(9,1,1,1,3),(10,1,1,1,3),(11,1,1,3,3),(12,1,1,2,3),(13,1,2,1,4),(14,1,2,1,4),(15,1,2,2,4),(16,1,2,2,4),(17,1,17,1,1),(18,1,18,1,1),(19,1,19,1,1),(20,1,20,1,1),(21,1,21,1,1),(22,1,21,1,1),(23,1,21,1,1);
/*!40000 ALTER TABLE `Tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phoneNumber` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'John','Doe','JohnDoe@JD.fr','$2y$13$yttGHVF.y1IKVYgeqxp3We2AQZtTMCeCrPzEjPQ/8KxrAPv5hICGy','0123456789'),(2,'Émile','Guerin','EmileGuerin@EG.com','$2y$13$yttGHVF.y1IKVYgeqxp3We2AQZtTMCeCrPzEjPQ/8KxrAPv5hICGy','0123456789'),(3,'Suzanne','Henry','Suzanne@Henry.com','$2y$13$yttGHVF.y1IKVYgeqxp3We2AQZtTMCeCrPzEjPQ/8KxrAPv5hICGy','0123456789'),(4,'Célina','Leger','Celina@leger.com','$2y$13$yttGHVF.y1IKVYgeqxp3We2AQZtTMCeCrPzEjPQ/8KxrAPv5hICGy','0123456789');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-21 22:55:00
