-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ice
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `ingredients`
--

DROP TABLE IF EXISTS `ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingredients` (
  `ingID` int NOT NULL,
  `ingName` varchar(45) DEFAULT NULL,
  `unit` varchar(45) DEFAULT NULL,
  `energyUnit` varchar(45) DEFAULT NULL,
  `energyValue` float DEFAULT NULL,
  PRIMARY KEY (`ingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredients`
--

LOCK TABLES `ingredients` WRITE;
/*!40000 ALTER TABLE `ingredients` DISABLE KEYS */;
INSERT INTO `ingredients` VALUES (1,'Kartofler','g','kJ',3.26),(2,'peberfrugt','stk','kJ',1.3),(3,'rødløg','stk','kJ',1.9),(4,'olie','g','kJ',37),(5,'salt','g','kJ',0),(6,'hvidløg','stk','kJ',6.7),(7,'hakke oksekød','g','kJ',5.7),(8,'oregano','tsk','kJ',11),(9,'paprika','tsk','kJ',39),(10,'koncentreret tomatpuré','spsk','kJ',1.8),(11,'hakkede tomater','ds','kJ',360),(12,'peber','g','kJ',0.89),(13,'feta','g','kJ',11),(14,'revet mozzarella','g','kJ',10.88),(15,'persille','g','kJ',2.01),(16,'forårsløg','bdt','kJ',1.39),(17,'tacokrydderi','g','kJ',10.68),(18,'æg','stk','kJ',5.77),(19,'salsa','g','kJ',1.63),(20,'revet cheddarost','g','kJ',17.33),(21,'pasta','g','kJ',15),(22,'agurk','stk','kJ',0.5),(23,'cherytomater','g','kJ',0.8),(24,'avocado','stk','kJ',7.65),(25,'creme fraiche','g','kJ',7.93),(26,'lime','stk','kJ',1.7),(27,'majs','g','kJ',3.34),(28,'bacon','g','kJ',11.63),(29,'purløg','bdt','kJ',1.09),(30,'ærter','g','kJ',2.94),(31,'rugbrød','stk','kJ',8.43),(32,'kyllingefilet','stk','kJ',5.37),(33,'hjertesalat','stk','kJ',0.58),(34,'burgerbolle','stk','kJ',11.72),(35,'grøntsagsbouillon','dl','kJ',0.25),(36,'frosne ærter','g','kJ',3),(37,'fløde','dl','kJ',14.55),(38,'svinemørbrad','stk','kJ',2720),(39,'tørret oregano','spsk','kJ',33),(40,'balsamico','spsk','kJ',48.4),(41,'gulerødder','g','kJ',1.87),(42,'jordskokker','g','kJ',2.7),(43,'bladselleri','g','kJ',0.93),(44,'soja','spsk','kJ',34.365),(45,'laks','g','kJ',6.76),(46,'citron','stk','kJ',100.5),(47,'sesamfrø','spsk','kJ',213.384),(48,'broccoli','g','kJ',1.48),(49,'champignon','g','kJ',1.1),(50,'ris','g','kJ',15.18),(51,'rosmarin','tsk','kJ',6.32),(52,'basilikum','tsk','kJ',14),(53,'spisekommen','tsk','kJ',32),(54,'kokosmælk','ml','kJ',6.78),(55,'vand','dl','kJ',0),(56,'spinat','håndfuld','kJ',26),(57,'smør','g','kJ',30.54),(58,'kapers','spsk','kJ',23.38),(59,'olivenolie','spsk','kJ',518);
/*!40000 ALTER TABLE `ingredients` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-20 14:14:52
