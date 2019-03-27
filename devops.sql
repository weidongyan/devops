-- MySQL dump 10.14  Distrib 5.5.60-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: devops
-- ------------------------------------------------------
-- Server version	5.5.60-MariaDB

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add idc',7,'add_idc'),(20,'Can change idc',7,'change_idc'),(21,'Can delete idc',7,'delete_idc'),(22,'Can add cabinet',8,'add_cabinet'),(23,'Can change cabinet',8,'change_cabinet'),(24,'Can delete cabinet',8,'delete_cabinet'),(25,'Can add product model',9,'add_productmodel'),(26,'Can change product model',9,'change_productmodel'),(27,'Can delete product model',9,'delete_productmodel'),(28,'Can add manufacturer',10,'add_manufacturer'),(29,'Can change manufacturer',10,'change_manufacturer'),(30,'Can delete manufacturer',10,'delete_manufacturer');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (77,'pbkdf2_sha256$36000$ERsfqqYSkQmE$fe2Q352Fm9nXyINSDwcoRV3JcfqsP7p5nLUm2ZAzVL8=',NULL,0,'rock-1','','','rock-1@51reboot.com',0,1,'2019-03-26 07:12:39'),(78,'pbkdf2_sha256$36000$OqQijRlhKUie$AUoT99TjZJkut2R5PkDvrvXJaLEqrOtsidm0ujepGZc=',NULL,0,'rock-2','','','rock-2@51reboot.com',0,1,'2019-03-26 07:12:39'),(79,'pbkdf2_sha256$36000$K5lvcpj8nKhY$R1na1buUkE9JlKjbsQwVBxHBkwHLQG51gDkfaoZsY9s=',NULL,0,'rock-3','','','rock-3@51reboot.com',0,1,'2019-03-26 07:12:39'),(80,'pbkdf2_sha256$36000$POIBKp1lgCGN$sb2R/8L7iXRk4+JNhahCHOWW0XPsAg7QteVlO8pWdTk=',NULL,0,'rock-4','','','rock-4@51reboot.com',0,1,'2019-03-26 07:12:39'),(81,'pbkdf2_sha256$36000$43tj3MZFjlcV$U5D2n/Purs7LyHGBYCB4vN7gc3dwURL+9w/r1W2T4NY=',NULL,0,'rock-5','','','rock-5@51reboot.com',0,1,'2019-03-26 07:12:39'),(82,'pbkdf2_sha256$36000$lqyrAVx7nBjB$bTY8b4mHlwYTJdjaYSUrGj5r1Aq4zZbrq/p/CakMiyU=',NULL,0,'rock-6','','','rock-6@51reboot.com',0,1,'2019-03-26 07:12:39'),(83,'pbkdf2_sha256$36000$8uaF5XiocXaK$jZPFi/MN2LiDHUKer83Pt/yBjDlmtFUgGoD24QxyNkw=',NULL,0,'rock-7','','','rock-7@51reboot.com',0,1,'2019-03-26 07:12:39'),(84,'pbkdf2_sha256$36000$dMitwuqvq5Yw$N5/fxdmZtoE50qDNArq90L7bDQMyon5QmUvIF6FhG70=',NULL,0,'rock-8','','','rock-8@51reboot.com',0,1,'2019-03-26 07:12:39'),(85,'pbkdf2_sha256$36000$IqvIsJiCTkMw$o158dwCN9vynclSOyl3Ly7e3axdHvVbIoKCGknA9eMU=',NULL,0,'rock-9','','','rock-9@51reboot.com',0,1,'2019-03-26 07:12:39'),(86,'pbkdf2_sha256$36000$IBtLXAaZemio$Q4pefhbaq/91ilA8yNDhDCg6R10ecYw6xDscH/EENJ0=',NULL,0,'rock-10','','','rock-10@51reboot.com',0,1,'2019-03-26 07:12:39'),(87,'pbkdf2_sha256$36000$uWwznIwYun84$9b4UKsGmLl9dQyvhrdvAWngnOAPeJIsvUVK0pbWEM9s=',NULL,0,'rock-11','','','rock-11@51reboot.com',0,1,'2019-03-26 07:12:39'),(88,'pbkdf2_sha256$36000$GiKNYuslZsL1$Ibn1yKj/7TkvjyZddKVmE4VotLpWx2ws9MXczkQVLkw=',NULL,0,'rock-12','','','rock-12@51reboot.com',0,1,'2019-03-26 07:12:39'),(89,'pbkdf2_sha256$36000$GaFDXAYrwKEq$6NUimN5qWsSF98M6vzF/mjeqLCfB4oG0+eeXgNCsDhg=',NULL,0,'rock-13','','','rock-13@51reboot.com',0,1,'2019-03-26 07:12:39'),(90,'pbkdf2_sha256$36000$1utNihiFNsrm$f+evP9dxMW7GRZf0M3kDZAD6o9g2Z4Bi9zd+hDrgq0Y=',NULL,0,'rock-14','','','rock-14@51reboot.com',0,1,'2019-03-26 07:12:39'),(91,'pbkdf2_sha256$36000$EmJRs7H8NhrR$/b378E+wjLyauQ/wwkdWqyb2a6d09Gj43jg4GbLmKlU=',NULL,0,'rock-15','','','rock-15@51reboot.com',0,1,'2019-03-26 07:12:39'),(92,'pbkdf2_sha256$36000$WxCbCZfJ0gIt$0A+laR7WDb92gFDUDgeOWOAKpUXJEKlZSpFf4SuebLY=',NULL,0,'rock-16','','','rock-16@51reboot.com',0,1,'2019-03-26 07:12:39'),(93,'pbkdf2_sha256$36000$ISRDDqdwaUZ1$OqYudUwYZqruRNZVMEv6/9IZQtceVu+gS0C5I8aaLJY=',NULL,0,'rock-17','','','rock-17@51reboot.com',0,1,'2019-03-26 07:12:39'),(94,'pbkdf2_sha256$36000$AKc2ReFzclUQ$ANYiUOaSlESqd+z/EbhvWGiPhsuqYNS2a3pMlAovKnM=',NULL,0,'rock-18','','','rock-18@51reboot.com',0,1,'2019-03-26 07:12:39'),(95,'pbkdf2_sha256$36000$efxjjrP5XQRB$9MfV+983bwFN3Xt2FhbXaEU3Nid0WQJnc1pYJyrzjIA=',NULL,0,'rock-19','','','rock-19@51reboot.com',0,1,'2019-03-26 07:12:39'),(96,'pbkdf2_sha256$36000$WQrboiB5ovzi$RC60MXTJnYmXNwkAQ2lcFuULwlLcrARJfuL21Tuiy3M=',NULL,0,'panda-1','','','panda-1@51reboot.com',0,1,'2019-03-26 07:12:45'),(97,'pbkdf2_sha256$36000$AOyx0rNM1Wpy$oGMPEM2stL0D7pHT5Zeedc4D/NXu7DjiGXnaW2x3hqs=',NULL,0,'panda-2','','','panda-2@51reboot.com',0,1,'2019-03-26 07:12:45'),(98,'pbkdf2_sha256$36000$HqEANH4cJFeb$g+Hnh9dvNb/zXFvZWBbUGd6N052wLxgvk4jBSbPm+ws=',NULL,0,'panda-3','','','panda-3@51reboot.com',0,1,'2019-03-26 07:12:45'),(99,'pbkdf2_sha256$36000$SACrIvO3d7N6$YTEHlptCCkpcaYgX7qRfYgvMB2Y84rrSrZNBOb3GrOo=',NULL,0,'panda-4','','','panda-4@51reboot.com',0,1,'2019-03-26 07:12:45'),(100,'pbkdf2_sha256$36000$LergVLbAuUoV$pUWnn18Abf5M+H//n5Ks+evqq8jw0m+2Q0rgoCjinkw=',NULL,0,'panda-5','','','panda-5@51reboot.com',0,1,'2019-03-26 07:12:45'),(101,'pbkdf2_sha256$36000$sChOh256InJS$7n96WMZB9YgJRtL0zdvTvbIG9rG3HnmzqxIpgRBeKtQ=',NULL,0,'panda-6','','','panda-6@51reboot.com',0,1,'2019-03-26 07:12:45'),(102,'pbkdf2_sha256$36000$9Yh6SypvGKOa$2U6ng4m0HxZesQuergQ2X0F96abzgK+azT472HGMnIY=',NULL,0,'panda-7','','','panda-7@51reboot.com',0,1,'2019-03-26 07:12:45'),(103,'pbkdf2_sha256$36000$5ludwGNLuUzl$8Rv/4CPpmnwLJMSS+GQDbaW0t7ygluYV3FYrqzBIXIo=',NULL,0,'panda-8','','','panda-8@51reboot.com',0,1,'2019-03-26 07:12:45'),(104,'pbkdf2_sha256$36000$zNXcZRCLFN9F$Y7yALjz3t+VvpYiMKFXv8F3yZEw8FDwqPWeIyTF44IE=',NULL,0,'panda-9','','','panda-9@51reboot.com',0,1,'2019-03-26 07:12:45'),(105,'pbkdf2_sha256$36000$7nSHVgfM5w0d$oSeChbGZ5a12o8dVSqY45/6HNt2QYPfrtT10R5R3nXg=',NULL,0,'panda-10','','','panda-10@51reboot.com',0,1,'2019-03-26 07:12:45'),(106,'pbkdf2_sha256$36000$b9c1P3AMva3X$jGC3iSP3TKVpvW+hnuonWQXZfH6yTUIBl5m4m6sm/kk=',NULL,0,'panda-11','','','panda-11@51reboot.com',0,1,'2019-03-26 07:12:45'),(107,'pbkdf2_sha256$36000$cDRQotXdr3OE$tYXqi96650FUkA1JMDjWm7bqO09xKfpsL5bPCoZavbo=',NULL,0,'panda-12','','','panda-12@51reboot.com',0,1,'2019-03-26 07:12:45'),(108,'pbkdf2_sha256$36000$RC1UZv2y31m3$VF7XdU8s7/9mNhlwmxl1T3yrc/HpkuxZ+l3cVmeSS3U=',NULL,0,'panda-13','','','panda-13@51reboot.com',0,1,'2019-03-26 07:12:45'),(109,'pbkdf2_sha256$36000$S6V2yLUDtBrm$hU8fWWh4KLhy8PMlNtrLqoKDKlNxkAN6v5eafuP7SFA=',NULL,0,'panda-14','','','panda-14@51reboot.com',0,1,'2019-03-26 07:12:46'),(110,'pbkdf2_sha256$36000$4jZF1bEs9Ik8$kbbgiwkopkbWVudrMyw1g6d72ZCWfHulPynFRR3VFXs=',NULL,0,'panda-15','','','panda-15@51reboot.com',0,1,'2019-03-26 07:12:46'),(111,'pbkdf2_sha256$36000$PSqMWLbp46QI$j2pZg76TlgYebNcnZq05Jf4EK4o/3DHBybTx5hOQ0ME=',NULL,0,'panda-16','','','panda-16@51reboot.com',0,1,'2019-03-26 07:12:46'),(112,'pbkdf2_sha256$36000$oY9kVYLHOhDz$i4dgGW6FY/1K30ul7XZ5uJGEGYt4PkLSGpP7hN9L7lE=',NULL,0,'panda-17','','','panda-17@51reboot.com',0,1,'2019-03-26 07:12:46'),(113,'pbkdf2_sha256$36000$Uc1iM7d99tHk$7sOKjMFJ8DQbYrLm65Uzo2csmDAwEw3cHZ6Fq3A/Dlc=',NULL,0,'panda-18','','','panda-18@51reboot.com',0,1,'2019-03-26 07:12:46'),(114,'pbkdf2_sha256$36000$C15f00wYYUDL$Ge23qUrfP7abjdszhGPeuvtyl7ZA/RvYtZbiq2d14NE=',NULL,0,'panda-19','','','panda-19@51reboot.com',0,1,'2019-03-26 07:12:46'),(115,'pbkdf2_sha256$36000$NAawESCxapLE$E39F1qNhv9Ru2zR2nPtGtjRx0a5dhJ5pivCxoZrqhqQ=',NULL,0,'wd-1','','','wd-1@51reboot.com',0,1,'2019-03-26 07:12:50'),(116,'pbkdf2_sha256$36000$QJxwczbCiQHK$yyV5bbNz9J6Qb11G3MRPUTiECT3PlkBgBUmw/CsWm2A=',NULL,0,'wd-2','','','wd-2@51reboot.com',0,1,'2019-03-26 07:12:50'),(117,'pbkdf2_sha256$36000$QpP7gy2BgJHB$ynVTZxPNBPpk++DNzRDfymRrvwStce2Y/ezwqR7May0=',NULL,0,'wd-3','','','wd-3@51reboot.com',0,1,'2019-03-26 07:12:50'),(118,'pbkdf2_sha256$36000$HlZZtYJrdm8I$cPkNMdhtMpf2AdBSjtur9uBZP6Yqy/+0HrJdfWY9DcI=',NULL,0,'wd-4','','','wd-4@51reboot.com',0,1,'2019-03-26 07:12:50'),(119,'pbkdf2_sha256$36000$oBYR9KhwbU8m$G+QewUoCdpH+CYQ+ot9Bf4jfNJqEOKCd/g6Nl+F4ZWY=',NULL,0,'wd-5','','','wd-5@51reboot.com',0,1,'2019-03-26 07:12:51'),(120,'pbkdf2_sha256$36000$5dU0Hk8rBPK3$Rfx4SwskcoapQ906FbuAJdUV/N39eagsS+SNo06fKL0=',NULL,0,'wd-6','','','wd-6@51reboot.com',0,1,'2019-03-26 07:12:51'),(121,'pbkdf2_sha256$36000$5d3dDEDY5lAR$ze5KY48U39gLcnaDqdwuCVvXOcVg73gsnYX/vjP07zc=',NULL,0,'wd-7','','','wd-7@51reboot.com',0,1,'2019-03-26 07:12:51'),(122,'pbkdf2_sha256$36000$vxitZG41AYYE$MVT9bpQPcCounFFov4ZZzOQwHgdN5opBOAI1xszORSk=',NULL,0,'wd-8','','','wd-8@51reboot.com',0,1,'2019-03-26 07:12:51'),(123,'pbkdf2_sha256$36000$N7KUk3tzLdYy$ZTTc0NvExIL9gN6SPW5XJU9YCKMPkfL1QaZIrA+8UpE=',NULL,0,'wd-9','','','wd-9@51reboot.com',0,1,'2019-03-26 07:12:51'),(124,'pbkdf2_sha256$36000$ZDrA2FgOPhRo$GfKasvEv6c3/IurPgYnwzhnRMj/51DnitDCZhzEoBCk=',NULL,0,'wd-10','','','wd-10@51reboot.com',0,1,'2019-03-26 07:12:51'),(125,'pbkdf2_sha256$36000$C5BARjR7wWpz$5uI6jMJaXOAWz7MCBVoSWEkoHVea59gIgtTZ3Mv5k2M=',NULL,0,'wd-11','','','wd-11@51reboot.com',0,1,'2019-03-26 07:12:51'),(126,'pbkdf2_sha256$36000$3va1VZeatcUf$QaxJuatFBXezJfRNF03Xb0StGfcPOzIy2rvf8JEbrto=',NULL,0,'wd-12','','','wd-12@51reboot.com',0,1,'2019-03-26 07:12:51'),(127,'pbkdf2_sha256$36000$uKiCp9T6uBHg$bwGFzrcAqMgSWCU4HwyrE8VOdkuqp9atkTRJeLNIlfs=',NULL,0,'wd-13','','','wd-13@51reboot.com',0,1,'2019-03-26 07:12:51'),(128,'pbkdf2_sha256$36000$5XcZoj1GJKyw$YVyFHUVNqn5qqo3zwOjr2hFZ7/nisOWFIeTsFi87344=',NULL,0,'wd-14','','','wd-14@51reboot.com',0,1,'2019-03-26 07:12:51'),(129,'pbkdf2_sha256$36000$2AbpPOLIQeBt$StbiMW9uWWcQb8IYy/MhoiogHhBHKNNJW7yZfL/krzw=',NULL,0,'wd-15','','','wd-15@51reboot.com',0,1,'2019-03-26 07:12:51'),(130,'pbkdf2_sha256$36000$JQNjyfKW8q16$wnZGJXieiHnSjjkMhKzn4r5MHB7/hZqah0hrdml7AO0=',NULL,0,'wd-16','','','wd-16@51reboot.com',0,1,'2019-03-26 07:12:51'),(131,'pbkdf2_sha256$36000$f990dP6qVL7w$kcBTZx9g5OSaIt4LxOTqtN/xq1a/OMbDXHmWtfaj8xA=',NULL,0,'wd-17','','','wd-17@51reboot.com',0,1,'2019-03-26 07:12:51'),(132,'pbkdf2_sha256$36000$xIJtdQ7ukUZl$xDUVw3wR4+Eg0zeV5tpPpDIrJMe8Z5kfO5e4kVYyOW4=',NULL,0,'wd-18','','','wd-18@51reboot.com',0,1,'2019-03-26 07:12:51'),(133,'pbkdf2_sha256$36000$0TXpmRb6lJRo$q1EhFOVceC2wJ2DlwL1sLoZCQEVVOPQR8RoDm9R2F2Q=',NULL,0,'wd-19','','','wd-19@51reboot.com',0,1,'2019-03-26 07:12:51'),(134,'pbkdf2_sha256$36000$H3zFFMvZ6Ryq$TUrBNIYQufBQtFTGShycD8rrZXodmnk+W5EaqSR/k4g=',NULL,0,'pc-1','','','pc-1@51reboot.com',0,1,'2019-03-26 07:13:03'),(135,'pbkdf2_sha256$36000$W4PHyA0p8GOj$5rEbXD5rwkUQK2W8R2gph29jubHtc38qu/u06g8rY54=',NULL,0,'pc-2','','','pc-2@51reboot.com',0,1,'2019-03-26 07:13:03'),(136,'pbkdf2_sha256$36000$uHOiNDRUR3jd$tteEK/TDA8fyQuQ82PKSoKzMXG2l0xn7VsBAcuqsBX8=',NULL,0,'pc-3','','','pc-3@51reboot.com',0,1,'2019-03-26 07:13:03'),(137,'pbkdf2_sha256$36000$MLxUfbrHhNLx$Cch6kM7Y33wtQiVC04iRMQFMS5wATqC2qBk2ydV8LtI=',NULL,0,'pc-4','','','pc-4@51reboot.com',0,1,'2019-03-26 07:13:03'),(138,'pbkdf2_sha256$36000$8tD8JSXPMN96$UbSayd2cSPXOgbJXZXeLq01/BKx2tOOZ559cALRhrHU=',NULL,0,'pc-5','','','pc-5@51reboot.com',0,1,'2019-03-26 07:13:03'),(139,'pbkdf2_sha256$36000$tY3RLMpevt9e$JF5ltDu3H4L66589cd0c48Q0OaYMJCuC1GIyKAzQOm8=',NULL,0,'pc-6','','','pc-6@51reboot.com',0,1,'2019-03-26 07:13:03'),(140,'pbkdf2_sha256$36000$24VagXuQGQKH$Y7TKQmY/OD85PINEFJP73hRA9U5t25qYaT5yiIPowfY=',NULL,0,'pc-7','','','pc-7@51reboot.com',0,1,'2019-03-26 07:13:03'),(141,'pbkdf2_sha256$36000$dGlburL3WKC3$k0CFeC/CWwcNBTyPBenUe0xS41fmxMF5v/3Wbt4S6Ac=',NULL,0,'pc-8','','','pc-8@51reboot.com',0,1,'2019-03-26 07:13:03'),(142,'pbkdf2_sha256$36000$DlKnGQ8paeDf$a7DlkCuy3rC36N4I3+gBobsC9AOm/le+QMvqDUBfNz8=',NULL,0,'pc-9','','','pc-9@51reboot.com',0,1,'2019-03-26 07:13:03'),(143,'pbkdf2_sha256$36000$CwKh6uvszsEm$bm0Bxea8KRR5FFWwFzWwazCqhY/s8lw18Z3GE/Sm7Kk=',NULL,0,'pc-10','','','pc-10@51reboot.com',0,1,'2019-03-26 07:13:03'),(144,'pbkdf2_sha256$36000$DG7DDTaHXh8V$0h8bAOKTbj9HdZAJ8vOs4fo7G/H+zwP/TvhDzgkyU7E=',NULL,0,'pc-11','','','pc-11@51reboot.com',0,1,'2019-03-26 07:13:03'),(145,'pbkdf2_sha256$36000$jlhVGaiKHFbR$7t7ngYDJ0pCG9jb75Is7i5NRDrGlh7soZ5GJeeFBkXg=',NULL,0,'pc-12','','','pc-12@51reboot.com',0,1,'2019-03-26 07:13:03'),(146,'pbkdf2_sha256$36000$xWCdMgCQV3pV$PiWB4TrVEFR8fGze8ulSDWZ9XUWHw70idC70c+i70Y4=',NULL,0,'pc-13','','','pc-13@51reboot.com',0,1,'2019-03-26 07:13:03'),(147,'pbkdf2_sha256$36000$VxgDunClSqxw$A6Y7JiEveT1wdMcFVFUN91vIyoDgFj275GGwahJdLwE=',NULL,0,'pc-14','','','pc-14@51reboot.com',0,1,'2019-03-26 07:13:03'),(148,'pbkdf2_sha256$36000$d00RgUHhdZKQ$Iw8agwzigNTmvVB5MjCcgfZ58PrRsVSBiS7QnUtf49k=',NULL,0,'pc-15','','','pc-15@51reboot.com',0,1,'2019-03-26 07:13:03'),(149,'pbkdf2_sha256$36000$f4jU1yAYH9YW$tFKjY0WgACUqL4RasuSeJOPist8ecLn2pDg4u5acSoI=',NULL,0,'pc-16','','','pc-16@51reboot.com',0,1,'2019-03-26 07:13:03'),(150,'pbkdf2_sha256$36000$aaHD0Io82zC1$cMuuI0yyRdB7FW9/oLVNPuKUAcLY+EiLlQx3Hy43GZw=',NULL,0,'pc-17','','','pc-17@51reboot.com',0,1,'2019-03-26 07:13:03'),(151,'pbkdf2_sha256$36000$Ysl5A8Q2wh9d$fKOpbIdSdEKCt2SkKg9SkNxf/v7iwfxnL63DERh9Axk=',NULL,0,'pc-18','','','pc-18@51reboot.com',0,1,'2019-03-26 07:13:03'),(152,'pbkdf2_sha256$36000$qf9pJ3ZZ9Z6U$/6D3TjeI5dVKV3e//TA0cUDeSukowhur3Kjv3fMNUvQ=',NULL,0,'pc-19','','','pc-19@51reboot.com',0,1,'2019-03-26 07:13:03');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(8,'cabinet','cabinet'),(5,'contenttypes','contenttype'),(7,'idcs','idc'),(10,'manufacturer','manufacturer'),(9,'manufacturer','productmodel'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-03-22 08:54:09'),(2,'auth','0001_initial','2019-03-22 08:54:09'),(3,'admin','0001_initial','2019-03-22 08:54:09'),(4,'admin','0002_logentry_remove_auto_add','2019-03-22 08:54:09'),(5,'contenttypes','0002_remove_content_type_name','2019-03-22 08:54:09'),(6,'auth','0002_alter_permission_name_max_length','2019-03-22 08:54:09'),(7,'auth','0003_alter_user_email_max_length','2019-03-22 08:54:09'),(8,'auth','0004_alter_user_username_opts','2019-03-22 08:54:09'),(9,'auth','0005_alter_user_last_login_null','2019-03-22 08:54:09'),(10,'auth','0006_require_contenttypes_0002','2019-03-22 08:54:09'),(11,'auth','0007_alter_validators_add_error_messages','2019-03-22 08:54:09'),(12,'auth','0008_alter_user_username_max_length','2019-03-22 08:54:09'),(13,'idcs','0001_initial','2019-03-22 08:54:09'),(14,'sessions','0001_initial','2019-03-22 08:54:09'),(15,'idcs','0002_auto_20190327_0322','2019-03-27 03:23:11'),(16,'cabinet','0001_initial','2019-03-27 03:23:11'),(17,'manufacturer','0001_initial','2019-03-27 08:22:54');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resource_cabinet`
--

