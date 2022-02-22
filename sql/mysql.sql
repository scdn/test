-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: wvp
-- ------------------------------------------------------
-- Server version	8.0.28-0ubuntu0.20.04.3

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
-- Table structure for table `device`
--

DROP TABLE IF EXISTS `device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device` (
                          `id` int NOT NULL AUTO_INCREMENT,
                          `deviceId` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
                          `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
                          `manufacturer` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
                          `model` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
                          `firmware` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
                          `transport` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
                          `streamMode` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
                          `online` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
                          `registerTime` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
                          `keepaliveTime` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
                          `ip` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
                          `createTime` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
                          `updateTime` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
                          `port` int NOT NULL,
                          `expires` int NOT NULL,
                          `subscribeCycleForCatalog` int NOT NULL,
                          `hostAddress` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
                          `charset` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
                          PRIMARY KEY (`id`),
                          UNIQUE KEY `device_deviceId_uindex` (`deviceId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device`
--

LOCK TABLES `device` WRITE;
/*!40000 ALTER TABLE `device` DISABLE KEYS */;
INSERT INTO `device` VALUES (1,'34020000002000000005','DH-NVR5864-I','Dahua','DH-NVR5864-I','4.001.0000000.3,2020-10-22','UDP','UDP','1','2022-02-22 11:05:10','2022-02-22 11:42:10','192.168.1.19','2022-02-22 10:17:24','2022-02-22 11:42:10',5060,3600,0,'192.168.1.19:5060','gb2312');
/*!40000 ALTER TABLE `device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_alarm`
--

DROP TABLE IF EXISTS `device_alarm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device_alarm` (
                                `id` int NOT NULL AUTO_INCREMENT,
                                `deviceId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                `channelId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                `alarmPriority` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                `alarmMethod` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
                                `alarmTime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                `alarmDescription` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
                                `longitude` double DEFAULT NULL,
                                `latitude` double DEFAULT NULL,
                                `alarmType` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
                                PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_alarm`
--

LOCK TABLES `device_alarm` WRITE;
/*!40000 ALTER TABLE `device_alarm` DISABLE KEYS */;
/*!40000 ALTER TABLE `device_alarm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_channel`
--

DROP TABLE IF EXISTS `device_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device_channel` (
                                  `channelId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
                                  `manufacture` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
                                  `model` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
                                  `owner` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
                                  `civilCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
                                  `block` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
                                  `address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
                                  `parentId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
                                  `safetyWay` int DEFAULT NULL,
                                  `registerWay` int DEFAULT NULL,
                                  `certNum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
                                  `certifiable` int DEFAULT NULL,
                                  `errCode` int DEFAULT NULL,
                                  `endTime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
                                  `secrecy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
                                  `ipAddress` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
                                  `port` int DEFAULT NULL,
                                  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
                                  `PTZType` int DEFAULT NULL,
                                  `status` int DEFAULT NULL,
                                  `longitude` double DEFAULT NULL,
                                  `latitude` double DEFAULT NULL,
                                  `streamId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
                                  `deviceId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                  `parental` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
                                  `hasAudio` bit(1) DEFAULT NULL,
                                  `createTime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                  `updateTime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                  `subCount` int DEFAULT '0',
                                  PRIMARY KEY (`channelId`,`deviceId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_channel`
--

LOCK TABLES `device_channel` WRITE;
/*!40000 ALTER TABLE `device_channel` DISABLE KEYS */;
INSERT INTO `device_channel` VALUES ('34020000001310000001','通道1','Dahua','DH-NVR5864-I','0','340200','','axy','34020000002000000005',0,1,'',0,0,NULL,'0','192.168.1.17',37777,'',0,1,0,0,NULL,'34020000002000000005','0',NULL,'','',0),('34020000001310000065','GB_Chn_065','Dahua','DH-NVR5864-I','0','340200','','axy','34020000002000000005',0,1,'',0,0,NULL,'0','',0,'',0,1,0,0,NULL,'34020000002000000005','0',NULL,'','',0);
/*!40000 ALTER TABLE `device_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_mobile_position`
--

DROP TABLE IF EXISTS `device_mobile_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device_mobile_position` (
                                          `id` int NOT NULL AUTO_INCREMENT,
                                          `deviceId` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
                                          `channelId` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
                                          `deviceName` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
                                          `time` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
                                          `longitude` double NOT NULL,
                                          `latitude` double NOT NULL,
                                          `altitude` double DEFAULT NULL,
                                          `speed` double DEFAULT NULL,
                                          `direction` double DEFAULT NULL,
                                          `reportSource` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
                                          `geodeticSystem` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
                                          `cnLng` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
                                          `cnLat` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
                                          PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_mobile_position`
--

LOCK TABLES `device_mobile_position` WRITE;
/*!40000 ALTER TABLE `device_mobile_position` DISABLE KEYS */;
/*!40000 ALTER TABLE `device_mobile_position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gb_stream`
--

DROP TABLE IF EXISTS `gb_stream`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gb_stream` (
                             `id` int NOT NULL AUTO_INCREMENT,
                             `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                             `stream` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                             `gbId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                             `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
                             `longitude` double DEFAULT NULL,
                             `latitude` double DEFAULT NULL,
                             `streamType` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
                             `mediaServerId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
                             `status` int DEFAULT NULL,
                             `createStamp` bigint DEFAULT NULL,
                             PRIMARY KEY (`id`) USING BTREE,
                             UNIQUE KEY `app` (`app`,`stream`) USING BTREE,
                             UNIQUE KEY `gbId` (`gbId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gb_stream`
--

LOCK TABLES `gb_stream` WRITE;
/*!40000 ALTER TABLE `gb_stream` DISABLE KEYS */;
INSERT INTO `gb_stream` VALUES (74,'1000','10000000_000','34020000002000000001','测试1',0,0,'push','FQ3TF8yT83wh5Wvz',0,1645500864142),(75,'1000','10000001_000','34020000012000000002','测试2',0,0,'push','FQ3TF8yT83wh5Wvz',0,1645500864142),(76,'1000','10000002_000','34020000022000000003','测试3',0,0,'push','FQ3TF8yT83wh5Wvz',0,1645500864142);
/*!40000 ALTER TABLE `gb_stream` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log` (
                       `id` int NOT NULL AUTO_INCREMENT,
                       `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                       `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                       `uri` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                       `address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                       `result` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                       `timing` bigint NOT NULL,
                       `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                       `createTime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                       PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (163,'登录','GET','/api/user/login','127.0.0.1','200 OK',243,'admin','2022-02-22 10:18:15'),(164,'开始点播','GET','/api/play/start/34020000002000000005/34020000001310000001','127.0.0.1','200 OK',77,'admin','2022-02-22 10:18:35'),(165,'[设备查询] 同步设备通道','POST','/api/device/query/devices/34020000002000000005/sync','127.0.0.1','200 OK',10,'admin','2022-02-22 10:18:47'),(166,'开始点播','GET','/api/play/start/34020000002000000005/34020000001310000065','127.0.0.1','200 OK',19,'admin','2022-02-22 10:18:50'),(167,'停止点播','GET','/api/play/stop/34020000002000000005/34020000001310000065','127.0.0.1','200 OK',159,'admin','2022-02-22 10:19:08'),(168,'保存代理','POST','/api/proxy/save','127.0.0.1','200 OK',305,'admin','2022-02-22 10:22:02'),(169,'保存代理','POST','/api/proxy/save','127.0.0.1','200 OK',142,'admin','2022-02-22 10:22:28'),(170,'添加上级平台','POST','/api/platform/save','127.0.0.1','200 OK',11,'admin','2022-02-22 10:22:57'),(171,'登录','GET','/api/user/login','127.0.0.1','200 OK',255,'admin','2022-02-22 10:26:31'),(172,'移除代理','DELETE','/api/proxy/del','127.0.0.1','200 OK',40,'admin','2022-02-22 10:26:44'),(173,'保存代理','POST','/api/proxy/save','127.0.0.1','200 OK',139,'admin','2022-02-22 10:26:51'),(174,'登录','GET','/api/user/login','127.0.0.1','200 OK',657,'admin','2022-02-22 10:28:21'),(175,'登录','GET','/api/user/login','127.0.0.1','200 OK',302,'admin','2022-02-22 11:04:24'),(176,'移除代理','DELETE','/api/proxy/del','127.0.0.1','200 OK',33,'admin','2022-02-22 11:04:34'),(177,'移除代理','DELETE','/api/proxy/del','127.0.0.1','200 OK',17,'admin','2022-02-22 11:04:35'),(178,'保存代理','POST','/api/proxy/save','127.0.0.1','200 OK',186,'admin','2022-02-22 11:04:44'),(179,'登录','GET','/api/user/login','127.0.0.1','200 OK',258,'admin','2022-02-22 11:05:05'),(180,'保存代理','POST','/api/proxy/save','127.0.0.1','200 OK',97,'admin','2022-02-22 11:05:51'),(181,'登录','GET','/api/user/login','127.0.0.1','200 OK',300,'admin','2022-02-22 11:11:30'),(182,'保存代理','POST','/api/proxy/save','127.0.0.1','200 OK',145,'admin','2022-02-22 11:12:00'),(183,'登录','GET','/api/user/login','127.0.0.1','200 OK',264,'admin','2022-02-22 11:12:42'),(184,'保存代理','POST','/api/proxy/save','127.0.0.1','200 OK',41793,'admin','2022-02-22 11:13:42'),(185,'登录','GET','/api/user/login','127.0.0.1','200 OK',245,'admin','2022-02-22 11:13:58'),(186,'保存代理','POST','/api/proxy/save','127.0.0.1','200 OK',86,'admin','2022-02-22 11:14:11'),(187,'登录','GET','/api/user/login','127.0.0.1','200 OK',293,'admin','2022-02-22 11:31:52'),(188,'向上级平台添加国标通道','POST','/api/platform/update_channel_for_gb','127.0.0.1','200 OK',14,'admin','2022-02-22 11:34:55'),(189,'向上级平台添加国标通道','POST','/api/platform/update_channel_for_gb','127.0.0.1','200 OK',11,'admin','2022-02-22 11:35:02'),(190,'保存代理','POST','/api/proxy/save','127.0.0.1','200 OK',16,'admin','2022-02-22 11:37:00'),(191,'登录','GET','/api/user/login','127.0.0.1','200 OK',340,'admin','2022-02-22 11:38:15'),(192,'停用代理','GET','/api/proxy/stop','127.0.0.1','200 OK',16,'admin','2022-02-22 11:38:20'),(193,'停用代理','GET','/api/proxy/stop','127.0.0.1','200 OK',10,'admin','2022-02-22 11:38:28'),(194,'登录','GET','/api/user/login','127.0.0.1','200 OK',288,'admin','2022-02-22 11:39:34'),(195,'停用代理','GET','/api/proxy/stop','127.0.0.1','200 OK',29,'admin','2022-02-22 11:39:36'),(196,'启用代理','GET','/api/proxy/start','127.0.0.1','200 OK',594,'admin','2022-02-22 11:39:38'),(197,'停用代理','GET','/api/proxy/stop','127.0.0.1','200 OK',16,'admin','2022-02-22 11:39:43'),(198,'停用代理','GET','/api/proxy/stop','127.0.0.1','200 OK',27,'admin','2022-02-22 11:41:30'),(199,'停用代理','GET','/api/proxy/stop','127.0.0.1','200 OK',17,'admin','2022-02-22 11:41:42'),(200,'启用代理','GET','/api/proxy/start','127.0.0.1','200 OK',9,'admin','2022-02-22 11:41:44'),(201,'启用代理','GET','/api/proxy/start','127.0.0.1','200 OK',6,'admin','2022-02-22 11:41:47'),(202,'启用代理','GET','/api/proxy/start','127.0.0.1','200 OK',67,'admin','2022-02-22 11:41:48'),(203,'移除代理','DELETE','/api/proxy/del','127.0.0.1','200 OK',14,'admin','2022-02-22 11:41:51'),(204,'移除代理','DELETE','/api/proxy/del','127.0.0.1','200 OK',16,'admin','2022-02-22 11:41:52'),(205,'移除代理','DELETE','/api/proxy/del','127.0.0.1','200 OK',14,'admin','2022-02-22 11:41:53');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_server`
--

DROP TABLE IF EXISTS `media_server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_server` (
                                `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                `ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                `hookIp` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                `sdpIp` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                `streamIp` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                `httpPort` int NOT NULL,
                                `httpSSlPort` int NOT NULL,
                                `rtmpPort` int NOT NULL,
                                `rtmpSSlPort` int NOT NULL,
                                `rtpProxyPort` int NOT NULL,
                                `rtspPort` int NOT NULL,
                                `rtspSSLPort` int NOT NULL,
                                `autoConfig` int NOT NULL,
                                `secret` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                `streamNoneReaderDelayMS` int NOT NULL,
                                `rtpEnable` int NOT NULL,
                                `rtpPortRange` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                `sendRtpPortRange` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                `recordAssistPort` int NOT NULL,
                                `defaultServer` int NOT NULL,
                                `createTime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                `updateTime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                `hookAliveInterval` int NOT NULL,
                                PRIMARY KEY (`id`) USING BTREE,
                                UNIQUE KEY `media_server_i` (`ip`,`httpPort`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_server`
--

LOCK TABLES `media_server` WRITE;
/*!40000 ALTER TABLE `media_server` DISABLE KEYS */;
INSERT INTO `media_server` VALUES ('FQ3TF8yT83wh5Wvz','192.168.1.3','192.168.1.3','192.168.1.3','192.168.1.3',6080,0,10935,0,10000,10554,0,1,'035c73f7-bb6b-4889-a715-d9eb2d1925cc',18000,1,'30000,30500','30000,30500',18081,1,'2022-02-22 11:39:33','2022-02-22 11:39:33',30);
/*!40000 ALTER TABLE `media_server` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parent_platform`
--

DROP TABLE IF EXISTS `parent_platform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parent_platform` (
                                   `id` int NOT NULL AUTO_INCREMENT,
                                   `enable` int DEFAULT NULL,
                                   `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
                                   `serverGBId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                   `serverGBDomain` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
                                   `serverIP` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
                                   `serverPort` int DEFAULT NULL,
                                   `deviceGBId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                   `deviceIp` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
                                   `devicePort` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
                                   `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
                                   `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
                                   `expires` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
                                   `keepTimeout` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
                                   `transport` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
                                   `characterSet` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
                                   `catalogId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                   `ptz` int DEFAULT NULL,
                                   `rtcp` int DEFAULT NULL,
                                   `status` bit(1) DEFAULT NULL,
                                   `shareAllLiveStream` int DEFAULT NULL,
                                   PRIMARY KEY (`id`,`serverGBId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parent_platform`
--

LOCK TABLES `parent_platform` WRITE;
/*!40000 ALTER TABLE `parent_platform` DISABLE KEYS */;
INSERT INTO `parent_platform` VALUES (4,0,'11111','111111111111111','1111111111','11.111.11.11',2342,'34020000013000000001','192.168.1.3','15060','34020000013000000001','12345678','300','60','UDP','GB2312','111111111111111',1,0,_binary '\0',0),(5,0,'2222','222222222222222','2222222222','222.22.2.2',2222,'34020000013000000001','192.168.1.3','15060','34020000013000000001','12345678','300','60','UDP','GB2312','222222222222222',1,0,_binary '\0',0);
/*!40000 ALTER TABLE `parent_platform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `platform_catalog`
--

DROP TABLE IF EXISTS `platform_catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `platform_catalog` (
                                    `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                    `platformId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                    `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                    `parentId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
                                    PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `platform_catalog`
--

LOCK TABLES `platform_catalog` WRITE;
/*!40000 ALTER TABLE `platform_catalog` DISABLE KEYS */;
/*!40000 ALTER TABLE `platform_catalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `platform_gb_channel`
--

DROP TABLE IF EXISTS `platform_gb_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `platform_gb_channel` (
                                       `id` int NOT NULL AUTO_INCREMENT,
                                       `channelId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                       `deviceId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                       `platformId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                       `deviceAndChannelId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                       `catalogId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                       PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `platform_gb_channel`
--

LOCK TABLES `platform_gb_channel` WRITE;
/*!40000 ALTER TABLE `platform_gb_channel` DISABLE KEYS */;
INSERT INTO `platform_gb_channel` VALUES (1,'34020000001310000001','34020000002000000005','111111111111111','34020000002000000005_34020000001310000001','111111111111111'),(2,'34020000001310000065','34020000002000000005','222222222222222','34020000002000000005_34020000001310000065','222222222222222');
/*!40000 ALTER TABLE `platform_gb_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `platform_gb_stream`
--

DROP TABLE IF EXISTS `platform_gb_stream`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `platform_gb_stream` (
                                      `platformId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                      `catalogId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                      `gbStreamId` int NOT NULL,
                                      `id` int NOT NULL AUTO_INCREMENT,
                                      PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `platform_gb_stream`
--

LOCK TABLES `platform_gb_stream` WRITE;
/*!40000 ALTER TABLE `platform_gb_stream` DISABLE KEYS */;
INSERT INTO `platform_gb_stream` VALUES ('111111111111111','111111111111111',70,35),('111111111111111','111111111111111',71,36),('111111111111111','111111111111111',72,37),('222222222222222','222222222222222',73,38),('111111111111111','111111111111111',74,39),('111111111111111','111111111111111',75,40),('111111111111111','111111111111111',76,41);
/*!40000 ALTER TABLE `platform_gb_stream` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stream_proxy`
--

DROP TABLE IF EXISTS `stream_proxy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stream_proxy` (
                                `id` int NOT NULL AUTO_INCREMENT,
                                `type` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
                                `app` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
                                `stream` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
                                `url` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
                                `src_url` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
                                `dst_url` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
                                `timeout_ms` int DEFAULT NULL,
                                `ffmpeg_cmd_key` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
                                `rtp_type` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
                                `mediaServerId` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
                                `enable_hls` bit(1) DEFAULT NULL,
                                `enable_mp4` bit(1) DEFAULT NULL,
                                `enable` bit(1) NOT NULL,
                                `status` bit(1) NOT NULL,
                                `enable_remove_none_reader` bit(1) NOT NULL,
                                `createTime` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
                                PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stream_proxy`
--

LOCK TABLES `stream_proxy` WRITE;
/*!40000 ALTER TABLE `stream_proxy` DISABLE KEYS */;
/*!40000 ALTER TABLE `stream_proxy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stream_push`
--

DROP TABLE IF EXISTS `stream_push`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stream_push` (
                               `id` int NOT NULL AUTO_INCREMENT,
                               `app` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
                               `stream` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
                               `totalReaderCount` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
                               `originType` int DEFAULT NULL,
                               `originTypeStr` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
                               `createStamp` bigint DEFAULT NULL,
                               `aliveSecond` int DEFAULT NULL,
                               `mediaServerId` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
                               PRIMARY KEY (`id`),
                               UNIQUE KEY `stream_push_pk` (`app`,`stream`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stream_push`
--

LOCK TABLES `stream_push` WRITE;
/*!40000 ALTER TABLE `stream_push` DISABLE KEYS */;
INSERT INTO `stream_push` VALUES (13,'1000','10000000_000','0',2,'rtsp_push',1645500864142,NULL,'FQ3TF8yT83wh5Wvz'),(14,'1000','10000001_000','0',2,'rtsp_push',1645500864142,NULL,'FQ3TF8yT83wh5Wvz'),(15,'1000','10000002_000','0',2,'rtsp_push',1645500864142,NULL,'FQ3TF8yT83wh5Wvz');
/*!40000 ALTER TABLE `stream_push` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
                        `id` int NOT NULL AUTO_INCREMENT,
                        `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                        `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                        `roleId` int NOT NULL,
                        `createTime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                        `updateTime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                        PRIMARY KEY (`id`) USING BTREE,
                        UNIQUE KEY `user_username_uindex` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','21232f297a57a5a743894a0e4a801fc3',1,'2021-04-13 14:14:57','2021-04-13 14:14:57');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
                             `id` int NOT NULL AUTO_INCREMENT,
                             `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                             `authority` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                             `createTime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                             `updateTime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                             PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,'admin','0','2021-04-13 14:14:57','2021-04-13 14:14:57');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-22 11:43:00
