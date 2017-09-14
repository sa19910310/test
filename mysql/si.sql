# Host: localhost  (Version: 5.5.47)
# Date: 2017-09-14 21:10:36
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "shao_caidan"
#

DROP TABLE IF EXISTS `shao_caidan`;
CREATE TABLE `shao_caidan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(5) DEFAULT NULL,
  `title` varchar(32) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

#
# Data for table "shao_caidan"
#

INSERT INTO `shao_caidan` VALUES (1,0,'首页','icon-desktop',NULL,'/index/home/index'),(2,0,'产品管理','icon-desktop','1',NULL),(3,2,'产品类表',NULL,NULL,'/index/productlist/index'),(4,3,'添加',NULL,NULL,NULL),(5,3,'修改',NULL,NULL,NULL),(6,3,'删除',NULL,NULL,NULL),(7,3,'查看',NULL,NULL,NULL),(8,3,'审核',NULL,NULL,NULL),(9,2,'品牌管理',NULL,NULL,'/index/brand/index'),(10,9,'添加',NULL,NULL,NULL),(11,9,'修改',NULL,NULL,NULL),(12,9,'删除',NULL,NULL,NULL),(13,9,'查看',NULL,NULL,NULL),(14,9,'审核',NULL,NULL,NULL),(15,2,'分类管理',NULL,NULL,'/index/categorymanage/index'),(16,15,'添加',NULL,NULL,NULL),(17,15,'修改',NULL,NULL,NULL),(18,15,'删除',NULL,NULL,NULL),(19,15,'查看',NULL,NULL,NULL),(20,15,'查看',NULL,NULL,NULL),(21,2,'产品类型',NULL,NULL,NULL),(22,0,'图片管理','icon-picture',NULL,NULL),(23,22,'广告管理',NULL,NULL,'/index/advertising/index'),(24,23,'添加',NULL,NULL,NULL),(25,23,'修改',NULL,NULL,NULL),(26,23,'删除',NULL,NULL,NULL),(27,23,'查看',NULL,NULL,NULL),(28,22,'分类管理',NULL,NULL,'/index/sortads/index'),(29,28,'添加',NULL,NULL,NULL),(30,28,'修改',NULL,NULL,NULL),(31,28,'删除',NULL,NULL,NULL),(32,28,'查看',NULL,NULL,NULL),(33,0,'交易管理','icon-list',NULL,NULL),(34,33,'交易信息',NULL,NULL,'/index/transaction/index'),(35,34,'添加',NULL,NULL,NULL),(36,34,'修改',NULL,NULL,NULL),(37,34,'删除',NULL,NULL,NULL),(38,34,'查看',NULL,NULL,NULL),(39,33,'订单管理',NULL,NULL,'/index/orderform/index'),(40,39,'添加',NULL,NULL,NULL),(41,39,'修改',NULL,NULL,NULL),(42,39,'删除',NULL,NULL,NULL),(43,39,'查看',NULL,NULL,NULL),(44,39,'审核',NULL,NULL,NULL),(45,33,'交易金额',NULL,NULL,'/index/amounts/index'),(46,45,'查看',NULL,NULL,NULL),(47,45,'审核',NULL,NULL,NULL),(48,33,'订单处理',NULL,NULL,'/index/orderhandling/index'),(49,48,'查看',NULL,NULL,NULL),(50,48,'修改',NULL,NULL,NULL),(51,48,'审核',NULL,NULL,NULL),(52,33,'支付管理',NULL,NULL,'/index/cover/index'),(53,52,'添加',NULL,NULL,NULL),(54,52,'修改',NULL,NULL,NULL),(55,52,'删除',NULL,NULL,NULL),(56,52,'查看',NULL,NULL,NULL),(57,52,'审核',NULL,NULL,NULL),(58,0,'会员管理','icon-user',NULL,NULL),(59,58,'会员列表',NULL,NULL,'/index/userlist/index'),(60,59,'添加',NULL,NULL,NULL),(61,59,'修改',NULL,NULL,NULL),(62,59,'删除',NULL,NULL,NULL),(63,59,'查看',NULL,NULL,NULL),(64,59,'审核',NULL,NULL,NULL),(65,58,'等级管理',NULL,NULL,'/index/membergrading/index'),(66,65,'添加',NULL,NULL,NULL),(67,65,'修改',NULL,NULL,NULL),(68,65,'删除',NULL,NULL,NULL),(69,65,'查看',NULL,NULL,NULL),(70,65,'审核',NULL,NULL,NULL),(71,58,'会员记录管理',NULL,NULL,'/index/intergration/index'),(72,71,'添加',NULL,NULL,NULL),(73,71,'修改',NULL,NULL,NULL),(74,71,'删除',NULL,NULL,NULL),(75,71,'查看',NULL,NULL,NULL),(76,71,'审核',NULL,NULL,NULL),(77,0,'信息管理','icon-edit',NULL,NULL),(78,77,'留言列表',NULL,NULL,'/index/guestbook/index'),(79,78,'查看',NULL,NULL,NULL),(80,78,'删除',NULL,NULL,NULL),(81,78,'审核',NULL,NULL,NULL),(82,77,'意见反馈',NULL,NULL,'/index/feedback/index'),(83,82,'查看',NULL,NULL,NULL),(84,82,'回复',NULL,NULL,NULL),(85,82,'审核',NULL,NULL,NULL),(86,77,'文章管理',NULL,NULL,'/index/article/index'),(87,86,'添加',NULL,NULL,NULL),(88,86,'修改',NULL,NULL,NULL),(89,86,'删除',NULL,NULL,NULL),(90,86,'查看',NULL,NULL,NULL),(91,86,'审核',NULL,NULL,NULL),(92,0,'系统管理','icon-cogs',NULL,NULL),(93,92,'系统设置',NULL,NULL,'/index/systems/index'),(96,93,'添加',NULL,NULL,NULL),(97,93,'修改',NULL,NULL,NULL),(98,93,'删除',NULL,NULL,NULL),(99,93,'查看',NULL,NULL,NULL),(100,93,'审核',NULL,NULL,NULL),(101,0,'管理员管理','icon-group',NULL,NULL),(102,101,'权限管理',NULL,NULL,'/index/admincompetence/index'),(103,102,'添加',NULL,NULL,NULL),(104,102,'修改',NULL,NULL,NULL),(105,102,'删除',NULL,NULL,NULL),(106,102,'查看',NULL,NULL,NULL),(107,102,'审核',NULL,NULL,NULL),(108,101,'管理员列表',NULL,NULL,'/index/aministrator/index'),(109,108,'添加',NULL,NULL,NULL),(110,108,'修改',NULL,NULL,NULL),(111,108,'删除',NULL,NULL,NULL),(112,108,'查看',NULL,NULL,NULL),(113,108,'审核',NULL,NULL,NULL),(114,101,'个人信息',NULL,NULL,'/index/admininfo/index'),(115,114,'添加',NULL,NULL,NULL),(116,114,'修改',NULL,NULL,NULL),(117,114,'删除',NULL,NULL,NULL),(118,114,'查看',NULL,NULL,NULL);

#
# Structure for table "shao_menu"
#

DROP TABLE IF EXISTS `shao_menu`;
CREATE TABLE `shao_menu` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `idl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

