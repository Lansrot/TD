-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot2r52r
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/springboot2r52r/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/springboot2r52r/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springboot2r52r/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `defaultuser`
--

DROP TABLE IF EXISTS `defaultuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `defaultuser` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `name` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sex` varchar(200) DEFAULT NULL COMMENT '性别',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `phone` varchar(200) DEFAULT NULL COMMENT '电话',
  `picture` varchar(200) DEFAULT NULL COMMENT '照片',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='注册用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `defaultuser`
--

LOCK TABLES `defaultuser` WRITE;
/*!40000 ALTER TABLE `defaultuser` DISABLE KEYS */;
INSERT INTO `defaultuser` VALUES (41,'2021-02-24 10:11:05','用户名1','123456','姓名1','男',1,'020-89819991','http://localhost:8080/springboot2r52r/upload/defaultuser_picture1.jpg','773890001@qq.com'),(42,'2021-02-24 10:11:05','用户名2','123456','姓名2','男',2,'020-89819992','http://localhost:8080/springboot2r52r/upload/defaultuser_picture2.jpg','773890002@qq.com'),(43,'2021-02-24 10:11:05','用户名3','123456','姓名3','男',3,'020-89819993','http://localhost:8080/springboot2r52r/upload/defaultuser_picture3.jpg','773890003@qq.com'),(44,'2021-02-24 10:11:05','用户名4','123456','姓名4','男',4,'020-89819994','http://localhost:8080/springboot2r52r/upload/defaultuser_picture4.jpg','773890004@qq.com'),(45,'2021-02-24 10:11:05','用户名5','123456','姓名5','男',5,'020-89819995','http://localhost:8080/springboot2r52r/upload/defaultuser_picture5.jpg','773890005@qq.com'),(46,'2021-02-24 10:11:05','用户名6','123456','姓名6','男',6,'020-89819996','http://localhost:8080/springboot2r52r/upload/defaultuser_picture6.jpg','773890006@qq.com');
/*!40000 ALTER TABLE `defaultuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusslvyoufangan`
--

DROP TABLE IF EXISTS `discusslvyoufangan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusslvyoufangan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='旅游方案评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusslvyoufangan`
--

LOCK TABLES `discusslvyoufangan` WRITE;
/*!40000 ALTER TABLE `discusslvyoufangan` DISABLE KEYS */;
INSERT INTO `discusslvyoufangan` VALUES (71,'2021-02-24 10:11:05',1,1,'评论内容1','回复内容1'),(72,'2021-02-24 10:11:05',2,2,'评论内容2','回复内容2'),(73,'2021-02-24 10:11:05',3,3,'评论内容3','回复内容3'),(74,'2021-02-24 10:11:05',4,4,'评论内容4','回复内容4'),(75,'2021-02-24 10:11:05',5,5,'评论内容5','回复内容5'),(76,'2021-02-24 10:11:05',6,6,'评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusslvyoufangan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lvyoufangan`
--

DROP TABLE IF EXISTS `lvyoufangan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lvyoufangan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fanganbianhao` varchar(200) NOT NULL COMMENT '方案编号',
  `fanganmingcheng` varchar(200) NOT NULL COMMENT '方案名称',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `chufachengshi` varchar(200) DEFAULT NULL COMMENT '出发城市',
  `lvyouluxian` varchar(200) DEFAULT NULL COMMENT '旅游路线',
  `yudingxuzhi` longtext COMMENT '预定须知',
  `xingchengtianshu` varchar(200) DEFAULT NULL COMMENT '行程天数',
  `xiangqingjianjie` longtext COMMENT '详情简介',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fanganbianhao` (`fanganbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614161683619 DEFAULT CHARSET=utf8 COMMENT='旅游方案';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lvyoufangan`
--

LOCK TABLES `lvyoufangan` WRITE;
/*!40000 ALTER TABLE `lvyoufangan` DISABLE KEYS */;
INSERT INTO `lvyoufangan` VALUES (21,'2021-02-24 10:11:05','方案编号1','方案名称1','http://localhost:8080/springboot2r52r/upload/lvyoufangan_zhaopian1.jpg','出发城市1','旅游路线1','预定须知1','行程天数1','详情简介1',1,'是','',1,1,'2021-02-24 18:11:05',1),(22,'2021-02-24 10:11:05','方案编号2','方案名称2','http://localhost:8080/springboot2r52r/upload/lvyoufangan_zhaopian2.jpg','出发城市2','旅游路线2','预定须知2','行程天数2','详情简介2',2,'是','',2,2,'2021-02-24 18:11:05',2),(23,'2021-02-24 10:11:05','方案编号3','方案名称3','http://localhost:8080/springboot2r52r/upload/lvyoufangan_zhaopian3.jpg','出发城市3','旅游路线3','预定须知3','行程天数3','详情简介3',3,'是','',3,3,'2021-02-24 18:11:05',3),(24,'2021-02-24 10:11:05','方案编号4','方案名称4','http://localhost:8080/springboot2r52r/upload/lvyoufangan_zhaopian4.jpg','出发城市4','旅游路线4','预定须知4','行程天数4','详情简介4',4,'是','',4,4,'2021-02-24 18:11:05',4),(25,'2021-02-24 10:11:05','方案编号5','方案名称5','http://localhost:8080/springboot2r52r/upload/lvyoufangan_zhaopian5.jpg','出发城市5','旅游路线5','预定须知5','行程天数5','详情简介5',5,'是','',5,5,'2021-02-24 18:11:05',5),(1614161683618,'2021-02-24 10:14:42','1614161617147','长沙七日游','http://localhost:8080/springboot2r52r/upload/1614161635826.ico','广州','广州至长沙','11','七天','<p>11<img src=\"http://localhost:8080/springboot2r52r/upload/1614161680957.ico\"></p>',1099,'是',NULL,0,0,'2021-02-24 10:21:33',4);
/*!40000 ALTER TABLE `lvyoufangan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lvyougoumai`
--

DROP TABLE IF EXISTS `lvyougoumai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lvyougoumai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fanganbianhao` varchar(200) NOT NULL COMMENT '方案编号',
  `fanganmingcheng` varchar(200) NOT NULL COMMENT '方案名称',
  `jiage` varchar(200) NOT NULL COMMENT '价格',
  `renshu` int(11) NOT NULL COMMENT '人数',
  `zongjia` varchar(200) DEFAULT NULL COMMENT '总价',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614162090553 DEFAULT CHARSET=utf8 COMMENT='旅游购买';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lvyougoumai`
--

LOCK TABLES `lvyougoumai` WRITE;
/*!40000 ALTER TABLE `lvyougoumai` DISABLE KEYS */;
INSERT INTO `lvyougoumai` VALUES (31,'2021-02-24 10:11:05','方案编号1','方案名称1','价格1',1,'总价1','账号1','姓名1','未支付'),(32,'2021-02-24 10:11:05','方案编号2','方案名称2','价格2',2,'总价2','账号2','姓名2','未支付'),(33,'2021-02-24 10:11:05','方案编号3','方案名称3','价格3',3,'总价3','账号3','姓名3','未支付'),(34,'2021-02-24 10:11:05','方案编号4','方案名称4','价格4',4,'总价4','账号4','姓名4','未支付'),(35,'2021-02-24 10:11:05','方案编号5','方案名称5','价格5',5,'总价5','账号5','姓名5','未支付'),(1614162090552,'2021-02-24 10:21:30','1614161617147','长沙七日游','1099',2,'2198','111','111','已支付');
/*!40000 ALTER TABLE `lvyougoumai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='旅游资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (61,'2021-02-24 10:11:05','标题1','简介1','http://localhost:8080/springboot2r52r/upload/news_picture1.jpg','内容1'),(62,'2021-02-24 10:11:05','标题2','简介2','http://localhost:8080/springboot2r52r/upload/news_picture2.jpg','内容2'),(63,'2021-02-24 10:11:05','标题3','简介3','http://localhost:8080/springboot2r52r/upload/news_picture3.jpg','内容3'),(64,'2021-02-24 10:11:05','标题4','简介4','http://localhost:8080/springboot2r52r/upload/news_picture4.jpg','内容4'),(65,'2021-02-24 10:11:05','标题5','简介5','http://localhost:8080/springboot2r52r/upload/news_picture5.jpg','内容5'),(66,'2021-02-24 10:11:05','标题6','简介6','http://localhost:8080/springboot2r52r/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','35hjzv970lbihh1fr9pp6f9aqn2uyikp','2021-02-24 10:12:29','2021-02-24 03:20:44'),(2,1614161736363,'111','yonghu','用户','m66167e210zz7wjlxwsxf9trzfv9memj','2021-02-24 10:15:47','2021-02-24 03:21:20');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-02-24 10:11:05');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `gexingqianming` longtext COMMENT '个性签名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614161736364 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-02-24 10:11:05','用户1','姓名1','123456','男','http://localhost:8080/springboot2r52r/upload/yonghu_touxiang1.jpg','个性签名1'),(12,'2021-02-24 10:11:05','用户2','姓名2','123456','男','http://localhost:8080/springboot2r52r/upload/yonghu_touxiang2.jpg','个性签名2'),(13,'2021-02-24 10:11:05','用户3','姓名3','123456','男','http://localhost:8080/springboot2r52r/upload/yonghu_touxiang3.jpg','个性签名3'),(14,'2021-02-24 10:11:05','用户4','姓名4','123456','男','http://localhost:8080/springboot2r52r/upload/yonghu_touxiang4.jpg','个性签名4'),(15,'2021-02-24 10:11:05','用户5','姓名5','123456','男','http://localhost:8080/springboot2r52r/upload/yonghu_touxiang5.jpg','个性签名5'),(1614161585582,'2021-02-24 10:13:05','001','李四','111','男','http://localhost:8080/springboot2r52r/upload/1614161581835.ico','11'),(1614161736363,'2021-02-24 10:15:36','111','111','111',NULL,NULL,NULL);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-04 14:32:30
