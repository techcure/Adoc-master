-- MySQL dump 10.13  Distrib 5.7.32, for Linux (x86_64)
--
-- Host: localhost    Database: ezykl
-- ------------------------------------------------------
-- Server version	5.7.32-0ubuntu0.18.04.1

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
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add users master',6,'add_usersmaster'),(22,'Can change users master',6,'change_usersmaster'),(23,'Can delete users master',6,'delete_usersmaster'),(24,'Can view users master',6,'view_usersmaster'),(25,'Can add role master',7,'add_rolemaster'),(26,'Can change role master',7,'change_rolemaster'),(27,'Can delete role master',7,'delete_rolemaster'),(28,'Can view role master',7,'view_rolemaster'),(29,'Can add tenant master',8,'add_tenantmaster'),(30,'Can change tenant master',8,'change_tenantmaster'),(31,'Can delete tenant master',8,'delete_tenantmaster'),(32,'Can view tenant master',8,'view_tenantmaster'),(33,'Can add users log detail',9,'add_userslogdetail'),(34,'Can change users log detail',9,'change_userslogdetail'),(35,'Can delete users log detail',9,'delete_userslogdetail'),(36,'Can view users log detail',9,'view_userslogdetail'),(37,'Can add tenant subscription detail',10,'add_tenantsubscriptiondetail'),(38,'Can change tenant subscription detail',10,'change_tenantsubscriptiondetail'),(39,'Can delete tenant subscription detail',10,'delete_tenantsubscriptiondetail'),(40,'Can view tenant subscription detail',10,'view_tenantsubscriptiondetail'),(41,'Can add tenant contact detail',11,'add_tenantcontactdetail'),(42,'Can change tenant contact detail',11,'change_tenantcontactdetail'),(43,'Can delete tenant contact detail',11,'delete_tenantcontactdetail'),(44,'Can view tenant contact detail',11,'view_tenantcontactdetail'),(45,'Can add role detail',12,'add_roledetail'),(46,'Can change role detail',12,'change_roledetail'),(47,'Can delete role detail',12,'delete_roledetail'),(48,'Can view role detail',12,'view_roledetail'),(49,'Can add connector type master',13,'add_connectortypemaster'),(50,'Can change connector type master',13,'change_connectortypemaster'),(51,'Can delete connector type master',13,'delete_connectortypemaster'),(52,'Can view connector type master',13,'view_connectortypemaster'),(53,'Can add tenant source profile details',14,'add_tenantsourceprofiledetails'),(54,'Can change tenant source profile details',14,'change_tenantsourceprofiledetails'),(55,'Can delete tenant source profile details',14,'delete_tenantsourceprofiledetails'),(56,'Can view tenant source profile details',14,'view_tenantsourceprofiledetails'),(57,'Can add tenant target profile details',15,'add_tenanttargetprofiledetails'),(58,'Can change tenant target profile details',15,'change_tenanttargetprofiledetails'),(59,'Can delete tenant target profile details',15,'delete_tenanttargetprofiledetails'),(60,'Can view tenant target profile details',15,'view_tenanttargetprofiledetails'),(61,'Can add tenant connector details',16,'add_tenantconnectordetails'),(62,'Can change tenant connector details',16,'change_tenantconnectordetails'),(63,'Can delete tenant connector details',16,'delete_tenantconnectordetails'),(64,'Can view tenant connector details',16,'view_tenantconnectordetails'),(65,'Can add data source type master',17,'add_datasourcetypemaster'),(66,'Can change data source type master',17,'change_datasourcetypemaster'),(67,'Can delete data source type master',17,'delete_datasourcetypemaster'),(68,'Can view data source type master',17,'view_datasourcetypemaster'),(69,'Can add tenant source detail',18,'add_tenantsourcedetail'),(70,'Can change tenant source detail',18,'change_tenantsourcedetail'),(71,'Can delete tenant source detail',18,'delete_tenantsourcedetail'),(72,'Can view tenant source detail',18,'view_tenantsourcedetail'),(73,'Can add tenant process master',19,'add_tenantprocessmaster'),(74,'Can change tenant process master',19,'change_tenantprocessmaster'),(75,'Can delete tenant process master',19,'delete_tenantprocessmaster'),(76,'Can view tenant process master',19,'view_tenantprocessmaster'),(77,'Can add tenant process detail',20,'add_tenantprocessdetail'),(78,'Can change tenant process detail',20,'change_tenantprocessdetail'),(79,'Can delete tenant process detail',20,'delete_tenantprocessdetail'),(80,'Can view tenant process detail',20,'view_tenantprocessdetail'),(81,'Can add tenant destination detail',21,'add_tenantdestinationdetail'),(82,'Can change tenant destination detail',21,'change_tenantdestinationdetail'),(83,'Can delete tenant destination detail',21,'delete_tenantdestinationdetail'),(84,'Can view tenant destination detail',21,'view_tenantdestinationdetail'),(85,'Can add tenant data source detail',22,'add_tenantdatasourcedetail'),(86,'Can change tenant data source detail',22,'change_tenantdatasourcedetail'),(87,'Can delete tenant data source detail',22,'delete_tenantdatasourcedetail'),(88,'Can view tenant data source detail',22,'view_tenantdatasourcedetail'),(89,'Can add test table',23,'add_testtable'),(90,'Can change test table',23,'change_testtable'),(91,'Can delete test table',23,'delete_testtable'),(92,'Can view test table',23,'view_testtable'),(93,'Can add tenant data target detail',24,'add_tenantdatatargetdetail'),(94,'Can change tenant data target detail',24,'change_tenantdatatargetdetail'),(95,'Can delete tenant data target detail',24,'delete_tenantdatatargetdetail'),(96,'Can view tenant data target detail',24,'view_tenantdatatargetdetail'),(97,'Can add job data',25,'add_jobdata'),(98,'Can change job data',25,'change_jobdata'),(99,'Can delete job data',25,'delete_jobdata'),(100,'Can view job data',25,'view_jobdata'),(101,'Can add tenant process log detail',26,'add_tenantprocesslogdetail'),(102,'Can change tenant process log detail',26,'change_tenantprocesslogdetail'),(103,'Can delete tenant process log detail',26,'delete_tenantprocesslogdetail'),(104,'Can view tenant process log detail',26,'view_tenantprocesslogdetail'),(105,'Can add process schedule master',27,'add_processschedulemaster'),(106,'Can change process schedule master',27,'change_processschedulemaster'),(107,'Can delete process schedule master',27,'delete_processschedulemaster'),(108,'Can view process schedule master',27,'view_processschedulemaster'),(109,'Can add process schedule detail',28,'add_processscheduledetail'),(110,'Can change process schedule detail',28,'change_processscheduledetail'),(111,'Can delete process schedule detail',28,'delete_processscheduledetail'),(112,'Can view process schedule detail',28,'view_processscheduledetail'),(113,'Can add tenant target profile detail',30,'add_tenanttargetprofiledetail'),(114,'Can change tenant target profile detail',30,'change_tenanttargetprofiledetail'),(115,'Can delete tenant target profile detail',30,'delete_tenanttargetprofiledetail'),(116,'Can view tenant target profile detail',30,'view_tenanttargetprofiledetail'),(117,'Can add tenant connector detail',29,'add_tenantconnectordetail'),(118,'Can change tenant connector detail',29,'change_tenantconnectordetail'),(119,'Can delete tenant connector detail',29,'delete_tenantconnectordetail'),(120,'Can view tenant connector detail',29,'view_tenantconnectordetail'),(121,'Can add tenant source profile detail',31,'add_tenantsourceprofiledetail'),(122,'Can change tenant source profile detail',31,'change_tenantsourceprofiledetail'),(123,'Can delete tenant source profile detail',31,'delete_tenantsourceprofiledetail'),(124,'Can view tenant source profile detail',31,'view_tenantsourceprofiledetail');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `connector_type_master`
--

DROP TABLE IF EXISTS `connector_type_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `connector_type_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `modified_by` varchar(100) NOT NULL,
  `connector_type` varchar(40) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `mac_id` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `connector_type_master`
--

