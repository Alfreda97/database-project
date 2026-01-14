-- MySQL dump 10.13  Distrib 8.0.44, for macos15 (x86_64)
--
-- Host: mysqlsrv.dcs.bbk.ac.uk    Database: acarra05db
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customer` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `customer_fname` varchar(50) COLLATE latin1_bin NOT NULL,
  `customer_lname` varchar(50) COLLATE latin1_bin NOT NULL,
  `custoner_gender` enum('M','F') COLLATE latin1_bin DEFAULT NULL,
  `customer_dob` date NOT NULL,
  `customet_address1` varchar(20) COLLATE latin1_bin DEFAULT NULL,
  `customer_address2` varchar(20) COLLATE latin1_bin DEFAULT NULL,
  `customer_town` varchar(20) COLLATE latin1_bin DEFAULT NULL,
  `customer_pcode` varchar(15) COLLATE latin1_bin DEFAULT NULL,
  `customer_phone` varchar(15) COLLATE latin1_bin NOT NULL,
  `customer_membertype` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`customer_id`),
  KEY `FK_MemberType_Customer_idx` (`customer_membertype`),
  CONSTRAINT `FK_MemberType_Customer` FOREIGN KEY (`customer_membertype`) REFERENCES `MemberType` (`mtype_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES (1,'Stanley','Costa','M','2003-11-08','Flat 1','9 Grove Road','London','E23 0DE','07700 900543',1),(2,'Logan','Stark','M','1999-01-07','','65 School Lane','London','SE19 6GZ','07700 900232',1),(3,'Aliyah','Frost','F','1987-06-03','Flat D','7 North Road','London','W76 2YA','020 79460991',1),(4,'Dale','Vincent','M','1996-07-04','','33 South Street','London','SE15 6TR','07700 900667',1),(5,'Stella','Simpson','F','2001-08-05','','7 Church Street','London','EC18 7OJ','020 79460517',1),(6,'Lilliana','Murphy','F','1999-05-11','','92 Springfield Road','London','SW41 2LV','07700 900654',1),(7,'Kyler','Wood','M','2002-12-24','','92 Springfield Road','London','SW41 2LV','03069 990188',1),(8,'Averi','Cantrell','F','1997-05-01','','265 Queen Street','London','SW93 1WL','020 34960294',1),(9,'Lorelei','Hester','F','2003-10-16','','47 Richmond Road','London','SW21 5RT','07700 900325',1),(10,'Marlon','Cochran','M','2004-01-18','Flat 4','522 North Street','London','EC31 9WP','07700 900530',1),(11,'Jack','O`Donnell','M','1995-09-23','Flat G','66 Church Lane','London','WC04 1ZR','020 7946 0999',1),(12,'Timothy','Wheeler','M','1996-12-31','Flat G','66 Church Lane','London','WC04 1ZR','07700 900123',1),(13,'Nyla','Rose','F','2001-08-17','','92 The Avenue','London','NW76 4JO','020 7946 0396',1),(14,'Harper','Wall','M','1989-11-09','','40 Grove Road','London','W49 2LZ','07700 900299',1),(15,'Jazmyn','Molina','F','2002-01-18','','13 Main Road','London','WC63 4DO','07700 900917',1),(16,'Geovanni','Drake','M','2001-04-03','Flat 2','472 Alexander Road','London','EC71 9EJ','07700 900729',1),(17,'Allison','Glenn','F','1978-08-07','','61 The Drive','London','NW58 2ZX','020 7946 0309',1),(18,'Lamar','Peters','M','1973-05-18','','17 Kings Road','London','WC34 5HU','020 7946 0432',1),(19,'Julissa','Benton','F','1999-11-21','','35 Victoria Street','London','E42 8DF','020 7946 0411',1),(20,'Franco','Olson','M','2001-11-07','','62 St. Johns Road','London','EC24 1KC','07700 900281',1),(21,'Cortez','Young','M','2000-09-07','','92 Mill Lane','London','E84 3NP','07700 900435',1),(22,'Emmett','Murillo','F','1996-11-05','','46 Park Road','London','EC78 6AW','020 7946 0919',1),(23,'Jean','Johnston','F','2001-08-01','','312 Queensway','London','SW65 1RV','07700 900748',1),(24,'Penelope','Kelly','F','1997-01-02','','29 George Street','London','NW49 3AM','07700 900770',1);
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CustomerProgramme`
--

DROP TABLE IF EXISTS `CustomerProgramme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CustomerProgramme` (
  `programme_id` int NOT NULL,
  `customer_id` int NOT NULL,
  PRIMARY KEY (`programme_id`,`customer_id`),
  KEY `fk_customer_idx` (`customer_id`),
  CONSTRAINT `fk_customer` FOREIGN KEY (`customer_id`) REFERENCES `Customer` (`customer_id`),
  CONSTRAINT `fk_programme` FOREIGN KEY (`programme_id`) REFERENCES `Programme` (`programme_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CustomerProgramme`
--

LOCK TABLES `CustomerProgramme` WRITE;
/*!40000 ALTER TABLE `CustomerProgramme` DISABLE KEYS */;
INSERT INTO `CustomerProgramme` VALUES (8,1),(11,1),(19,1),(2,2),(9,2),(13,2),(22,2),(2,4),(6,4),(9,4),(13,4),(17,4),(22,4),(1,5),(4,5),(6,5),(7,5),(8,5),(10,5),(11,5),(14,5),(15,5),(17,5),(19,5),(23,5),(1,6),(8,6),(11,6),(19,6),(4,7),(7,7),(10,7),(14,7),(15,7),(23,7),(4,8),(6,8),(7,8),(10,8),(14,8),(15,8),(17,8),(20,8),(23,8),(5,9),(6,9),(12,9),(17,9),(18,9),(21,9),(4,10),(5,10),(10,10),(12,10),(18,10),(21,10),(23,10),(1,11),(2,11),(6,11),(8,11),(9,11),(11,11),(13,11),(17,11),(19,11),(22,11),(2,12),(6,12),(9,12),(13,12),(17,12),(22,12),(1,13),(8,13),(9,13),(11,13),(13,13),(14,13),(19,13),(20,13),(3,14),(5,14),(12,14),(16,14),(18,14),(21,14),(3,15),(8,15),(16,15),(3,16),(4,16),(9,16),(10,16),(13,16),(15,16),(16,16),(20,16),(23,16),(3,17),(6,17),(16,17),(17,17),(3,18),(16,18),(3,19),(4,20),(10,20),(23,20),(4,21),(12,21),(15,21),(20,21),(21,21),(3,22),(16,22),(4,23),(7,23),(10,23),(14,23),(23,23),(1,24),(8,24),(20,24);
/*!40000 ALTER TABLE `CustomerProgramme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MemberType`
--

DROP TABLE IF EXISTS `MemberType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MemberType` (
  `mtype_id` int NOT NULL,
  `mtype_name` varchar(20) COLLATE latin1_bin NOT NULL,
  `mtype_fee` decimal(5,2) NOT NULL,
  PRIMARY KEY (`mtype_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MemberType`
--

LOCK TABLES `MemberType` WRITE;
/*!40000 ALTER TABLE `MemberType` DISABLE KEYS */;
INSERT INTO `MemberType` VALUES (1,'Bronze',0.00),(2,'Silver',50.00),(3,'Gold',100.00);
/*!40000 ALTER TABLE `MemberType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Programme`
--

DROP TABLE IF EXISTS `Programme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Programme` (
  `programme_id` int NOT NULL AUTO_INCREMENT,
  `programme_activities` varchar(50) COLLATE latin1_bin NOT NULL,
  `programme_date` date NOT NULL,
  `programme_end_time` time NOT NULL,
  `programme_start_time` time NOT NULL,
  PRIMARY KEY (`programme_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Programme`
--

LOCK TABLES `Programme` WRITE;
/*!40000 ALTER TABLE `Programme` DISABLE KEYS */;
INSERT INTO `Programme` VALUES (1,'Pilates','2022-11-21','09:00:00','10:00:00'),(2,'Yoga - Beginners','2022-11-21','09:00:00','10:00:00'),(3,'Spin Class - Advanced','2022-11-21','11:00:00','12:00:00'),(4,'Yoga - Intermediate','2022-11-21','11:00:00','12:00:00'),(5,'Yoga - Advanced','2022-11-21','13:00:00','14:00:00'),(6,'Spin Class - Beginners','2022-11-21','18:30:00','19:30:00'),(7,'Spin Class - Intermediate','2022-11-21','20:00:00','21:00:00'),(8,'Pilates','2022-11-22','09:00:00','10:00:00'),(9,'Yoga - Beginners','2022-11-22','18:00:00','19:00:00'),(10,'Yoga - Intermediate','2022-11-22','18:00:00','19:00:00'),(11,'Pilates','2022-11-22','18:30:00','19:30:00'),(12,'Yoga - Advanced','2022-11-22','19:00:00','20:00:00'),(13,'Yoga - Beginners','2022-11-23','09:00:00','10:00:00'),(14,'Spin Class - Intermediate','2022-11-23','11:00:00','12:00:00'),(15,'Yoga - Intermediate','2022-11-23','11:00:00','12:00:00'),(16,'Spin Class - Advanced','2022-11-23','13:00:00','14:00:00'),(17,'Spin Class - Beginners','2022-11-23','13:00:00','14:00:00'),(18,'Yoga - Advanced','2022-11-23','13:00:00','14:00:00'),(19,'Pilates','2022-11-23','18:30:00','19:30:00'),(20,'Pilates','2022-11-24','14:00:00','15:00:00'),(21,'Yoga - Advanced','2022-11-25','09:00:00','10:00:00'),(22,'Yoga - Beginners','2022-11-25','14:00:00','15:00:00'),(23,'Yoga - Intermediate','2022-11-25','15:00:00','16:00:00');
/*!40000 ALTER TABLE `Programme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProgrammeTrainer`
--

DROP TABLE IF EXISTS `ProgrammeTrainer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ProgrammeTrainer` (
  `programme_id` int NOT NULL,
  `trainer_id` int NOT NULL,
  PRIMARY KEY (`programme_id`,`trainer_id`),
  KEY `fk_train_idx` (`trainer_id`),
  CONSTRAINT `fk_prog` FOREIGN KEY (`programme_id`) REFERENCES `Programme` (`programme_id`),
  CONSTRAINT `fk_train` FOREIGN KEY (`trainer_id`) REFERENCES `Trainer` (`trainer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProgrammeTrainer`
--

LOCK TABLES `ProgrammeTrainer` WRITE;
/*!40000 ALTER TABLE `ProgrammeTrainer` DISABLE KEYS */;
INSERT INTO `ProgrammeTrainer` VALUES (1,3),(8,3),(11,3),(18,3),(19,3),(20,3),(5,4),(7,4),(15,4),(2,5),(9,5),(13,5),(22,6),(4,7),(10,7),(3,8),(6,8),(14,9),(21,9),(12,10),(16,10),(17,10),(23,10);
/*!40000 ALTER TABLE `ProgrammeTrainer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Trainer`
--

DROP TABLE IF EXISTS `Trainer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Trainer` (
  `trainer_id` int NOT NULL AUTO_INCREMENT,
  `trainer_fname` varchar(25) COLLATE latin1_bin NOT NULL,
  `trainer_lname` varchar(25) COLLATE latin1_bin NOT NULL,
  `trainer_salary` decimal(10,0) DEFAULT NULL,
  `trainer_email` varchar(25) COLLATE latin1_bin DEFAULT NULL,
  `trainer_report_to` int DEFAULT NULL,
  PRIMARY KEY (`trainer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Trainer`
--

LOCK TABLES `Trainer` WRITE;
/*!40000 ALTER TABLE `Trainer` DISABLE KEYS */;
INSERT INTO `Trainer` VALUES (1,'Lila','Wright',32000,'l.wright@ffgym.co.uk',0),(2,'Victor','Holloway',28000,'v.holloway@ffgym.co.uk',1),(3,'Ron','Barnett',28000,'r.barnett@ffgym.co.uk',1),(4,'Mathew','Sullivan',24000,'m.sullivan@ffgym.co.uk',2),(5,'Fannie','Oliver',24000,'f.oliver@ffgym.co.uk',2),(6,'Anthony','Christensen',24000,'a.christensen@ffgym.co.uk',3),(7,'Mildred','Meyer',15000,'m.meyer@ffgym.co.uk',6),(8,'Tanya','Gomez',15000,'t.gomez@ffgym.co.uk',5),(9,'Josh','Little',10000,'j.little@ffgym.co.uk',6),(10,'Jose','Porter',10000,'j.porter@ffgym.co.uk',5);
/*!40000 ALTER TABLE `Trainer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_CustomerProgramme`
--

DROP TABLE IF EXISTS `vw_CustomerProgramme`;
/*!50001 DROP VIEW IF EXISTS `vw_CustomerProgramme`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_CustomerProgramme` AS SELECT 
 1 AS `Customer Name`,
 1 AS `Activities`,
 1 AS `Date Of Activity`,
 1 AS `Start Time`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_CustomerProgramme`
--

/*!50001 DROP VIEW IF EXISTS `vw_CustomerProgramme`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`acarra05`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_CustomerProgramme` AS select concat_ws(' ',`C`.`customer_fname`,`C`.`customer_lname`) AS `Customer Name`,`P`.`programme_activities` AS `Activities`,date_format(`P`.`programme_date`,'%d/%m/%Y') AS `Date Of Activity`,`P`.`programme_start_time` AS `Start Time` from ((`Customer` `C` join `CustomerProgramme` `CP` on((`CP`.`customer_id` = `C`.`customer_id`))) join `Programme` `P` on((`P`.`programme_id` = `CP`.`programme_id`))) order by `P`.`programme_date`,`P`.`programme_activities`,`C`.`customer_lname` */;
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

-- Dump completed on 2026-01-14  9:48:38