DROP TABLE IF EXISTS `resource_cabinet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resource_cabinet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `idc_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `resource_cabinet_idc_id_c7283d36_fk_resource_idc_id` (`idc_id`),
  CONSTRAINT `resource_cabinet_idc_id_c7283d36_fk_resource_idc_id` FOREIGN KEY (`idc_id`) REFERENCES `resource_idc` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource_cabinet`
--

LOCK TABLES `resource_cabinet` WRITE;
/*!40000 ALTER TABLE `resource_cabinet` DISABLE KEYS */;
INSERT INTO `resource_cabinet` VALUES (1,'test',1),(2,'rackA',1),(3,'RackB',1);
/*!40000 ALTER TABLE `resource_cabinet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resource_idc`
--

DROP TABLE IF EXISTS `resource_idc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resource_idc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `address` varchar(256) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(254) NOT NULL,
  `letter` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource_idc`
--

LOCK TABLES `resource_idc` WRITE;
/*!40000 ALTER TABLE `resource_idc` DISABLE KEYS */;
INSERT INTO `resource_idc` VALUES (1,'亦庄机房','亦庄开发区','12345678','rock@51reboot.com','yz'),(2,'亦庄机房','亦庄开发区','12345678','rock@51reboot.com','yz'),(3,'亦庄机房','亦庄开发区','12345678','rock@51reboot.com','yz');
/*!40000 ALTER TABLE `resource_idc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resources_manufacturer`
--

DROP TABLE IF EXISTS `resources_manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resources_manufacturer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vender_name` varchar(32) NOT NULL,
  `tel` varchar(15) DEFAULT NULL,
  `mail` varchar(32) DEFAULT NULL,
  `remark` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vender_name` (`vender_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resources_manufacturer`
--

LOCK TABLES `resources_manufacturer` WRITE;
/*!40000 ALTER TABLE `resources_manufacturer` DISABLE KEYS */;
/*!40000 ALTER TABLE `resources_manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resources_productmodel`
--

DROP TABLE IF EXISTS `resources_productmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resources_productmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model_name` varchar(20) NOT NULL,
  `vender_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `resources_productmod_vender_id_ff5eb280_fk_resources` (`vender_id`),
  CONSTRAINT `resources_productmod_vender_id_ff5eb280_fk_resources` FOREIGN KEY (`vender_id`) REFERENCES `resources_manufacturer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resources_productmodel`
--

LOCK TABLES `resources_productmodel` WRITE;
/*!40000 ALTER TABLE `resources_productmodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `resources_productmodel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-27  9:14:15
