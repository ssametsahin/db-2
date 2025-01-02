-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: onlinetest
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcements` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint unsigned NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `announcements_created_by_foreign` (`created_by`),
  CONSTRAINT `announcements_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question_id` bigint unsigned NOT NULL,
  `option_a` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_b` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_c` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_d` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correct_answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `answers_question_id_foreign` (`question_id`),
  CONSTRAINT `answers_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES (1,1,'Göz','Kulak','Ses','Duygu','C','2024-12-31 06:27:24','2024-12-31 06:27:24'),(2,2,'Olanak','Zorluk','Faydalanma','Kazanım','B','2024-12-31 06:27:24','2024-12-31 06:27:24'),(3,3,'O kadar','Çok','Kitap','Her','A','2024-12-31 06:27:24','2024-12-31 06:27:24'),(4,4,'Çimenler yeşildir.','Gök mavi renktedir.','Kızıl bir güneş batıyor.','Kar beyazdır.','D','2024-12-31 06:29:14','2024-12-31 06:29:14'),(5,5,'Duyguların değişmesi','İki veya daha fazla şeyin birbirini etkilemesi','Bir olayın sona ermesi','Gözlemler yapmak','B','2024-12-31 06:29:14','2024-12-31 06:29:14'),(6,6,'Tembel','Gayretli','Sözlü','Duygusal','B','2024-12-31 06:29:14','2024-12-31 06:29:14'),(7,7,'Kitap','Okul','Öğretmen','Çalışkan','D','2024-12-31 06:31:47','2024-12-31 06:31:47'),(8,8,'Yüksek','Kitaplık','Çalışkanlık','Evin','A','2024-12-31 06:31:47','2024-12-31 06:31:47'),(9,9,'Kırmızı','Dönmek','Hızlıca','Çalışma odası','D','2024-12-31 06:31:47','2024-12-31 06:31:47'),(10,10,'Türemiş','Birleşik','Basit','Zarf','C','2024-12-31 06:31:47','2024-12-31 06:31:47'),(11,11,'Gökyüzü','Kitap','Gönüllü','Elma','C','2024-12-31 06:31:47','2024-12-31 06:31:47'),(12,12,'Araba','Yazlık','Ev','Düşünmek','B','2024-12-31 06:40:13','2024-12-31 06:40:13'),(13,13,'Gözlük','Yüksek','Çalışma','Ev','A','2024-12-31 06:40:13','2024-12-31 06:40:13'),(14,14,'Yapım eki','Çekim eki','Bağlaç','Edat','A','2024-12-31 06:40:13','2024-12-31 06:40:13'),(15,15,'Öğrenci','Çok','Çalışkan','Kardeşim','C','2024-12-31 06:40:13','2024-12-31 06:40:13'),(16,16,'Yeşil','Çalışkan','Bahçeli','Yüksek','C','2024-12-31 06:40:13','2024-12-31 06:40:13'),(17,17,'Kediler','Sabah','Bahçede','Koşar','D','2024-12-31 06:42:32','2024-12-31 06:42:32'),(18,18,'Uyandığında','Güneş','Doğuyordu','Cümlede fiil yoktur','C','2024-12-31 06:42:32','2024-12-31 06:42:32'),(19,19,'Kapı açılacak.','Çocuk çok çalışıyor.','Oda temizlendi.','Öğrenciler koşacak.','C','2024-12-31 06:42:32','2024-12-31 06:42:32'),(20,20,'Yardım','Et','Bitirebiliriz','İş','B','2024-12-31 06:42:32','2024-12-31 06:42:32'),(21,21,'Düz fiil','Yardımcı fiil','Geçişsiz fiil','Geçişli fiil','C','2024-12-31 06:42:32','2024-12-31 06:42:32'),(22,22,'Koştu','Okudu','Gitmedi','Yazdı','C','2024-12-31 06:44:28','2024-12-31 06:44:28'),(23,23,'Şart kipi','Gerundium','Gelecek zaman','Yalın fiil','B','2024-12-31 06:44:28','2024-12-31 06:44:28'),(24,24,'Okuyor','Kitap','Hızlı','Kalem','A','2024-12-31 06:44:28','2024-12-31 06:44:28'),(25,25,'Geçişsiz fiil','Yardımcı fiil','Geçişli fiil','Düz fiil','C','2024-12-31 06:44:28','2024-12-31 06:44:28'),(26,26,'Şart kipi','Geçmiş zaman','Geniş zaman','Gereklilik kipi','B','2024-12-31 06:44:28','2024-12-31 06:44:28'),(27,27,'Okula','Gitmek','Erken','Kalkmam','B','2024-12-31 06:51:52','2024-12-31 06:51:52'),(28,28,'İsim fiil','Sıfat fiil','Zarf fiil','Yardımcı fiil','A','2024-12-31 06:51:52','2024-12-31 06:51:52'),(29,29,'Hızlıca','Koşarak','Yetiştim','Okula','B','2024-12-31 06:51:52','2024-12-31 06:51:52'),(30,30,'İsim fiil','Sıfat fiil','Zarf fiil','Bağlaç fiil','C','2024-12-31 06:51:52','2024-12-31 06:51:52'),(31,31,'Tanıyan','Kişi','Doğruyu','Söyler','A','2024-12-31 06:51:52','2024-12-31 06:51:52'),(32,32,'Zarf fiil','İsim fiil','Sıfat fiil','Bağlaç fiil','B','2024-12-31 06:53:59','2024-12-31 06:53:59'),(33,33,'Oyun','Oynamak','Veriyor','Zevk','B','2024-12-31 06:53:59','2024-12-31 06:53:59'),(34,34,'Zarf fiil','İsim fiil','Sıfat fiil','Bağlaç fiil','A','2024-12-31 06:53:59','2024-12-31 06:53:59'),(35,35,'İsim fiil','Zarf fiil','Sıfat fiil','Fiil','B','2024-12-31 06:53:59','2024-12-31 06:53:59'),(36,36,'İsim fiil','Zarf fiil','Sıfat fiil','Bağlaç fiil','B','2024-12-31 06:53:59','2024-12-31 06:53:59'),(37,37,'Deneme1','Deneme 2','Deneme 3','Deneme 4','B','2024-12-31 08:08:51','2024-12-31 08:08:51'),(38,38,'Denem 1','Deneme 2','Deneme 3','Deneme 4','A','2025-01-02 15:48:27','2025-01-02 15:48:27');
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_students`
--

