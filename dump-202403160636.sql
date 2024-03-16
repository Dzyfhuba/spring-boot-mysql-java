-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: hokki
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

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
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `id` int NOT NULL AUTO_INCREMENT,
  `barcode` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `item_code` varchar(255) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `satuan_id` int DEFAULT '0',
  `updated_at` datetime(6) DEFAULT NULL,
  `status_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhea3bdlfr54v589k1qoon6awo` (`satuan_id`),
  CONSTRAINT `FKhea3bdlfr54v589k1qoon6awo` FOREIGN KEY (`satuan_id`) REFERENCES `satuan` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (202,'137116b5-c157-4f57-abd2-250fa445b080','2024-03-16 04:30:06.264406','ZXC','zxc',54,'2024-03-16 04:33:30.709519',NULL),(203,'d31cc970-1e9e-42b2-9a9b-aabea6d8e1b1','2024-03-16 04:30:12.167374','ASD','AASSDD',54,'2024-03-16 04:30:12.167411',NULL),(204,'345b659b-5db6-4ff0-9729-b6b6338b9c6c','2024-03-16 04:30:38.888597','ASD','AASSDD',54,'2024-03-16 04:30:38.888626',NULL),(205,'c90e20e1-570e-413f-a8e5-64497920d9a6','2024-03-16 04:30:39.646549','ASD','AASSDD',54,'2024-03-16 04:30:39.646575',NULL),(206,'aa587c66-c7d5-4ee3-a088-a8a649cd8aee','2024-03-16 04:30:40.312890','ASD','AASSDD',54,'2024-03-16 04:30:40.312932',NULL),(207,'d9a0a7ed-6990-4f5c-943e-1eb43fd1f4b4','2024-03-16 04:30:40.943973','ASD','AASSDD',54,'2024-03-16 04:30:40.944013',NULL),(208,'554756fe-cfd1-4152-8ffd-842aec6a4384','2024-03-16 04:30:41.523934','ASD','AASSDD',54,'2024-03-16 04:30:41.523976',NULL),(209,'a1788558-9f6d-42cb-83cc-71d3b3a46bcf','2024-03-16 04:30:42.121596','ASD','AASSDD',54,'2024-03-16 04:30:42.121632',NULL),(210,'d5781dca-06db-4d50-9766-c81af74275b7','2024-03-16 04:30:42.736596','ASD','AASSDD',54,'2024-03-16 04:30:42.736622',NULL),(211,'afd5bb83-c854-4056-8eee-0350c477e4fe','2024-03-16 04:30:43.277100','ASD','AASSDD',54,'2024-03-16 04:30:43.277126',NULL),(212,'ebfe9324-cd6c-4b37-ac64-474bf40f905d','2024-03-16 04:30:43.927265','ASD','AASSDD',54,'2024-03-16 04:30:43.927291',NULL),(213,'42f03777-cd95-4415-8302-455b185240d8','2024-03-16 04:30:44.495974','ASD','AASSDD',54,'2024-03-16 04:30:44.496013',NULL),(214,'d176d67d-04fc-43a7-8c44-e78b3cae6733','2024-03-16 04:30:45.017575','ASD','AASSDD',54,'2024-03-16 04:30:45.017602',NULL),(215,'6539e398-130b-4bae-a044-4f87ca64e754','2024-03-16 04:30:45.626217','ASD','AASSDD',54,'2024-03-16 04:30:45.626250',NULL),(216,'51baed00-a19f-42e9-ae85-9b9d2e969774','2024-03-16 04:30:46.191690','ASD','AASSDD',54,'2024-03-16 04:30:46.191750',NULL),(217,'fe4b0400-34d4-4c5a-bfa7-c8c28c257c10','2024-03-16 04:30:46.769396','ASD','AASSDD',54,'2024-03-16 04:30:46.769440',NULL),(218,'e2bf49f7-7514-4508-b564-8d06f0dffd3f','2024-03-16 04:30:47.341651','ASD','AASSDD',54,'2024-03-16 04:30:47.341693',NULL),(219,'a4acb580-a23d-4182-af0b-7c561cef0756','2024-03-16 04:30:47.801764','ASD','AASSDD',54,'2024-03-16 04:30:47.801792',NULL),(220,'efc46c62-d5fb-48f1-a39f-4e99212ab9da','2024-03-16 04:30:48.416837','ASD','AASSDD',54,'2024-03-16 04:30:48.416867',NULL),(221,'f75d6b0a-0f0a-43ef-804d-abcdff4c1fc8','2024-03-16 04:30:48.872471','ASD','AASSDD',54,'2024-03-16 04:30:48.872543',NULL),(222,'307ab083-cf27-43b6-b382-67e0b1e38abc','2024-03-16 04:30:49.324497','ASD','AASSDD',54,'2024-03-16 04:30:49.324541',NULL);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_seq`
--

DROP TABLE IF EXISTS `item_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_seq`
--

LOCK TABLES `item_seq` WRITE;
/*!40000 ALTER TABLE `item_seq` DISABLE KEYS */;
INSERT INTO `item_seq` VALUES (301);
/*!40000 ALTER TABLE `item_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `satuan`
--

DROP TABLE IF EXISTS `satuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `satuan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `satuan`
--

LOCK TABLES `satuan` WRITE;
/*!40000 ALTER TABLE `satuan` DISABLE KEYS */;
INSERT INTO `satuan` VALUES (3,'2024-03-16 02:58:40.234759','byte','2024-03-16 04:32:24.267460'),(52,'2024-03-16 03:56:11.843051','meter','2024-03-16 03:56:11.843179'),(53,'2024-03-16 03:56:16.257249','kilometer','2024-03-16 03:56:16.257275'),(54,'2024-03-16 03:56:20.205363','milimeter','2024-03-16 03:56:20.205389'),(102,'2024-03-16 04:31:07.348302','milimeter','2024-03-16 04:31:07.348334');
/*!40000 ALTER TABLE `satuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `satuan_seq`
--

DROP TABLE IF EXISTS `satuan_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `satuan_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `satuan_seq`
--

LOCK TABLES `satuan_seq` WRITE;
/*!40000 ALTER TABLE `satuan_seq` DISABLE KEYS */;
INSERT INTO `satuan_seq` VALUES (201);
/*!40000 ALTER TABLE `satuan_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'hokki'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-16  6:36:12
