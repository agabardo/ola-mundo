CREATE DATABASE  IF NOT EXISTS `catalogolaravel` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `catalogolaravel`;
-- MySQL dump 10.13  Distrib 5.7.9, for osx10.9 (x86_64)
--
-- Host: localhost    Database: catalogolaravel
-- ------------------------------------------------------
-- Server version	5.5.42

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comentarios` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `produto_id` int(11) NOT NULL,
  `usuario` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comentario` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `classificassao` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comentarios_produto_id_foreign` (`produto_id`),
  CONSTRAINT `comentarios_produto_id_foreign` FOREIGN KEY (`produto_id`) REFERENCES `produtos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentarios`
--

LOCK TABLES `comentarios` WRITE;
/*!40000 ALTER TABLE `comentarios` DISABLE KEYS */;
INSERT INTO `comentarios` VALUES (1,1,'John Doe','Produto de boa qualidade',5,'2017-01-21 21:42:51','2017-01-21 21:42:51'),(2,1,'Susan Doe','Gostei muito dessa garrafa',5,'2017-01-21 21:42:51','2017-01-21 21:42:51'),(3,1,'Mike Doe','Obrigado por esse excelente produto.',4,'2017-01-21 21:42:51','2017-01-21 21:42:51');
/*!40000 ALTER TABLE `comentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `referencia` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `titulo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descricao` longtext COLLATE utf8_unicode_ci NOT NULL,
  `preco` double(8,2) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'2016-10-26 08:04:27','2016-12-03 16:21:42','0001','Garrafa redonda púrpura','A primeira fábrica brasileira de garrafas de vidro foi implantada em 1810 na Bahia por Francisco Ignácio da Siqueira Nobre. A cachaça era tradicionalmente transportada em barris de madeira, mas, no início do século XIX, há relatos de cachaça em garrafa, não estando claro no entanto se eram recipientes reutilizados de bebidas importadas ou se eram produzidos no país. A cachaça Ypióca iniciou o envasamento em garrafas de vidro em 1895, mas a lei que obrigou todos os produtores a utilizar este tipo de recipiente foi promulgada apenas em 24 de setembro de 1938.',13.45,NULL),(2,'2016-10-26 08:04:27','2016-12-03 16:21:03','0002','Garrafa de Vidro Verde','Suspendisse vulputate vehicula lacus, nec varius est volutpat sit amet. Mauris venenatis orci vitae ullamcorper euismod. Vivamus a feugiat mauris, non ultricies lectus. Sed suscipit mauris vel sem tincidunt eleifend. Sed ornare lobortis mauris ac ullamcorper. Sed egestas leo ipsum, non sollicitudin magna feugiat vel. Pellentesque iaculis urna lectus, eget porttitor odio placerat in. Maecenas a leo felis. Curabitur volutpat orci vitae turpis sagittis mattis. Morbi sed porta velit, ut tempor ante.',56.78,NULL),(3,'2016-10-26 08:04:27','2017-01-25 13:05:38','0003','Garras de tampa rosqueavel','Vestibulum vel sem non lacus viverra porta. Aenean finibus tortor pretium quam eleifend, vitae semper dui tempus. In fringilla nulla libero, luctus ultrices dolor gravida at. Proin quis luctus metus. Pellentesque tincidunt luctus lacus, sed consectetur sem gravida in. Etiam sed consequat est. Maecenas blandit efficitur accumsan. Proin lacus orci, scelerisque a felis iaculis, consectetur hendrerit elit. Vestibulum suscipit mollis eros a tincidunt. Morbi porta interdum sagittis. Cras ut justo sem. Etiam faucibus quis nisl maximus aliquet. Sed rutrum orci iaculis urna dignissim sodales.',91.01,NULL),(4,'2016-10-26 08:04:27','2017-01-25 13:05:58','0004','Garrafas de vidro azul','Nulla facilisi. Duis non blandit augue. Sed aliquet, libero eu porta mollis, ex urna elementum urna, eu placerat turpis augue sed turpis. Sed sit amet dolor vehicula, euismod mauris quis, fermentum sem. Pellentesque egestas egestas ligula ac lobortis. Ut consectetur sapien vel posuere scelerisque. Aenean dapibus sodales imperdiet. Maecenas quis malesuada eros, a accumsan ante. Suspendisse rhoncus lorem in dolor ornare eleifend. Nullam id euismod magna, quis facilisis ipsum.',23.45,NULL),(5,'2016-10-26 08:04:27','2016-12-03 16:21:30','0005','Garrafa em acrílico verde','Phasellus at velit et sem pellentesque cursus vel id sapien. Phasellus condimentum felis eget libero consectetur finibus. Vivamus sed faucibus augue. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus ut volutpat lectus. Maecenas elementum leo varius augue faucibus bibendum. Nam sit amet arcu eget velit luctus scelerisque quis eu libero. Donec vitae suscipit ipsum, sit amet auctor est. In id nisl neque. Cras ac nibh non lectus pulvinar vestibulum. In vel nisl lacus.',67.89,NULL),(6,'2016-10-26 08:04:27','2017-01-25 13:06:18','0006','Garrafa estilizada','Em sua forma pura, o vidro é um óxido metálico super esfriado transparente, de elevada dureza, essencialmente inerte e biologicamente inativo, que pode ser fabricado com superfícies muito lisas e impermeáveis. Estas propriedades desejáveis conduzem a um grande número de aplicações. No entanto, o vidro geralmente é frágil, quebra-se com facilidade. O vidro comum se obtém por fusão em torno de 1.250 °C de dióxido de silício, (SiO2), carbonato de sódio (Na2CO3) e carbonato de cálcio (CaCO3).',10.12,NULL),(7,'2016-10-26 08:04:27','2017-01-25 13:06:43','0007','Garrafão transparente','Em sua forma pura, o vidro é um óxido metálico super esfriado transparente, de elevada dureza, essencialmente inerte e biologicamente inativo, que pode ser fabricado com superfícies muito lisas e impermeáveis. Estas propriedades desejáveis conduzem a um grande número de aplicações. No entanto, o vidro geralmente é frágil, quebra-se com facilidade. O vidro comum se obtém por fusão em torno de 1.250 °C de dióxido de silício, (SiO2), carbonato de sódio (Na2CO3) e carbonato de cálcio (CaCO3).',34.56,NULL),(8,'2016-10-26 08:04:27','2017-01-25 13:07:23','0008','Garrafa com tampo de pressão','Em sua forma pura, o vidro é um óxido metálico super esfriado transparente, de elevada dureza, essencialmente inerte e biologicamente inativo, que pode ser fabricado com superfícies muito lisas e impermeáveis. Estas propriedades desejáveis conduzem a um grande número de aplicações. No entanto, o vidro geralmente é frágil, quebra-se com facilidade. O vidro comum se obtém por fusão em torno de 1.250 °C de dióxido de silício, (SiO2), carbonato de sódio (Na2CO3) e carbonato de cálcio (CaCO3).',78.91,NULL),(9,'2016-10-26 08:04:27','2017-01-25 13:08:28','0009','Garrafa quadrada','Em sua forma pura, o vidro é um óxido metálico super esfriado transparente, de elevada dureza, essencialmente inerte e biologicamente inativo, que pode ser fabricado com superfícies muito lisas e impermeáveis. Estas propriedades desejáveis conduzem a um grande número de aplicações. No entanto, o vidro geralmente é frágil, quebra-se com facilidade. O vidro comum se obtém por fusão em torno de 1.250 °C de dióxido de silício, (SiO2), carbonato de sódio (Na2CO3) e carbonato de cálcio (CaCO3).',23.45,NULL),(10,'2016-10-26 08:04:27','2017-01-25 13:04:33','0010','Garrafão de vidro verde','Em sua forma pura, o vidro é um óxido metálico super esfriado transparente, de elevada dureza, essencialmente inerte e biologicamente inativo, que pode ser fabricado com superfícies muito lisas e impermeáveis. Estas propriedades desejáveis conduzem a um grande número de aplicações. No entanto, o vidro geralmente é frágil, quebra-se com facilidade. O vidro comum se obtém por fusão em torno de 1.250 °C de dióxido de silício, (SiO2), carbonato de sódio (Na2CO3) e carbonato de cálcio (CaCO3).',67.89,NULL),(11,'2016-11-13 22:13:40','2017-01-25 13:09:08','AAA','Garrafa com tampa de cortiça','Em sua forma pura, o vidro é um óxido metálico super esfriado transparente, de elevada dureza, essencialmente inerte e biologicamente inativo, que pode ser fabricado com superfícies muito lisas e impermeáveis. Estas propriedades desejáveis conduzem a um grande número de aplicações. No entanto, o vidro geralmente é frágil, quebra-se com facilidade. O vidro comum se obtém por fusão em torno de 1.250 °C de dióxido de silício, (SiO2), carbonato de sódio (Na2CO3) e carbonato de cálcio (CaCO3).',1234.00,NULL);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Ademir Gabardo','ademirgabardo@gmail.com','$2y$10$PO6QXl1isyg6DTsswGGm6.0JqJsf6KHbaoKwsSD9Uw2Q7YpokUf3K','b5ysdTSwxSjQPkel9mxxKUCUkptxPc2F0v56rlnBzlVxT54hYkFI03qOcyNn','2016-12-11 22:15:20','2016-12-12 23:08:40');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'catalogolaravel'
--

--
-- Dumping routines for database 'catalogolaravel'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-26 11:27:36