DROP TABLE IF EXISTS `class_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_students` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `class_id` bigint unsigned NOT NULL,
  `student_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `class_students_class_id_foreign` (`class_id`),
  KEY `class_students_student_id_foreign` (`student_id`),
  CONSTRAINT `class_students_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `class_students_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_students`
--

LOCK TABLES `class_students` WRITE;
/*!40000 ALTER TABLE `class_students` DISABLE KEYS */;
INSERT INTO `class_students` VALUES (1,1,2,'2024-12-31 07:14:42','2024-12-31 07:14:42'),(2,2,3,'2024-12-31 07:14:59','2024-12-31 07:14:59'),(3,3,4,'2024-12-31 07:15:15','2024-12-31 07:15:15'),(4,4,5,'2024-12-31 07:15:50','2024-12-31 07:15:50'),(5,3,6,'2025-01-02 15:47:03','2025-01-02 15:47:03');
/*!40000 ALTER TABLE `class_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_teachers`
--

DROP TABLE IF EXISTS `class_teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_teachers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `class_id` bigint unsigned NOT NULL,
  `teacher_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `class_teachers_class_id_foreign` (`class_id`),
  KEY `class_teachers_teacher_id_foreign` (`teacher_id`),
  CONSTRAINT `class_teachers_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `class_teachers_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_teachers`
--

LOCK TABLES `class_teachers` WRITE;
/*!40000 ALTER TABLE `class_teachers` DISABLE KEYS */;
INSERT INTO `class_teachers` VALUES (1,1,1,'2024-12-31 06:25:34','2024-12-31 06:25:34');
/*!40000 ALTER TABLE `class_teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES (1,'5. Sınıf','2024-12-31 06:25:11','2024-12-31 06:25:11'),(2,'6. Sınıf','2024-12-31 06:25:11','2024-12-31 06:25:11'),(3,'7. Sınıf','2024-12-31 06:25:12','2024-12-31 06:25:12'),(4,'8. Sınıf','2024-12-31 06:25:12','2024-12-31 06:25:12');
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `logs_user_id_foreign` (`user_id`),
  CONSTRAINT `logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000001_create_cache_table',1),(2,'0001_01_01_000002_create_jobs_table',1),(3,'2024_12_22_013500_create_roles_table',1),(4,'2024_12_22_013516_create_classes_table',1),(5,'2024_12_22_013543_create_users_table',1),(6,'2024_12_22_013551_create_user_roles_table',1),(7,'2024_12_22_013603_create_class_students_table',1),(8,'2024_12_22_013609_create_class_teachers_table',1),(9,'2024_12_22_013614_create_subjects_table',1),(10,'2024_12_22_013619_create_subject_students_table',1),(11,'2024_12_22_013626_create_subject_teachers_table',1),(12,'2024_12_22_013631_create_topics_table',1),(13,'2024_12_22_013636_create_tests_table',1),(14,'2024_12_22_013641_create_test_schedules_table',1),(15,'2024_12_22_013647_create_test_history_table',1),(16,'2024_12_22_013653_create_questions_table',1),(17,'2024_12_22_013658_create_answers_table',1),(18,'2024_12_22_013704_create_results_table',1),(19,'2024_12_22_013710_create_notifications_table',1),(20,'2024_12_22_013715_create_announcements_table',1),(21,'2024_12_22_013723_create_settings_table',1),(22,'2024_12_22_013728_create_logs_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_user_id_foreign` (`user_id`),
  CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `test_id` bigint unsigned NOT NULL,
  `question_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `questions_test_id_foreign` (`test_id`),
  CONSTRAINT `questions_test_id_foreign` FOREIGN KEY (`test_id`) REFERENCES `tests` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,1,'Aşağıdaki kelimelerden hangisi \"ses\" anlamıyla kullanılmıştır? a) Göz','2024-12-31 06:27:24','2024-12-31 06:27:24'),(2,1,'\"Fırsat\" kelimesinin zıt anlamlısı nedir?','2024-12-31 06:27:24','2024-12-31 06:27:24'),(3,1,'Aşağıdaki cümledeki hangi kelime gereksizdir? \"O kadar çok kitap var ki, her birini okumak neredeyse imkansız.\"','2024-12-31 06:27:24','2024-12-31 06:27:24'),(4,2,'\"Beyaz\" kelimesinin anlamını anlatan cümle hangisidir?','2024-12-31 06:29:14','2024-12-31 06:29:14'),(5,2,'\"Etkileşim\" kelimesinin anlamı nedir?','2024-12-31 06:29:14','2024-12-31 06:29:14'),(6,2,'\"Çalışkan\" kelimesinin yerine hangi sözcük kullanılabilir?','2024-12-31 06:29:14','2024-12-31 06:29:14'),(7,3,'Aşağıdaki cümlede hangi sözcük türemiştir?','2024-12-31 06:31:47','2024-12-31 06:31:47'),(8,3,'Aşağıdaki sözcüklerden hangisi basit bir sözcüktür?','2024-12-31 06:31:47','2024-12-31 06:31:47'),(9,3,'Aşağıdaki cümlede hangi sözcük birleşik bir sözcüktür?','2024-12-31 06:31:47','2024-12-31 06:31:47'),(10,3,'\"Güzel\" kelimesi hangi tür bir sözcüktür?','2024-12-31 06:31:47','2024-12-31 06:31:47'),(11,3,'Aşağıdaki hangi sözcük türemiştir?','2024-12-31 06:31:47','2024-12-31 06:31:47'),(12,4,'Aşağıdaki cümlede hangi sözcük takı almış bir sözcüktür?','2024-12-31 06:40:13','2024-12-31 06:40:13'),(13,4,'Aşağıdaki sözcüklerden hangisi birleşik sözcük oluşturur?','2024-12-31 06:40:13','2024-12-31 06:40:13'),(14,4,'\"Kitaplık\" kelimesindeki ek, hangi tür eklerden biridir?','2024-12-31 06:40:13','2024-12-31 06:40:13'),(15,4,'Aşağıdaki cümlede hangi kelime türemiştir? \"Kardeşim çok çalışkan bir öğrencidir.\"','2024-12-31 06:40:13','2024-12-31 06:40:13'),(16,4,'Aşağıdaki cümlede hangi sözcük birleşik sözcük oluşturur?','2024-12-31 06:40:13','2024-12-31 06:40:13'),(17,5,'Aşağıdaki cümlede hangi kelime fiildir? \"Kediler her sabah bahçede koşar.\"','2024-12-31 06:42:32','2024-12-31 06:42:32'),(18,5,'\"Uyandığında güneş doğuyordu.\" cümlesindeki fiil hangisidir?','2024-12-31 06:42:32','2024-12-31 06:42:32'),(19,5,'Aşağıdaki cümlede hangi fiil edilgen çatılıdır?','2024-12-31 06:42:32','2024-12-31 06:42:32'),(20,5,'Aşağıdaki cümlede hangi fiil istek kipiyle kullanılmıştır? \"Bana yardım et, bu işi kolayca bitirebiliriz.\"','2024-12-31 06:42:32','2024-12-31 06:42:32'),(21,5,'\"Koşmak\" fiili hangi tür fiil grubuna girer?','2024-12-31 06:42:32','2024-12-31 06:42:32'),(22,6,'Aşağıdaki fiillerden hangisi olumsuz şekilde kullanılmıştır?','2024-12-31 06:44:28','2024-12-31 06:44:28'),(23,6,'\"Çalışarak ödül kazandı.\" cümlesindeki fiil hangi biçimde kullanılmıştır?','2024-12-31 06:44:28','2024-12-31 06:44:28'),(24,6,'Aşağıdaki fiillerden hangisi zaman kipine sahiptir?','2024-12-31 06:44:28','2024-12-31 06:44:28'),(25,6,'\"Eve geldim, seni gördüm.\" cümlesindeki fiillerin türü nedir?','2024-12-31 06:44:28','2024-12-31 06:44:28'),(26,6,'\"Bu sabah erkenden kalktım.\" cümlesindeki fiil hangi kipte kullanılmıştır?','2024-12-31 06:44:28','2024-12-31 06:44:28'),(27,7,'Aşağıdaki cümlede hangi kelime fiilimsi olarak kullanılmıştır? \"Okula gitmek için erken kalkmam gerekiyordu.\"','2024-12-31 06:51:52','2024-12-31 06:51:52'),(28,7,'\"Yazmayı çok seviyorum.\" cümlesindeki fiilimsi hangi tür fiilimsi ile kullanılmıştır?','2024-12-31 06:51:52','2024-12-31 06:51:52'),(29,7,'Aşağıdaki cümlede hangi fiilimsi zarf fiil olarak kullanılmıştır? \"Hızlıca koşarak okula yetiştim.\"','2024-12-31 06:51:52','2024-12-31 06:51:52'),(30,7,'\"Konuşarak anlaşmak daha kolaydır.\" cümlesindeki fiilimsinin türü nedir?','2024-12-31 06:51:52','2024-12-31 06:51:52'),(31,7,'Aşağıdaki cümlede hangi kelime sıfat fiil olarak kullanılmıştır? \"Beni tanıyan kişi doğruyu söyler.\"','2024-12-31 06:51:52','2024-12-31 06:51:52'),(32,8,'\"Okuldan sonra sinemaya gitmek istiyorum.\" cümlesindeki fiilimsi hangi tür fiilimsi ile kullanılmıştır?','2024-12-31 06:53:59','2024-12-31 06:53:59'),(33,8,'Aşağıdaki cümlede hangi fiilimsi kullanılmıştır? \"Oyun oynamak bana çok zevk veriyor.\"','2024-12-31 06:53:59','2024-12-31 06:53:59'),(34,8,'\"Ödevimi bitirdikten sonra dışarı çıkacağım.\" cümlesindeki fiilimsi hangi tür fiilimsi ile kullanılmıştır?','2024-12-31 06:53:59','2024-12-31 06:53:59'),(35,8,'\"Saat on ikiye kadar burada olacağım.\" cümlesindeki fiilimsi hangi tür fiilimsi ile kullanılmıştır?','2024-12-31 06:53:59','2024-12-31 06:53:59'),(36,8,'\"Kitap okurken müzik dinlemeyi seviyorum.\" cümlesindeki fiilimsi hangi tür fiilimsi ile kullanılmıştır?','2024-12-31 06:53:59','2024-12-31 06:53:59'),(37,9,'Denem','2024-12-31 08:08:51','2024-12-31 08:08:51'),(38,10,'Deneme?','2025-01-02 15:48:27','2025-01-02 15:48:27');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `results`
--

DROP TABLE IF EXISTS `results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `results` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `student_id` bigint unsigned NOT NULL,
  `test_id` bigint unsigned NOT NULL,
  `correct_answers` int NOT NULL,
  `wrong_answers` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `results_student_id_foreign` (`student_id`),
  KEY `results_test_id_foreign` (`test_id`),
  CONSTRAINT `results_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `results_test_id_foreign` FOREIGN KEY (`test_id`) REFERENCES `tests` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `results`
--

LOCK TABLES `results` WRITE;
/*!40000 ALTER TABLE `results` DISABLE KEYS */;
/*!40000 ALTER TABLE `results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Öğretmen','2024-12-31 06:25:11','2024-12-31 06:25:11'),(2,'Öğrenci','2024-12-31 06:25:11','2024-12-31 06:25:11');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject_students`
--

DROP TABLE IF EXISTS `subject_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject_students` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `subject_id` bigint unsigned NOT NULL,
  `student_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subject_students_subject_id_foreign` (`subject_id`),
  KEY `subject_students_student_id_foreign` (`student_id`),
  CONSTRAINT `subject_students_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `subject_students_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject_students`
--

LOCK TABLES `subject_students` WRITE;
/*!40000 ALTER TABLE `subject_students` DISABLE KEYS */;
INSERT INTO `subject_students` VALUES (1,1,2,'2024-12-31 07:14:42','2024-12-31 07:14:42'),(2,2,2,'2024-12-31 07:14:42','2024-12-31 07:14:42'),(3,3,2,'2024-12-31 07:14:42','2024-12-31 07:14:42'),(4,4,2,'2024-12-31 07:14:42','2024-12-31 07:14:42'),(5,5,2,'2024-12-31 07:14:42','2024-12-31 07:14:42'),(6,6,2,'2024-12-31 07:14:42','2024-12-31 07:14:42'),(7,7,3,'2024-12-31 07:14:59','2024-12-31 07:14:59'),(8,8,3,'2024-12-31 07:14:59','2024-12-31 07:14:59'),(9,9,3,'2024-12-31 07:14:59','2024-12-31 07:14:59'),(10,10,3,'2024-12-31 07:14:59','2024-12-31 07:14:59'),(11,11,3,'2024-12-31 07:14:59','2024-12-31 07:14:59'),(12,12,3,'2024-12-31 07:14:59','2024-12-31 07:14:59'),(13,13,4,'2024-12-31 07:15:15','2024-12-31 07:15:15'),(14,14,4,'2024-12-31 07:15:15','2024-12-31 07:15:15'),(15,15,4,'2024-12-31 07:15:15','2024-12-31 07:15:15'),(16,16,4,'2024-12-31 07:15:15','2024-12-31 07:15:15'),(17,17,4,'2024-12-31 07:15:15','2024-12-31 07:15:15'),(18,18,4,'2024-12-31 07:15:15','2024-12-31 07:15:15'),(19,19,5,'2024-12-31 07:15:50','2024-12-31 07:15:50'),(20,20,5,'2024-12-31 07:15:50','2024-12-31 07:15:50'),(21,21,5,'2024-12-31 07:15:50','2024-12-31 07:15:50'),(22,22,5,'2024-12-31 07:15:50','2024-12-31 07:15:50'),(23,23,5,'2024-12-31 07:15:50','2024-12-31 07:15:50'),(24,24,5,'2024-12-31 07:15:50','2024-12-31 07:15:50'),(25,13,6,'2025-01-02 15:47:03','2025-01-02 15:47:03'),(26,14,6,'2025-01-02 15:47:03','2025-01-02 15:47:03'),(27,15,6,'2025-01-02 15:47:03','2025-01-02 15:47:03'),(28,16,6,'2025-01-02 15:47:03','2025-01-02 15:47:03'),(29,17,6,'2025-01-02 15:47:03','2025-01-02 15:47:03'),(30,18,6,'2025-01-02 15:47:03','2025-01-02 15:47:03');
/*!40000 ALTER TABLE `subject_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject_teachers`
--

DROP TABLE IF EXISTS `subject_teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject_teachers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `subject_id` bigint unsigned NOT NULL,
  `teacher_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subject_teachers_subject_id_foreign` (`subject_id`),
  KEY `subject_teachers_teacher_id_foreign` (`teacher_id`),
  CONSTRAINT `subject_teachers_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE,
  CONSTRAINT `subject_teachers_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject_teachers`
--

LOCK TABLES `subject_teachers` WRITE;
/*!40000 ALTER TABLE `subject_teachers` DISABLE KEYS */;
INSERT INTO `subject_teachers` VALUES (1,1,1,'2024-12-31 06:25:34','2024-12-31 06:25:34'),(2,2,1,'2024-12-31 06:25:34','2024-12-31 06:25:34'),(3,3,1,'2024-12-31 06:25:34','2024-12-31 06:25:34'),(4,4,1,'2024-12-31 06:25:34','2024-12-31 06:25:34'),(5,5,1,'2024-12-31 06:25:34','2024-12-31 06:25:34'),(6,6,1,'2024-12-31 06:25:34','2024-12-31 06:25:34');
/*!40000 ALTER TABLE `subject_teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subjects_class_id_foreign` (`class_id`),
  CONSTRAINT `subjects_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (1,'Türkçe',1,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(2,'Matematik',1,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(3,'Fen Bilimleri',1,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(4,'Sosyal Bilgiler',1,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(5,'Yabancı Dil',1,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(6,'Din Kültürü ve Ahlak Bilgisi',1,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(7,'Türkçe',2,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(8,'Matematik',2,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(9,'Fen Bilimleri',2,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(10,'Sosyal Bilgiler',2,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(11,'Yabancı Dil',2,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(12,'Din Kültürü ve Ahlak Bilgisi',2,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(13,'Türkçe',3,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(14,'Matematik',3,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(15,'Fen Bilimleri',3,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(16,'Sosyal Bilgiler',3,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(17,'Yabancı Dil',3,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(18,'Din Kültürü ve Ahlak Bilgisi',3,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(19,'Türkçe',4,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(20,'Matematik',4,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(21,'Fen Bilimleri',4,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(22,'Sosyal Bilgiler',4,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(23,'Yabancı Dil',4,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(24,'Din Kültürü ve Ahlak Bilgisi',4,'2024-12-31 06:25:13','2024-12-31 06:25:13');
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_history`
--

DROP TABLE IF EXISTS `test_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_history` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `student_id` bigint unsigned NOT NULL,
  `test_id` bigint unsigned NOT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `test_history_student_id_foreign` (`student_id`),
  KEY `test_history_test_id_foreign` (`test_id`),
  CONSTRAINT `test_history_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `test_history_test_id_foreign` FOREIGN KEY (`test_id`) REFERENCES `tests` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_history`
--

LOCK TABLES `test_history` WRITE;
/*!40000 ALTER TABLE `test_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `test_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_schedules`
--

DROP TABLE IF EXISTS `test_schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_schedules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `test_id` bigint unsigned NOT NULL,
  `start_time` timestamp NOT NULL,
  `end_time` timestamp NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `test_schedules_test_id_foreign` (`test_id`),
  CONSTRAINT `test_schedules_test_id_foreign` FOREIGN KEY (`test_id`) REFERENCES `tests` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_schedules`
--

LOCK TABLES `test_schedules` WRITE;
/*!40000 ALTER TABLE `test_schedules` DISABLE KEYS */;
/*!40000 ALTER TABLE `test_schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tests`
--

DROP TABLE IF EXISTS `tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tests_topic_id_foreign` (`topic_id`),
  CONSTRAINT `tests_topic_id_foreign` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tests`
--

LOCK TABLES `tests` WRITE;
/*!40000 ALTER TABLE `tests` DISABLE KEYS */;
INSERT INTO `tests` VALUES (1,'Test 1',1,'2024-12-31 06:27:24','2024-12-31 06:27:24'),(2,'Test 2',1,'2024-12-31 06:29:14','2024-12-31 06:29:14'),(3,'Test 1',42,'2024-12-31 06:31:47','2024-12-31 06:31:47'),(4,'Test 2',42,'2024-12-31 06:40:13','2024-12-31 06:40:13'),(5,'Test 1',83,'2024-12-31 06:42:32','2024-12-31 06:42:32'),(6,'Test 2',83,'2024-12-31 06:44:28','2024-12-31 06:44:28'),(7,'Test 1',125,'2024-12-31 06:51:52','2024-12-31 06:51:52'),(8,'Test 2',125,'2024-12-31 06:53:59','2024-12-31 06:53:59'),(9,'Test 3',1,'2024-12-31 08:08:51','2024-12-31 08:08:51'),(10,'Test 1',36,'2025-01-02 15:48:27','2025-01-02 15:48:27');
/*!40000 ALTER TABLE `tests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topics`
--

DROP TABLE IF EXISTS `topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `topics` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `topics_subject_id_foreign` (`subject_id`),
  CONSTRAINT `topics_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topics`
--

LOCK TABLES `topics` WRITE;
/*!40000 ALTER TABLE `topics` DISABLE KEYS */;
INSERT INTO `topics` VALUES (1,'Söz Varlığı Unsurları',1,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(2,'İşlev Temelli Dil Yapıları ve Söz Varlığı',1,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(3,'Metin Türleri',1,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(4,'Paragraf Bilgisi',1,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(5,'Yazım Bilgisi',1,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(6,'Geometrik Şekiller',2,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(7,'Doğal Sayılarla İşlemler',2,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(8,'Geometrik Nicelikler',2,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(9,'Kesirler',2,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(10,'İstatistiksel Araştırma Süreci',2,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(11,'İşlemlerle Cebirsel Düşünme',2,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(12,'Veriden Olasılığa',2,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(13,'Gökyüzündeki Komşularımız ve Biz',3,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(14,'Kuvveti Tanıyalım',3,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(15,'Canlıların Yapısına Yolculuk',3,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(16,'Işığın Dünyası',3,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(17,'Maddenin Doğası',3,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(18,'Elektrik Devre Elemanları',3,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(19,'Sürdürülebilir Yaşam ve Geri Dönüşüm',3,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(20,'Birlikte Yaşamak',4,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(21,'Evimizi Dünya',4,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(22,'Ortak Mirasımız',4,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(23,'Yaşayan Demokrasimiz',4,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(24,'Hayatımızdaki Ekonomi',4,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(25,'Teknoloji ve Sosyal Bilimler',4,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(26,'Hello!',5,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(27,'My Town',5,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(28,'Games and Hobbies',5,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(29,'My Daily Routine',5,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(30,'Health',5,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(31,'Movies',5,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(32,'Party Time',5,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(33,'Fitness',5,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(34,'The Animal Shelter',5,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(35,'Festivals',5,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(36,'Allah İnanı',6,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(37,'Ramazan ve Oruç',6,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(38,'Adap ve Nezaket',6,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(39,'Adap ve Nezaket 2',6,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(40,'Hz. Muhammed ve Aile Hayatı',6,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(41,'Çevremizde Dinin İzleri',6,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(42,'Biçim ve Yapı Bilgisi',7,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(43,'Sözcükte Anlam',7,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(44,'Tamlamalar',7,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(45,'Cümlede Anlam',7,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(46,'Söz Gruplarında Anlam',7,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(47,'Doğal Sayılarla İşlemler',8,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(48,'Çarpanlar ve Katlar',8,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(49,'Kümeler',8,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(50,'Tam Sayılar',8,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(51,'Kesirlerle İşlemler',8,'2024-12-31 06:25:11','2024-12-31 06:25:11'),(52,'Ondalık Gösterim',8,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(53,'Oran',8,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(54,'Sıvı Ölçme',8,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(55,'Güneş Sistemi ve Tutulmalar',9,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(56,'Vücudumuzdaki Sistemler',9,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(57,'Kuvvet ve Hareket',9,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(58,'Madde ve Isı',9,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(59,'Ses ve Özellikleri',9,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(60,'Vücudumuzdaki Sistemler ve Sağlığı',9,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(61,'Elektriğin İletimi',9,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(62,'Biz ve Değerlerimiz',10,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(63,'Tarihe Yolculuk',10,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(64,'Yeryüzünde Yaşam',10,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(65,'Bilim ve Teknoloji Hayatımızda',10,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(66,'Üretiyorum, Tüketiyorum, Bilinçliyim',10,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(67,'Yönetime Katılıyorum',10,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(68,'Life',11,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(69,'Yummy Breakfast',11,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(70,'Downtown',11,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(71,'Weather and Emotions',11,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(72,'At the Fair',11,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(73,'Occupations',11,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(74,'Holidays',11,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(75,'Bookworms',11,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(76,'Saving the Planet',11,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(77,'Democracy',11,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(78,'Peygamber ve İlahi Kitap İnancı',12,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(79,'Namaz',12,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(80,'Zararlı Alışkanlıklar',12,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(81,'Hz. Muhammed’in (S.A.V.) Hayatı',12,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(82,'Temel Değerlerimiz',12,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(83,'Fiiller',13,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(84,'Sözcükte Anlam',13,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(85,'Cümlede Anlam',13,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(86,'Fiilde Yapı – Ek Fiiller',13,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(87,'Zarflar',13,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(88,'Parçada Anlam',13,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(89,'Tam Sayılarla İşlemler',14,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(90,'Rasyonel Sayılar',14,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(91,'Rasyonel Sayılarla İşlemler',14,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(92,'Cebirsel İfadeler',14,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(93,'Eşitlik ve Denklem',14,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(94,'Oran ve Oranti',14,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(95,'Yüzdeler',14,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(96,'Güneş Sistemi ve Ötesi',15,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(97,'Hücre ve Bölünmeler',15,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(98,'Kuvvet ve Enerji',15,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(99,'Saf Madde ve Karışımlar',15,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(100,'Işığın Madde ile Etkileşimi',15,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(101,'Canlılarda Üreme, Büyüme ve Gelişme',15,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(102,'Elektrik Devreleri',15,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(103,'İletişim ve İnsan İlişkileri',16,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(104,'Türk Tarihinde Yolculuk',16,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(105,'Ülkemizde Nüfus',16,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(106,'Zaman İçinde Bilim',16,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(107,'Ekonomi ve Sosyal Hayat',16,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(108,'Yaşayan Demokrasi',16,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(109,'Ülkeler Arası Köprüler',16,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(110,'Appearance and Personality',17,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(111,'Sports',17,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(112,'Biographies',17,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(113,'Wild Animals',17,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(114,'Television',17,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(115,'Celebrations',17,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(116,'Dreams',17,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(117,'Public Buildings',17,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(118,'Environment',17,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(119,'Planets',17,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(120,'Melekler ve Ahiret İnancı',18,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(121,'Hac ve Kurban',18,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(122,'Ahlaki Davranışlar',18,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(123,'Allah’ın (C.C.) Kulu ve Elçisi: Hz. Muhammed (S.A.V.)',18,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(124,'İslam Düşüncesinde Yorumlar',18,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(125,'Fiilimsiler',19,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(126,'Sözcükte Anlam',19,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(127,'Cümlede Anlam',19,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(128,'Fiil ve Eylem',19,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(129,'Parça İlgisi',19,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(130,'Anlatım Bozuklukları',19,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(131,'Cebirsel İfadeler',20,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(132,'Eşitlikler ve Denklem Çözme',20,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(133,'Geometri',20,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(134,'Üçgenler',20,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(135,'Oran Orantı',20,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(136,'Veri Analizi',20,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(137,'Madde ve Özellikleri',21,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(138,'İnsan ve Çevre',21,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(139,'Canlıların Yapısı ve Düzenleri',21,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(140,'Elektrik Enerjisi',21,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(141,'Işık ve Ses',21,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(142,'Hücre Bölünmesi ve Genetik',21,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(143,'Hücre ve Organizmalar',21,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(144,'Türklerin Geçmişteki İzlenceleri',22,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(145,'Ekonomi ve Para',22,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(146,'Sosyal Hayat',22,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(147,'Yerel Yönetimler',22,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(148,'Cumhuriyet ve Toplum',22,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(149,'Gelecek ve Planlama',22,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(150,'Human Rights',23,'2024-12-31 06:25:12','2024-12-31 06:25:12'),(151,'Sports',23,'2024-12-31 06:25:13','2024-12-31 06:25:13'),(152,'Future',23,'2024-12-31 06:25:13','2024-12-31 06:25:13'),(153,'Music',23,'2024-12-31 06:25:13','2024-12-31 06:25:13'),(154,'Education',23,'2024-12-31 06:25:13','2024-12-31 06:25:13'),(155,'Technology',23,'2024-12-31 06:25:13','2024-12-31 06:25:13'),(156,'Holidays',23,'2024-12-31 06:25:13','2024-12-31 06:25:13'),(157,'Environment',23,'2024-12-31 06:25:13','2024-12-31 06:25:13'),(158,'World',23,'2024-12-31 06:25:13','2024-12-31 06:25:13'),(159,'İslamda Ahiret İnancı',24,'2024-12-31 06:25:13','2024-12-31 06:25:13'),(160,'İslamda İbadet ve Hükümler',24,'2024-12-31 06:25:13','2024-12-31 06:25:13'),(161,'Hz. Muhammed’in (S.A.V.) Hayatı ve İslami Kavramlar',24,'2024-12-31 06:25:13','2024-12-31 06:25:13'),(162,'Oruç ve Zekâtın Önemi',24,'2024-12-31 06:25:13','2024-12-31 06:25:13'),(163,'Müslümanların Toplumsal Hayata Katılımı',24,'2024-12-31 06:25:13','2024-12-31 06:25:13');
/*!40000 ALTER TABLE `topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_roles_user_id_foreign` (`user_id`),
  KEY `user_roles_role_id_foreign` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (1,1,1,NULL,NULL),(2,2,2,NULL,NULL),(3,3,2,NULL,NULL),(4,4,2,NULL,NULL),(5,5,2,NULL,NULL),(6,6,2,NULL,NULL);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
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
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint unsigned DEFAULT NULL,
  `class_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  KEY `users_class_id_foreign` (`class_id`),
  CONSTRAINT `users_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE SET NULL,
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Samet Şahin','sametsahin2015@gmail.com','$2y$12$6kBgUmvOi9HlEW.XRgjQQeLzZq/pl0u29mpUktVTwYzgSOHHOe/lC',1,1,'2024-12-31 06:25:34','2024-12-31 06:25:34'),(2,'İlknur İşcen','ikoiscen@gmail.com','$2y$12$bIVFdypJ2QHUTN2p8OED7e9xo..bA9ZT5poYNeDaLhWcV32YDnoJe',2,1,'2024-12-31 07:14:42','2024-12-31 07:14:42'),(3,'Mehmet Aslan','mehmetaslan@gmail.com','$2y$12$b6Chd3SV.PVQvEaXgZ7ckO0Kwn7meYSbNUUivgqlAkK.X3pijW1dS',2,2,'2024-12-31 07:14:59','2024-12-31 07:14:59'),(4,'Ali Çakır','alicakir@gmail.com','$2y$12$LbcDQWivzRQxZKBLIlh3ZeGcSz7bjGdu00BDSqCA6x8a675DefQpm',2,3,'2024-12-31 07:15:15','2024-12-31 07:15:15'),(5,'Eren Kantekin','erenkantekin@gmail.com','$2y$12$QTzIeiDV9UiAywBxmZsBye/P.wzYylEdv.gnd5BccAr4SdfkGzrwe',2,4,'2024-12-31 07:15:50','2024-12-31 07:15:50'),(6,'Mehmet Mustafa Akgül','mehmet@gmail.com','$2y$12$T96ldNfpRuTDi6VaBvBm3u2oavqgWaNFB1T84I0cqiyQWnTE5V3pm',2,3,'2025-01-02 15:47:03','2025-01-02 15:47:03');
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

-- Dump completed on 2025-01-03  0:07:03