LOCK TABLES `connector_type_master` WRITE;
/*!40000 ALTER TABLE `connector_type_master` DISABLE KEYS */;
INSERT INTO `connector_type_master` VALUES (1,'2020-10-17 04:59:09.405887','ADMIN','2020-10-18 14:00:01.850433','ADMIN','SFTP','SFTP Location',1,NULL),(2,'2020-10-17 04:59:52.975904','ADMIN','2020-10-21 14:05:06.873066','ADMIN','SQL Server','MS SQL Server',1,NULL),(3,'2020-10-17 05:00:21.183629','ADMIN','2020-10-18 14:00:42.823630','ADMIN','NetSuite','NetSuite',1,NULL),(4,'2020-10-18 14:00:59.141351','ADMIN','2020-10-18 14:00:59.141377','ADMIN','Host','Host Web Service',1,NULL),(5,'2020-11-24 01:17:17.437027','ADMIN','2020-11-24 01:17:17.437174','ADMIN','Intacct','Connect to Intacct API',1,NULL);
/*!40000 ALTER TABLE `connector_type_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_source_types`
--

DROP TABLE IF EXISTS `data_source_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_source_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `modified_by` varchar(100) NOT NULL,
  `data_source_type` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_source_types`
--

LOCK TABLES `data_source_types` WRITE;
/*!40000 ALTER TABLE `data_source_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_source_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_users_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=294 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-10-12 16:38:17.820880','1','Chevron Phillips Chemicals',1,'[{\"added\": {}}]',8,1),(2,'2020-10-12 16:39:53.919469','2','jpatel@mspectrum.co.in',1,'[{\"added\": {}}]',6,1),(3,'2020-10-12 16:40:20.227811','2','jpatel@mspectrum.co.in',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email\", \"Tenant\"]}}]',6,1),(4,'2020-10-12 16:44:51.169817','1','Chevron Phillips Chemicals',1,'[{\"added\": {}}]',19,1),(5,'2020-10-12 17:10:09.971398','1','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Amount type\", \"Debit credit\"]}}]',19,1),(6,'2020-10-12 17:17:42.015261','1','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Amount type\", \"Debit credit\"]}}]',19,1),(7,'2020-10-12 17:21:32.680067','3','abc',1,'[{\"added\": {}}]',6,1),(8,'2020-10-12 17:25:10.542487','2','Center for Internet Security',1,'[{\"added\": {}}]',8,1),(9,'2020-10-12 17:28:55.048766','3','abc',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email\", \"Tenant\"]}}]',6,1),(10,'2020-10-12 19:06:13.284615','1','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Amount type\", \"Debit credit\"]}}]',19,1),(11,'2020-10-15 14:22:48.992192','4','Chevron Phillips Chemicals',3,'',19,1),(12,'2020-10-17 04:59:09.408937','1','SFTP',1,'[{\"added\": {}}]',13,1),(13,'2020-10-17 04:59:52.976344','2','Host Analytics',1,'[{\"added\": {}}]',13,1),(14,'2020-10-17 05:00:21.184090','3','MS SQL Server',1,'[{\"added\": {}}]',13,1),(15,'2020-10-17 05:02:32.876104','1','Chevron Phillips Chemicals',1,'[{\"added\": {}}]',16,1),(16,'2020-10-17 05:03:10.460142','2','Chevron Phillips Chemicals',1,'[{\"added\": {}}]',16,1),(17,'2020-10-18 13:50:45.983354','3','Credo Semiconductors',1,'[{\"added\": {}}]',8,1),(18,'2020-10-18 13:52:14.582145','4','Center for Internet Security',1,'[{\"added\": {}}]',8,1),(19,'2020-10-18 13:56:37.703236','1','Michael Phelps',1,'[{\"added\": {}}]',11,1),(20,'2020-10-18 13:57:21.998039','2','Robert Sanders',1,'[{\"added\": {}}]',11,1),(21,'2020-10-18 13:57:51.969764','3','John Gilmore',1,'[{\"added\": {}}]',11,1),(22,'2020-10-18 13:58:22.356377','4','Nicholas Burkhardt',1,'[{\"added\": {}}]',11,1),(23,'2020-10-18 14:00:01.853197','1','SFTP',2,'[{\"changed\": {\"fields\": [\"Created by\", \"Modified by\", \"Description\"]}}]',13,1),(24,'2020-10-18 14:00:24.594316','2','SQL Server',2,'[{\"changed\": {\"fields\": [\"Created by\", \"Modified by\", \"Connector type\", \"Description\"]}}]',13,1),(25,'2020-10-18 14:00:42.826329','3','NetSuite',2,'[{\"changed\": {\"fields\": [\"Created by\", \"Modified by\", \"Connector type\", \"Description\"]}}]',13,1),(26,'2020-10-18 14:00:59.141843','4','Host',1,'[{\"added\": {}}]',13,1),(27,'2020-10-18 14:07:17.370880','1','Chevron Phillips Chemicals',1,'[{\"added\": {}}]',10,1),(28,'2020-10-18 14:08:08.293708','2','Center for Internet Security',1,'[{\"added\": {}}]',10,1),(29,'2020-10-18 14:08:58.399767','3','Credo Semiconductors',1,'[{\"added\": {}}]',10,1),(30,'2020-10-18 14:09:48.338016','4','Center for Internet Security',1,'[{\"added\": {}}]',10,1),(31,'2020-10-18 14:12:51.523582','2','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Created by\", \"Modified by\", \"Connector type\"]}}]',16,1),(32,'2020-10-18 14:13:16.226329','2','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Connector type\"]}}]',16,1),(33,'2020-10-18 14:15:47.904227','3','Chevron Phillips Chemicals',1,'[{\"added\": {}}]',16,1),(34,'2020-10-18 14:15:58.072358','2','Chevron Phillips Chemicals',2,'[]',16,1),(35,'2020-10-18 14:16:25.164794','4','Center for Internet Security',1,'[{\"added\": {}}]',16,1),(36,'2020-10-18 14:16:59.581901','5','Center for Internet Security',1,'[{\"added\": {}}]',16,1),(37,'2020-10-18 14:17:35.678746','6','Center for Internet Security',1,'[{\"added\": {}}]',16,1),(38,'2020-10-18 14:18:09.806010','7','Credo Semiconductors',1,'[{\"added\": {}}]',16,1),(39,'2020-10-18 14:18:45.030697','8','Credo Semiconductors',1,'[{\"added\": {}}]',16,1),(40,'2020-10-18 14:19:14.107662','9','Center for Internet Security',1,'[{\"added\": {}}]',16,1),(41,'2020-10-18 14:19:45.117638','10','Center for Internet Security',1,'[{\"added\": {}}]',16,1),(42,'2020-10-18 14:20:12.185948','11','Center for Internet Security',1,'[{\"added\": {}}]',16,1),(43,'2020-10-18 14:20:47.672756','12','Center for Internet Security',1,'[{\"added\": {}}]',16,1),(44,'2020-10-18 14:21:18.369064','12','Center for Internet Security',2,'[{\"changed\": {\"fields\": [\"Connector type\"]}}]',16,1),(45,'2020-10-18 14:23:12.481041','2','Peets Tea & Coffee',2,'[{\"changed\": {\"fields\": [\"Tenant name\"]}}]',8,1),(46,'2020-10-18 14:27:21.527147','1','RoleMaster object (1)',1,'[{\"added\": {}}]',7,1),(47,'2020-10-18 14:31:40.684835','2','RoleMaster object (2)',1,'[{\"added\": {}}]',7,1),(48,'2020-10-18 14:31:57.469673','3','RoleMaster object (3)',1,'[{\"added\": {}}]',7,1),(49,'2020-10-18 14:36:02.961489','1','Chevron Phillips Chemicals',1,'[{\"added\": {}}]',14,1),(50,'2020-10-18 14:36:35.626775','2','Chevron Phillips Chemicals',1,'[{\"added\": {}}]',14,1),(51,'2020-10-18 14:37:41.650713','3','Chevron Phillips Chemicals',1,'[{\"added\": {}}]',14,1),(52,'2020-10-18 14:38:19.617947','4','Chevron Phillips Chemicals',1,'[{\"added\": {}}]',14,1),(53,'2020-10-18 14:38:56.038839','5','Chevron Phillips Chemicals',1,'[{\"added\": {}}]',14,1),(54,'2020-10-18 14:39:40.909882','6','Chevron Phillips Chemicals',1,'[{\"added\": {}}]',14,1),(55,'2020-10-18 14:40:32.018828','7','Chevron Phillips Chemicals',1,'[{\"added\": {}}]',14,1),(56,'2020-10-18 14:41:51.976850','8','Chevron Phillips Chemicals',1,'[{\"added\": {}}]',14,1),(57,'2020-10-18 14:42:25.174920','9','Chevron Phillips Chemicals',1,'[{\"added\": {}}]',14,1),(58,'2020-10-18 14:42:58.664828','10','Chevron Phillips Chemicals',1,'[{\"added\": {}}]',14,1),(59,'2020-10-18 14:43:39.432898','11','Credo Semiconductors',1,'[{\"added\": {}}]',14,1),(60,'2020-10-18 14:44:17.236968','12','Credo Semiconductors',1,'[{\"added\": {}}]',14,1),(61,'2020-10-18 14:44:49.291515','13','Credo Semiconductors',1,'[{\"added\": {}}]',14,1),(62,'2020-10-18 14:45:36.901795','14','Credo Semiconductors',1,'[{\"added\": {}}]',14,1),(63,'2020-10-18 14:48:08.340634','1','Chevron Phillips Chemicals',1,'[{\"added\": {}}]',15,1),(64,'2020-10-18 14:49:11.811179','2','Chevron Phillips Chemicals',1,'[{\"added\": {}}]',15,1),(65,'2020-10-18 14:50:43.733003','3','Chevron Phillips Chemicals',1,'[{\"added\": {}}]',15,1),(66,'2020-10-18 14:53:14.045427','4','Chevron Phillips Chemicals',1,'[{\"added\": {}}]',15,1),(67,'2020-10-18 14:54:51.428869','5','Chevron Phillips Chemicals',1,'[{\"added\": {}}]',15,1),(68,'2020-10-18 14:56:08.572616','6','Chevron Phillips Chemicals',1,'[{\"added\": {}}]',15,1),(69,'2020-10-18 14:56:55.512986','7','Chevron Phillips Chemicals',1,'[{\"added\": {}}]',15,1),(70,'2020-10-18 14:57:34.724716','8','Chevron Phillips Chemicals',1,'[{\"added\": {}}]',15,1),(71,'2020-10-18 14:58:17.927133','9','Chevron Phillips Chemicals',1,'[{\"added\": {}}]',15,1),(72,'2020-10-18 14:59:01.649975','10','Chevron Phillips Chemicals',1,'[{\"added\": {}}]',15,1),(73,'2020-10-18 14:59:54.044394','11','Credo Semiconductors',1,'[{\"added\": {}}]',15,1),(74,'2020-10-18 15:01:03.815043','12','Credo Semiconductors',1,'[{\"added\": {}}]',15,1),(75,'2020-10-18 15:01:53.291752','13','Credo Semiconductors',1,'[{\"added\": {}}]',15,1),(76,'2020-10-18 15:02:41.809945','14','Credo Semiconductors',1,'[{\"added\": {}}]',15,1),(77,'2020-10-18 15:06:16.133542','1','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Process name\", \"Tenant source profile\", \"Tenant target profile\", \"Script type\", \"Is active\", \"Source connector type\", \"Source connector name\", \"Source host\", \"Source port\", \"Source user name\", \"Source password\", \"Target connector type\", \"Target connector name\", \"Target host\", \"Target port\", \"Target user name\", \"Target password\", \"Target rule\"]}}]',19,1),(78,'2020-10-18 15:09:05.438682','2','Credo Semiconductors',2,'[{\"changed\": {\"fields\": [\"Created by\", \"Modified by\", \"Tenant\", \"Process name\", \"Tenant source profile\", \"Tenant target profile\", \"Month\", \"Script type\", \"Is active\", \"Source connector type\", \"Source connector name\", \"Source host\", \"Source user name\", \"Source password\", \"Target connector type\", \"Target connector name\", \"Target host\", \"Target port\", \"Target user name\", \"Target password\", \"Target rule\", \"Target wsdl url\", \"Target endpoint url\", \"Target method\", \"Target data source type\"]}}]',19,1),(79,'2020-10-18 15:10:47.978559','1','Chevron Phillips Chemicals',1,'[{\"added\": {}}]',27,1),(80,'2020-10-18 15:11:42.499273','2','Credo Semiconductors',1,'[{\"added\": {}}]',27,1),(81,'2020-10-18 15:11:48.685539','3','abc',3,'',6,1),(82,'2020-10-18 15:12:46.196940','1','ProcessScheduleDetail object (1)',1,'[{\"added\": {}}]',28,1),(83,'2020-10-18 15:13:31.625114','2','ProcessScheduleDetail object (2)',1,'[{\"added\": {}}]',28,1),(84,'2020-10-18 15:14:18.772629','4','jackm@cpchem.com',1,'[{\"added\": {}}]',6,1),(85,'2020-10-18 15:15:23.834733','4','jackm@cpchem.com',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email\", \"Tenant\", \"Role\"]}}]',6,1),(86,'2020-10-18 15:16:18.037750','5','peterd@cpchem.com',1,'[{\"added\": {}}]',6,1),(87,'2020-10-18 15:16:39.013247','5','peterd@cpchem.com',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email\", \"Tenant\"]}}]',6,1),(88,'2020-10-18 15:17:08.848945','6','robd@peets.com',1,'[{\"added\": {}}]',6,1),(89,'2020-10-18 15:17:32.760049','6','robd@peets.com',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email\", \"Tenant\"]}}]',6,1),(90,'2020-10-18 15:17:36.635779','1','admin',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',6,1),(91,'2020-10-18 15:18:29.479961','6','robd@peets.com',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',6,1),(92,'2020-10-18 15:19:11.951236','6','robd@peets.com',2,'[]',6,1),(93,'2020-10-18 15:19:12.859149','5','peterd@cpchem.com',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',6,1),(94,'2020-10-18 15:19:37.087077','7','sam@credo.com',1,'[{\"added\": {}}]',6,1),(95,'2020-10-18 15:20:05.815270','7','sam@credo.com',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email\", \"Tenant\"]}}]',6,1),(96,'2020-10-18 15:20:30.523391','8','jane@credo.com',1,'[{\"added\": {}}]',6,1),(97,'2020-10-18 15:20:55.815705','8','jane@credo.com',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email\", \"Tenant\"]}}]',6,1),(98,'2020-10-18 16:18:54.906223','3','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Is active\", \"Source connector type\", \"Source host\"]}}]',19,1),(99,'2020-10-18 16:19:16.384621','3','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Process name\"]}}]',19,1),(100,'2020-10-21 14:04:34.602907','2','SQL Server',2,'[{\"changed\": {\"fields\": [\"Is active\"]}}]',13,1),(101,'2020-10-21 14:05:06.875728','2','SQL Server',2,'[{\"changed\": {\"fields\": [\"Is active\"]}}]',13,1),(102,'2020-10-24 15:57:14.278493','5','HOST',1,'[{\"added\": {}}]',13,1),(103,'2020-10-24 15:58:11.777730','12','Center for Internet Security',2,'[{\"changed\": {\"fields\": [\"Connector type\"]}}]',16,1),(104,'2020-10-24 15:58:34.385725','5','HOST',3,'',13,1),(105,'2020-10-25 21:08:31.800324','3','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Tenant code\", \"Source rule\", \"Other condition\"]}}]',19,1),(106,'2020-10-25 21:44:25.744097','2','jpatel@mspectrum.co.in',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',6,1),(107,'2020-10-26 00:03:51.648146','2','jpatel@mspectrum.co.in',2,'[]',6,1),(108,'2020-10-26 00:07:52.939511','9','eiyer@mspectrum.co',1,'[{\"added\": {}}]',6,1),(109,'2020-10-26 00:08:19.656382','9','eiyer@mspectrum.co',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email\", \"Tenant\", \"Role\"]}}]',6,1),(110,'2020-10-27 21:18:57.193049','6','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Tenant code\", \"Source wsdl url\", \"Other condition\"]}}]',19,1),(111,'2020-10-27 21:19:45.955812','5','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Tenant code\", \"Other condition\"]}}]',19,1),(112,'2020-10-27 21:19:58.993918','6','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Other condition\"]}}]',19,1),(113,'2020-10-27 21:21:06.685164','3','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source wsdl url\"]}}]',19,1),(114,'2020-10-27 21:21:50.032404','1','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Tenant code\", \"Other condition\"]}}]',19,1),(115,'2020-10-27 21:22:15.363677','2','Credo Semiconductors',2,'[]',19,1),(116,'2020-10-27 21:22:37.856707','2','Credo Semiconductors',2,'[{\"changed\": {\"fields\": [\"Other condition\"]}}]',19,1),(117,'2020-10-27 21:22:50.678370','6','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Other condition\"]}}]',19,1),(118,'2020-10-27 21:23:09.563388','5','Chevron Phillips Chemicals',2,'[]',19,1),(119,'2020-10-27 21:24:39.061183','5','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Other condition\"]}}]',19,1),(120,'2020-10-27 21:27:12.078160','1','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source wsdl url\", \"Other condition\"]}}]',19,1),(121,'2020-10-27 21:37:50.764295','1','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source wsdl url\"]}}]',19,1),(122,'2020-10-27 21:45:42.074426','6','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Tenant code\", \"Source user name\", \"Source rule\", \"Source wsdl url\", \"Debit credit\"]}}]',19,1),(123,'2020-10-27 21:46:29.076072','6','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Other condition\"]}}]',19,1),(124,'2020-10-27 21:54:09.273462','6','Chevron Phillips Chemicals',2,'[]',19,1),(125,'2020-10-27 22:58:29.782759','3','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source wsdl url\"]}}]',19,1),(126,'2020-10-27 22:59:16.818611','3','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source rule\"]}}]',19,1),(127,'2020-10-27 23:01:53.787023','5','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source wsdl url\"]}}]',19,1),(128,'2020-10-27 23:02:35.860176','5','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Other condition\"]}}]',19,1),(129,'2020-10-27 23:03:05.959714','5','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Other condition\"]}}]',19,1),(130,'2020-10-27 23:04:21.546127','5','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Tenant code\"]}}]',19,1),(131,'2020-10-28 03:42:10.126859','6','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Other condition\"]}}]',19,1),(132,'2020-10-28 04:11:04.030298','5','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Debit credit\"]}}]',19,1),(133,'2020-10-28 04:11:46.415673','5','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Other condition\"]}}]',19,1),(134,'2020-10-28 04:12:08.153653','5','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Month\"]}}]',19,1),(135,'2020-10-28 04:21:59.901998','5','Chevron Phillips Chemicals',2,'[]',19,1),(136,'2020-10-28 06:13:21.522362','7','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source wsdl url\"]}}]',19,1),(137,'2020-10-28 06:17:01.890099','7','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source user name\", \"Source password\"]}}]',19,1),(138,'2020-10-28 06:18:32.702847','7','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Tenant code\"]}}]',19,1),(139,'2020-10-28 06:26:11.869928','8','Credo Semiconductors',2,'[{\"changed\": {\"fields\": [\"Source wsdl url\"]}}]',19,1),(140,'2020-10-28 06:26:53.990118','8','Credo Semiconductors',2,'[{\"changed\": {\"fields\": [\"Tenant code\"]}}]',19,1),(141,'2020-10-28 06:27:54.176283','8','Credo Semiconductors',2,'[{\"changed\": {\"fields\": [\"Tenant code\"]}}]',19,1),(142,'2020-10-28 06:31:44.881751','9','Credo Semiconductors',2,'[{\"changed\": {\"fields\": [\"Source wsdl url\"]}}]',19,1),(143,'2020-10-28 18:32:25.058794','10','Chevron Phillips Chemicals',3,'',19,1),(144,'2020-10-29 08:20:41.217026','15','Chevron Phillips Chemicals',3,'',19,1),(145,'2020-10-29 08:20:41.317372','14','Chevron Phillips Chemicals',3,'',19,1),(146,'2020-10-29 08:20:41.350796','13','Chevron Phillips Chemicals',3,'',19,1),(147,'2020-10-29 08:20:41.384083','12','Chevron Phillips Chemicals',3,'',19,1),(148,'2020-10-29 08:20:48.760796','11','Chevron Phillips Chemicals',3,'',19,1),(149,'2020-10-29 14:37:17.891659','17','Chevron Phillips Chemicals',1,'[{\"added\": {}}]',19,1),(150,'2020-10-29 21:32:51.029350','17','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Target rule\", \"Target wsdl url\"]}}]',19,1),(151,'2020-10-29 21:37:34.324697','17','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Tenant code\", \"Target user name\", \"Target password\"]}}]',19,1),(152,'2020-10-30 00:17:08.436807','17','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source user name\", \"Source password\", \"Source server\", \"Source database\"]}}]',19,1),(153,'2020-10-30 16:46:06.931940','20','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source password\", \"Source rule\"]}}]',19,1),(154,'2020-10-30 17:17:36.859713','20','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Tenant code\", \"Source user name\", \"Source rule\"]}}]',19,1),(155,'2020-10-30 22:42:50.211617','17','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Target sql query\"]}}]',19,1),(156,'2020-10-31 11:07:36.798550','9','Credo Semiconductors',2,'[{\"changed\": {\"fields\": [\"Source wsdl url\"]}}]',19,1),(157,'2020-10-31 11:08:21.611798','9','Credo Semiconductors',2,'[{\"changed\": {\"fields\": [\"Source wsdl url\"]}}]',19,1),(158,'2020-10-31 11:08:40.736398','20','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source wsdl url\"]}}]',19,1),(159,'2020-10-31 11:11:15.767570','20','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source wsdl url\"]}}]',19,1),(160,'2020-10-31 21:27:02.507270','29','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source wsdl url\"]}}]',19,1),(161,'2020-10-31 21:35:52.798419','29','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source wsdl url\"]}}]',19,1),(162,'2020-11-01 01:42:19.622281','28','Chevron Phillips Chemicals',3,'',19,1),(163,'2020-11-01 01:42:19.663562','27','Chevron Phillips Chemicals',3,'',19,1),(164,'2020-11-01 16:44:34.786982','29','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source connector type\", \"Target connector type\"]}}]',19,1),(165,'2020-11-01 21:11:05.114338','35','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source wsdl url\"]}}]',19,1),(166,'2020-11-01 21:17:51.959568','35','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source wsdl url\"]}}]',19,1),(167,'2020-11-02 11:16:40.453483','36','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Tenant code\", \"Process name\", \"Source host\", \"Source server\", \"Source database\", \"Target host\", \"Target user name\", \"Target password\", \"Target wsdl url\", \"Target endpoint url\", \"Target method\", \"Target sql query\"]}}]',19,1),(168,'2020-11-02 11:54:00.940793','36','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Process name\", \"Source server\", \"Source database\", \"Target user name\", \"Target wsdl url\"]}}]',19,1),(169,'2020-11-02 16:59:33.108114','37','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Target sql query\"]}}]',19,1),(170,'2020-11-02 17:01:18.971686','37','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Process name\"]}}]',19,1),(171,'2020-11-02 18:18:27.563983','36','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Process name\", \"Target host\", \"Target port\", \"Target user name\", \"Target connection string\", \"Target rule\", \"Target wsdl url\", \"Target sql query\"]}}]',19,1),(172,'2020-11-02 23:54:38.509617','35','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source rule\"]}}]',19,1),(173,'2020-11-02 23:55:30.076219','35','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source rule\"]}}]',19,1),(174,'2020-11-02 23:56:12.774546','35','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Other condition\"]}}]',19,1),(175,'2020-11-03 00:06:22.940739','35','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Month\"]}}]',19,1),(176,'2020-11-03 00:10:20.841489','35','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source wsdl url\"]}}]',19,1),(177,'2020-11-03 00:13:54.626384','41','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source user name\"]}}]',19,1),(178,'2020-11-03 00:19:55.749478','41','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Tenant code\", \"Target user name\"]}}]',19,1),(179,'2020-11-03 01:40:44.334848','35','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source wsdl url\"]}}]',19,1),(180,'2020-11-03 01:50:56.508889','35','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source wsdl url\"]}}]',19,1),(181,'2020-11-03 01:51:37.739603','35','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source wsdl url\"]}}]',19,1),(182,'2020-11-03 02:23:05.598768','35','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source wsdl url\"]}}]',19,1),(183,'2020-11-03 02:42:15.599475','35','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source wsdl url\"]}}]',19,1),(184,'2020-11-03 02:43:01.096002','35','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source wsdl url\"]}}]',19,1),(185,'2020-11-03 02:52:38.275523','35','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source wsdl url\"]}}]',19,1),(186,'2020-11-03 03:09:45.230068','37','Chevron Phillips Chemicals',2,'[]',19,1),(187,'2020-11-03 11:31:46.902867','45','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Target sql query\"]}}]',19,1),(188,'2020-11-03 13:29:09.331260','50','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Target user name\"]}}]',19,1),(189,'2020-11-05 23:45:13.252220','51','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Target sql query\"]}}]',19,1),(190,'2020-11-05 23:53:26.344736','51','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Tenant code\", \"Source user name\", \"Source password\", \"Source server\", \"Source database\"]}}]',19,1),(191,'2020-11-07 18:02:34.690667','51','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source user name\"]}}]',19,1),(192,'2020-11-07 18:03:14.461418','51','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source database\"]}}]',19,1),(193,'2020-11-07 18:04:26.227920','51','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Target sql query\"]}}]',19,1),(194,'2020-11-07 18:16:28.258102','51','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source database\"]}}]',19,1),(195,'2020-11-07 18:27:00.867738','51','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Target sql query\"]}}]',19,1),(196,'2020-11-07 18:33:48.975627','51','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Target sql query\"]}}]',19,1),(197,'2020-11-09 19:44:39.530591','36','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source port\"]}}]',19,1),(198,'2020-11-09 19:44:41.966498','36','Chevron Phillips Chemicals',2,'[]',19,1),(199,'2020-11-09 19:47:22.928732','36','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Target user name\"]}}]',19,1),(200,'2020-11-09 20:04:04.787085','36','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Target user name\"]}}]',19,1),(201,'2020-11-10 06:46:57.552684','51','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Target sql query\"]}}]',19,1),(202,'2020-11-10 07:04:13.563903','51','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Target sql query\"]}}]',19,1),(203,'2020-11-12 19:00:28.831714','51','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Script type\"]}}]',19,1),(204,'2020-11-12 20:24:50.971283','51','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Script type\"]}}]',19,1),(205,'2020-11-12 20:28:16.756670','51','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Script type\"]}}]',19,1),(206,'2020-11-12 20:31:07.094511','51','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Script type\"]}}]',19,1),(207,'2020-11-12 20:33:50.951979','51','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Script type\"]}}]',19,1),(208,'2020-11-12 20:34:53.488768','51','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Script type\"]}}]',19,1),(209,'2020-11-12 21:00:54.726130','36','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Script type\"]}}]',19,1),(210,'2020-11-12 21:04:56.810151','36','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Script type\"]}}]',19,1),(211,'2020-11-12 21:06:08.504713','36','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Script type\"]}}]',19,1),(212,'2020-11-12 21:14:34.889698','36','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Script type\"]}}]',19,1),(213,'2020-11-12 21:34:12.016018','36','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Script type\"]}}]',19,1),(214,'2020-11-12 21:38:32.453591','36','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Script type\"]}}]',19,1),(215,'2020-11-12 21:39:59.998294','51','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Script type\"]}}]',19,1),(216,'2020-11-14 07:32:40.787449','51','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Script type\"]}}]',19,1),(217,'2020-11-14 07:41:24.746613','52','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Other condition\"]}}]',19,1),(218,'2020-11-14 07:42:04.742419','52','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source wsdl url\"]}}]',19,1),(219,'2020-11-14 09:24:42.588614','51','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source sql query\"]}}]',19,1),(220,'2020-11-16 10:52:46.313023','60','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Tenant code\", \"Process name\", \"Source connector type\", \"Target connector type\", \"Target host\", \"Target port\", \"Target user name\", \"Target password\"]}}]',19,1),(221,'2020-11-16 10:56:16.255547','60','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source connector type\", \"Target connector type\"]}}]',19,1),(222,'2020-11-16 11:00:10.343897','60','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Tenant code\"]}}]',19,1),(223,'2020-11-16 11:07:54.651179','60','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Tenant code\"]}}]',19,1),(224,'2020-11-16 17:30:18.597654','36','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source sql query\"]}}]',19,1),(225,'2020-11-16 17:40:44.000112','36','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Script type\"]}}]',19,1),(226,'2020-11-16 17:47:13.098225','36','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Script type\"]}}]',19,1),(227,'2020-11-16 17:48:09.272277','36','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Script type\"]}}]',19,1),(228,'2020-11-16 17:49:27.766188','36','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Script type\"]}}]',19,1),(229,'2020-11-16 17:57:43.203997','36','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source sql query\"]}}]',19,1),(230,'2020-11-16 18:18:02.466604','36','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source sql query\"]}}]',19,1),(231,'2020-11-16 18:47:46.019045','36','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source sql query\"]}}]',19,1),(232,'2020-11-16 18:48:19.094453','36','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source sql query\"]}}]',19,1),(233,'2020-11-16 18:48:52.745621','36','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source sql query\"]}}]',19,1),(234,'2020-11-17 23:14:00.071366','35','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source connector type\", \"Target connector type\"]}}]',19,1),(235,'2020-11-18 01:17:13.567309','36','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Target wsdl url\"]}}]',19,1),(236,'2020-11-18 01:17:57.246944','36','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Target rule\", \"Target wsdl url\"]}}]',19,1),(237,'2020-11-18 01:20:28.413440','36','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Tenant code\"]}}]',19,1),(238,'2020-11-18 01:25:24.508758','36','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Tenant code\"]}}]',19,1),(239,'2020-11-18 01:29:42.549952','36','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source port\"]}}]',19,1),(240,'2020-11-18 01:30:19.410545','36','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source sql query\"]}}]',19,1),(241,'2020-11-18 01:42:50.943615','36','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source port\"]}}]',19,1),(242,'2020-11-18 13:42:54.754878','84','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Target wsdl url\"]}}]',19,1),(243,'2020-11-18 14:21:53.134391','84','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source host\", \"Source server\", \"Source database\", \"Target wsdl url\"]}}]',19,1),(244,'2020-11-18 14:24:51.703859','84','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source server\", \"Source database\"]}}]',19,1),(245,'2020-11-19 00:19:31.376977','93','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Tenant code\", \"Source user name\", \"Source password\", \"Source method\"]}}]',19,1),(246,'2020-11-19 00:21:50.466247','93','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source wsdl url\"]}}]',19,1),(247,'2020-11-19 02:06:53.370705','96','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source method\"]}}]',19,1),(248,'2020-11-19 14:09:57.337475','96','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Tenant code\", \"Source user name\", \"Source password\", \"Source wsdl url\"]}}]',19,1),(249,'2020-11-19 14:15:03.239426','96','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source method\"]}}]',19,1),(250,'2020-11-19 14:18:03.382546','96','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source method\"]}}]',19,1),(251,'2020-11-19 14:21:58.700573','96','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source method\"]}}]',19,1),(252,'2020-11-19 14:23:39.936451','96','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source method\"]}}]',19,1),(253,'2020-11-19 22:01:37.314481','84','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source connection string\", \"Source rule\"]}}]',19,1),(254,'2020-11-20 04:01:41.469858','96','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Target host\", \"Target port\", \"Target user name\", \"Target password\"]}}]',19,1),(255,'2020-11-23 03:04:13.478761','100','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Script type\"]}}]',19,1),(256,'2020-11-23 03:05:40.135569','100','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Script type\"]}}]',19,1),(257,'2020-11-24 01:17:17.492637','5','Intacct',1,'[{\"added\": {}}]',13,1),(258,'2020-11-24 01:23:01.160216','12','Chevron Phillips Chemicals',1,'[{\"added\": {}}]',29,1),(259,'2020-11-24 06:57:13.414011','105','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Other condition\"]}}]',19,1),(260,'2020-11-24 07:02:19.538948','105','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Other condition\"]}}]',19,1),(261,'2020-11-24 07:02:44.755066','105','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Other condition\"]}}]',19,1),(262,'2020-11-24 07:05:15.119381','105','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Other condition\"]}}]',19,1),(263,'2020-11-24 10:45:03.702996','105','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Script type\"]}}]',19,1),(264,'2020-11-26 03:57:02.404215','105','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Other condition\"]}}]',19,1),(265,'2020-11-26 04:06:49.108288','105','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Source password\"]}}]',19,1),(266,'2020-11-26 04:23:03.011965','113','Chevron Phillips Chemicals',3,'',19,1),(267,'2020-11-26 04:23:03.368901','112','Chevron Phillips Chemicals',3,'',19,1),(268,'2020-11-26 04:32:50.358508','105','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Other condition\"]}}]',19,1),(269,'2020-11-26 05:30:55.273278','114','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Other condition\"]}}]',19,1),(270,'2020-11-27 01:30:15.425366','111','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Other condition\"]}}]',19,1),(271,'2020-11-27 02:27:37.238901','118','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Tenant code\", \"Process name\", \"Source password\", \"Target user name\", \"Target password\", \"Target rule\", \"Target wsdl url\", \"Other condition\"]}}]',19,1),(272,'2020-11-27 02:32:40.444751','118','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Other condition\"]}}]',19,1),(273,'2020-11-27 02:34:27.032928','118','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Other condition\"]}}]',19,1),(274,'2020-11-27 02:43:40.573495','118','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Other condition\"]}}]',19,1),(275,'2020-11-27 02:47:15.242445','118','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Other condition\"]}}]',19,1),(276,'2020-11-27 03:07:58.458911','119','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Other condition\"]}}]',19,1),(277,'2020-11-27 03:09:28.447890','119','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Other condition\"]}}]',19,1),(278,'2020-11-27 03:18:57.132434','119','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Process name\", \"Other condition\"]}}]',19,1),(279,'2020-11-27 03:19:45.599306','119','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Other condition\"]}}]',19,1),(280,'2020-11-27 04:22:44.487376','120','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Other condition\"]}}]',19,1),(281,'2020-11-27 04:23:13.935046','120','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Other condition\"]}}]',19,1),(282,'2020-11-27 04:40:22.862393','120','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Other condition\"]}}]',19,1),(283,'2020-11-27 05:16:25.814558','120','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Other condition\"]}}]',19,1),(284,'2020-11-27 05:19:01.040810','120','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Other condition\"]}}]',19,1),(285,'2020-11-27 05:20:13.390677','120','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Other condition\"]}}]',19,1),(286,'2020-11-27 05:21:42.559618','120','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Other condition\"]}}]',19,1),(287,'2020-11-27 05:24:42.355096','120','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Other condition\"]}}]',19,1),(288,'2020-11-27 06:43:48.473487','120','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Other condition\"]}}]',19,1),(289,'2020-11-27 06:45:31.383307','120','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Other condition\"]}}]',19,1),(290,'2020-11-27 11:51:26.162254','120','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Other condition\"]}}]',19,1),(291,'2020-11-27 17:46:17.845305','123','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Other condition\"]}}]',19,1),(292,'2020-11-27 17:46:34.022616','122','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Other condition\"]}}]',19,1),(293,'2020-11-27 17:46:57.234434','119','Chevron Phillips Chemicals',2,'[{\"changed\": {\"fields\": [\"Other condition\"]}}]',19,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(5,'sessions','session'),(17,'tenant','datasourcetypemaster'),(25,'tenant','jobdata'),(28,'tenant','processscheduledetail'),(27,'tenant','processschedulemaster'),(22,'tenant','tenantdatasourcedetail'),(24,'tenant','tenantdatatargetdetail'),(21,'tenant','tenantdestinationdetail'),(20,'tenant','tenantprocessdetail'),(26,'tenant','tenantprocesslogdetail'),(19,'tenant','tenantprocessmaster'),(18,'tenant','tenantsourcedetail'),(23,'tenant','testtable'),(13,'users','connectortypemaster'),(12,'users','roledetail'),(7,'users','rolemaster'),(29,'users','tenantconnectordetail'),(16,'users','tenantconnectordetails'),(11,'users','tenantcontactdetail'),(8,'users','tenantmaster'),(31,'users','tenantsourceprofiledetail'),(14,'users','tenantsourceprofiledetails'),(10,'users','tenantsubscriptiondetail'),(30,'users','tenanttargetprofiledetail'),(15,'users','tenanttargetprofiledetails'),(9,'users','userslogdetail'),(6,'users','usersmaster');
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
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'users','0001_initial','2020-10-12 16:13:07.036820'),(2,'contenttypes','0001_initial','2020-10-12 16:13:10.627910'),(3,'admin','0001_initial','2020-10-12 16:13:10.985932'),(4,'admin','0002_logentry_remove_auto_add','2020-10-12 16:13:12.562175'),(5,'admin','0003_logentry_add_action_flag_choices','2020-10-12 16:13:12.611697'),(6,'contenttypes','0002_remove_content_type_name','2020-10-12 16:13:13.695115'),(7,'auth','0001_initial','2020-10-12 16:13:14.668035'),(8,'auth','0002_alter_permission_name_max_length','2020-10-12 16:13:17.563739'),(9,'auth','0003_alter_user_email_max_length','2020-10-12 16:13:17.610834'),(10,'auth','0004_alter_user_username_opts','2020-10-12 16:13:17.669409'),(11,'auth','0005_alter_user_last_login_null','2020-10-12 16:13:17.718032'),(12,'auth','0006_require_contenttypes_0002','2020-10-12 16:13:17.754153'),(13,'auth','0007_alter_validators_add_error_messages','2020-10-12 16:13:17.809786'),(14,'auth','0008_alter_user_username_max_length','2020-10-12 16:13:17.863826'),(15,'auth','0009_alter_user_last_name_max_length','2020-10-12 16:13:17.917449'),(16,'auth','0010_alter_group_name_max_length','2020-10-12 16:13:18.056336'),(17,'auth','0011_update_proxy_permissions','2020-10-12 16:13:18.128847'),(18,'auth','0012_alter_user_first_name_max_length','2020-10-12 16:13:18.185350'),(19,'sessions','0001_initial','2020-10-12 16:13:18.509770'),(20,'users','0002_auto_20200707_1906','2020-10-12 16:13:22.146834'),(21,'users','0003_auto_20200726_1433','2020-10-12 16:13:25.987337'),(22,'users','0004_auto_20201002_1853','2020-10-12 16:13:33.916216'),(23,'users','0005_auto_20201005_0728','2020-10-12 16:13:37.870379'),(24,'users','0006_auto_20201005_0731','2020-10-12 16:13:37.964363'),(25,'users','0007_auto_20201005_0737','2020-10-12 16:13:39.251317'),(26,'users','0008_auto_20201005_0746','2020-10-12 16:13:40.352012'),(27,'users','0009_auto_20201005_1313','2020-10-12 16:13:40.402386'),(28,'users','0010_auto_20201005_1554','2020-10-12 16:13:41.032295'),(29,'users','0011_auto_20201005_1941','2020-10-12 16:13:41.080272'),(30,'users','0012_auto_20201005_1942','2020-10-12 16:13:41.137480'),(31,'users','0013_auto_20201005_1952','2020-10-12 16:13:41.195230'),(32,'users','0014_auto_20201005_2015','2020-10-12 16:13:41.255897'),(33,'users','0015_auto_20201005_2047','2020-10-12 16:13:41.338957'),(34,'users','0016_auto_20201006_0556','2020-10-12 16:13:41.399023'),(35,'users','0017_auto_20201006_0607','2020-10-12 16:13:41.499554'),(36,'users','0018_auto_20201006_0621','2020-10-12 16:13:42.082421'),(37,'users','0019_auto_20201006_0638','2020-10-12 16:13:42.776191'),(38,'users','0020_auto_20201006_0652','2020-10-12 16:13:42.846983'),(39,'users','0021_auto_20201006_0858','2020-10-12 16:13:42.934631'),(40,'users','0022_auto_20201006_0859','2020-10-12 16:13:43.006919'),(41,'users','0023_auto_20201006_0907','2020-10-12 16:13:43.078298'),(42,'users','0024_auto_20201006_0908','2020-10-12 16:13:43.184082'),(43,'users','0025_auto_20201006_0919','2020-10-12 16:13:43.225777'),(44,'users','0026_auto_20201006_0932','2020-10-12 16:13:43.280597'),(45,'users','0027_auto_20201006_0934','2020-10-12 16:13:43.347932'),(46,'users','0028_auto_20201012_1602','2020-10-12 16:13:43.952195'),(47,'tenant','0001_initial','2020-10-12 16:13:46.016869'),(48,'tenant','0002_testtable','2020-10-12 16:13:51.024146'),(49,'tenant','0003_auto_20200726_1433','2020-10-12 16:13:51.490760'),(50,'tenant','0004_auto_20200726_1450','2020-10-12 16:13:53.994027'),(51,'tenant','0005_auto_20200902_1505','2020-10-12 16:13:57.139881'),(52,'tenant','0006_jobdata','2020-10-12 16:13:57.526601'),(53,'tenant','0007_jobdata_js_code','2020-10-12 16:13:58.117262'),(54,'tenant','0008_auto_20200907_1145','2020-10-12 16:14:00.731599'),(55,'tenant','0009_auto_20200907_1204','2020-10-12 16:14:00.801957'),(56,'tenant','0010_auto_20200907_1212','2020-10-12 16:14:02.571322'),(57,'tenant','0011_auto_20200907_1215','2020-10-12 16:14:04.524377'),(58,'tenant','0012_auto_20200907_1216','2020-10-12 16:14:05.778709'),(59,'tenant','0013_auto_20200907_1216','2020-10-12 16:14:08.327541'),(60,'tenant','0014_auto_20200907_1217','2020-10-12 16:14:08.544554'),(61,'tenant','0015_auto_20200908_1620','2020-10-12 16:14:09.774720'),(62,'tenant','0016_auto_20201002_1853','2020-10-12 16:14:36.615333'),(63,'tenant','0017_remove_tenantprocessmaster_script','2020-10-12 16:14:41.358363'),(64,'tenant','0018_auto_20201005_1941','2020-10-12 16:14:41.409296'),(65,'tenant','0019_auto_20201006_0858','2020-10-12 16:14:41.637235'),(66,'tenant','0020_auto_20201006_0859','2020-10-12 16:14:41.733540'),(67,'tenant','0021_auto_20201006_0907','2020-10-12 16:14:41.787578'),(68,'tenant','0022_auto_20201006_0908','2020-10-12 16:14:41.847454'),(69,'tenant','0023_auto_20201006_0919','2020-10-12 16:14:43.218149'),(70,'tenant','0024_auto_20201006_0929','2020-10-12 16:14:43.939234'),(71,'tenant','0025_auto_20201006_0932','2020-10-12 16:14:44.715563'),(72,'tenant','0026_auto_20201006_0934','2020-10-12 16:14:45.376181'),(73,'tenant','0027_auto_20201012_1602','2020-10-12 16:14:52.589158'),(74,'tenant','0028_auto_20201012_1654','2020-10-12 16:55:02.408287'),(75,'users','0029_auto_20201012_1654','2020-10-12 16:55:02.531925'),(76,'tenant','0029_auto_20201012_1703','2020-10-12 17:04:02.423706'),(77,'users','0030_auto_20201012_1703','2020-10-12 17:04:02.524135'),(78,'tenant','0030_auto_20201012_1715','2020-10-12 17:15:54.506436'),(79,'users','0031_auto_20201012_1715','2020-10-12 17:15:54.574330'),(80,'users','0032_auto_20201019_2002','2020-10-25 20:16:03.932846'),(81,'users','0033_auto_20201023_1449','2020-10-25 20:16:04.047255'),(82,'users','0034_auto_20201023_1450','2020-10-25 20:16:04.104774'),(83,'users','0035_auto_20201023_1453','2020-10-25 20:16:04.169098'),(84,'users','0036_auto_20201023_1459','2020-10-25 20:16:04.225392'),(85,'users','0037_auto_20201023_1509','2020-10-25 20:16:04.304414'),(86,'tenant','0031_auto_20201019_2002','2020-10-25 20:16:05.224900'),(87,'tenant','0032_tenantprocessmaster_tenant_code','2020-10-25 20:16:06.329879'),(88,'tenant','0033_remove_tenantprocessmaster_tenant_code','2020-10-25 20:16:07.323348'),(89,'tenant','0034_tenantprocessmaster_tenant_code','2020-10-25 20:16:08.224060'),(90,'users','0038_auto_20201023_1559','2020-10-25 20:16:47.099019'),(91,'tenant','0035_auto_20201023_1559','2020-10-25 20:16:47.186979'),(92,'users','0039_auto_20201023_1559','2020-10-25 20:16:47.229632'),(93,'users','0040_auto_20201023_1559','2020-10-25 20:16:47.271320'),(94,'users','0041_auto_20201023_1601','2020-10-25 20:16:47.313078'),(95,'users','0042_auto_20201023_1602','2020-10-25 20:16:47.352778'),(96,'users','0043_auto_20201023_1602','2020-10-25 20:16:47.452924'),(97,'users','0044_auto_20201023_1639','2020-10-25 20:16:47.536503'),(98,'tenant','0036_auto_20201027_2331','2020-10-27 23:31:54.805771'),(99,'users','0045_auto_20201027_2331','2020-10-27 23:31:54.878252'),(100,'tenant','0037_auto_20201027_2343','2020-10-27 23:43:30.663358'),(101,'users','0046_auto_20201027_2343','2020-10-27 23:43:30.727939'),(102,'tenant','0038_tenantprocessmaster_target_sql_query','2020-10-28 16:06:15.680993'),(103,'users','0047_auto_20201028_1605','2020-10-28 16:06:15.814005'),(104,'tenant','0039_auto_20201028_1816','2020-10-28 18:16:39.808912'),(105,'users','0048_auto_20201028_1816','2020-10-28 18:16:39.899335'),(106,'tenant','0040_auto_20201029_0759','2020-10-29 08:00:12.023753'),(107,'users','0049_auto_20201029_0759','2020-10-29 08:00:12.088016'),(108,'tenant','0041_auto_20201030_1345','2020-10-30 13:46:01.218231'),(109,'users','0050_auto_20201030_1345','2020-10-30 13:46:01.317424'),(110,'tenant','0042_auto_20201112_1814','2020-11-12 18:14:40.105140'),(111,'users','0051_auto_20201112_1814','2020-11-12 18:14:40.222007'),(112,'tenant','0043_auto_20201114_0912','2020-11-14 09:13:09.087816'),(113,'users','0052_auto_20201114_0912','2020-11-14 09:13:09.241657'),(114,'tenant','0044_auto_20201120_1853','2020-11-20 18:53:55.361656'),(115,'users','0053_auto_20201120_1853','2020-11-20 18:53:55.552696'),(116,'tenant','0045_auto_20201123_0313','2020-11-23 03:13:16.162292'),(117,'users','0054_auto_20201123_0313','2020-11-23 03:13:16.603693'),(118,'tenant','0046_auto_20201126_0438','2020-11-26 04:38:42.138575'),(119,'tenant','0047_auto_20201127_0231','2020-11-27 02:31:22.490878'),(120,'users','0055_auto_20201127_0231','2020-11-27 02:31:22.623022'),(121,'users','0056_auto_20201127_1804','2020-11-27 18:05:04.551157'),(122,'users','0057_auto_20201127_1805','2020-11-27 18:05:12.975579');
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
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('1d3qrf7f1q395lqza7kv1m8fjkq07edd','.eJxVjEEOwiAQRe_C2hCmUBhcuu8ZmoEZbNWUpLQr491Nky50-997_61G2rdp3Jus48zqqkBdfrdE-SnLAfhBy73qXJdtnZM-FH3SpofK8rqd7t_BRG06asemS548gEeMaEMnyRag2OdgAjofsJjgsVjxAsxAjH12VFAimKI-X8e-N4w:1kh28r:sIWEzUdiTzaka5lXrqJNtUipG5WN0l8sAi0hIq9u3LM','2020-12-07 03:03:49.552767'),('2h7tv26yheqos6lskesd33fjegh3fxnj','.eJxVjEEOwiAQRe_C2hCmUBhcuu8ZmoEZbNWUpLQr491Nky50-997_61G2rdp3Jus48zqqkBdfrdE-SnLAfhBy73qXJdtnZM-FH3SpofK8rqd7t_BRG06asemS548gEeMaEMnyRag2OdgAjofsJjgsVjxAsxAjH12VFAimKI-X8e-N4w:1kbTVN:HWSlx4jkXa4r4Wm05EvfUsCgZUo3q02gtmfQz4AXeZY','2020-11-21 19:04:05.717749'),('46ctdktxygum8ujphps43owbyu0i3ox7','.eJyFVF1P2zAU_SuRX_ZAFZF0owU0aW1aEFIZXcs2bVFlObZDDYkdbAfUIf77bj6aJoFpPCD3nHPte89x_IIwye0W54ZrLBg6Qz4atLGI0AcuC4LdE3mnXKqk1SJyC4lbs8a9Vown01rb2WBLzBaqhxE5iX0ae4QOo4hR_mkUn5yOY88fDcc-O46o59OPxCfjUex7x543pjE7jYAdkjH3KWxqHhNsVK4pR2cviGpOLGc42sHu9xmsky-pyTi1Ok-hS1dIqEkVE7H4r8xySaQFRbPGFCZCZzJPkgHKtKLcGCxJ2mC1rGoIgyIWSZ-0RN9x2ydTcHC7_7HjRO_XhmqRQdUua7TCYEKteAIgJonhUE1oGVRdUh0PoUgYSelO8Ruy3X9NbpWxPShTug-VSVbVqHEPr78tFupOSOyhQzEx5lnp4sJkf6z3MIr4aHigYZ8nDgOj-e-gastNDQTrGpVyDnmkBy0jlkTE8FJdD4H6UwklsYELKe9ANltd_ZivPr_czKaBM9Ngm3a8kRMr7UCvzro8_PV8PV8Vsg9HVTdHH85nk9vJdLKeA7Y_FdDvVzMAitmL0QFY_iwAp5mxaUbnSd_YZ8MSnOukB8P3kSkBd-MtlXK7Vf1ki3b2l6zKFs2mxS2trtb7wb8hOxe3ItvB7-9pK_gaagXflTYxd-B9vB3wkON73bUD7PBtT2uo72kNv-dpTXU9bTXU9bSiSapy2f3-GI8EtKo5E401ym7BFGgfMOi-bwG8Uo8518V7s54v5sGtEwYqzYjc4QDelM3AccIJpeVRX_M04hqgcFm8ERYHXNoS2P9BrWnBhe4eXNsMwltNGLiGl0RbWZPVEv9zsyXXQrFCeiEMJQn-Bc9PKQgXAZ6U8zf68LKBauRidXPthM2nu3FDFin4HywDfLnA6zxNid5NkmSDXsGQ4g3Q3EAX6PUvN5tHAg:1kZCz3:extC8_yoD8bcN-WoWn99hC2p9hSRSjO5yeJu_ggtMJs','2020-11-15 13:01:21.599030'),('4d7nhb2ky7752ye9vhy14rkrum36arp7','.eJxVjEEOwiAQRe_C2hCmUBhcuu8ZmoEZbNWUpLQr491Nky50-997_61G2rdp3Jus48zqqkBdfrdE-SnLAfhBy73qXJdtnZM-FH3SpofK8rqd7t_BRG06asemS548gEeMaEMnyRag2OdgAjofsJjgsVjxAsxAjH12VFAimKI-X8e-N4w:1kZFsW:_qtyqaG6dT-Up8GLZQPLw9Eejoaf02ELcc9edvWbse0','2020-11-15 16:06:48.786632'),('4n9itqob4zq3svlcynrr7aia1b5pves8','.eJxVjEEOwiAQRe_C2hCmUBhcuu8ZmoEZbNWUpLQr491Nky50-997_61G2rdp3Jus48zqqkBdfrdE-SnLAfhBy73qXJdtnZM-FH3SpofK8rqd7t_BRG06asemS548gEeMaEMnyRag2OdgAjofsJjgsVjxAsxAjH12VFAimKI-X8e-N4w:1kcs7D:Q243bPjRzrJ291DMFPL4XAZmk_4HFDDY5JF4ufzOG9s','2020-11-25 15:32:55.087208'),('512xnmryzelrcb335zptm6u1jg0439h0','.eJxVjEEOwiAQRe_C2hCmUBhcuu8ZmoEZbNWUpLQr491Nky50-997_61G2rdp3Jus48zqqkBdfrdE-SnLAfhBy73qXJdtnZM-FH3SpofK8rqd7t_BRG06asemS548gEeMaEMnyRag2OdgAjofsJjgsVjxAsxAjH12VFAimKI-X8e-N4w:1kXcnL:IzGzUG_rZ40cTk-GDupbw4Ze43M2k2NaNfe_t-abKQ0','2020-11-11 04:10:43.732325'),('5awak5g9t4xff007h2d6u5336nmb8scr','.eJyNVF1P2zAU_SuRX3gARSQdtAVNWr-2IbWia8rY9mI5jtMYEjvYDogh_vuu89kUpu3NOefe63Pvuc4LwqQwCS40U5hH6AL56GQfCwm9Z8IS0R0RO-lSKYzioWtD3JrV7kpGLJ3Wsb0CCdEJZA9Cch77NPYIHYRhRNnZMD4fj2LPHw5GfnQaUs-nH4hPRsPY9049b0TjaBwCOyAj5lMoqh9SrGWhKEMXL4gqRgyLcPgM1e9yOKefMp0zalSRgUqXC8jJZMRj_s8wwwQRBl14zRFTaAgygs--75-PzyAmV5IyrbEgmWVuA_x1g5eSRG1-rQ5DZMxTCBJFmrakIWrHzCGZwTiT5uOZEdWcNVU8h6znvI3lGhNq-CMAMUk1g2xCS9fqlOp6cEhAf1L1kt-QVR89MpHaHEC5VACNhuNRC5W21lNoR4mDb8ul3HGBPdQlE62fpLLbk_823v0wZMNBR0OdRwYNo8WvWSXLzTS47GqZMQbmZF1sRAwJiWZldN0EOuyKS4E1bKfYQdh8c_V9sfn4cj2fzpy5grEpxxs6sVQOaHWC8vLXy2CxsWFHx5Wa46PL-WQ7mU6CBWDNrYDeXM0BsL3b1gFY31rAaXtsxagiPRzsk45SXKj0AIbHkksOu_GWyphJ5KGzVk6zZJW3aD6161et1vvGvyH3ja_JfeObPS2N70H_YXyT_Bfja7oxvle9c_g93fvW9vhq2vY5flni4Ga1mmx-4sly2d3WDR-tlYyKslhHv2dCTTUmoFkKL3MOAm-5ScpuT5xpkd4HpSL7E-iIrSJCx6wfjnptHnj4Y2XVkkwWov_gIxZymIBiEW-9kCYBF2AqgNk--ortP_KhYMr-7YLFcjHbOtvrteOdotfXP6KfG0w:1kaPYK:01ZuLESOT9wtmwy6JI7elGPG8s9sej1aolIvJJ-LeSM','2020-11-18 20:38:44.686594'),('5dhto3hhvrfk5bvdwz5id68259wawc2c','.eJxVjEEOwiAQRe_C2hCmUBhcuu8ZmoEZbNWUpLQr491Nky50-997_61G2rdp3Jus48zqqkBdfrdE-SnLAfhBy73qXJdtnZM-FH3SpofK8rqd7t_BRG06asemS548gEeMaEMnyRag2OdgAjofsJjgsVjxAsxAjH12VFAimKI-X8e-N4w:1kWnAD:lSE9j8Q_vQ7bHx5_Qr198i3ih7x4b1bbw-BsVvrMHho','2020-11-08 21:02:53.468515'),('68smfj5bjnuvv5p1fur777esozp9pfjr','.eJxVjEEOwiAQRe_C2hCmUBhcuu8ZmoEZbNWUpLQr491Nky50-997_61G2rdp3Jus48zqqkBdfrdE-SnLAfhBy73qXJdtnZM-FH3SpofK8rqd7t_BRG06asemS548gEeMaEMnyRag2OdgAjofsJjgsVjxAsxAjH12VFAimKI-X8e-N4w:1kYyTt:jczL1rvOumz0whfJzhXV0vIG1TyOKO_lkey7FX3sw8w','2020-11-14 21:32:13.081978'),('6nob3jrjsf4smd29nn8m1rmjtqz04qg1','.eJxVjMsOwiAUBf-FtSHlooW6dN9vIPcBUjWQlHZl_HfbpAvdnpk5bxVwXXJYW5zDJOqqQJ1-N0J-xrIDeWC5V821LPNEelf0QZseq8TX7XD_DjK2vNWWsE_AySBbIuF4cakffDLgrAfpiA3wGQG9S2A6YzwnGWijFn0EVp8vCVA4fA:1kfwjO:N57BVXqgD96pbp_Mu0RTFRN-sxmyYSSBLbsWqMUfmvU','2020-12-04 03:05:02.092741'),('7rhhynqhg6njxe284f86vcllc5on4gki','.eJxVjMsOwiAUBf-FtSHlooW6dN9vIPcBUjWQlHZl_HfbpAvdnpk5bxVwXXJYW5zDJOqqQJ1-N0J-xrIDeWC5V821LPNEelf0QZseq8TX7XD_DjK2vNWWsE_AySBbIuF4cakffDLgrAfpiA3wGQG9S2A6YzwnGWijFn0EVp8vCVA4fA:1kb4QM:IcMmdV7Gk4uceFlzbP4TrQYrdeGa7xa137x8GqU8HV0','2020-11-20 16:17:14.867129'),('8mak0z2usyxmkufggdqak86dfpxdk6o8','.eJxVjEEOwiAQRe_C2hCmUBhcuu8ZmoEZbNWUpLQr491Nky50-997_61G2rdp3Jus48zqqkBdfrdE-SnLAfhBy73qXJdtnZM-FH3SpofK8rqd7t_BRG06asemS548gEeMaEMnyRag2OdgAjofsJjgsVjxAsxAjH12VFAimKI-X8e-N4w:1ki8OL:4OgVU_nu6jTs9ORiCOBsAk4t_eL-LGpeI8tU7a9tf5g','2020-12-10 03:56:21.876492'),('9rnsygmoi3e0q6h5krxorbnvit895zvs','.eJxVjEEOwiAQRe_C2hCmUBhcuu8ZmoEZbNWUpLQr491Nky50-997_61G2rdp3Jus48zqqkBdfrdE-SnLAfhBy73qXJdtnZM-FH3SpofK8rqd7t_BRG06asemS548gEeMaEMnyRag2OdgAjofsJjgsVjxAsxAjH12VFAimKI-X8e-N4w:1kZKbd:t1-xWb-81mGqSDHJ82LpuXJU5z5_k8gK8k-AOGSpdPI','2020-11-15 21:09:41.844408'),('9wlgan7tely90dlsdltce7euepe506xd','.eJxVjEEOwiAQRe_C2hCmUBhcuu8ZmoEZbNWUpLQr491Nky50-997_61G2rdp3Jus48zqqkBdfrdE-SnLAfhBy73qXJdtnZM-FH3SpofK8rqd7t_BRG06asemS548gEeMaEMnyRag2OdgAjofsJjgsVjxAsxAjH12VFAimKI-X8e-N4w:1kXPL9:W-1Sisel8F4ctmWISDhYWnblXlZ0AiudGZzUBlzXnKo','2020-11-10 13:48:43.880207'),('ab5s9xhalx6804itpkmliab4vmmiycul','.eJxVjEEOwiAQRe_C2hCgIIxL9z0DYWZAqoYmpV0Z765NutDtf-_9l4hpW2vcel7ixOIitDj9bpjokdsO-J7abZY0t3WZUO6KPGiX48z5eT3cv4Oaev3WAwFT4aC4DBbBk1XFZR2c92DAZQAuRaFl1IWMdZotQTKYz9pDYBTvD_v3OIA:1kSlFd:rXpr9AOllnef5tgPfSMqQmSqRUHDUd4xMzESRakN0D0','2020-10-28 18:11:49.128210'),('ajjcqosq5mvazvh6pacfvt5uyvi1nt8m','.eJxVjEEOwiAQRe_C2hCmUBhcuu8ZmoEZbNWUpLQr491Nky50-997_61G2rdp3Jus48zqqkBdfrdE-SnLAfhBy73qXJdtnZM-FH3SpofK8rqd7t_BRG06asemS548gEeMaEMnyRag2OdgAjofsJjgsVjxAsxAjH12VFAimKI-X8e-N4w:1kbRfz:i87jg6tJ06qJol-rjeB45k6BcLmJ8-lLEO1Eb3hpC4Y','2020-11-21 17:06:55.447110'),('bf00dhb7yhrfiv7zzsi7q7yxzezqujxb','.eJxVjEEOwiAQRe_C2hCmUBhcuu8ZmoEZbNWUpLQr491Nky50-997_61G2rdp3Jus48zqqkBdfrdE-SnLAfhBy73qXJdtnZM-FH3SpofK8rqd7t_BRG06asemS548gEeMaEMnyRag2OdgAjofsJjgsVjxAsxAjH12VFAimKI-X8e-N4w:1kf1ly:oC_-zeCuzRt-M-ej7XgfwLNK5BoZUwQU7pbUX29kSd4','2020-12-01 14:15:54.379082'),('buq2hebx49act4b09szidk59i6i0y327','.eJxVjEEOwiAQRe_C2hCmUBhcuu8ZmoEZbNWUpLQr491Nky50-997_61G2rdp3Jus48zqqkBdfrdE-SnLAfhBy73qXJdtnZM-FH3SpofK8rqd7t_BRG06asemS548gEeMaEMnyRag2OdgAjofsJjgsVjxAsxAjH12VFAimKI-X8e-N4w:1kihj9:0nSmb1LrSyO86Oym3zHw-Ia24KazS9pPY1J6aD0zUxE','2020-12-11 17:40:11.901752'),('c0e6kekmst116b0okknmficgc2a2enes','.eJxVjEEOwiAQRe_C2hCmUBhcuu8ZmoEZbNWUpLQr491Nky50-997_61G2rdp3Jus48zqqkBdfrdE-SnLAfhBy73qXJdtnZM-FH3SpofK8rqd7t_BRG06asemS548gEeMaEMnyRag2OdgAjofsJjgsVjxAsxAjH12VFAimKI-X8e-N4w:1kYWeW:U3INXZ1Yw8t_Z9HCazjZB-CvgDUuFXuRY6LVoEmLcZM','2020-11-13 15:49:20.174266'),('d9isakei0wt8s6gmebgnde79ai6g78x2','.eJxVjMsOwiAUBf-FtSHlooW6dN9vIPcBUjWQlHZl_HfbpAvdnpk5bxVwXXJYW5zDJOqqQJ1-N0J-xrIDeWC5V821LPNEelf0QZseq8TX7XD_DjK2vNWWsE_AySBbIuF4cakffDLgrAfpiA3wGQG9S2A6YzwnGWijFn0EVp8vCVA4fA:1kfkp8:I0UYJFSXuS_Bw8lQ1RLaaoluIfAHKSe4B1UNoU89k0o','2020-12-03 14:22:10.254203'),('didqgnvy9jiz7bc9n2d9psmv2ayc7003','.eJxVjDsOwjAQBe_iGlmON_5R0nMGa-1d4wBypDipEHeHSCmgfTPzXiLitta4dV7iROIstDj9bgnzg9sO6I7tNss8t3WZktwVedAurzPx83K4fwcVe_3WjCUpD2bgkJX1OhgawY6YmbUCIF8sWe-A2LBxpDUVRUNJQMq7kIx4fwDpHjgP:1kVeTm:miZPOjA-_LFgm-U20TV1SnUtOUaAkFMyeVz659EHcSc','2020-11-05 17:34:22.351478'),('dstd74ccaw6ycpsx8s3ugravj74grruj','.eJxVjDsOwjAQBe_iGln-4Q8lfc5g7a5tHEC2FCcV4u4QKQW0b2bei0XY1hq3kZc4J3ZhgZ1-NwR65LaDdId265x6W5cZ-a7wgw4-9ZSf18P9O6gw6rdGMgKyBUsGtBPSoxLkQjAkhXLClyS1dSUpkmfvQGZUCotXnhxabSR7fwDd2jdl:1kXTmj:crG9-uEk2Rxa1as1wOU6qdYtsvoxNcWx-7tHx0e6Va8','2020-11-10 18:33:29.456303'),('dvmozhx0qwrkw7ob6mp6w9yhfe2zps46','.eJxVjMsOwiAUBf-FtSHlooW6dN9vIPcBUjWQlHZl_HfbpAvdnpk5bxVwXXJYW5zDJOqqQJ1-N0J-xrIDeWC5V821LPNEelf0QZseq8TX7XD_DjK2vNWWsE_AySBbIuF4cakffDLgrAfpiA3wGQG9S2A6YzwnGWijFn0EVp8vCVA4fA:1kWu4x:7T5Gj7rLp5buLa7ArgcbCPxuN9lYhtXD0jk_T2LgeHc','2020-11-09 04:25:55.182331'),('e1q30nz21fdg4d7m8trcm1l2l6ksicxw','.eJxVjEEOwiAQRe_C2hCmUBhcuu8ZmoEZbNWUpLQr491Nky50-997_61G2rdp3Jus48zqqkBdfrdE-SnLAfhBy73qXJdtnZM-FH3SpofK8rqd7t_BRG06asemS548gEeMaEMnyRag2OdgAjofsJjgsVjxAsxAjH12VFAimKI-X8e-N4w:1kcBXH:XYWMLKZ09M6p1aSYFQImHK2I4alHLgzsyMsmlwRMcL8','2020-11-23 18:04:59.037809'),('e3mj2cj79g7uzafxqsu1lk14po4976dw','.eJxVjEEOwiAQRe_C2hCmUBhcuu8ZmoEZbNWUpLQr491Nky50-997_61G2rdp3Jus48zqqkBdfrdE-SnLAfhBy73qXJdtnZM-FH3SpofK8rqd7t_BRG06asemS548gEeMaEMnyRag2OdgAjofsJjgsVjxAsxAjH12VFAimKI-X8e-N4w:1kYoBg:QbNIf4IK6jknLk9nkrpeZjzlOfSLp55bKF9xRaW4J7Y','2020-11-14 10:32:44.743877'),('e7w6nd36dv33txn8n2p8dnom2yklho9y','.eJxVjEEOwiAQRe_C2hCmUBhcuu8ZmoEZbNWUpLQr491Nky50-997_61G2rdp3Jus48zqqkBdfrdE-SnLAfhBy73qXJdtnZM-FH3SpofK8rqd7t_BRG06asemS548gEeMaEMnyRag2OdgAjofsJjgsVjxAsxAjH12VFAimKI-X8e-N4w:1kXehc:a2EnhG0aAFRSTJHdhEWKwkFUhlkr7ooyrZ1S44ZxuiU','2020-11-11 06:12:56.723109'),('eefq4ypct16rzr48mfj1d27b02q9jsc9','.eJxVjEEOwiAQRe_C2hCmUBhcuu8ZmoEZbNWUpLQr491Nky50-997_61G2rdp3Jus48zqqkBdfrdE-SnLAfhBy73qXJdtnZM-FH3SpofK8rqd7t_BRG06asemS548gEeMaEMnyRag2OdgAjofsJjgsVjxAsxAjH12VFAimKI-X8e-N4w:1kV7Bu:VVPcIQ42CNQGkyi97gPKBEfjPYoomALCqcM_infReFY','2020-11-04 06:01:42.286317'),('f5gegbefxvvorv9vq3zb57ctseds7omn','.eJxVjMsOwiAUBf-FtSHlooW6dN9vIPcBUjWQlHZl_HfbpAvdnpk5bxVwXXJYW5zDJOqqQJ1-N0J-xrIDeWC5V821LPNEelf0QZseq8TX7XD_DjK2vNWWsE_AySBbIuF4cakffDLgrAfpiA3wGQG9S2A6YzwnGWijFn0EVp8vCVA4fA:1kg8pz:SCZmdsdTDcrRGNH7MncOpuG0RchNiUN3f5vquZOnRTo','2020-12-04 16:00:39.169419'),('foerz830sn9fuhove14q7ki51j1dfh79','.eJxVjEEOwiAQRe_C2hCgIIxL9z0DYWZAqoYmpV0Z765NutDtf-_9l4hpW2vcel7ixOIitDj9bpjokdsO-J7abZY0t3WZUO6KPGiX48z5eT3cv4Oaev3WAwFT4aC4DBbBk1XFZR2c92DAZQAuRaFl1IWMdZotQTKYz9pDYBTvD_v3OIA:1kSlLX:bIyePLwp8NLSS4ErWkD85bgtYpZDP0QrJf5xrwK3dgY','2020-10-28 18:17:55.635409'),('fpqulmexlin6lsfmumwy64tvnkgmqco6','.eJxVjEEOwiAQRe_C2hCmUBhcuu8ZmoEZbNWUpLQr491Nky50-997_61G2rdp3Jus48zqqkBdfrdE-SnLAfhBy73qXJdtnZM-FH3SpofK8rqd7t_BRG06asemS548gEeMaEMnyRag2OdgAjofsJjgsVjxAsxAjH12VFAimKI-X8e-N4w:1kWKos:eE3rdW9oOVdPcmWZp2cMAJgi5nZVLt9MTm2S640Pr1Q','2020-11-07 14:46:58.064193'),('gilnonhmwarbs1lhy6giyo5ng0fzpo4e','.eJxVjEEOwiAQRe_C2hCmUBhcuu8ZmoEZbNWUpLQr491Nky50-997_61G2rdp3Jus48zqqkBdfrdE-SnLAfhBy73qXJdtnZM-FH3SpofK8rqd7t_BRG06asemS548gEeMaEMnyRag2OdgAjofsJjgsVjxAsxAjH12VFAimKI-X8e-N4w:1kXcxe:5_H0A9yaik14cOwPw1ft4VYd8zdi_MxhPb6gK9bs4Sk','2020-11-11 04:21:22.336357'),('gndb2zcm8xiqjpqkp2h5oeb34tzr863n','.eJxVjEEOwiAQRe_C2hCmUBhcuu8ZmoEZbNWUpLQr491Nky50-997_61G2rdp3Jus48zqqkBdfrdE-SnLAfhBy73qXJdtnZM-FH3SpofK8rqd7t_BRG06asemS548gEeMaEMnyRag2OdgAjofsJjgsVjxAsxAjH12VFAimKI-X8e-N4w:1kZjpF:Cqo-1y3RUlvWgtCysE9Fma_T-mirRApa7hq3-tj31ag','2020-11-17 00:05:25.257628'),('gp933u1xyk9hkzk9vh2ap032i161kw5f','.eJxVjMsOwiAUBf-FtSHlooW6dN9vIPcBUjWQlHZl_HfbpAvdnpk5bxVwXXJYW5zDJOqqQJ1-N0J-xrIDeWC5V821LPNEelf0QZseq8TX7XD_DjK2vNWWsE_AySBbIuF4cakffDLgrAfpiA3wGQG9S2A6YzwnGWijFn0EVp8vCVA4fA:1kb58k:a2Uwp-3jr5MO2pkKXPnApoeqbnqxRIVA8RTmDjaxMxk','2020-11-20 17:03:06.141079'),('i1g2vapo3xkszhrs8s4jnxm3zjqxvrwn','.eJxVjEEOwiAQRe_C2hCmUBhcuu8ZmoEZbNWUpLQr491Nky50-997_61G2rdp3Jus48zqqkBdfrdE-SnLAfhBy73qXJdtnZM-FH3SpofK8rqd7t_BRG06asemS548gEeMaEMnyRag2OdgAjofsJjgsVjxAsxAjH12VFAimKI-X8e-N4w:1kbhd5:sxH-dY3fGxaQQqXJEUwWxz4f7z-uC1nRMGOxWH1cW6U','2020-11-22 10:08:59.849102'),('i5enocqkm56ne0xhvif7hv1u2fjjztm6','.eJxVjEEOwiAQRe_C2hCmUBhcuu8ZmoEZbNWUpLQr491Nky50-997_61G2rdp3Jus48zqqkBdfrdE-SnLAfhBy73qXJdtnZM-FH3SpofK8rqd7t_BRG06asemS548gEeMaEMnyRag2OdgAjofsJjgsVjxAsxAjH12VFAimKI-X8e-N4w:1kZXXt:BzchisWLwUouPvrey81QulHVALHD0yN7EmXMqpxf6r4','2020-11-16 10:58:41.397342'),('ik8hyf5pv49swfyx1eik8wpbmo46tu81','.eJxVjMsOwiAUBf-FtSHlooW6dN9vIPcBUjWQlHZl_HfbpAvdnpk5bxVwXXJYW5zDJOqqQJ1-N0J-xrIDeWC5V821LPNEelf0QZseq8TX7XD_DjK2vNWWsE_AySBbIuF4cakffDLgrAfpiA3wGQG9S2A6YzwnGWijFn0EVp8vCVA4fA:1kXeGP:R-a-h0Hv0pyxwCaVBRDoohYD4vt6r5o5Jogc-WlSb2g','2020-11-11 05:44:49.955192'),('j0zgxjam64xh8oy9yca4n08dmt64966c','.eJxVjEEOwiAQRe_C2hCmUBhcuu8ZmoEZbNWUpLQr491Nky50-997_61G2rdp3Jus48zqqkBdfrdE-SnLAfhBy73qXJdtnZM-FH3SpofK8rqd7t_BRG06asemS548gEeMaEMnyRag2OdgAjofsJjgsVjxAsxAjH12VFAimKI-X8e-N4w:1kgC4i:i2eRAEoQJLVLwoR-zho7wUdLQ8e4IUpVkte0UU3CCD4','2020-12-04 19:28:04.576405'),('jfgk93frog8ojn9ag65l2y4u3bmeh01t','.eJxVjEEOwiAQRe_C2hCmUBhcuu8ZmoEZbNWUpLQr491Nky50-997_61G2rdp3Jus48zqqkBdfrdE-SnLAfhBy73qXJdtnZM-FH3SpofK8rqd7t_BRG06asemS548gEeMaEMnyRag2OdgAjofsJjgsVjxAsxAjH12VFAimKI-X8e-N4w:1kYCRs:eh5Djf-HNx_d9Ufw5JIRPZfa78q23WtLIrTZbRL87Wc','2020-11-12 18:14:56.701363'),('jgwu0q8363nl39mxn6l3p8irvix1o47l','.eJxVjEEOwiAQRe_C2hCmUBhcuu8ZmoEZbNWUpLQr491Nky50-997_61G2rdp3Jus48zqqkBdfrdE-SnLAfhBy73qXJdtnZM-FH3SpofK8rqd7t_BRG06asemS548gEeMaEMnyRag2OdgAjofsJjgsVjxAsxAjH12VFAimKI-X8e-N4w:1kXc2W:Ny0SsMPX895NRmvSmOl6H7Ncv3nqKT73XiEfMSPvQZE','2020-11-11 03:22:20.207117'),('k6bbdpzt5t3mdgg8eelri8q0f7ikik1b','.eJxVjEEOwiAQRe_C2hCmUBhcuu8ZmoEZbNWUpLQr491Nky50-997_61G2rdp3Jus48zqqkBdfrdE-SnLAfhBy73qXJdtnZM-FH3SpofK8rqd7t_BRG06asemS548gEeMaEMnyRag2OdgAjofsJjgsVjxAsxAjH12VFAimKI-X8e-N4w:1kZBIy:8jk2XT4E-JPE9cm8r_cJOkVOb00C0G_Si01Egoj7N2U','2020-11-15 11:13:48.111779'),('k8k2nu5aaft4t8cuf9hd184sx0fs7t61','.eJxVjEEOwiAQRe_C2hCmUBhcuu8ZmoEZbNWUpLQr491Nky50-997_61G2rdp3Jus48zqqkBdfrdE-SnLAfhBy73qXJdtnZM-FH3SpofK8rqd7t_BRG06asemS548gEeMaEMnyRag2OdgAjofsJjgsVjxAsxAjH12VFAimKI-X8e-N4w:1kUAXD:aFLW4FyBYIHxH_HJtNKD6RHslY3wOW82q28bJFudF2M','2020-11-01 15:23:47.091832'),('kc4c7kwvxylm4l6geqyhpii703hj9ack','.eJxVjEEOwiAQRe_C2hCmUBhcuu8ZmoEZbNWUpLQr491Nky50-997_61G2rdp3Jus48zqqkBdfrdE-SnLAfhBy73qXJdtnZM-FH3SpofK8rqd7t_BRG06asemS548gEeMaEMnyRag2OdgAjofsJjgsVjxAsxAjH12VFAimKI-X8e-N4w:1kX88D:kv-SsTiYiOU5wRwaVNudzSt2v3UhlhyfDbJlOFDcTdI','2020-11-09 19:26:13.089266'),('mefktjfy0vubzlt4jyoomcz56q6bkz9d','.eJxVjEEOwiAQRe_C2hCgIIxL9z0DYWZAqoYmpV0Z765NutDtf-_9l4hpW2vcel7ixOIitDj9bpjokdsO-J7abZY0t3WZUO6KPGiX48z5eT3cv4Oaev3WAwFT4aC4DBbBk1XFZR2c92DAZQAuRaFl1IWMdZotQTKYz9pDYBTvD_v3OIA:1kTSih:6KRYj4jJtLakUEHUIaupFVDdsULnodCcSwwG4F_ngq4','2020-10-30 16:36:43.793776'),('p5btfu5lwhwsqb7xoop0mt072dl4d0ke','.eJxVjEEOwiAQRe_C2hCmUBhcuu8ZmoEZbNWUpLQr491Nky50-997_61G2rdp3Jus48zqqkBdfrdE-SnLAfhBy73qXJdtnZM-FH3SpofK8rqd7t_BRG06asemS548gEeMaEMnyRag2OdgAjofsJjgsVjxAsxAjH12VFAimKI-X8e-N4w:1kdHaj:UxgBK6hVYfnBxqMsyu3F4o9EwVDy64sTQJsYQzYxRrY','2020-11-26 18:45:05.034446'),('pss4qlobg3d6z4ovkrttsg2cj484av2z','.eJxVjEEOwiAQRe_C2hCgIIxL9z0DYWZAqoYmpV0Z765NutDtf-_9l4hpW2vcel7ixOIitDj9bpjokdsO-J7abZY0t3WZUO6KPGiX48z5eT3cv4Oaev3WAwFT4aC4DBbBk1XFZR2c92DAZQAuRaFl1IWMdZotQTKYz9pDYBTvD_v3OIA:1kTQdf:oWZnFRbhbpp_xlVOzkxMMKK5lxBPcPFs4qwHjFrp5Tc','2020-10-30 14:23:23.633584'),('q0ifmjkdcsxtb4t6n8l1k25py6p4i10a','.eJxVjMsOwiAUBf-FtSHlooW6dN9vIPcBUjWQlHZl_HfbpAvdnpk5bxVwXXJYW5zDJOqqQJ1-N0J-xrIDeWC5V821LPNEelf0QZseq8TX7XD_DjK2vNWWsE_AySBbIuF4cakffDLgrAfpiA3wGQG9S2A6YzwnGWijFn0EVp8vCVA4fA:1ke2IV:mGcUF6GDz0nww2jDAWZI4eG1iH29IC4Qir_Gl0m0d2Y','2020-11-28 20:37:23.895923'),('qwh7s05ic26gnj9442zcc7qcj8j6986n','.eJxVjDsOwjAQBe_iGlmON_5R0nMGa-1d4wBypDipEHeHSCmgfTPzXiLitta4dV7iROIstDj9bgnzg9sO6I7tNss8t3WZktwVedAurzPx83K4fwcVe_3WjCUpD2bgkJX1OhgawY6YmbUCIF8sWe-A2LBxpDUVRUNJQMq7kIx4fwDpHjgP:1kTSAt:v00VNA3Lqsw4lzJpdZCZ8WDmp5IBJeg6zVjIHoRAX2A','2020-10-30 16:01:47.603065'),('r3cbkxpnyljkyujvtlp38w5nkqx7klvp','.eJxVjMsOwiAUBf-FtSHlooW6dN9vIPcBUjWQlHZl_HfbpAvdnpk5bxVwXXJYW5zDJOqqQJ1-N0J-xrIDeWC5V821LPNEelf0QZseq8TX7XD_DjK2vNWWsE_AySBbIuF4cakffDLgrAfpiA3wGQG9S2A6YzwnGWijFn0EVp8vCVA4fA:1keMne:JKLTJ7xic4X5nMOIIVOatCezgExBo4izWIsn57xMAnk','2020-11-29 18:30:54.574643'),('r4qs2pxdo28pu4x97m14y1swvmzh45zw','.eJxVjEEOwiAQRe_C2hCgIIxL9z0DYWZAqoYmpV0Z765NutDtf-_9l4hpW2vcel7ixOIitDj9bpjokdsO-J7abZY0t3WZUO6KPGiX48z5eT3cv4Oaev3WAwFT4aC4DBbBk1XFZR2c92DAZQAuRaFl1IWMdZotQTKYz9pDYBTvD_v3OIA:1kSllx:mcx507VeqMwftJDvLl1JlVNwetKZ5uxVPPHiDjBhmuA','2020-10-28 18:45:13.811483'),('rd1c9csgs9nrr7uk9vz9xsn6e8e1fzn9','.eJxVjEEOwiAQRe_C2hCmUBhcuu8ZmoEZbNWUpLQr491Nky50-997_61G2rdp3Jus48zqqkBdfrdE-SnLAfhBy73qXJdtnZM-FH3SpofK8rqd7t_BRG06asemS548gEeMaEMnyRag2OdgAjofsJjgsVjxAsxAjH12VFAimKI-X8e-N4w:1kfwNb:TRCMKiDW2ux6r7PWQIsp9xwtdni9IIOsoUQ78V9DR78','2020-12-04 02:42:31.976637'),('rorebumv1kz09e3tz2w58xo435gj5icf','.eJxVjEEOwiAQRe_C2hCmUBhcuu8ZmoEZbNWUpLQr491Nky50-997_61G2rdp3Jus48zqqkBdfrdE-SnLAfhBy73qXJdtnZM-FH3SpofK8rqd7t_BRG06asemS548gEeMaEMnyRag2OdgAjofsJjgsVjxAsxAjH12VFAimKI-X8e-N4w:1kf3wL:o4YAKnejL54RBnmpbnffY_K4m2Yxh2ThkFzu1CkHcx8','2020-12-01 16:34:45.840937'),('rw0iso3uzqn4k9cmossngf5yzf7cwwky','.eJxVjDsOwjAQBe_iGlmON_5R0nMGa-1d4wBypDipEHeHSCmgfTPzXiLitta4dV7iROIstDj9bgnzg9sO6I7tNss8t3WZktwVedAurzPx83K4fwcVe_3WjCUpD2bgkJX1OhgawY6YmbUCIF8sWe-A2LBxpDUVRUNJQMq7kIx4fwDpHjgP:1kTQa7:ynBDYLWtXbD5ocDoW2nNnp9OI9pjP_IOpcO38mAURL8','2020-10-30 14:19:43.249241'),('s66tur0zccoy6wglhyywtkzii0y3o6cu','.eJxVjEEOwiAQRe_C2hCgIIxL9z0DYWZAqoYmpV0Z765NutDtf-_9l4hpW2vcel7ixOIitDj9bpjokdsO-J7abZY0t3WZUO6KPGiX48z5eT3cv4Oaev3WAwFT4aC4DBbBk1XFZR2c92DAZQAuRaFl1IWMdZotQTKYz9pDYBTvD_v3OIA:1kTSS9:AOe8mHCdkQ5RKfV4pHztg-trEZlClt8U90otqwpZah4','2020-10-30 16:19:37.107821'),('s7voufeqra5mcw72tdyo3r00z2nn79qm','.eJxVjEEOwiAQRe_C2hCmUBhcuu8ZmoEZbNWUpLQr491Nky50-997_61G2rdp3Jus48zqqkBdfrdE-SnLAfhBy73qXJdtnZM-FH3SpofK8rqd7t_BRG06asemS548gEeMaEMnyRag2OdgAjofsJjgsVjxAsxAjH12VFAimKI-X8e-N4w:1kaow5:F-Y9J0eC97g5hkYr5uDrGvTGpDDNKvuIp9-VZo6ThNQ','2020-11-19 23:44:57.448076'),('snsuqz8pigg6s6pbico2c220h6a68btd','.eJxVjEEOwiAQRe_C2hCmUBhcuu8ZmoEZbNWUpLQr491Nky50-997_61G2rdp3Jus48zqqkBdfrdE-SnLAfhBy73qXJdtnZM-FH3SpofK8rqd7t_BRG06asemS548gEeMaEMnyRag2OdgAjofsJjgsVjxAsxAjH12VFAimKI-X8e-N4w:1kdH58:JXzz7W6gO0GAbbaZ_edFRX8HNB5dHEKFyiNNGAi-zSI','2020-11-26 18:12:26.934497'),('t047h14i3p1a6zg9a5bhm8x5xshvfe4o','.eJyNVW1z2jgQ_is-femHZhxsroHQ6VzBQJsZaClOm0tJRiPLMlZiW64kt8dl8t-7tjF-gfaOD2B2n13t7vNo_YQwyXSIM8Uk5j4aIRudNW0eoY8syR3-A0m2wqQi0ZJ7Zg4x915lLoXPoske20oQEhVCdN8jF4FNA4vQvuf5lL0aBBeXw8CyB_2h7fc8atn0T2KT4SCwrZ5lDWngX3rg7ZMhsykkVd8irEQmKUOjJ0QlI5r52NtB9ocUnqO3sUoZ1TKLoUqTJxATC58H_D9hmiUk0WhkVY-YQkMQ4c5t2764fAWYVArKlMIJicGTZFF0AJdVYUAEPOo6NZFbprvOGMYYVn92jMjqWVHJU4japQcsV5hQzb-DISCRYhBNaMHWPqQ8HphJoC8hW8FHzmb9e2colO6YUiG7poLOMhodRojdT4uF2PIEW6gOJkr9EDJXTfqvth4HHhv0azfk-c6gYTT76pRlmbECdk0lYsaAlLjG-kQTjyhWoPdNoG5XXCRYgSqTLcCm66svs_Wbp4_TiWNMJYxNGtbACIQ0oFbDLQ5_fu3O1jnsxcuympcvXk_H1-PJ2J2BrToVrJ-vpmDIe89bB8PqJjcYhx4Pxcgs6g72h_IjnMmoY4ZLkgoO2jh2xUyHostsXk4lspJbNJ3ksi2ldZr4I2dLuKWzJB7VqUraG4Ym6TSlIYsxSfnbNCJJkEV7rqrgmvb3ZCJEzK0_am_FequAmt5TRbd4rTOVg0Y3Ln63wO7n5XK8vsXjxaJG1HNHodapGp2fK01ApVuzUfn5e2h_nPLyd3WFXQ37YS5Bg0TF__x1404bOdukNcqpKENOBPd4Ch3dcB0Wl-LMmGTRo1u0sBDErx3XkiQqYG04as2lw_jfy7wYEossaa8Hn3kcRiaZzw9XVugQeIMxgg2m2Blvvkm_ZUzmO9GdLWbOtbFxRJySZIcdWHz3Z4axGVNaHPUhiz0mwbRZ5StMY4clujBUH4hVDXOOewD27s820KUPreMVkTrZO8tH_MtkKya58HPonCtKInwLUy0Am4WDx0X_B_zm3cG0t8zXH5fG5rBZ7s2N7wn4dlZOIZcsjoncjaPo_lguoNFc_W4pFfT8m7fB8aZrSv7Exvzl5WltDzS_tXt2z5gLyShRjVV3QtKzNLZ6Zn6HSUKineZU_R9Z55lQ9dLJT-uoCi2vp6grK3TLFDqhK_R0h0qeSt7u0Mi4Q9Ydej56ZaJV-bePnn8CfBL3CA:1kYyO8:BugWM2KVo2V39kCmkVTd9-_bT0LksC0LCssq2AzYQ2Y','2020-11-14 21:26:16.714317'),('v9ko1y6xrbsim5tppnm67pzkgpblv2z0','.eJxVjEEOwiAQRe_C2hCmUBhcuu8ZmoEZbNWUpLQr491Nky50-997_61G2rdp3Jus48zqqkBdfrdE-SnLAfhBy73qXJdtnZM-FH3SpofK8rqd7t_BRG06asemS548gEeMaEMnyRag2OdgAjofsJjgsVjxAsxAjH12VFAimKI-X8e-N4w:1kZuX7:FtDjYIRSzybe2Gf3xiw0J6yJUHRFrp_NCTTkjTe8wIo','2020-11-17 11:31:25.485022'),('vtuca8n5tf97tcqw41wt39pzmczc6gnb','.eJxVjEEOwiAQRe_C2hCmUBhcuu8ZmoEZbNWUpLQr491Nky50-997_61G2rdp3Jus48zqqkBdfrdE-SnLAfhBy73qXJdtnZM-FH3SpofK8rqd7t_BRG06asemS548gEeMaEMnyRag2OdgAjofsJjgsVjxAsxAjH12VFAimKI-X8e-N4w:1kdJ8w:ssqRg-qOpNxdbP1U4t4DNLA5WXkX_X3Ylp79Tisf30w','2020-11-26 20:24:30.823795'),('wqji87607bdc4znpzjec3ai4vv6kp107','.eJxVjEEOwiAQRe_C2hCmUBhcuu8ZmoEZbNWUpLQr491Nky50-997_61G2rdp3Jus48zqqkBdfrdE-SnLAfhBy73qXJdtnZM-FH3SpofK8rqd7t_BRG06asemS548gEeMaEMnyRag2OdgAjofsJjgsVjxAsxAjH12VFAimKI-X8e-N4w:1kepUL:T_JZ9xFjPQtD9daLRd2S967nABY-Pc1aO8EW3TU7E44','2020-12-01 01:08:53.633620'),('x3e7jgsqhtxjxn4x9xomtm5woug3i4q2','.eJxVjEEOwiAQRe_C2hCmUBhcuu8ZmoEZbNWUpLQr491Nky50-997_61G2rdp3Jus48zqqkBdfrdE-SnLAfhBy73qXJdtnZM-FH3SpofK8rqd7t_BRG06asemS548gEeMaEMnyRag2OdgAjofsJjgsVjxAsxAjH12VFAimKI-X8e-N4w:1kdq2d:cyt6C6iC6GT2eZTwkbZ8ecOBCnah5xCqQl_huoqKs2E','2020-11-28 07:32:11.055847'),('xg7ctsrfede9h57ibspqtu09wvywszpo','.eJxVjMsOwiAUBf-FtSHlooW6dN9vIPcBUjWQlHZl_HfbpAvdnpk5bxVwXXJYW5zDJOqqQJ1-N0J-xrIDeWC5V821LPNEelf0QZseq8TX7XD_DjK2vNWWsE_AySBbIuF4cakffDLgrAfpiA3wGQG9S2A6YzwnGWijFn0EVp8vCVA4fA:1kXU5Y:Pf5_lQrsuEEPTVfY4Q-oz6dXbHNlnv5kE5DKG5JX8uo','2020-11-10 18:52:56.813122'),('xt2r8lnxttdub680hxt6ysexau6ttwh4','.eJxVjMsOwiAUBf-FtSHlooW6dN9vIPcBUjWQlHZl_HfbpAvdnpk5bxVwXXJYW5zDJOqqQJ1-N0J-xrIDeWC5V821LPNEelf0QZseq8TX7XD_DjK2vNWWsE_AySBbIuF4cakffDLgrAfpiA3wGQG9S2A6YzwnGWijFn0EVp8vCVA4fA:1kdsH1:s-aZuRYSK9MNkZms9_0yJjTfXSO3jJFTNLM7vlTDH8c','2020-11-28 09:55:11.810330'),('yhyreciyhhnt941pvmupuwxbkzzc16bo','.eJxVjMsOwiAUBf-FtSHlooW6dN9vIPcBUjWQlHZl_HfbpAvdnpk5bxVwXXJYW5zDJOqqQJ1-N0J-xrIDeWC5V821LPNEelf0QZseq8TX7XD_DjK2vNWWsE_AySBbIuF4cakffDLgrAfpiA3wGQG9S2A6YzwnGWijFn0EVp8vCVA4fA:1ke1rm:h81WjXDhC6abbdnjJxBSfUVwaMPwmu7LWTzsrQExT5I','2020-11-28 20:09:46.413849'),('yr85zs5orygkxkpd95b9av1rpnoqxrnw','.eJxVjEEOwiAQRe_C2hCmUBhcuu8ZmoEZbNWUpLQr491Nky50-997_61G2rdp3Jus48zqqkBdfrdE-SnLAfhBy73qXJdtnZM-FH3SpofK8rqd7t_BRG06asemS548gEeMaEMnyRag2OdgAjofsJjgsVjxAsxAjH12VFAimKI-X8e-N4w:1kX490:qjqSlJp3CrY_PYMOC3_yAGMbgoPLSoGzKU0sLhQK-40','2020-11-09 15:10:46.024535'),('yv4vfoid5leuzigbrpwgrobuu438ild0','.eJxVjEEOwiAQRe_C2hCmUBhcuu8ZmoEZbNWUpLQr491Nky50-997_61G2rdp3Jus48zqqkBdfrdE-SnLAfhBy73qXJdtnZM-FH3SpofK8rqd7t_BRG06asemS548gEeMaEMnyRag2OdgAjofsJjgsVjxAsxAjH12VFAimKI-X8e-N4w:1kWoBS:TSNsdw4GY6dpCeafgoIbcOc8lqt2XsTzPfJU3Bno0mA','2020-11-08 22:08:14.280316'),('zd1kuaiu2epax5spkyr51id1o6ek4ub0','.eJxVjEEOwiAQRe_C2hCmUBhcuu8ZmoEZbNWUpLQr491Nky50-997_61G2rdp3Jus48zqqkBdfrdE-SnLAfhBy73qXJdtnZM-FH3SpofK8rqd7t_BRG06asemS548gEeMaEMnyRag2OdgAjofsJjgsVjxAsxAjH12VFAimKI-X8e-N4w:1keiK7:IdQvLXn8Ipr2B47Xuk9M5imVBBOP63vH7OdBFdhP6r4','2020-11-30 17:29:51.699333'),('zsoitnna2bl0hhp28xx4yhepg30o1h6u','.eJxVjEEOwiAQRe_C2hCmUBhcuu8ZmoEZbNWUpLQr491Nky50-997_61G2rdp3Jus48zqqkBdfrdE-SnLAfhBy73qXJdtnZM-FH3SpofK8rqd7t_BRG06asemS548gEeMaEMnyRag2OdgAjofsJjgsVjxAsxAjH12VFAimKI-X8e-N4w:1kYvSJ:WTcaatytDMuIDxB4kU3Guau5GezAavXpM5EGTv8UkY8','2020-11-14 18:18:23.816147');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_data_table`
--

DROP TABLE IF EXISTS `job_data_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_data_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `modified_by` varchar(100) NOT NULL,
  `job_name` varchar(255) NOT NULL,
  `minute` int(11) NOT NULL,
  `hour` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `day_of_week` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `js_code` longtext NOT NULL,
  `tenant_source_details_id` int(11) DEFAULT NULL,
  `tenant_target_details_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `job_data_table_tenant_source_detail_d4573cb6_fk_tenant_da` (`tenant_source_details_id`),
  KEY `job_data_table_tenant_target_detail_df7d2211_fk_tenant_da` (`tenant_target_details_id`),
  KEY `job_data_table_user_id_e1e8e545_fk_users_id` (`user_id`),
  CONSTRAINT `job_data_table_tenant_source_detail_d4573cb6_fk_tenant_da` FOREIGN KEY (`tenant_source_details_id`) REFERENCES `tenant_data_source_details` (`id`),
  CONSTRAINT `job_data_table_tenant_target_detail_df7d2211_fk_tenant_da` FOREIGN KEY (`tenant_target_details_id`) REFERENCES `tenant_data_target_details` (`id`),
  CONSTRAINT `job_data_table_user_id_e1e8e545_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_data_table`
--

LOCK TABLES `job_data_table` WRITE;
/*!40000 ALTER TABLE `job_data_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_data_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `process_schedule`
--

DROP TABLE IF EXISTS `process_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `process_schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `modified_by` varchar(100) NOT NULL,
  `data_batch_size` int(11) NOT NULL,
  `schedule_day` int(11) NOT NULL,
  `schedule_time` time(6) NOT NULL,
  `time_zone` varchar(20) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `mac_id` varchar(40) DEFAULT NULL,
  `process_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `process_schedule_process_id_26cc5f3f_fk_tenant_pr` (`process_id`),
  CONSTRAINT `process_schedule_process_id_26cc5f3f_fk_tenant_pr` FOREIGN KEY (`process_id`) REFERENCES `tenant_processes_master` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `process_schedule`
--

LOCK TABLES `process_schedule` WRITE;
/*!40000 ALTER TABLE `process_schedule` DISABLE KEYS */;
INSERT INTO `process_schedule` VALUES (2,'2020-10-18 15:11:42.497885','ADMIN','2020-10-18 15:11:42.497909','ADMIN',20000,1,'06:00:00.000000','PST',1,NULL,2);
/*!40000 ALTER TABLE `process_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `process_schedule_detail`
--

DROP TABLE IF EXISTS `process_schedule_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `process_schedule_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `modified_by` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `start_time` datetime(6) NOT NULL,
  `elapsed_time` time(6) NOT NULL,
  `error_message` varchar(200) DEFAULT NULL,
  `mac_id` varchar(40) DEFAULT NULL,
  `process_id` int(11) NOT NULL,
  `process_schedule_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tenant_processschedu_process_id_94d081f3_fk_tenant_pr` (`process_id`),
  KEY `tenant_processschedu_process_schedule_id_427b095d_fk_process_s` (`process_schedule_id`),
  CONSTRAINT `tenant_processschedu_process_id_94d081f3_fk_tenant_pr` FOREIGN KEY (`process_id`) REFERENCES `tenant_processes_master` (`id`),
  CONSTRAINT `tenant_processschedu_process_schedule_id_427b095d_fk_process_s` FOREIGN KEY (`process_schedule_id`) REFERENCES `process_schedule` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `process_schedule_detail`
--

LOCK TABLES `process_schedule_detail` WRITE;
/*!40000 ALTER TABLE `process_schedule_detail` DISABLE KEYS */;
INSERT INTO `process_schedule_detail` VALUES (2,'2020-10-18 15:13:31.624431','ADMIN','2020-10-18 15:13:31.624456','ADMIN',1,'2020-10-18 15:13:31.624480','10:36:00.000000',NULL,NULL,2,2);
/*!40000 ALTER TABLE `process_schedule_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `modified_by` varchar(100) NOT NULL,
  `role_name` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `mac_id` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'2020-10-18 14:27:21.526335','ADMIN','2020-10-18 14:27:21.526362','ADMIN','Super-Admin',1,'NA'),(2,'2020-10-18 14:31:40.681828','ADMIN','2020-10-18 14:31:40.681924','ADMIN','Administrator',1,'NA'),(3,'2020-10-18 14:31:57.469261','ADMIN','2020-10-18 14:31:57.469286','ADMIN','User',1,'NA');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_details`
--

DROP TABLE IF EXISTS `roles_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `modified_by` varchar(100) NOT NULL,
  `role_id` int(11) NOT NULL,
  `mac_id` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `roles_details_role_id_1269ba34_fk_roles_id` (`role_id`),
  CONSTRAINT `roles_details_role_id_1269ba34_fk_roles_id` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_details`
--

LOCK TABLES `roles_details` WRITE;
/*!40000 ALTER TABLE `roles_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenant_contact_details`
--

DROP TABLE IF EXISTS `tenant_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tenant_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `modified_by` varchar(100) NOT NULL,
  `contact_name` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `contact_phone1` varchar(128) NOT NULL,
  `contact_phone2` varchar(128) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `tenant_id` int(11) NOT NULL,
  `mac_id` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tenant_contact_details_tenant_id_f51d7eb1_fk_tenants_id` (`tenant_id`),
  CONSTRAINT `tenant_contact_details_tenant_id_f51d7eb1_fk_tenants_id` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenant_contact_details`
--

LOCK TABLES `tenant_contact_details` WRITE;
/*!40000 ALTER TABLE `tenant_contact_details` DISABLE KEYS */;
INSERT INTO `tenant_contact_details` VALUES (1,'2020-10-18 13:56:37.702122','ADMIN','2020-10-18 13:56:37.702147','ADMIN','Michael Phelps','micp@cpchem.com','+12236759086','',1,1,NULL),(2,'2020-10-18 13:57:21.997272','ADMIN','2020-10-18 13:57:21.997302','ADMIN','Robert Sanders','robertS@peets.com','+18008131212','',1,2,NULL),(3,'2020-10-18 13:57:51.968923','ADMIN','2020-10-18 13:57:51.968951','ADMIN','John Gilmore','John@Credosemi.com','+18322314100','',1,3,NULL),(4,'2020-10-18 13:58:22.355587','ADMIN','2020-10-18 13:58:22.355613','ADMIN','Nicholas Burkhardt','NickB@CIS.com','+15182663460','',1,4,NULL);
/*!40000 ALTER TABLE `tenant_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenant_data_source_details`
--

DROP TABLE IF EXISTS `tenant_data_source_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tenant_data_source_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `modified_by` varchar(100) NOT NULL,
  `host` varchar(255) NOT NULL,
  `port` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `server` varchar(255) NOT NULL,
  `WSDL` varchar(255) NOT NULL,
  `connection_string` varchar(255) NOT NULL,
  `rule` varchar(255) NOT NULL,
  `endpoint` varchar(255) NOT NULL,
  `database` varchar(255) NOT NULL,
  `method` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `tenant_id` int(11) NOT NULL,
  `tenant_code` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `table` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tenant_data_source_details_tenant_id_cf4cb34b_fk_users_id` (`tenant_id`),
  CONSTRAINT `tenant_data_source_details_tenant_id_cf4cb34b_fk_users_id` FOREIGN KEY (`tenant_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenant_data_source_details`
--

LOCK TABLES `tenant_data_source_details` WRITE;
/*!40000 ALTER TABLE `tenant_data_source_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `tenant_data_source_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenant_data_target_details`
--

DROP TABLE IF EXISTS `tenant_data_target_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tenant_data_target_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `modified_by` varchar(100) NOT NULL,
  `host` varchar(255) NOT NULL,
  `port` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `server` varchar(255) NOT NULL,
  `WSDL` varchar(255) NOT NULL,
  `connection_string` varchar(255) NOT NULL,
  `rule` varchar(255) NOT NULL,
  `endpoint` varchar(255) NOT NULL,
  `database` varchar(255) NOT NULL,
  `method` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `tenant_id` int(11) NOT NULL,
  `tenant_code` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `table` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tenant_data_target_details_tenant_id_9ff35a6b_fk_users_id` (`tenant_id`),
  CONSTRAINT `tenant_data_target_details_tenant_id_9ff35a6b_fk_users_id` FOREIGN KEY (`tenant_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenant_data_target_details`
--

LOCK TABLES `tenant_data_target_details` WRITE;
/*!40000 ALTER TABLE `tenant_data_target_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `tenant_data_target_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenant_destination_details`
--

DROP TABLE IF EXISTS `tenant_destination_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tenant_destination_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `modified_by` varchar(100) NOT NULL,
  `column_name` varchar(255) NOT NULL,
  `column_sequence_num` int(11) DEFAULT NULL,
  `column_data_type` varchar(100) DEFAULT NULL,
  `column_length` int(11) DEFAULT NULL,
  `tenant_id` int(11) NOT NULL,
  `tenant_target_details_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tenant_destination_d_tenant_target_detail_ed892bfb_fk_tenant_da` (`tenant_target_details_id`),
  KEY `tenant_destination_details_tenant_id_c0266361_fk_users_id` (`tenant_id`),
  CONSTRAINT `tenant_destination_d_tenant_target_detail_ed892bfb_fk_tenant_da` FOREIGN KEY (`tenant_target_details_id`) REFERENCES `tenant_data_target_details` (`id`),
  CONSTRAINT `tenant_destination_details_tenant_id_c0266361_fk_users_id` FOREIGN KEY (`tenant_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenant_destination_details`
--

LOCK TABLES `tenant_destination_details` WRITE;
/*!40000 ALTER TABLE `tenant_destination_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `tenant_destination_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenant_process_details`
--

DROP TABLE IF EXISTS `tenant_process_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tenant_process_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `modified_by` varchar(100) NOT NULL,
  `process_id` int(11) NOT NULL,
  `tenant_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tenant_process_detai_process_id_dacbaba0_fk_tenant_pr` (`process_id`),
  KEY `tenant_process_details_tenant_id_42a861e4_fk_tenants_id` (`tenant_id`),
  CONSTRAINT `tenant_process_detai_process_id_dacbaba0_fk_tenant_pr` FOREIGN KEY (`process_id`) REFERENCES `tenant_processes_master` (`id`),
  CONSTRAINT `tenant_process_details_tenant_id_42a861e4_fk_tenants_id` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenant_process_details`
--

LOCK TABLES `tenant_process_details` WRITE;
/*!40000 ALTER TABLE `tenant_process_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `tenant_process_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenant_process_log`
--

DROP TABLE IF EXISTS `tenant_process_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tenant_process_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `modified_by` varchar(100) NOT NULL,
  `action_done` varchar(100) NOT NULL,
  `old_value` varchar(100) NOT NULL,
  `new_value` varchar(100) NOT NULL,
  `mac_id` varchar(40) NOT NULL,
  `tenant_process_master_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tenant_process_log_tenant_process_maste_042dce6f_fk_tenant_pr` (`tenant_process_master_id`),
  KEY `tenant_process_log_user_id_28838ba2_fk_users_id` (`user_id`),
  CONSTRAINT `tenant_process_log_tenant_process_maste_042dce6f_fk_tenant_pr` FOREIGN KEY (`tenant_process_master_id`) REFERENCES `tenant_processes_master` (`id`),
  CONSTRAINT `tenant_process_log_user_id_28838ba2_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenant_process_log`
--

LOCK TABLES `tenant_process_log` WRITE;
/*!40000 ALTER TABLE `tenant_process_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `tenant_process_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenant_processes_master`
--

DROP TABLE IF EXISTS `tenant_processes_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tenant_processes_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `modified_by` varchar(100) NOT NULL,
  `process_name` varchar(255) DEFAULT NULL,
  `tenant_id` int(11) NOT NULL,
  `current_date` datetime(6) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `mac_id` varchar(40) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `script_type` longtext,
  `source_connection_string` varchar(400) DEFAULT NULL,
  `source_connector_name` varchar(40) DEFAULT NULL,
  `source_connector_type_id` int(11) DEFAULT NULL,
  `source_data_source_type` varchar(40) DEFAULT NULL,
  `source_database` varchar(140) DEFAULT NULL,
  `source_endpoint_url` varchar(440) DEFAULT NULL,
  `source_host` varchar(450) DEFAULT NULL,
  `source_method` varchar(140) DEFAULT NULL,
  `source_password` varchar(40) DEFAULT NULL,
  `source_port` int(11) DEFAULT NULL,
  `source_rule` varchar(240) DEFAULT NULL,
  `source_server` varchar(140) DEFAULT NULL,
  `source_user_name` varchar(40) DEFAULT NULL,
  `source_wsdl_url` varchar(240) DEFAULT NULL,
  `target_connection_string` varchar(400) DEFAULT NULL,
  `target_connector_name` varchar(40) DEFAULT NULL,
  `target_connector_type_id` int(11) DEFAULT NULL,
  `target_data_source_type` varchar(40) DEFAULT NULL,
  `target_database` varchar(240) DEFAULT NULL,
  `target_endpoint_url` varchar(400) DEFAULT NULL,
  `target_host` varchar(140) DEFAULT NULL,
  `target_method` varchar(400) DEFAULT NULL,
  `target_password` varchar(40) DEFAULT NULL,
  `target_port` int(11) DEFAULT NULL,
  `target_rule` varchar(240) DEFAULT NULL,
  `target_server` varchar(440) DEFAULT NULL,
  `target_user_name` varchar(40) DEFAULT NULL,
  `target_wsdl_url` varchar(400) DEFAULT NULL,
  `tenant_source_profile_id` int(11) DEFAULT NULL,
  `tenant_target_profile_id` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `amount_type` varchar(5) DEFAULT NULL,
  `debit_credit` varchar(5) DEFAULT NULL,
  `other_condition` varchar(3000) DEFAULT NULL,
  `tenant_code` varchar(20) DEFAULT NULL,
  `target_sql_query` longtext,
  `source_sql_query` longtext,
  PRIMARY KEY (`id`),
  KEY `tenant_processes_tenant_id_1833ee68_fk_tenants_id` (`tenant_id`),
  KEY `tenant_processes_mas_source_connector_typ_a88839a7_fk_connector` (`source_connector_type_id`),
  KEY `tenant_processes_mas_target_connector_typ_2d0b950a_fk_connector` (`target_connector_type_id`),
  KEY `tenant_processes_mas_tenant_source_profil_033ec7d2_fk_tenant_so` (`tenant_source_profile_id`),
  KEY `tenant_processes_mas_tenant_target_profil_ae9a72c6_fk_tenant_ta` (`tenant_target_profile_id`),
  CONSTRAINT `tenant_processes_mas_source_connector_typ_a88839a7_fk_connector` FOREIGN KEY (`source_connector_type_id`) REFERENCES `connector_type_master` (`id`),
  CONSTRAINT `tenant_processes_mas_target_connector_typ_2d0b950a_fk_connector` FOREIGN KEY (`target_connector_type_id`) REFERENCES `connector_type_master` (`id`),
  CONSTRAINT `tenant_processes_mas_tenant_source_profil_033ec7d2_fk_tenant_so` FOREIGN KEY (`tenant_source_profile_id`) REFERENCES `tenant_source_profile_details` (`id`),
  CONSTRAINT `tenant_processes_mas_tenant_target_profil_ae9a72c6_fk_tenant_ta` FOREIGN KEY (`tenant_target_profile_id`) REFERENCES `tenant_target_profile_details` (`id`),
  CONSTRAINT `tenant_processes_tenant_id_1833ee68_fk_tenants_id` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenant_processes_master`
--

LOCK TABLES `tenant_processes_master` WRITE;
/*!40000 ALTER TABLE `tenant_processes_master` DISABLE KEYS */;
INSERT INTO `tenant_processes_master` VALUES (2,'2020-10-14 16:34:02.795211','ADMIN','2020-10-27 21:22:37.850981','ADMIN','WS_GL_Summary_Load',3,'2020-10-27 21:22:37.851001',1,NULL,1,'JavaScript',NULL,'NetSuite',3,NULL,NULL,NULL,'jdbc:ns://4993626.connect.api.netsuite.c',NULL,'ksJJs@wo)6',NULL,'Rule1',NULL,'jack@mspectrum.com','http://www.HostAnalytics.com/API/SOAP/StateFree/Common/2009/03/19',NULL,'Host',4,'XML',NULL,'https://epm03.mSpectrum.com',NULL,'Load Data','lsjs#%45',NULL,'WS_GL_Summary_Load',NULL,'abc@xyz.com','https://epm03.mSpectrum.com/?WSDL',2,2,2020,'MTD','Yes','{\'Segment\' :\'TM_1100\'}',NULL,NULL,NULL),(8,'2020-10-28 06:25:28.268439','jane@credo.com','2020-10-28 06:27:54.171526','jane@credo.com','Process2',3,'2020-10-28 06:27:54.171558',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'HaBoomi1!',NULL,'FY2020',NULL,'vecima_api@planful.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'imft.invesco.com',NULL,'HaBoomi1!',1022,NULL,NULL,'vecima_api@planful.com',NULL,NULL,NULL,2020,'MTD','Yes','{\"Segment1\": \"TM_1100\", \"FiscalPeriod\": \"1\"}','SF222754',NULL,NULL),(9,'2020-10-28 06:30:58.164344','jane@credo.com','2020-10-31 11:08:21.608863','jane@credo.com','Process3',3,'2020-10-31 11:08:21.608887',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'HaBoomi1!',NULL,'FY2020 Forecast',NULL,'vecima_api@planful.com','https://epm10.hostanalytics.com/HostApi/HostAPI_StateFree.asmx?wsdl',NULL,NULL,NULL,NULL,NULL,NULL,'imft.invesco.com',NULL,'HaBoomi1!',1022,NULL,NULL,'vecima_api@planful.com',NULL,NULL,NULL,2020,'MTD','Yes','{\"Segment1\": \"TM_1100\", \"FiscalPeriod\": \"1\"}','SF222754',NULL,NULL),(35,'2020-11-01 21:01:10.070205','jpatel@mspectrum.co.in','2020-11-23 08:54:37.816200','Chevron Phillips Chemicals','Process Host to SFTP',1,'2020-11-23 08:54:37.816223',0,NULL,NULL,'',NULL,NULL,4,NULL,NULL,NULL,NULL,NULL,'HaBoomi1!',NULL,'Budget_2020',NULL,'ChevronPhillips_api@planful.com','na03',NULL,NULL,1,NULL,NULL,NULL,'192.64.112.21',NULL,'$fTP20@)',22,NULL,NULL,'sftpuser',NULL,NULL,NULL,2020,'MTD','Yes',NULL,'SF222695','',''),(36,'2020-11-02 10:46:29.739220','jpatel@mspectrum.co.in','2020-11-23 08:09:49.736778','Chevron Phillips Chemicals','Process SQL Host',1,'2020-11-23 08:09:49.736810',0,NULL,NULL,'','None',NULL,2,NULL,'EZconnect',NULL,'None',NULL,'pzt1k7be73',23,'None','EZConnect.mssql.somee.com','mspectrum_SQLLogin_1',NULL,NULL,NULL,4,NULL,NULL,NULL,NULL,NULL,'HaBoomi1!',NULL,'WS_GL_Summary_Load',NULL,'cpchem_api@planful.com','na04',NULL,NULL,NULL,NULL,NULL,NULL,'SF222695','','SELECT [Company_Code]      ,[Account_Number]      ,[Profit_Center]      ,[Cost_Center]      ,[Project]      ,[Trading_Partner]      ,[Partner_Profit_Center]      ,[Period]      ,[Fiscal_Year]      ,[LC_Amount]      ,[GC_Amount]  FROM [EZConnect].[dbo].[CPC_GL_SummaryAll]'),(84,'2020-11-18 13:38:14.778459','jpatel@mspectrum.co.in','2020-11-23 07:23:22.925875','Chevron Phillips Chemicals','SFTP Host Correct',1,'2020-11-23 07:23:22.925921',0,NULL,NULL,'','Input',NULL,1,NULL,'None',NULL,'192.64.112.21',NULL,'$fTP20@)',22,'cpchem.csv','None','sftpuser',NULL,NULL,NULL,4,NULL,NULL,NULL,NULL,NULL,'HaBoomi1!',NULL,'WS_GL_Summary_Load',NULL,'cpchem_api@planful.com','Staging',NULL,NULL,NULL,NULL,NULL,NULL,'SF222695','',''),(89,'2020-11-18 16:17:44.608810','jpatel@mspectrum.co.in','2020-11-20 03:06:55.172785','Chevron Phillips Chemicals','Host SFTP',1,'2020-11-20 03:06:55.172860',0,NULL,NULL,'',NULL,NULL,4,NULL,NULL,NULL,NULL,NULL,'passworfd',NULL,'scenario',NULL,'username','Sandbox',NULL,NULL,1,NULL,NULL,NULL,'192.168.100.2',NULL,'$fTP20@)',22,NULL,NULL,'sftpuser',NULL,NULL,NULL,2920,'MTD','Yes',NULL,'SF222695','',''),(92,'2020-11-18 17:54:14.085267','jpatel@mspectrum.co.in','2020-11-23 11:38:41.334762','Chevron Phillips Chemicals','Process1',1,'2020-11-23 11:38:41.334817',0,NULL,NULL,'','None',NULL,2,NULL,'db name',NULL,'None',NULL,'passwd',22,'None','Server url','useennaem',NULL,NULL,NULL,4,NULL,NULL,NULL,NULL,NULL,'pwd',NULL,'DLR name',NULL,'uname','Staging',NULL,NULL,NULL,NULL,NULL,NULL,'tenant','','sql query'),(96,'2020-11-19 02:01:21.504878','jpatel@mspectrum.co.in','2020-11-23 08:51:28.112669','Chevron Phillips Chemicals','Get User',1,'2020-11-23 08:51:28.112767',0,NULL,NULL,'',NULL,NULL,4,NULL,NULL,NULL,NULL,'Get_Users','HaBoomi1!',NULL,NULL,NULL,'cpchem_api@planful.com','Sandbox',NULL,NULL,1,NULL,NULL,NULL,'192.64.112.21',NULL,'$fTP20@)',22,NULL,NULL,'sftpuser',NULL,NULL,NULL,NULL,NULL,'No',NULL,'SF222695','',''),(100,'2020-11-20 03:05:01.944006','jpatel@mspectrum.co.in','2020-11-23 08:41:51.647318','Chevron Phillips Chemicals','Process134',1,'2020-11-23 08:41:51.647400',0,NULL,NULL,'',NULL,NULL,4,NULL,NULL,NULL,NULL,'Get_Users','HaBoomi1!',NULL,NULL,NULL,'cpchem_api@planful.com','Staging',NULL,NULL,1,NULL,NULL,NULL,'192.64.112.21',NULL,'$fTP20@)',22,NULL,NULL,'sftpuser',NULL,NULL,NULL,NULL,NULL,'No',NULL,'SF222695','',''),(119,'2020-11-27 02:52:29.781820','jpatel@mspectrum.co.in','2020-11-27 17:46:57.198816','Chevron Phillips Chemicals','Inter',1,'2020-11-27 17:46:57.198866',0,NULL,NULL,'','None',NULL,5,NULL,'None',NULL,'None',NULL,'hU6@Ek3m0gM',0,'None','None','hostanalytics',NULL,NULL,NULL,4,NULL,NULL,NULL,NULL,NULL,'lkjlk',NULL,'lkgjlk',NULL,'lkjlkj','na01',NULL,NULL,NULL,NULL,NULL,'\"{\'Intacct UserID\': \'eiyer\', \'Intacct Password\': \'hU6@Ek3m0gM\', \'Intacct Companyid\': \'emsi\', \'Start Date\': \'2020-11-07\', \'End Date\': \'2020-11-18\', \'Dimension\': \'Project, Customer, Vendor, Employee\'}\"','sdfsd','',''),(121,'2020-11-27 11:53:27.714835','jpatel@mspectrum.co.in','2020-11-27 11:54:23.050468','Chevron Phillips Chemicals','TOOLS',1,'2020-11-27 11:54:23.050485',0,NULL,NULL,'',NULL,NULL,4,NULL,NULL,NULL,NULL,'Get_Users','sfsfdfsg',NULL,NULL,NULL,'sdsfs','Sandbox',NULL,NULL,1,NULL,NULL,NULL,'sdfsf',NULL,'ERETETET',45,NULL,NULL,'RERER',NULL,NULL,NULL,NULL,NULL,'Yes',NULL,'sddsfs','',''),(122,'2020-11-27 11:56:20.660666','jpatel@mspectrum.co.in','2020-11-27 17:46:33.989764','Chevron Phillips Chemicals','reddy',1,'2020-11-27 17:46:33.989783',0,NULL,NULL,'','None',NULL,5,NULL,'None',NULL,'None',NULL,'tollls',0,'None','None','blavkl',NULL,NULL,NULL,4,NULL,NULL,NULL,NULL,NULL,'sdffkoklg',NULL,'mobiiil',NULL,'dsfsfsfsf','Sandbox',NULL,NULL,NULL,NULL,NULL,'\"{\'Intacct UserID\': \'iopooo\', \'Intacct Password\': \'dorne\', \'Intacct Companyid\': \'poioop\', \'Start Date\': \'2020-11-19\', \'End Date\': \'2020-11-28\', \'Dimension\': \'Department, Location, Project\'}\"','vopopopq','',''),(123,'2020-11-27 12:41:04.961005','jpatel@mspectrum.co.in','2020-11-27 17:46:17.812033','jpatel@mspectrum.co.in','Process1',1,'2020-11-27 17:46:17.812063',0,NULL,NULL,'',NULL,NULL,5,NULL,NULL,NULL,NULL,'List Account Balances by Dimension','Kethineni89-',NULL,NULL,NULL,'hostanalytics',NULL,NULL,NULL,4,NULL,NULL,NULL,NULL,NULL,'HaBoomi1!',NULL,'WS_GL_SUMMARY_ALL',NULL,'cpchem_api@planful.com','Sandbox',NULL,NULL,NULL,NULL,NULL,'\"{\'Intacct UserID\': \'eiyer\', \'Intacct Password\': \'hU6@Ek3m0gM\', \'Intacct Companyid\': \'emsi\', \'Start Date\': \'2020-04-03\', \'End Date\': \'2020-04-04\', \'Dimension\': \'Department, Location, Project\'}\"','SF222695','','');
/*!40000 ALTER TABLE `tenant_processes_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenant_source_details`
--

DROP TABLE IF EXISTS `tenant_source_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tenant_source_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `modified_by` varchar(100) NOT NULL,
  `column_name` varchar(255) NOT NULL,
  `column_sequence_num` int(11) DEFAULT NULL,
  `column_data_type` varchar(100) DEFAULT NULL,
  `column_length` int(11) DEFAULT NULL,
  `tenant_id` int(11) NOT NULL,
  `tenant_source_details_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tenant_source_detail_tenant_source_detail_5e6a6554_fk_tenant_da` (`tenant_source_details_id`),
  KEY `tenant_source_details_tenant_id_834279cb_fk_users_id` (`tenant_id`),
  CONSTRAINT `tenant_source_detail_tenant_source_detail_5e6a6554_fk_tenant_da` FOREIGN KEY (`tenant_source_details_id`) REFERENCES `tenant_data_source_details` (`id`),
  CONSTRAINT `tenant_source_details_tenant_id_834279cb_fk_users_id` FOREIGN KEY (`tenant_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenant_source_details`
--

LOCK TABLES `tenant_source_details` WRITE;
/*!40000 ALTER TABLE `tenant_source_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `tenant_source_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenant_source_profile_details`
--

DROP TABLE IF EXISTS `tenant_source_profile_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tenant_source_profile_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `modified_by` varchar(100) NOT NULL,
  `profile_type` varchar(10) DEFAULT NULL,
  `profile_name` varchar(40) DEFAULT NULL,
  `column_name` varchar(40) DEFAULT NULL,
  `column_sequence_number` int(11) NOT NULL,
  `column_data_type` varchar(30) DEFAULT NULL,
  `column_length` int(11) NOT NULL,
  `field_separator` varchar(40) DEFAULT NULL,
  `batch_size` int(11) DEFAULT NULL,
  `mac_id` varchar(40) DEFAULT NULL,
  `tenant_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tenant_source_profile_details_tenant_id_9e5ecf75_fk_tenants_id` (`tenant_id`),
  CONSTRAINT `tenant_source_profile_details_tenant_id_9e5ecf75_fk_tenants_id` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenant_source_profile_details`
--

LOCK TABLES `tenant_source_profile_details` WRITE;
/*!40000 ALTER TABLE `tenant_source_profile_details` DISABLE KEYS */;
INSERT INTO `tenant_source_profile_details` VALUES (1,'2020-10-18 14:36:02.960267','ADMIN','2020-10-18 14:36:02.960296','ADMIN','CSV','Contacts','FirstName',1,'string',30,',',NULL,NULL,1),(2,'2020-10-18 14:36:35.624997','ADMIN','2020-10-18 14:36:35.625026','ADMIN','CSV','Contacts','MiddleName',2,'string',30,',',NULL,NULL,1),(3,'2020-10-18 14:37:41.649951','ADMIN','2020-10-18 14:37:41.649982','ADMIN','CSV','Contacts','LastName',3,'string',30,',',NULL,NULL,1),(4,'2020-10-18 14:38:19.617348','ADMIN','2020-10-18 14:38:19.617375','ADMIN','CSV','Contacts','DOB',4,'Date',10,',',NULL,NULL,1),(5,'2020-10-18 14:38:56.038284','ADMIN','2020-10-18 14:38:56.038308','ADMIN','CSV','Contacts','Address1',5,'string',50,',',NULL,NULL,1),(6,'2020-10-18 14:39:40.907843','ADMIN','2020-10-18 14:39:40.907937','ADMIN','CSV','Contacts','Address2',6,'string',50,',',NULL,NULL,1),(7,'2020-10-18 14:40:32.018276','ADMIN','2020-10-18 14:40:32.018301','ADMIN','CSV','Contacts','City',7,'string',30,',',NULL,NULL,1),(8,'2020-10-18 14:41:51.976238','ADMIN','2020-10-18 14:41:51.976262','ADMIN','CSV','Contacts','State',8,'string',30,',',NULL,NULL,1),(9,'2020-10-18 14:42:25.174342','ADMIN','2020-10-18 14:42:25.174368','ADMIN','CSV','Contacts','JoiningDate',9,'Date',10,',',NULL,NULL,1),(10,'2020-10-18 14:42:58.664252','ADMIN','2020-10-18 14:42:58.664278','ADMIN','CSV','Contacts','Department',10,'string',30,',',NULL,NULL,1),(11,'2020-10-18 14:43:39.430762','ADMIN','2020-10-18 14:43:39.430882','ADMIN','XML','NS_Tranx_XML','Account',1,'string',10,',',NULL,NULL,3),(12,'2020-10-18 14:44:17.236405','ADMIN','2020-10-18 14:44:17.236430','ADMIN','XML','NS_Tranx_XML','Company',2,'string',5,',',NULL,NULL,3),(13,'2020-10-18 14:44:49.290973','ADMIN','2020-10-18 14:44:49.290999','ADMIN','XML','NS_Tranx_XML','Department',3,'string',10,',',NULL,NULL,3),(14,'2020-10-18 14:45:36.901255','ADMIN','2020-10-18 14:45:36.901281','ADMIN','XML','NS_Tranx_XML','Amount',4,'float',10,',',NULL,NULL,3);
/*!40000 ALTER TABLE `tenant_source_profile_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenant_subscription_details`
--

DROP TABLE IF EXISTS `tenant_subscription_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tenant_subscription_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `modified_by` varchar(100) NOT NULL,
  `subscription_start_date` datetime(6) NOT NULL,
  `subscription_end_date` datetime(6) NOT NULL,
  `trial_start_date` datetime(6) NOT NULL,
  `trial_end_date` datetime(6) NOT NULL,
  `tenant_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `mac_id` varchar(40) DEFAULT NULL,
  `total_connector_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tenant_subscription_details_tenant_id_302ba16d_fk_tenants_id` (`tenant_id`),
  CONSTRAINT `tenant_subscription_details_tenant_id_302ba16d_fk_tenants_id` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenant_subscription_details`
--

LOCK TABLES `tenant_subscription_details` WRITE;
/*!40000 ALTER TABLE `tenant_subscription_details` DISABLE KEYS */;
INSERT INTO `tenant_subscription_details` VALUES (1,'2020-10-18 14:07:17.370049','ADMIN','2020-10-18 14:07:17.370078','ADMIN','2020-02-10 14:06:30.000000','2021-01-10 14:06:36.000000','2020-02-10 14:06:59.000000','2021-01-10 14:07:08.000000',1,1,NULL,5),(2,'2020-10-18 14:08:08.292918','ADMIN','2020-10-18 14:08:08.292942','ADMIN','2020-10-10 14:07:37.000000','2020-09-10 14:07:44.000000','2020-10-10 14:07:53.000000','2020-09-10 14:08:01.000000',2,1,NULL,4),(3,'2020-10-18 14:08:58.399044','ADMIN','2020-10-18 14:08:58.399068','ADMIN','2020-05-10 14:08:27.000000','2020-04-10 14:08:33.000000','2020-05-10 14:08:42.000000','2020-04-10 14:08:50.000000',3,1,NULL,2),(4,'2020-10-18 14:09:48.336715','ADMIN','2020-10-18 14:09:48.336740','ADMIN','2020-02-10 14:09:18.000000','2020-01-10 14:09:26.000000','2020-02-10 14:09:34.000000','2020-01-10 14:09:42.000000',4,1,NULL,5);
/*!40000 ALTER TABLE `tenant_subscription_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenant_target_profile_details`
--

DROP TABLE IF EXISTS `tenant_target_profile_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tenant_target_profile_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `modified_by` varchar(100) NOT NULL,
  `profile_type` varchar(14) NOT NULL,
  `profile_name` varchar(40) DEFAULT NULL,
  `column_name` varchar(40) DEFAULT NULL,
  `column_sequence_number` int(11) NOT NULL,
  `column_data_type` varchar(30) DEFAULT NULL,
  `column_length` int(11) NOT NULL,
  `source_colum_seq_num` int(11) NOT NULL,
  `column_default_value` varchar(40) DEFAULT NULL,
  `formula` varchar(40) DEFAULT NULL,
  `field_separator` varchar(40) DEFAULT NULL,
  `batch_size` int(11) DEFAULT NULL,
  `mac_id` varchar(40) DEFAULT NULL,
  `source_profile_id` int(11) NOT NULL,
  `tenant_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tenant_target_profil_source_profile_id_c0575afb_fk_tenant_so` (`source_profile_id`),
  KEY `tenant_target_profile_details_tenant_id_1918bf3a_fk_tenants_id` (`tenant_id`),
  CONSTRAINT `tenant_target_profil_source_profile_id_c0575afb_fk_tenant_so` FOREIGN KEY (`source_profile_id`) REFERENCES `tenant_source_profile_details` (`id`),
  CONSTRAINT `tenant_target_profile_details_tenant_id_1918bf3a_fk_tenants_id` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenant_target_profile_details`
--

LOCK TABLES `tenant_target_profile_details` WRITE;
/*!40000 ALTER TABLE `tenant_target_profile_details` DISABLE KEYS */;
INSERT INTO `tenant_target_profile_details` VALUES (1,'2020-10-18 14:48:08.339335','ADMIN','2020-10-18 14:48:08.339360','ADMIN','CSV','Employee','LastName',1,'string',30,3,NULL,NULL,',',NULL,NULL,1,1),(2,'2020-10-18 14:49:11.810031','ADMIN','2020-10-18 14:49:11.810056','ADMIN','CSV','Employee','FirstName',2,'string',30,1,NULL,NULL,',',NULL,NULL,1,1),(3,'2020-10-18 14:50:43.732393','ADMIN','2020-10-18 14:50:43.732419','ADMIN','CSV','Employee','MiddleName',3,'string',30,2,NULL,NULL,',',NULL,NULL,1,1),(4,'2020-10-18 14:53:14.044804','ADMIN','2020-10-18 14:53:14.044830','ADMIN','CSV','Employee','DOB',4,'Date',10,4,NULL,NULL,',',NULL,NULL,1,1),(5,'2020-10-18 14:54:51.428270','ADMIN','2020-10-18 14:54:51.428296','ADMIN','CSV','Employee','Address1',5,'string',50,5,NULL,NULL,',',NULL,NULL,1,1),(6,'2020-10-18 14:56:08.572051','ADMIN','2020-10-18 14:56:08.572077','ADMIN','CSV','Employee','Address2',6,'string',50,6,NULL,NULL,',',NULL,NULL,1,1),(7,'2020-10-18 14:56:55.512324','ADMIN','2020-10-18 14:56:55.512353','ADMIN','CSV','Employee','City',7,'string',30,7,NULL,NULL,',',NULL,NULL,1,1),(8,'2020-10-18 14:57:34.724099','ADMIN','2020-10-18 14:57:34.724127','ADMIN','CSV','Employee','State',8,'string',30,8,NULL,NULL,',',NULL,NULL,1,1),(9,'2020-10-18 14:58:17.926466','ADMIN','2020-10-18 14:58:17.926496','ADMIN','CSV','Employee','JoiningDate',9,'Date',10,9,NULL,NULL,',',NULL,NULL,1,1),(10,'2020-10-18 14:59:01.649303','ADMIN','2020-10-18 14:59:01.649333','ADMIN','CSV','Employee','Department',10,'string',30,10,NULL,NULL,',',NULL,NULL,1,1),(11,'2020-10-18 14:59:54.043722','ADMIN','2020-10-18 14:59:54.043749','ADMIN','XML','Host Load Data','TenantCode',1,'string',100,11,NULL,NULL,',',NULL,NULL,2,3),(12,'2020-10-18 15:01:03.814400','ADMIN','2020-10-18 15:01:03.814431','ADMIN','XML','Host Load Data','Rule',2,'string',100,12,NULL,NULL,',',NULL,NULL,2,3),(13,'2020-10-18 15:01:53.291075','ADMIN','2020-10-18 15:01:53.291105','ADMIN','XML','Host Load Data','Data',3,'string',1000,13,NULL,NULL,',',NULL,NULL,2,3),(14,'2020-10-18 15:02:41.809294','ADMIN','2020-10-18 15:02:41.809322','ADMIN','XML','Host Load Data','strDelimiter',4,'string',1,14,NULL,NULL,',',NULL,NULL,2,3);
/*!40000 ALTER TABLE `tenant_target_profile_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenants`
--

DROP TABLE IF EXISTS `tenants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tenants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `modified_by` varchar(100) NOT NULL,
  `tenant_name` varchar(255) NOT NULL,
  `address1` varchar(255) NOT NULL,
  `address2` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) NOT NULL,
  `zip_code` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_active_2fa` tinyint(1) NOT NULL,
  `billing_frequency` varchar(255) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `mac_id` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenants`
--

LOCK TABLES `tenants` WRITE;
/*!40000 ALTER TABLE `tenants` DISABLE KEYS */;
INSERT INTO `tenants` VALUES (1,'2020-10-12 16:38:17.819982','ADMIN','2020-10-12 16:38:17.820009','ADMIN','Chevron Phillips Chemicals','10001 Six Pines Drive','The Woodlands','Texas',NULL,'USA',77380,1,1,'Monthly','USD',NULL),(2,'2020-10-12 17:25:10.541474','ADMIN','2020-10-18 14:23:12.480312','ADMIN','Peets Tea & Coffee','31 Tech Valley Drive','East Greenbush','NY',NULL,'USA',12061,1,1,'Quarterly','USD',NULL),(3,'2020-10-18 13:50:45.982840','ADMIN','2020-10-18 13:50:45.982884','ADMIN','Credo Semiconductors','1600 Technology Drive 5th Floor','San Jose','California',NULL,'USA',95110,1,1,'Quarterly','USD',NULL),(4,'2020-10-18 13:52:14.581562','ADMIN','2020-10-18 13:52:14.581587','ADMIN','Center for Internet Security','31 Tech Valley Drive','East Greenbush','NY',NULL,'USA',12061,1,1,'Quarterly','USD',NULL);
/*!40000 ALTER TABLE `tenants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tennat_connector_detail`
--

DROP TABLE IF EXISTS `tennat_connector_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tennat_connector_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `modified_by` varchar(100) NOT NULL,
  `connector_count` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `mac_id` varchar(40) NOT NULL,
  `connector_type_id` int(11) NOT NULL,
  `tenant_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tennat_connector_det_connector_type_id_c8d60478_fk_connector` (`connector_type_id`),
  KEY `tennat_connector_detail_tenant_id_a02e4e10_fk_tenants_id` (`tenant_id`),
  CONSTRAINT `tennat_connector_det_connector_type_id_c8d60478_fk_connector` FOREIGN KEY (`connector_type_id`) REFERENCES `connector_type_master` (`id`),
  CONSTRAINT `tennat_connector_detail_tenant_id_a02e4e10_fk_tenants_id` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tennat_connector_detail`
--

LOCK TABLES `tennat_connector_detail` WRITE;
/*!40000 ALTER TABLE `tennat_connector_detail` DISABLE KEYS */;
INSERT INTO `tennat_connector_detail` VALUES (1,'2020-10-17 05:02:32.875533','Eash','2020-10-17 05:02:32.875560','JAck',2,1,'',1,1),(2,'2020-10-17 05:03:10.453801','ADMIN','2020-10-18 14:15:58.069559','ADMIN',2,1,'',2,1),(3,'2020-10-18 14:15:47.903677','ADMIN','2020-10-18 14:15:47.903704','ADMIN',1,1,'',4,1),(4,'2020-10-18 14:16:25.164220','ADMIN','2020-10-18 14:16:25.164245','ADMIN',1,1,'',1,2),(5,'2020-10-18 14:16:59.581366','ADMIN','2020-10-18 14:16:59.581391','ADMIN',2,1,'',3,2),(6,'2020-10-18 14:17:35.678164','ADMIN','2020-10-18 14:17:35.678188','ADMIN',1,1,'',4,2),(7,'2020-10-18 14:18:09.805447','ADMIN','2020-10-18 14:18:09.805476','ADMIN',1,1,'',1,3),(8,'2020-10-18 14:18:45.030150','ADMIN','2020-10-18 14:18:45.030176','ADMIN',1,1,'',4,3),(9,'2020-10-18 14:19:14.107191','ADMIN','2020-10-18 14:19:14.107216','ADMIN',1,1,'',1,4),(10,'2020-10-18 14:19:45.117127','ADMIN','2020-10-18 14:19:45.117152','ADMIN',2,1,'',2,4),(11,'2020-10-18 14:20:12.185381','ADMIN','2020-10-18 14:20:12.185410','ADMIN',1,1,'',3,4),(12,'2020-11-24 01:23:01.072224','ADMIN','2020-11-24 01:23:01.072353','ADMIN',1,1,'',5,1);
/*!40000 ALTER TABLE `tennat_connector_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_table`
--

DROP TABLE IF EXISTS `test_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_table`
--

LOCK TABLES `test_table` WRITE;
/*!40000 ALTER TABLE `test_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `test_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `modified_by` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `role` varchar(50) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tenant_id` int(11) DEFAULT NULL,
  `date_joined` datetime(6) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `is_locked` tinyint(1) NOT NULL,
  `mac_id` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name` (`username`),
  KEY `users_tenant_id_07f315ee_fk_tenants_id` (`tenant_id`),
  CONSTRAINT `users_tenant_id_07f315ee_fk_tenants_id` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'pbkdf2_sha256$216000$0iAEzrv8bE4J$HsKwbVSOqAHyg3hh/j+M/xvdGAsqdB7CMxcOSvytvBE=','2020-11-27 17:40:11.731066','2020-10-12 16:17:18.608824','','2020-10-18 15:17:36.601334','','admin','normal_user','','','admin@gmail.com',NULL,'2020-10-12 16:17:18.509476',1,1,1,0,NULL),(2,'pbkdf2_sha256$216000$4LI3obvHG2Jh$i3i2SgNd8IS+Qrav3JRfuwB7/Fx0Wi5p2Ts5tp48e3g=','2020-11-23 02:35:00.194610','2020-10-12 16:39:53.918479','','2020-10-26 00:03:51.644795','','jpatel@mspectrum.co.in','normal_user','Jack','Patel','jpatel@mspectrum.co',1,'2020-10-12 16:39:53.816938',1,0,0,0,NULL),(4,'pbkdf2_sha256$216000$YeeR2idqiBWv$oIH+cchAAaXolSwSwkj4BGusoywICf02ywyp8T5EUpQ=','2020-10-18 15:23:29.207961','2020-10-18 15:14:18.772082','','2020-10-18 15:15:23.833850','','jackm@cpchem.com','super_admin','Jack','Michael','jackm@cpchem.com',1,'2020-10-18 15:14:18.645161',1,0,0,0,NULL),(5,'pbkdf2_sha256$216000$nKk8zzI92oGC$hYc/gtMfmm4Ku5MQJmbu6NDskmlUuRI4fQSinhf4hlE=','2020-10-18 15:23:16.767363','2020-10-18 15:16:18.037252','','2020-10-18 15:19:12.787935','','peterd@cpchem.com','normal_user','Peter','D\'Souza','peterd@cpchem.com',1,'2020-10-18 15:16:17.934978',1,0,0,0,NULL),(6,'pbkdf2_sha256$216000$0WnEYsJ2Y9Ct$D6PGfn/tyadt8ScjtwOxryjkI65WTh3KPTmK05sy4Fw=','2020-10-18 15:23:03.474358','2020-10-18 15:17:08.848415','','2020-10-18 15:19:11.948217','','robd@peets.com','normal_user','Rob','Dcosta','robd@peets.com',2,'2020-10-18 15:17:08.721617',1,0,0,0,NULL),(7,'pbkdf2_sha256$216000$zV4bXoQhm8bM$sVtURLZBee1t5gWYqTta1ivEPRLe/RCizFpu/1zLfHQ=','2020-10-18 15:22:51.175909','2020-10-18 15:19:37.086572','','2020-10-18 15:20:05.814376','','sam@credo.com','normal_user','Sam','Patrick','sam@credo.com',3,'2020-10-18 15:19:36.983055',1,0,0,0,NULL),(8,'pbkdf2_sha256$216000$66x07UJQSRPR$/WMXLzAbUvHhGx28CmLGPLz2+gnM+mEt4rTFrDM8iYs=','2020-10-31 18:41:26.915537','2020-10-18 15:20:30.522841','','2020-10-18 15:20:55.814887','','jane@credo.com','normal_user','Jane','Doe','jane@credo.com',3,'2020-10-18 15:20:30.397255',1,0,0,0,NULL),(9,'pbkdf2_sha256$216000$7KzvarlJmgxu$eBHAA66P37prRfuWo2gzHk4DtwV68JrV7mE43e6QtGg=','2020-10-28 06:35:54.042560','2020-10-26 00:07:52.938590','','2020-10-26 00:08:19.655438','','eiyer@mspectrum.co','admin','Eash','Iyer','eiyer@mspectrum.co',1,'2020-10-26 00:07:52.813020',1,0,0,0,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_groups`
--

DROP TABLE IF EXISTS `users_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usersmaster_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_groups_usersmaster_id_group_id_4d0273c4_uniq` (`usersmaster_id`,`group_id`),
  KEY `users_groups_group_id_2f3517aa_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_groups_group_id_2f3517aa_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `users_groups_usersmaster_id_0525307b_fk_users_id` FOREIGN KEY (`usersmaster_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_groups`
--

LOCK TABLES `users_groups` WRITE;
/*!40000 ALTER TABLE `users_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_log_details`
--

DROP TABLE IF EXISTS `users_log_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_log_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `action_done` varchar(255) NOT NULL,
  `old_value` longtext NOT NULL,
  `new_value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip_address` varchar(30) DEFAULT NULL,
  `mac_id` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_log_details_user_id_73842986_fk_users_id` (`user_id`),
  CONSTRAINT `users_log_details_user_id_73842986_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_log_details`
--

LOCK TABLES `users_log_details` WRITE;
/*!40000 ALTER TABLE `users_log_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_log_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_user_permissions`
--

DROP TABLE IF EXISTS `users_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usersmaster_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_user_permissions_usersmaster_id_permissio_2901d085_uniq` (`usersmaster_id`,`permission_id`),
  KEY `users_user_permissio_permission_id_6d08dcd2_fk_auth_perm` (`permission_id`),
  CONSTRAINT `users_user_permissio_permission_id_6d08dcd2_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `users_user_permissions_usersmaster_id_4de90450_fk_users_id` FOREIGN KEY (`usersmaster_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_user_permissions`
--

LOCK TABLES `users_user_permissions` WRITE;
/*!40000 ALTER TABLE `users_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-27 23:35:57
