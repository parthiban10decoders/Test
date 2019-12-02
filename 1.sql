-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: bank_transaction
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.16.04.1

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
-- Table structure for table `alembic_version`
--

DROP TABLE IF EXISTS `alembic_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alembic_version` (
  `version_num` varchar(32) NOT NULL,
  PRIMARY KEY (`version_num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alembic_version`
--

LOCK TABLES `alembic_version` WRITE;
/*!40000 ALTER TABLE `alembic_version` DISABLE KEYS */;
INSERT INTO `alembic_version` VALUES ('36820159d8cf');
/*!40000 ALTER TABLE `alembic_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catagory`
--

DROP TABLE IF EXISTS `catagory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catagory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_xid` varchar(30) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `catagory_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_catagory_catagory_id` (`catagory_id`),
  CONSTRAINT `catagory_ibfk_1` FOREIGN KEY (`catagory_id`) REFERENCES `catagory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catagory`
--

LOCK TABLES `catagory` WRITE;
/*!40000 ALTER TABLE `catagory` DISABLE KEYS */;
INSERT INTO `catagory` VALUES (1,'1','ss',1);
/*!40000 ALTER TABLE `catagory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ledger_account`
--

DROP TABLE IF EXISTS `ledger_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ledger_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_no` varchar(8000) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `start_dt` varchar(30) DEFAULT NULL,
  `start_bal` varchar(30) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `type` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ledger_account`
--

LOCK TABLES `ledger_account` WRITE;
/*!40000 ALTER TABLE `ledger_account` DISABLE KEYS */;
INSERT INTO `ledger_account` VALUES (1,'DLmqewrogKTaPVpB9Vx1i4qJBMRQklivqdQpM','Plaid Checking','2019-07-11',NULL,1,'checking'),(2,'VjeL3gXpdohNng4x1gjBtpy1bevj5MiWMldAv','Plaid Saving','2019-07-11',NULL,1,'savings'),(3,'xeq3rrqMXPCmLNMoEyQXu5JnbbQ6zvunaLwA4','Plaid Checking','2019-07-11',NULL,1,'checking'),(4,'dnXPwwXbJpSvx15GRepkckDGEEaom7HZ1rN61','Plaid Saving','2019-07-11',NULL,1,'savings'),(5,'LEeRLQB1WLFdZBNxPXwnHeKq6kpBZNhP755lx','Plaid Checking','2019-07-11',NULL,1,'checking'),(6,'poQJ1lxjz1cPbAMoQg4VuqVDJxde8KCLwddEr','Plaid Saving','2019-07-11',NULL,1,'savings'),(7,'erwGkq1V8lipPzwRzV9GU4VVEvD5zeCLjqWaP','Plaid Checking','2019-07-11',NULL,1,'checking'),(8,'QNZd4emoawtmxow4oXjei566KBdxZLfp8NKGR','Plaid Saving','2019-07-11',NULL,1,'savings'),(9,'QroZ1oXMLZT5qRJ5915Lt5bKZXbBnJtp8NE7A','Plaid Checking','2019-07-11',NULL,1,'checking'),(10,'ZPVBKV8MnBIK46XK95KdtBXN8mXVAWfgKoVXA','Plaid Saving','2019-07-11',NULL,1,'savings'),(11,'KkNoxd6PMqIx7NlAdZkdC8v5wGMRwxuVX3pzZ','Plaid Checking','2019-07-11',NULL,1,'checking'),(12,'rEWxBD1wezHKXPnA5L95teLJNla4NgIlRBJZw','Plaid Saving','2019-07-11',NULL,1,'savings'),(13,'GqvD4a9eovUakXklnLpluab1z1mPl7c1eVow4','Plaid Checking','2019-07-11',NULL,1,'checking'),(14,'nPan7olZwaCWBPB4Ll74ujxL8LyEAbF6yaQDy','Plaid Saving','2019-07-11',NULL,1,'savings'),(15,'PGbKlX3GomCZAjagq6X5tRAyg1n5ZZi7PZPAP','Plaid Checking','2019-07-13',NULL,1,'checking'),(16,'jobGWXyoPwHk6ZeqKQNACZl5D6Lm99C1VqVa3','Plaid Saving','2019-07-13',NULL,1,'savings');
/*!40000 ALTER TABLE `ledger_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ledger_transaction`
--

DROP TABLE IF EXISTS `ledger_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ledger_transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_debit` tinyint(1) DEFAULT NULL,
  `ledger_balance` varchar(30) DEFAULT NULL,
  `transaction_id` int(11) NOT NULL,
  `ledger_account_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ledger_account_id` (`ledger_account_id`),
  KEY `transaction_id` (`transaction_id`),
  CONSTRAINT `ledger_transaction_ibfk_1` FOREIGN KEY (`ledger_account_id`) REFERENCES `ledger_account` (`id`),
  CONSTRAINT `ledger_transaction_ibfk_2` FOREIGN KEY (`transaction_id`) REFERENCES `transaction` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1168 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ledger_transaction`
--

LOCK TABLES `ledger_transaction` WRITE;
/*!40000 ALTER TABLE `ledger_transaction` DISABLE KEYS */;
INSERT INTO `ledger_transaction` VALUES (1120,1,'93.67',1120,1),(1121,1,'88.27',1121,1),(1122,0,'588.27',1122,1),(1123,1,'576.27',1123,1),(1124,1,'571.94',1124,1),(1125,1,'482.54',1125,1),(1126,1,'93.67',1126,3),(1127,1,'88.27',1127,3),(1128,0,'588.27',1128,3),(1129,1,'576.27',1129,3),(1130,1,'571.94',1130,3),(1131,1,'482.54',1131,3),(1132,1,'93.67',1132,5),(1133,1,'88.27',1133,5),(1134,0,'588.27',1134,5),(1135,1,'576.27',1135,5),(1136,1,'571.94',1136,5),(1137,1,'482.54',1137,5),(1138,1,'93.67',1138,7),(1139,1,'88.27',1139,7),(1140,0,'588.27',1140,7),(1141,1,'576.27',1141,7),(1142,1,'571.94',1142,7),(1143,1,'482.54',1143,7),(1144,1,'93.67',1144,9),(1145,1,'88.27',1145,9),(1146,0,'588.27',1146,9),(1147,1,'576.27',1147,9),(1148,1,'571.94',1148,9),(1149,1,'482.54',1149,9),(1150,1,'93.67',1150,11),(1151,1,'88.27',1151,11),(1152,0,'588.27',1152,11),(1153,1,'576.27',1153,11),(1154,1,'571.94',1154,11),(1155,1,'482.54',1155,11),(1156,1,'93.67',1156,13),(1157,1,'88.27',1157,13),(1158,0,'588.27',1158,13),(1159,1,'576.27',1159,13),(1160,1,'571.94',1160,13),(1161,1,'482.54',1161,13),(1162,1,'93.67',1162,15),(1163,1,'88.27',1163,15),(1164,0,'588.27',1164,15),(1165,1,'576.27',1165,15),(1166,1,'571.94',1166,15),(1167,1,'482.54',1167,15);
/*!40000 ALTER TABLE `ledger_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merch_transaction`
--

DROP TABLE IF EXISTS `merch_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `merch_transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_tag` varchar(30) DEFAULT NULL,
  `transaction_id` int(11) NOT NULL,
  `organization_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organization_id` (`organization_id`),
  KEY `transaction_id` (`transaction_id`),
  CONSTRAINT `merch_transaction_ibfk_1` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`id`),
  CONSTRAINT `merch_transaction_ibfk_2` FOREIGN KEY (`transaction_id`) REFERENCES `transaction` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merch_transaction`
--

LOCK TABLES `merch_transaction` WRITE;
/*!40000 ALTER TABLE `merch_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `merch_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization`
--

DROP TABLE IF EXISTS `organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `org_xid` varchar(30) DEFAULT NULL,
  `founded_at` varchar(30) DEFAULT NULL,
  `ein_encryption` varchar(30) DEFAULT NULL,
  `industry` varchar(300) DEFAULT NULL,
  `logo` varchar(8000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization`
--

LOCK TABLES `organization` WRITE;
/*!40000 ALTER TABLE `organization` DISABLE KEYS */;
INSERT INTO `organization` VALUES (1,'Citi','ins_5',NULL,NULL,NULL,'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'),(2,'Citi','ins_5',NULL,NULL,NULL,'iVBORw0KGgoAAAANSUhEUgAAAJgAAACYCAMAAAAvHNATAAAAXVBMVEVHcEwAX64AXq0AXawAXq0AZLQAYK4AXa0AXq0AXq3////rHCQBV6kDYK/zGR+gw+CFsdfb6PPp8fgTabLO4O9uo9CxzeajME0seLrKJTdGicNSR30sUZNdl8p7O2Ui8IDZAAAACnRSTlMAR+3/wxQnoHXdDxu4QwAABvhJREFUeNrVnNmyojAQQK8GCGAiOwKC//+ZAyqQpQNRiGT6YarGC/HYWzrr399Gcb2Tj7HjBMEZoXMQOA7G/slz/w4Uz8dOgBBFkvQfBQ72vWOgArQqwY/hTjpQM9zpV7r6gOrNZl5vru9APrUmFDm+yXDwMNog2LMSyxjadiwjaO4uWIOz4V19zT+j3eTs75e2ArSrOCerrLi3PU9nZEDOm5XmI0OyzdNcxxQXoo5rmxm3m9NHhuVLc2JkXLClXN+QGXT7TSHwI66hG/iIzA3QzyRwbdTXh9b8JddgTavikdUZtpNLN2v46ADR6ANO6BBZ7Tfd8zFgZ/e3AUkn2Ria/q5IhLTt/SVtS9AiHvV/4GADU3t/3Or6crk+5XK51PXtcW+RGu5k2sEoau+3+jICjXIdPrnUjztRsC24Gd5DWe3jduGIeOn/dFOwYXOGpOi+SDWy1Y8WmjRSGXNrSUHJvV6lmtUmozlGIrLXlibWmw1A8/f3fEo/wnpFw62lGv6/yfNpe1NhidHJoT0IXaszvE1c98sVIhqyV5+/hn8uIN+1FpTm7akwSm5XAGrIpy0hz0fIK+HKEdsrjfU0WWXeFjPWV/HbhjyKuC7y+Z8h84psV97TvN0UJpqxz1K3VpHdh75qyHQL5sR7KYw+RKwHWawlhr5B+CmXO1WpDH+dvHj3utZ3IlERUq2gsWScylz6rcJu16Xwf2NFOZW0xhn0en1QMJf5+3BJCfOFlYY5BRMyq7OZzN9et3L+JQT+myuL0zAEwOQkM1nT2ez6PFcNqCsrBiwYTIrniczbaMm+XdaMsnfRIgnDBTAhA06/zN9W79CW4wLMWIThMhhPdq1fvQQNthWIpL7OAriXDtjT0Wa5CQUj/s6Qt1keILkGWP8U08wY1Xhb5Urp8qhRDwxqJtih4FmytR4YJJ7RWZQNYL7RaacNYHiXwZEBsEDLxcgovwN7Opm/zESrpiviOC66pqIyHAGwx08YMLL0HPCb/UUXI6gqoiSdmg+TqMv4NrKoHKV7/6UvJ96STy+m0STd3MD8bkEAJ1NVFiTrylCSJGbRSDZjxyNYEy5JPL1O53cjAozJAwXW1AMLksZ0bmYTWKIG673fhbm6RN12XhHTYMgFg5Jk0WLj4eQoxsA8qLQgVRKuyNi8MbATkC1Ik4ahJpkpMOrL2UKLq/8CsxrDEhiptLjeydyYxrCUxrJcQoj6tF/EJed46SsyIbAqfwvzC8eP8qTQ05gjghEhHpOiGrsO2kTTV6WN0semyo/rK4GScgUsEByMT6YF2z0Og1chX0BgUCcOlq5LYIGY+DlDlkLP2KM1CQehC0Y/BzvzCZ/lihABcm85/AGZBjv/qRUWKQYPZZ6ZB0N/fKqQ8gHQL9AM/QKMNSWJGbBKp2I1aErW+Wkeqr/nt2BcVLKWTKujwRw4Jku9oYcxMC7zsy7WHQ6G4e6oOhiMqy7I7PuJ5kDQIJgPBmWODgbz2dKaeVLT942B0RM7GLEIrB+MuHaCueyAl/Gx8mAfC/gpAnui0uEmVQgzV1EdC4a5aSiLMr/PTdyxfWV0LJjHTXVy1UV2JFggTA4zjx5bj2FhOp3txdMjK9jXdLoLjyrVqYwaB3PFJRu2tlYaMy5NgwXSIhfTloKM0Ij9gyZY8hkYlpcFKTdzEmXSl1VPnRYfjsS5GCerYCd5IZUfiod5w8/Lv1a4e2l05i6YthoyYzXZClgALj0LU+hll02LBFWciDG7BIaYUMpfeuobacrR4VRgzP5OD565fzOUcdc0TRez811hnpFVjbHj+rLqcWhV5PODSo154PaGlQlBIZssaox32GHWjjOrCsxRbAgR3Ewl0ToYASflp0BQgfmqLTRaZBHSAAOVn6+lC1e56Uhj3jqiGmBSJAlTojAYv0/LhbLV2lz6OlgFvNusgLlLG9sIjReUlnZEE4zvSYRcC4Ph5a2Ar01MCjNmBGmC8TNuwvgLBvPWNk/2aDGwpJRGXDm0BiYt45XV8nol1thuOszs81k1zYuKWyYmwAqvvPCZz6uw3OvQCq+nt0G3bybrc/5zzTgu+k5OWr0m60v5hFZdEReFtKYOvIs/2NJMyLfbCKQmVh+Et/Qfcu4HKql33za/WQK7jiQBBaIFh8ugitqe01JLnm+BMU/WnchbjMiDznzCdet/dSjP2mOM9h78tPeo7AFk2gf/bT2O/dsD7B8d+rf1yL+9lyT8juyLm1UsvYjD4qtL7L3sxd7rccyGgLPtfihT5qSbL/uy9dIqE9d8ob2ubdv7YrRgvxsfLb1Kbld74r0verT0ukKLL3h8GZRuyFzY5E2iwyWi3+V53/idunZeu2rzRbWjTW282ncy6vMyZAXTQZchz6ozdH30P81rkbIzJL9iAAAAAElFTkSuQmCC'),(3,'Citi','ins_5',NULL,NULL,NULL,'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'),(4,'Citi','ins_5',NULL,NULL,NULL,'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'),(5,'Citi','ins_5',NULL,NULL,NULL,'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'),(6,'Citi','ins_5',NULL,NULL,NULL,'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'),(7,'Citi','ins_5',NULL,NULL,NULL,'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'),(8,'Bank of America','ins_1',NULL,NULL,NULL,'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');
/*!40000 ALTER TABLE `organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization_account`
--

DROP TABLE IF EXISTS `organization_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organization_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(30) DEFAULT NULL,
  `start_dt` varchar(30) DEFAULT NULL,
  `end_dt` varchar(30) DEFAULT NULL,
  `routing_num` varchar(300) DEFAULT NULL,
  `organization_id` int(11) NOT NULL,
  `ledger_account_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ledger_account_id` (`ledger_account_id`),
  KEY `organization_id` (`organization_id`),
  CONSTRAINT `organization_account_ibfk_1` FOREIGN KEY (`ledger_account_id`) REFERENCES `ledger_account` (`id`),
  CONSTRAINT `organization_account_ibfk_2` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization_account`
--

LOCK TABLES `organization_account` WRITE;
/*!40000 ALTER TABLE `organization_account` DISABLE KEYS */;
INSERT INTO `organization_account` VALUES (1,'role','2019-07-11','2019-08-10','routing_num',1,1),(2,'role','2019-07-11','2019-08-10','routing_num',1,2),(3,'role','2019-07-11','2019-08-10','routing_num',2,3),(4,'role','2019-07-11','2019-08-10','routing_num',2,4),(5,'role','2019-07-11','2019-08-10','routing_num',3,5),(6,'role','2019-07-11','2019-08-10','routing_num',3,6),(7,'role','2019-07-11','2019-08-10','routing_num',4,7),(8,'role','2019-07-11','2019-08-10','routing_num',4,8),(9,'role','2019-07-11','2019-08-10','routing_num',5,9),(10,'role','2019-07-11','2019-08-10','routing_num',5,10),(11,'role','2019-07-11','2019-08-10','routing_num',6,11),(12,'role','2019-07-11','2019-08-10','routing_num',6,12),(13,'role','2019-07-11','2019-08-10','routing_num',7,13),(14,'role','2019-07-11','2019-08-10','routing_num',7,14),(15,'role','2019-07-13','2019-08-12','routing_num',8,15),(16,'role','2019-07-13','2019-08-12','routing_num',8,16);
/*!40000 ALTER TABLE `organization_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_account_role`
--

DROP TABLE IF EXISTS `person_account_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person_account_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(30) DEFAULT NULL,
  `start_dt` varchar(30) DEFAULT NULL,
  `end_dt` varchar(30) DEFAULT NULL,
  `routing_num` varchar(300) DEFAULT NULL,
  `access_token` varchar(400) DEFAULT NULL,
  `organization_id` int(11) NOT NULL,
  `ledger_id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ledger_id` (`ledger_id`),
  KEY `organization_id` (`organization_id`),
  KEY `person_id` (`person_id`),
  CONSTRAINT `person_account_role_ibfk_1` FOREIGN KEY (`ledger_id`) REFERENCES `ledger_account` (`id`),
  CONSTRAINT `person_account_role_ibfk_2` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`id`),
  CONSTRAINT `person_account_role_ibfk_3` FOREIGN KEY (`person_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_account_role`
--

LOCK TABLES `person_account_role` WRITE;
/*!40000 ALTER TABLE `person_account_role` DISABLE KEYS */;
INSERT INTO `person_account_role` VALUES (1,'role','2019-07-11','2019-08-10','123','access-sandbox-4af40833-8661-4641-be97-f3e73813ed71',1,1,1,0),(2,'role','2019-07-11','2019-08-10','123','access-sandbox-4af40833-8661-4641-be97-f3e73813ed71',1,2,1,0),(3,'role','2019-07-11','2019-08-10','123','access-sandbox-66371e10-2f6c-4a03-a5ad-5954c864e2b7',2,3,1,0),(4,'role','2019-07-11','2019-08-10','123','access-sandbox-66371e10-2f6c-4a03-a5ad-5954c864e2b7',2,4,1,0),(5,'role','2019-07-11','2019-08-10','123','access-sandbox-516c8159-6d64-4e36-aa25-ea1f2f7f43e6',3,5,1,0),(6,'role','2019-07-11','2019-08-10','123','access-sandbox-516c8159-6d64-4e36-aa25-ea1f2f7f43e6',3,6,1,0),(7,'role','2019-07-11','2019-08-10','123','access-sandbox-7567c62d-adcc-4d70-8465-015f3ba8a333',4,7,1,0),(8,'role','2019-07-11','2019-08-10','123','access-sandbox-7567c62d-adcc-4d70-8465-015f3ba8a333',4,8,1,0),(9,'role','2019-07-11','2019-08-10','123','access-sandbox-a4cbf684-68f8-42a4-80de-e0a9d3d29b11',5,9,1,0),(10,'role','2019-07-11','2019-08-10','123','access-sandbox-a4cbf684-68f8-42a4-80de-e0a9d3d29b11',5,10,1,0),(11,'role','2019-07-11','2019-08-10','123','access-sandbox-4eac29d9-ee5c-4fcc-af5b-21d7946ab58d',6,11,1,0),(12,'role','2019-07-11','2019-08-10','123','access-sandbox-4eac29d9-ee5c-4fcc-af5b-21d7946ab58d',6,12,1,0),(13,'role','2019-07-11','2019-08-10','123','access-sandbox-7342d42c-db6e-4d9a-a6ad-9a9f5fe1b0dc',7,13,1,1),(14,'role','2019-07-11','2019-08-10','123','access-sandbox-7342d42c-db6e-4d9a-a6ad-9a9f5fe1b0dc',7,14,1,1),(15,'role','2019-07-13','2019-08-12','123','access-sandbox-ca358a82-8224-4c25-8761-f8a6f4557063',8,15,1,1),(16,'role','2019-07-13','2019-08-12','123','access-sandbox-ca358a82-8224-4c25-8761-f8a6f4557063',8,16,1,1);
/*!40000 ALTER TABLE `person_account_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `source_request`
--

DROP TABLE IF EXISTS `source_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `source_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `req_date` varchar(30) DEFAULT NULL,
  `start_dt` varchar(30) DEFAULT NULL,
  `end_dt` varchar(30) DEFAULT NULL,
  `request_id` varchar(100) DEFAULT NULL,
  `ledger_account_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ledger_account_id` (`ledger_account_id`),
  CONSTRAINT `source_request_ibfk_1` FOREIGN KEY (`ledger_account_id`) REFERENCES `ledger_account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `source_request`
--

LOCK TABLES `source_request` WRITE;
/*!40000 ALTER TABLE `source_request` DISABLE KEYS */;
INSERT INTO `source_request` VALUES (1,'2019-08-12 12:29:52.897570','2019-07-13','2019-08-12','xRnAz8XYcXwKkEx',1),(2,'2019-08-12 12:29:56.206427','2019-07-13','2019-08-12','C7JWCFGeq09oolx',2),(3,'2019-08-12 12:29:59.707882','2019-07-13','2019-08-12','uc6x0KfzaOScU6j',3),(4,'2019-08-12 12:30:02.602896','2019-07-13','2019-08-12','9Sx0pAayeKxyLVi',4),(5,'2019-08-12 12:30:05.498829','2019-07-13','2019-08-12','Co87Ig6AmzMsnMR',5),(6,'2019-08-12 12:30:08.462906','2019-07-13','2019-08-12','AyhhHb3UF3qxBSc',6),(7,'2019-08-12 12:30:11.509909','2019-07-13','2019-08-12','UbUvydlwNl6xXnz',7),(8,'2019-08-12 12:30:14.512273','2019-07-13','2019-08-12','m7197nRr1vJMRoU',8);
/*!40000 ALTER TABLE `source_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `source_transaction`
--

DROP TABLE IF EXISTS `source_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `source_transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pull_id` varchar(255) DEFAULT NULL,
  `start_dt` varchar(255) DEFAULT NULL,
  `end_dt` varchar(255) DEFAULT NULL,
  `transaction_id` int(11) NOT NULL,
  `organization_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organization_id` (`organization_id`),
  KEY `transaction_id` (`transaction_id`),
  CONSTRAINT `source_transaction_ibfk_1` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`id`),
  CONSTRAINT `source_transaction_ibfk_2` FOREIGN KEY (`transaction_id`) REFERENCES `transaction` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `source_transaction`
--

LOCK TABLES `source_transaction` WRITE;
/*!40000 ALTER TABLE `source_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `source_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) DEFAULT NULL,
  `transaction_id` varchar(8000) DEFAULT NULL,
  `description` varchar(30) DEFAULT NULL,
  `start_dt` varchar(30) DEFAULT NULL,
  `ended_dt` varchar(30) DEFAULT NULL,
  `ordinal` varchar(30) DEFAULT NULL,
  `posted_dt` varchar(30) DEFAULT NULL,
  `amount` varchar(30) DEFAULT NULL,
  `iso_currency_code` varchar(30) DEFAULT NULL,
  `catagory_id` int(11) NOT NULL,
  `pending_transaction_id` varchar(30) DEFAULT NULL,
  `timestamp` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `catagory_id` (`catagory_id`),
  CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`catagory_id`) REFERENCES `catagory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1168 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (1120,'Uber 072515 SF**POOL**','63Z6qBwXaJiy8lwrmlP4uVry6PnRAkugo8gKa',NULL,'2019-08-02','2019-08-02','1','2019-08-02','6.33','USD',1,NULL,NULL),(1121,'Uber 063015 SF**POOL**','XeZGdwNo4pfKm86nz8dwCD7qyzQXNLCdWbdjp',NULL,'2019-07-20','2019-07-20','1','2019-07-20','5.40','USD',1,NULL,NULL),(1122,'United Airlines','DLmqewrogKTaPVpB9Vx1i4qjJMVPBXfvP3vRz',NULL,'2019-07-18','2019-07-18','1','2019-07-18','500.00','USD',1,NULL,NULL),(1123,'McDonald\'s','VjeL3gXpdohNng4x1gjBtpyJ1eLVbWcW89WyW',NULL,'2019-07-17','2019-07-17','1','2019-07-17','12.00','USD',1,NULL,NULL),(1124,'Starbucks','wG7lP5z3dDS6QZdm9ZgzFkRPBzZJ6vCr7PrRP',NULL,'2019-07-17','2019-07-17','2','2019-07-17','4.33','USD',1,NULL,NULL),(1125,'SparkFun','5BQblVw7dzI1km6gzmlyf6pZ71VDmbCZP5ZyG',NULL,'2019-07-16','2019-07-16','1','2019-07-16','89.40','USD',1,NULL,NULL),(1126,'Uber 072515 SF**POOL**','XZGl88GJwaTmMNJj1nKbuXknBVyrbBtdW1BKv',NULL,'2019-08-02','2019-08-02','1','2019-08-02','6.33','USD',1,NULL,NULL),(1127,'Uber 063015 SF**POOL**','Dmq388qXwMiPKZvDQBaEfPQnNaJyENfvP4yWN',NULL,'2019-07-20','2019-07-20','1','2019-07-20','5.40','USD',1,NULL,NULL),(1128,'United Airlines','VeL8WWLJgxCnDGpLlxNysVjxBw19PBFW8q7gy',NULL,'2019-07-18','2019-07-18','1','2019-07-18','500.00','USD',1,NULL,NULL),(1129,'McDonald\'s','w7lBKKlZ5NSQ5LMpem6GFJqejGBmMjcr7EeZZ',NULL,'2019-07-17','2019-07-17','1','2019-07-17','12.00','USD',1,NULL,NULL),(1130,'Starbucks','5QbZoob8VrikPeMwqg1RfDNLRP79vRCZPGBKr',NULL,'2019-07-17','2019-07-17','2','2019-07-17','4.33','USD',1,NULL,NULL),(1131,'SparkFun','JrxPEExXb8SM9nNdGBRDuJMWd7g8mdcdrQ76D',NULL,'2019-07-16','2019-07-16','1','2019-07-16','89.40','USD',1,NULL,NULL),(1132,'Uber 072515 SF**POOL**','A7zla4GdeaczEJpxq5mrUXW6EPePDWf1XKV9G',NULL,'2019-08-02','2019-08-02','1','2019-08-02','6.33','USD',1,NULL,NULL),(1133,'Uber 063015 SF**POOL**','GL4GeRl7peSral1noz89fGAmq6o64AC1erNGb',NULL,'2019-07-20','2019-07-20','1','2019-07-20','5.40','USD',1,NULL,NULL),(1134,'United Airlines','nL7XZbkNKZS5W49L3XQyuX6yDvlv16f6yp73r',NULL,'2019-07-18','2019-07-18','1','2019-07-18','500.00','USD',1,NULL,NULL),(1135,'McDonald\'s','bdKaBwA51Bs5WAkdxZrEuo58V6X6R5tV4y9o8',NULL,'2019-07-17','2019-07-17','1','2019-07-17','12.00','USD',1,NULL,NULL),(1136,'Starbucks','m1jeQaz4qQTrVax1QZ4oflobVRkRLoiLvwK4W',NULL,'2019-07-17','2019-07-17','2','2019-07-17','4.33','USD',1,NULL,NULL),(1137,'SparkFun','ymEaGDQojGS8WnRbx7DEsJ7EWaGaM7iyqL1Kb',NULL,'2019-07-16','2019-07-16','1','2019-07-16','89.40','USD',1,NULL,NULL),(1138,'Uber 072515 SF**POOL**','z8zGZ49qEpflyN3WNQEMIAMpDZdBB8CovwrkE',NULL,'2019-08-02','2019-08-02','1','2019-08-02','6.33','USD',1,NULL,NULL),(1139,'Uber 063015 SF**POOL**','B8kMnq9xgEf8jp3mpDGLINoRQaxqq4CwKAEmw',NULL,'2019-07-20','2019-07-20','1','2019-07-20','5.40','USD',1,NULL,NULL),(1140,'United Airlines','3aJr7WdgD4Sb1LvKL3oNhwDLRnB77oHq1M64Z',NULL,'2019-07-18','2019-07-18','1','2019-07-18','500.00','USD',1,NULL,NULL),(1141,'McDonald\'s','xoKGed5VZ1FWzN1aNZ6XfeGbvXxAAEtnGJjry',NULL,'2019-07-17','2019-07-17','1','2019-07-17','12.00','USD',1,NULL,NULL),(1142,'Starbucks','dKZknl8VAvfPl13X1VykFjzE7gxXX6CZWDKVD',NULL,'2019-07-17','2019-07-17','2','2019-07-17','4.33','USD',1,NULL,NULL),(1143,'SparkFun','aA78WE9VLvsDd19r1VnKsBRZgNyVVvi7W1wye',NULL,'2019-07-16','2019-07-16','1','2019-07-16','89.40','USD',1,NULL,NULL),(1144,'Uber 072515 SF**POOL**','lbVALV9DPATlEaRlALlPIVrbwWNK3DcZ45b7Z',NULL,'2019-08-02','2019-08-02','1','2019-08-02','6.33','USD',1,NULL,NULL),(1145,'Uber 063015 SF**POOL**','qKVAEVbDZAHnw5jnaLnrc1qAV95wKGCdE5wMg',NULL,'2019-07-20','2019-07-20','1','2019-07-20','5.40','USD',1,NULL,NULL),(1146,'United Airlines','KbQPjQ4d7PT5jg75Q85DtDWmagEwZeFVyjzNE',NULL,'2019-07-18','2019-07-18','1','2019-07-18','500.00','USD',1,NULL,NULL),(1147,'McDonald\'s','rrVwlVgDMwT3ERX3Np3zCEq6PKXNR9ulQXZMa',NULL,'2019-07-17','2019-07-17','1','2019-07-17','12.00','USD',1,NULL,NULL),(1148,'Starbucks','zNqzdqarWzskbegkp1kPfAokP4K3GdcoVKxmg',NULL,'2019-07-17','2019-07-17','2','2019-07-17','4.33','USD',1,NULL,NULL),(1149,'SparkFun','BpxkzxDZBkTEzn1ExkEPCNwKX7gZ8xCwB13jZ',NULL,'2019-07-16','2019-07-16','1','2019-07-16','89.40','USD',1,NULL,NULL),(1150,'Uber 072515 SF**POOL**','zKwejrVzgPTEgJwmArDAc5NEzMvVJ8Uovw3Ex',NULL,'2019-08-02','2019-08-02','1','2019-08-02','6.33','USD',1,NULL,NULL),(1151,'Uber 063015 SF**POOL**','BPKjVZAkaGCG16NrReZRCJr6Aoz9P4cwKAz7d',NULL,'2019-07-20','2019-07-20','1','2019-07-20','5.40','USD',1,NULL,NULL),(1152,'United Airlines','31XR8boJ6jFonae69ME9c4KGADW65ocq1Mmwz',NULL,'2019-07-18','2019-07-18','1','2019-07-18','500.00','USD',1,NULL,NULL),(1153,'McDonald\'s','xlWjNqyKp4c65MRBgKqgH3jkKGlywECnGJy9q',NULL,'2019-07-17','2019-07-17','1','2019-07-17','12.00','USD',1,NULL,NULL),(1154,'Starbucks','dE3LyXBZqWHyb5J7MQ6MiMe4rzKqL6hZWDBPx',NULL,'2019-07-17','2019-07-17','2','2019-07-17','4.33','USD',1,NULL,NULL),(1155,'SparkFun','aprZnXK7wgFnoE8RkMNkc5ExlRLPzvU7W1kRL',NULL,'2019-07-16','2019-07-16','1','2019-07-16','89.40','USD',1,NULL,NULL),(1156,'Uber 072515 SF**POOL**','GqvD4a9eovUakXklnLpluab13Jvljrf1aLXjg',NULL,'2019-08-02','2019-08-02','1','2019-08-02','6.33','USD',1,NULL,NULL),(1157,'Uber 063015 SF**POOL**','nPan7olZwaCWBPB4Ll74ujxLP3gANpu6oXNmj',NULL,'2019-07-20','2019-07-20','1','2019-07-20','5.40','USD',1,NULL,NULL),(1158,'United Airlines','blvWK4kBgviWMlMAdKJAuZrklQJBAztVlJ1vw',NULL,'2019-07-18','2019-07-18','1','2019-07-18','500.00','USD',1,NULL,NULL),(1159,'McDonald\'s','mNdnjpRQbdtV5N5a1RwaiDvgGXx7nWtLEln3v',NULL,'2019-07-17','2019-07-17','1','2019-07-17','12.00','USD',1,NULL,NULL),(1160,'Starbucks','ygLnExNG5LiWZGZnbNAnuzDmVeqRAKiyGZbv9',NULL,'2019-07-17','2019-07-17','2','2019-07-17','4.33','USD',1,NULL,NULL),(1161,'SparkFun','9eQEmp1qKQiREkEgxrmgfyEMpevDgksRr3wJr',NULL,'2019-07-16','2019-07-16','1','2019-07-16','89.40','USD',1,NULL,NULL),(1162,'Uber 072515 SF**POOL**','eZvgpQAZ1bTQXLJWwNAjf7ybXelR8jfLN5AEr',NULL,'2019-08-02','2019-08-02','1','2019-08-02','6.33','USD',1,NULL,NULL),(1163,'Uber 063015 SF**POOL**','QnJrqgxnm9sZkzvWwBJ5tvqljLNpWbipx7bzG',NULL,'2019-07-20','2019-07-20','1','2019-07-20','5.40','USD',1,NULL,NULL),(1164,'United Airlines','Z3qP4DQ3edSWgLvbjlXKfr45gQ9eEXug5XZzr',NULL,'2019-07-18','2019-07-18','1','2019-07-18','500.00','USD',1,NULL,NULL),(1165,'McDonald\'s','Mk7y8GrkoEFoK13LeVZ5tKPAaB4X5DT9BPaz7',NULL,'2019-07-17','2019-07-17','1','2019-07-17','12.00','USD',1,NULL,NULL),(1166,'Starbucks','1nlzR3NnmPsmV1LDb5vqFdb3rq6VP1u5ge633',NULL,'2019-07-17','2019-07-17','2','2019-07-17','4.33','USD',1,NULL,NULL),(1167,'SparkFun','L8VmkyK8ogU4AVB1rxw5FywrdVe6m9TPbpZoq',NULL,'2019-07-16','2019-07-16','1','2019-07-16','89.40','USD',1,NULL,NULL);
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ssn_encryption` varchar(255) DEFAULT NULL,
  `override` varchar(255) DEFAULT NULL,
  `by_la_record_id` varchar(255) DEFAULT NULL,
  `la_record_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,NULL,NULL,500264,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-12 13:19:39
