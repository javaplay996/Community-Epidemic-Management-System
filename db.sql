/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - shequyiqingguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shequyiqingguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shequyiqingguanli`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `daka` */

DROP TABLE IF EXISTS `daka`;

CREATE TABLE `daka` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `daka_name` varchar(200) DEFAULT NULL COMMENT '健康码打卡  Search111 ',
  `daka_file` varchar(200) DEFAULT NULL COMMENT '健康码照片',
  `daka_wendu` decimal(10,2) DEFAULT NULL COMMENT '体温',
  `daka_text` text COMMENT '备注 ',
  `daka_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='健康码打卡';

/*Data for the table `daka` */

insert  into `daka`(`id`,`yonghu_id`,`daka_name`,`daka_file`,`daka_wendu`,`daka_text`,`daka_delete`,`insert_time`,`create_time`) values (1,3,'健康码打卡1','upload/file.rar','357.93','备注1',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(2,1,'健康码打卡2','upload/file.rar','662.33','备注2',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(3,2,'健康码打卡3','upload/file.rar','631.92','备注3',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(4,2,'健康码打卡4','upload/file.rar','230.37','备注4',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(5,1,'健康码打卡5','upload/file.rar','35.79','备注5',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(6,1,'健康码打卡6','upload/file.rar','741.84','备注6',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(7,3,'健康码打卡7','upload/file.rar','576.01','备注7',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(8,2,'健康码打卡8','upload/file.rar','562.61','备注8',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(9,3,'健康码打卡9','upload/file.rar','287.43','备注9',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(10,3,'健康码打卡10','upload/file.rar','861.28','备注10',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(11,2,'健康码打卡11','upload/file.rar','976.16','备注11',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(12,3,'健康码打卡12','upload/file.rar','315.67','备注12',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(13,3,'健康码打卡13','upload/file.rar','333.80','备注13',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(14,3,'健康码打卡14','upload/file.rar','790.25','备注14',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(18,1,'打卡','upload/1680489910315.jpg','36.00','进入体温正常',1,'2023-04-03 10:45:22','2023-04-03 10:45:22');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-03 10:31:11'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-03 10:31:11'),(3,'news_types','新闻类型',1,'新闻类型1',NULL,NULL,'2023-04-03 10:31:11'),(4,'news_types','新闻类型',2,'新闻类型2',NULL,NULL,'2023-04-03 10:31:11'),(5,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-04-03 10:31:11'),(6,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-04-03 10:31:11'),(7,'wuzi_types','物资类型',1,'物资类型1',NULL,NULL,'2023-04-03 10:31:11'),(8,'wuzi_types','物资类型',2,'物资类型2',NULL,NULL,'2023-04-03 10:31:11'),(9,'wuzi_types','物资类型',3,'物资类型3',NULL,NULL,'2023-04-03 10:31:11'),(10,'wuzi_types','物资类型',4,'物资类型4',NULL,NULL,'2023-04-03 10:31:11'),(11,'wuzi_order_types','订单类型',101,'已分配',NULL,NULL,'2023-04-03 10:31:11'),(12,'wuzi_order_types','订单类型',102,'已取消分配',NULL,NULL,'2023-04-03 10:31:11'),(13,'wuzi_order_types','订单类型',103,'已分发',NULL,NULL,'2023-04-03 10:31:11'),(14,'wuzi_order_types','订单类型',104,'已领取物资',NULL,NULL,'2023-04-03 10:31:11'),(15,'yishi_types','疑似类型',1,'疑似感染',NULL,NULL,'2023-04-03 10:31:11'),(16,'yishi_types','疑似类型',2,'未感染',NULL,NULL,'2023-04-03 10:31:11'),(17,'fengkong_didian_types','地区',1,'地区1',NULL,NULL,'2023-04-03 10:31:11'),(18,'fengkong_didian_types','地区',2,'地区2',NULL,NULL,'2023-04-03 10:31:11'),(19,'fengkong_didian_types','地区',3,'地区3',NULL,NULL,'2023-04-03 10:31:11'),(20,'fengkong_types','风险类型',1,'低风险',NULL,NULL,'2023-04-03 10:31:11'),(21,'fengkong_types','风险类型',2,'中风险',NULL,NULL,'2023-04-03 10:31:11'),(22,'fengkong_types','风险类型',3,'高风险',NULL,NULL,'2023-04-03 10:31:11');

/*Table structure for table `fengkong` */

DROP TABLE IF EXISTS `fengkong`;

CREATE TABLE `fengkong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `fengkong_name` varchar(200) DEFAULT NULL COMMENT '地区名称  Search111 ',
  `fengkong_photo` varchar(200) DEFAULT NULL COMMENT '地区照片',
  `fengkong_didian_types` int(11) DEFAULT NULL COMMENT '地区 Search111',
  `fengkong_types` int(11) DEFAULT NULL COMMENT '风险类型 Search111',
  `fengkong_content` text COMMENT '地区介绍 ',
  `fengkong_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='隔离信息';

/*Data for the table `fengkong` */

insert  into `fengkong`(`id`,`fengkong_name`,`fengkong_photo`,`fengkong_didian_types`,`fengkong_types`,`fengkong_content`,`fengkong_delete`,`insert_time`,`create_time`) values (1,'地区名称1','upload/fengkong1.jpg',3,3,'地区介绍1',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(2,'地区名称2','upload/fengkong2.jpg',2,1,'地区介绍2',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(3,'地区名称3','upload/fengkong3.jpg',1,2,'地区介绍3',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(4,'地区名称4','upload/fengkong4.jpg',2,3,'地区介绍4',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(5,'地区名称5','upload/fengkong5.jpg',1,1,'地区介绍5',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(6,'地区名称6','upload/fengkong6.jpg',3,2,'地区介绍6',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(7,'地区名称7','upload/fengkong7.jpg',2,2,'地区介绍7',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(8,'地区名称8','upload/fengkong8.jpg',1,3,'地区介绍8',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(9,'地区名称9','upload/fengkong9.jpg',2,2,'地区介绍9',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(10,'地区名称10','upload/fengkong10.jpg',1,3,'地区介绍10',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(11,'地区名称11','upload/fengkong11.jpg',2,2,'地区介绍11',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(12,'地区名称12','upload/fengkong12.jpg',1,1,'地区介绍12',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(13,'地区名称13','upload/fengkong13.jpg',1,2,'地区介绍13',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(14,'地区名称14','upload/fengkong14.jpg',1,2,'地区介绍14',1,'2023-04-03 10:31:27','2023-04-03 10:31:27');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',1,NULL,'发布内容1',149,1,'2023-04-03 10:31:27','2023-04-03 10:31:27','2023-04-03 10:31:27'),(2,'帖子标题2',3,NULL,'发布内容2',97,1,'2023-04-03 10:31:27','2023-04-03 10:31:27','2023-04-03 10:31:27'),(3,'帖子标题3',1,NULL,'发布内容3',255,1,'2023-04-03 10:31:27','2023-04-03 10:31:27','2023-04-03 10:31:27'),(4,'帖子标题4',2,NULL,'发布内容4',237,1,'2023-04-03 10:31:27','2023-04-03 10:31:27','2023-04-03 10:31:27'),(5,'帖子标题5',2,NULL,'发布内容5',60,1,'2023-04-03 10:31:27','2023-04-03 10:31:27','2023-04-03 10:31:27'),(6,'帖子标题6',1,NULL,'发布内容6',273,1,'2023-04-03 10:31:27','2023-04-03 10:31:27','2023-04-03 10:31:27'),(7,'帖子标题7',3,NULL,'发布内容7',464,1,'2023-04-03 10:31:27','2023-04-03 10:31:27','2023-04-03 10:31:27'),(8,'帖子标题8',1,NULL,'发布内容8',281,1,'2023-04-03 10:31:27','2023-04-03 10:31:27','2023-04-03 10:31:27'),(9,'帖子标题9',2,NULL,'发布内容9',221,1,'2023-04-03 10:31:27','2023-04-03 10:31:27','2023-04-03 10:31:27'),(10,'帖子标题10',3,NULL,'发布内容10',259,1,'2023-04-03 10:31:27','2023-04-03 10:31:27','2023-04-03 10:31:27'),(11,'帖子标题11',2,NULL,'发布内容11',330,1,'2023-04-03 10:31:27','2023-04-03 10:31:27','2023-04-03 10:31:27'),(12,'帖子标题12',2,NULL,'发布内容12',72,1,'2023-04-03 10:31:27','2023-04-03 10:31:27','2023-04-03 10:31:27'),(13,'帖子标题13',3,NULL,'发布内容13',473,1,'2023-04-03 10:31:27','2023-04-03 10:31:27','2023-04-03 10:31:27'),(14,'帖子标题14',3,NULL,'发布内容14',419,1,'2023-04-03 10:31:27','2023-04-03 10:31:27','2023-04-03 10:31:27'),(15,'帖子',1,NULL,'<p>帖子1111</p>',NULL,1,'2023-04-03 10:41:56',NULL,'2023-04-03 10:41:56'),(16,'帖子',1,NULL,'<p>呀呀呀</p>',NULL,1,'2023-04-03 10:44:29',NULL,'2023-04-03 10:44:29'),(17,NULL,NULL,1,'sad撒sad ',16,2,'2023-04-03 10:46:15',NULL,'2023-04-03 10:46:15');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻名称 Search111  ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片 ',
  `news_types` int(11) NOT NULL COMMENT '新闻类型 Search111  ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '新闻发布时间 ',
  `news_content` longtext COMMENT '新闻详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='新闻信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_photo`,`news_types`,`insert_time`,`news_content`,`create_time`) values (1,'新闻名称1','upload/news1.jpg',2,'2023-04-03 10:31:27','新闻详情1','2023-04-03 10:31:27'),(2,'新闻名称2','upload/news2.jpg',1,'2023-04-03 10:31:27','新闻详情2','2023-04-03 10:31:27'),(3,'新闻名称3','upload/news3.jpg',2,'2023-04-03 10:31:27','新闻详情3','2023-04-03 10:31:27'),(4,'新闻名称4','upload/news4.jpg',2,'2023-04-03 10:31:27','新闻详情4','2023-04-03 10:31:27'),(5,'新闻名称5','upload/news5.jpg',1,'2023-04-03 10:31:27','新闻详情5','2023-04-03 10:31:27'),(6,'新闻名称6','upload/news6.jpg',2,'2023-04-03 10:31:27','新闻详情6','2023-04-03 10:31:27'),(7,'新闻名称7','upload/news7.jpg',1,'2023-04-03 10:31:27','新闻详情7','2023-04-03 10:31:27'),(8,'新闻名称8','upload/news8.jpg',1,'2023-04-03 10:31:27','新闻详情8','2023-04-03 10:31:27'),(9,'新闻名称9','upload/news9.jpg',2,'2023-04-03 10:31:27','新闻详情9','2023-04-03 10:31:27'),(10,'新闻名称10','upload/news10.jpg',2,'2023-04-03 10:31:27','新闻详情10','2023-04-03 10:31:27'),(11,'新闻名称11','upload/news11.jpg',1,'2023-04-03 10:31:27','新闻详情11','2023-04-03 10:31:27'),(12,'新闻名称12','upload/news12.jpg',2,'2023-04-03 10:31:27','新闻详情12','2023-04-03 10:31:27'),(13,'新闻名称13','upload/news13.jpg',2,'2023-04-03 10:31:27','新闻详情13','2023-04-03 10:31:27'),(14,'新闻名称14','upload/news14.jpg',2,'2023-04-03 10:31:27','新闻详情14','2023-04-03 10:31:27');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '儿童id',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','m4qn6099062wq1fo88uo6ofdadls69qv','2023-04-03 10:34:11','2023-04-03 11:45:41'),(2,1,'a1','yonghu','用户','qpus411pdytbl16w4zj0d2rhqyzn3djq','2023-04-03 10:34:49','2023-04-03 11:44:11');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-03 10:31:11');

/*Table structure for table `wuzi` */

DROP TABLE IF EXISTS `wuzi`;

CREATE TABLE `wuzi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `wuzi_name` varchar(200) DEFAULT NULL COMMENT '物资名称  Search111 ',
  `wuzi_uuid_number` varchar(200) DEFAULT NULL COMMENT '物资编号',
  `wuzi_address` varchar(200) DEFAULT NULL COMMENT '领取地点',
  `wuzi_photo` varchar(200) DEFAULT NULL COMMENT '物资照片',
  `wuzi_xinghao` varchar(200) DEFAULT NULL COMMENT '物资型号',
  `wuzi_guige` varchar(200) DEFAULT NULL COMMENT '物资规格',
  `wuzi_changjia` varchar(200) DEFAULT NULL COMMENT '物资生产厂家',
  `wuzi_types` int(11) DEFAULT NULL COMMENT '物资类型 Search111',
  `wuzi_kucun_number` int(11) DEFAULT NULL COMMENT '物资库存',
  `wuzi_content` longtext COMMENT '物资介绍 ',
  `wuzi_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='物资';

/*Data for the table `wuzi` */

insert  into `wuzi`(`id`,`wuzi_name`,`wuzi_uuid_number`,`wuzi_address`,`wuzi_photo`,`wuzi_xinghao`,`wuzi_guige`,`wuzi_changjia`,`wuzi_types`,`wuzi_kucun_number`,`wuzi_content`,`wuzi_delete`,`insert_time`,`create_time`) values (1,'物资名称1','1680489087128','领取地点1','upload/wuzi1.jpg','物资型号1','物资规格1','物资生产厂家1',3,101,'物资介绍1',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(2,'物资名称2','1680489087067','领取地点2','upload/wuzi2.jpg','物资型号2','物资规格2','物资生产厂家2',4,102,'物资介绍2',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(3,'物资名称3','1680489087118','领取地点3','upload/wuzi3.jpg','物资型号3','物资规格3','物资生产厂家3',1,103,'物资介绍3',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(4,'物资名称4','1680489087124','领取地点4','upload/wuzi4.jpg','物资型号4','物资规格4','物资生产厂家4',2,104,'物资介绍4',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(5,'物资名称5','1680489087152','领取地点5','upload/wuzi5.jpg','物资型号5','物资规格5','物资生产厂家5',2,105,'物资介绍5',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(6,'物资名称6','1680489087167','领取地点6','upload/wuzi6.jpg','物资型号6','物资规格6','物资生产厂家6',3,106,'物资介绍6',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(7,'物资名称7','1680489087073','领取地点7','upload/wuzi7.jpg','物资型号7','物资规格7','物资生产厂家7',3,107,'物资介绍7',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(8,'物资名称8','1680489087096','领取地点8','upload/wuzi8.jpg','物资型号8','物资规格8','物资生产厂家8',1,108,'物资介绍8',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(9,'物资名称9','1680489087165','领取地点9','upload/wuzi9.jpg','物资型号9','物资规格9','物资生产厂家9',1,109,'物资介绍9',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(10,'物资名称10','1680489087094','领取地点10','upload/wuzi10.jpg','物资型号10','物资规格10','物资生产厂家10',2,1010,'物资介绍10',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(11,'物资名称11','1680489087098','领取地点11','upload/wuzi11.jpg','物资型号11','物资规格11','物资生产厂家11',4,1011,'物资介绍11',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(12,'物资名称12','1680489087085','领取地点12','upload/wuzi12.jpg','物资型号12','物资规格12','物资生产厂家12',3,1012,'物资介绍12',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(13,'物资名称13','1680489087129','领取地点13','upload/wuzi13.jpg','物资型号13','物资规格13','物资生产厂家13',1,1013,'物资介绍13',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(14,'物资名称14','1680489087080','领取地点14','upload/wuzi14.jpg','物资型号14','物资规格14','物资生产厂家14',3,1009,'物资介绍14',1,'2023-04-03 10:31:27','2023-04-03 10:31:27');

/*Table structure for table `wuzi_order` */

DROP TABLE IF EXISTS `wuzi_order`;

CREATE TABLE `wuzi_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wuzi_id` int(11) DEFAULT NULL COMMENT '物资',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '分配数量',
  `wuzi_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='物资分配';

/*Data for the table `wuzi_order` */

insert  into `wuzi_order`(`id`,`wuzi_id`,`yonghu_id`,`buy_number`,`wuzi_order_types`,`insert_time`,`create_time`) values (1,14,1,1,104,'2023-04-03 10:43:29','2023-04-03 10:43:29'),(2,14,1,4,103,'2023-04-03 10:44:44','2023-04-03 10:44:44');

/*Table structure for table `yishi` */

DROP TABLE IF EXISTS `yishi`;

CREATE TABLE `yishi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `daka_id` int(11) DEFAULT NULL COMMENT '打卡',
  `yishi_name` varchar(200) DEFAULT NULL COMMENT '疑似名称  Search111 ',
  `yishi_photo` varchar(200) DEFAULT NULL COMMENT '疑似照片',
  `yishi_types` int(11) DEFAULT NULL COMMENT '疑似类型 Search111',
  `yishi_content` text COMMENT '疑似介绍 ',
  `yishi_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='疑似人员';

/*Data for the table `yishi` */

insert  into `yishi`(`id`,`daka_id`,`yishi_name`,`yishi_photo`,`yishi_types`,`yishi_content`,`yishi_delete`,`insert_time`,`create_time`) values (1,1,'疑似名称1','upload/yishi1.jpg',1,'疑似介绍1',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(2,2,'疑似名称2','upload/yishi2.jpg',1,'疑似介绍2',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(3,3,'疑似名称3','upload/yishi3.jpg',1,'疑似介绍3',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(4,4,'疑似名称4','upload/yishi4.jpg',1,'疑似介绍4',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(5,5,'疑似名称5','upload/yishi5.jpg',1,'疑似介绍5',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(6,6,'疑似名称6','upload/yishi6.jpg',1,'疑似介绍6',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(7,7,'疑似名称7','upload/yishi7.jpg',1,'疑似介绍7',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(8,8,'疑似名称8','upload/yishi8.jpg',1,'疑似介绍8',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(9,9,'疑似名称9','upload/yishi9.jpg',2,'疑似介绍9',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(10,10,'疑似名称10','upload/yishi10.jpg',2,'疑似介绍10',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(11,11,'疑似名称11','upload/yishi11.jpg',1,'疑似介绍11',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(12,12,'疑似名称12','upload/yishi12.jpg',2,'疑似介绍12',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(13,13,'疑似名称13','upload/yishi13.jpg',2,'疑似介绍13',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(14,14,'疑似名称14','upload/yishi14.jpg',1,'疑似介绍14',1,'2023-04-03 10:31:27','2023-04-03 10:31:27'),(15,18,'疑似感染','/upload/1680490032176.jpg',1,'<p>感染</p>',1,'2023-04-03 10:47:13','2023-04-03 10:47:13');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',1,'1@qq.com','2023-04-03 10:31:27'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2@qq.com','2023-04-03 10:31:27'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com','2023-04-03 10:31:27');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