#
# Data for table "shao_menu"
#

INSERT INTO `shao_menu` VALUES (1,'设置','icon-cog','#',NULL),(2,'个人资料','icon-user','javascript:void(0)','gerenziliao'),(3,'退出','icon-off','javascript:void(0)','Exit_system');

#
# Structure for table "shao_role"
#

DROP TABLE IF EXISTS `shao_role`;
CREATE TABLE `shao_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `menu_auth` text,
  `description` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

#
# Data for table "shao_role"
#

INSERT INTO `shao_role` VALUES (1,'产品管理和图片管理1','2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,','111111',1),(2,'一般管理员','1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,','一般管理员',1),(14,'产品经理','[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"59\",\"60\",\"61\",\"62\",\"63\",\"64\",\"95\",\"96\",\"97\",\"98\",\"99\",\"100\",\"114\",\"115\",\"116\",\"117\",\"118\"]','1111111111111',1),(15,'产品经理2','[\"58\",\"59\",\"60\",\"61\",\"62\",\"63\",\"64\",\"65\",\"66\",\"67\",\"68\",\"69\",\"70\",\"71\",\"72\",\"73\",\"74\",\"75\",\"76\",\"77\",\"78\",\"79\",\"80\",\"81\",\"82\",\"83\",\"84\",\"85\",\"86\",\"87\",\"88\",\"89\",\"90\",\"91\",\"92\",\"93\",\"94\",\"95\",\"96\",\"97\",\"98\",\"99\",\"100\",\"101\",\"102\",\"103\",\"104\",\"105\",\"106\",\"107\",\"108\",\"109\",\"110\",\"111\",\"112\",\"113\",\"114\",\"115\",\"116\",\"117\",\"118\"]','1111111111',0),(16,'产品经理2','[\"58\",\"59\",\"60\",\"61\",\"62\",\"63\",\"64\",\"65\",\"66\",\"67\",\"68\",\"69\",\"70\",\"71\",\"72\",\"73\",\"74\",\"75\",\"76\",\"77\",\"78\",\"79\",\"80\",\"81\",\"82\",\"83\",\"84\",\"85\",\"86\",\"87\",\"88\",\"89\",\"90\",\"91\",\"92\",\"93\",\"94\",\"95\",\"96\",\"97\",\"98\",\"99\",\"100\",\"101\",\"102\",\"103\",\"104\",\"105\",\"106\",\"107\",\"108\",\"109\",\"110\",\"111\",\"112\",\"113\",\"114\",\"115\",\"116\",\"117\",\"118\"]','1111111111',0),(17,'产品经理2','[\"58\",\"59\",\"60\",\"61\",\"62\",\"63\",\"64\",\"65\",\"66\",\"67\",\"68\",\"69\",\"70\",\"71\",\"72\",\"73\",\"74\",\"75\",\"76\",\"77\",\"78\",\"79\",\"80\",\"81\",\"82\",\"83\",\"84\",\"85\",\"86\",\"87\",\"88\",\"89\",\"90\",\"91\",\"92\",\"93\",\"94\",\"95\",\"96\",\"97\",\"98\",\"99\",\"100\",\"101\",\"102\",\"103\",\"104\",\"105\",\"106\",\"107\",\"108\",\"109\",\"110\",\"111\",\"112\",\"113\",\"114\",\"115\",\"116\",\"117\",\"118\"]','1111111111',0),(18,'产品经理2','[\"58\",\"59\",\"60\",\"61\",\"62\",\"63\",\"64\",\"65\",\"66\",\"67\",\"68\",\"69\",\"70\",\"71\",\"72\",\"73\",\"74\",\"75\",\"76\",\"77\",\"78\",\"79\",\"80\",\"81\",\"82\",\"83\",\"84\",\"85\",\"86\",\"87\",\"88\",\"89\",\"90\",\"91\",\"114\",\"115\",\"116\",\"117\",\"118\"]','1111111111',0),(19,'产品经理','[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\",\"27\",\"28\",\"29\",\"30\",\"31\",\"32\",\"101\",\"102\",\"103\",\"104\",\"105\",\"106\",\"107\",\"108\",\"109\",\"110\",\"111\",\"112\",\"113\",\"114\",\"115\",\"116\",\"117\",\"118\"]','',0),(20,'图片和产品经理','1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57','1111',0),(21,'超级1','2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21','11',0),(22,'超级2','1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76','11',0),(23,'1','1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32','',0),(24,'1','1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32','',1),(25,'超级112','[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\",\"27\",\"28\",\"29\",\"30\",\"31\",\"32\",\"33\",\"34\",\"35\",\"36\",\"37\",\"38\",\"39\",\"40\",\"41\",\"42\",\"43\",\"44\",\"45\",\"46\",\"47\",\"48\",\"49\",\"50\",\"51\",\"52\",\"53\",\"54\",\"55\",\"56\",\"57\"]','11',1),(26,'','[]','',1);

#
# Structure for table "shao_shopgoods"
#

DROP TABLE IF EXISTS `shao_shopgoods`;
CREATE TABLE `shao_shopgoods` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品ID',
  `spid` int(11) DEFAULT NULL COMMENT '类别ID',
  `spname` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `sprice` decimal(10,2) DEFAULT NULL COMMENT '商品价格',
  `smarket` double(10,2) DEFAULT NULL COMMENT '市场价格',
  `county` varchar(20) DEFAULT NULL,
  `spic` varchar(30) DEFAULT NULL COMMENT '商品缩略图',
  `simg` varchar(30) DEFAULT NULL COMMENT '商品大图',
  `stime` varchar(255) DEFAULT NULL COMMENT '加入时间',
  `checked` int(1) DEFAULT NULL COMMENT '审核状态',
  `sbrand` int(11) DEFAULT NULL,
  `sinfo` text,
  `type` varchar(20) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sbarnd` (`sbrand`),
  KEY `stu_id` (`spid`),
  CONSTRAINT `sbrand` FOREIGN KEY (`sbrand`) REFERENCES `su`.`shopbrand` (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

#
# Data for table "shao_shopgoods"
#

INSERT INTO `shao_shopgoods` VALUES (1,8,'小米Max 全网通高配版 3GB内存',5321.00,3451.00,'中国北京',NULL,NULL,'2017-05-16',1,1,NULL,'手机',1),(2,3,'苹果',23.00,10.00,'法国巴黎',NULL,NULL,'2017-05-16',1,NULL,NULL,'苹果',0),(3,4,'大蒜',1.00,0.90,'中国山东',NULL,NULL,'2017-05-16',1,NULL,NULL,'大蒜',1),(4,12,'联想台式机',5222.00,4333.00,'中国北京',NULL,NULL,'2017-05-16',1,2,'','台式本',1),(5,11,'华硕笔记本',13333.00,120000.00,'中国杭州',NULL,NULL,'2017-05-16',1,3,NULL,'笔记本',1),(6,9,'华硕笔记本',13000.00,120000.00,'中国北京',NULL,NULL,'2017-08-19',1,4,NULL,'笔记本',1),(7,1,'华硕笔记本',1.00,1.00,'中国北京','1','1','2017-07-09',1,1,'1','笔记本',0),(8,2,'大蒜',1.00,1.00,'中国北京','1','1','2017-03-29',1,NULL,NULL,'大蒜',0),(9,1,'大蒜',12.00,12.00,'中国北京','1','1','2017-04-29',1,1,'','大蒜',0),(10,1,'大蒜',1.00,1.00,'中国北京','1','1','2017-03-18',1,1,'','大蒜',0),(11,1,'华硕笔记本',12.00,11.00,'中国北京','1','1','2017-07-12',1,1,'','笔记本',0);

#
# Structure for table "shao_shoptype"
#

DROP TABLE IF EXISTS `shao_shoptype`;
CREATE TABLE `shao_shoptype` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `name` varchar(20) DEFAULT NULL COMMENT '分类名称',
  `pid` int(11) DEFAULT NULL COMMENT '父id',
  `taim` varchar(1) DEFAULT NULL COMMENT '导航栏（1显示，0不显示）',
  `tshow` varchar(1) DEFAULT NULL COMMENT '是否显示（1先死，0，不显示）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=gbk ROW_FORMAT=COMPACT;

#
# Data for table "shao_shoptype"
#

INSERT INTO `shao_shoptype` VALUES (1,'商城分类表',0,'1','1'),(2,'蔬菜水果',1,'1','1'),(3,'苹果',2,'1','1'),(4,'大蒜',2,'1','1'),(5,'白菜',2,'1','1'),(6,'青菜',2,'1','1'),(7,'手机数码',1,'1','1'),(8,'手机',7,'1','1'),(9,'照相机',7,'1','1'),(10,'电脑配件',1,'1','1'),(11,'笔记本',10,'1','1'),(12,'台式本',10,'1','1'),(13,'服装鞋帽',1,'1','1'),(14,'上衣',13,'1','1'),(15,'短库',13,'1','1'),(16,'裙子',13,'1','1'),(17,'大白菜',2,'1','1');

#
# Structure for table "shao_user"
#

DROP TABLE IF EXISTS `shao_user`;
CREATE TABLE `shao_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `sex` char(2) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `telephone` int(1) DEFAULT NULL,
  `QQ` int(15) DEFAULT NULL,
  `auto` char(20) DEFAULT NULL,
  `creat_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pass` varchar(25) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `checked` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

#
# Data for table "shao_user"
#

INSERT INTO `shao_user` VALUES (1,'admin','保密',34,1881016029,990641141,'1','2017-07-26 12:03:02','123456',1,1),(2,'陈峰','男',23,1587907180,990641141,'25','2017-07-29 16:39:56','19910310',1,0);

#
# Structure for table "shoptype"
#

DROP TABLE IF EXISTS `shoptype`;
CREATE TABLE `shoptype` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `name` varchar(20) DEFAULT NULL COMMENT '分类名称',
  `children` int(11) DEFAULT NULL COMMENT '父id',
  `taim` varchar(1) DEFAULT NULL COMMENT '导航栏（1显示，0不显示）',
  `tshow` varchar(1) DEFAULT NULL COMMENT '是否显示（1先死，0，不显示）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=gbk ROW_FORMAT=COMPACT;

#
# Data for table "shoptype"
#

INSERT INTO `shoptype` VALUES (1,'商城分类表',0,'1','1'),(2,'蔬菜水果',1,'1','1'),(3,'苹果',2,'1','1'),(4,'大蒜',2,'1','1'),(5,'白菜',2,'1','1'),(6,'青菜',2,'1','1'),(7,'手机数码',1,'1','1'),(8,'手机',7,'1','1'),(9,'照相机',7,'1','1'),(10,'电脑配件',1,'1','1'),(11,'笔记本',10,'1','1'),(12,'台式本',10,'1','1'),(13,'服装鞋帽',1,'1','1'),(14,'上衣',13,'1','1'),(15,'短库',13,'1','1'),(16,'裙子',13,'1','1');
