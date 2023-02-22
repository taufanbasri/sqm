-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: mysql    Database: test_sqm
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads`
--

DROP TABLE IF EXISTS `leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('new','booking','drop') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sales_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `leads_sales_id_foreign` (`sales_id`),
  CONSTRAINT `leads_sales_id_foreign` FOREIGN KEY (`sales_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads`
--

LOCK TABLES `leads` WRITE;
/*!40000 ALTER TABLE `leads` DISABLE KEYS */;
INSERT INTO `leads` VALUES (2,'taufan','234234','taufan@mail.com','new','2023-02-22 01:49:40','2023-02-22 01:49:40',2),(3,'taufan','234234','taufan@mail.com','new','2023-02-22 01:49:43','2023-02-22 01:49:43',3),(4,'taufan','234234','taufan@mail.com','new','2023-02-22 01:49:45','2023-02-22 01:49:45',1),(5,'taufan','234234','taufan@mail.com','new','2023-02-22 01:49:47','2023-02-22 01:49:47',2),(6,'taufan','234234','taufan@mail.com','new','2023-02-22 01:49:50','2023-02-22 01:49:50',3),(7,'taufan','234234','taufan@mail.com','new','2023-02-22 01:55:53','2023-02-22 01:55:53',1),(8,'taufan','234234','taufan@mail.com','new','2023-02-22 01:59:21','2023-02-22 01:59:21',2),(9,'taufan','234234','taufan@mail.com','new','2023-02-22 02:10:33','2023-02-22 02:10:33',3),(10,'taufan','234234','taufan@mail.com','new','2023-02-22 02:12:01','2023-02-22 02:12:01',1),(11,'taufan','234234','taufan@mail.com','new','2023-02-22 02:12:19','2023-02-22 02:12:19',2),(12,'taufan','234234','taufan@mail.com','new','2023-02-22 02:13:10','2023-02-22 02:13:10',3),(13,'taufan','234234','taufan@mail.com','new','2023-02-22 02:13:15','2023-02-22 02:13:15',1),(14,'taufan','234234','taufan@mail.com','new','2023-02-22 02:14:40','2023-02-22 02:14:40',2),(15,'taufan','234234','taufan@mail.com','new','2023-02-22 04:09:32','2023-02-22 04:09:32',1),(16,'taufan','234234','taufan@mail.com','new','2023-02-22 04:09:35','2023-02-22 04:09:35',3),(17,'taufan','234234','taufan@mail.com','new','2023-02-22 04:09:37','2023-02-22 04:09:37',1),(18,'taufan','234234','taufan@mail.com','new','2023-02-22 04:09:38','2023-02-22 04:09:38',2),(19,'taufan','234234','taufan@mail.com','new','2023-02-22 04:09:39','2023-02-22 04:09:39',3),(20,'taufan','234234','taufan@mail.com','new','2023-02-22 04:09:40','2023-02-22 04:09:40',1),(21,'taufan','234234','taufan@mail.com','new','2023-02-22 04:09:40','2023-02-22 04:09:40',2),(22,'taufan','234234','taufan@mail.com','new','2023-02-22 04:09:41','2023-02-22 04:09:41',3),(23,'taufan','234234','taufan@mail.com','new','2023-02-22 04:09:42','2023-02-22 04:09:42',1),(24,'taufan','234234','taufan@mail.com','new','2023-02-22 04:09:42','2023-02-22 04:09:42',2),(25,'taufan','234234','taufan@mail.com','new','2023-02-22 04:09:43','2023-02-22 04:09:43',3),(26,'taufan','234234','taufan@mail.com','new','2023-02-22 04:09:44','2023-02-22 04:09:44',1),(27,'taufan','234234','taufan@mail.com','new','2023-02-22 04:09:44','2023-02-22 04:09:44',2),(28,'taufan','234234','taufan@mail.com','new','2023-02-22 04:09:45','2023-02-22 04:09:45',3),(29,'taufan','234234','taufan@mail.com','new','2023-02-22 04:09:49','2023-02-22 04:09:49',1),(30,'taufan','234234','taufan@mail.com','new','2023-02-22 04:09:49','2023-02-22 04:09:49',2),(31,'taufan','234234','taufan@mail.com','new','2023-02-22 04:09:50','2023-02-22 04:09:50',3),(32,'taufan','234234','taufan@mail.com','new','2023-02-22 04:09:50','2023-02-22 04:09:50',1),(33,'taufan','234234','taufan@mail.com','new','2023-02-22 04:09:51','2023-02-22 04:09:51',2),(34,'taufan','234234','taufan@mail.com','new','2023-02-22 04:09:51','2023-02-22 04:09:51',3),(35,'taufan','234234','taufan@mail.com','new','2023-02-22 04:09:52','2023-02-22 04:09:52',1),(36,'taufan','234234','taufan@mail.com','new','2023-02-22 04:09:54','2023-02-22 04:09:54',2),(37,'taufan','234234','taufan@mail.com','new','2023-02-22 04:09:55','2023-02-22 04:09:55',3),(38,'taufan','234234','taufan@mail.com','new','2023-02-22 04:09:55','2023-02-22 04:09:55',1);
/*!40000 ALTER TABLE `leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2023_02_22_002858_create_leads_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('sales','admin') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sales',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Stewart Collins V','nelle.schaefer@example.com','2023-02-22 01:49:30','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','sales','LSFhXo0BRu','2023-02-22 01:49:30','2023-02-22 01:49:30'),(2,'Alycia Simonis','coralie.weimann@example.com','2023-02-22 01:49:30','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','sales','Rz6lw6244u','2023-02-22 01:49:30','2023-02-22 01:49:30'),(3,'Arvid Ankunding','garret46@example.net','2023-02-22 01:49:30','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','sales','2GXC6krk34','2023-02-22 01:49:30','2023-02-22 01:49:30');
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

-- Dump completed on 2023-02-22  4:18:36
