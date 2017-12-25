/*
SQLyog Enterprise - MySQL GUI v6.14
MySQL - 5.0.18-nt : Database - blogver1
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `blogver1`;

USE `blogver1`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `article` */

DROP TABLE IF EXISTS `article`;

CREATE TABLE `article` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(20) NOT NULL,
  `content` mediumtext,
  `pubtime` datetime NOT NULL,
  `blogid` int(11) NOT NULL,
  `sortid` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `article` */

insert  into `article`(`id`,`title`,`content`,`pubtime`,`blogid`,`sortid`) values (1,'今天我做好了一件事情','今天我做好了一件事情，一件很酷的事情。','2016-01-21 10:50:01',1,1),(2,'你在他乡还好吗？','你还好吗?问候你一句。','2016-01-22 15:56:06',1,3),(3,'你好，时间','你好世界我的时间。','2016-01-22 15:56:06',2009,3),(4,'我很好','我很好','2016-01-22 16:54:34',1,1),(5,'中国，你好','中国，你好','2016-01-29 15:33:06',1,1),(6,'博客测试','<FONT color=#3333cc>博客测试</FONT>','2016-01-29 15:56:49',2,1);

/*Table structure for table `blog` */

DROP TABLE IF EXISTS `blog`;

CREATE TABLE `blog` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `image` varchar(100) default NULL,
  `visitcount` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `blog` */

insert  into `blog`(`id`,`username`,`password`,`subject`,`email`,`image`,`visitcount`) values (1,'admin','123456','你好','abcdef@email.com','image/default.jpg',1),(2,'admin1','admin1','你好，世界','nihao@163.com','image/default.jpg',1);

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL auto_increment,
  `uname` varchar(20) NOT NULL,
  `content` mediumtext,
  `pubtime` datetime NOT NULL,
  `articleid` int(11) NOT NULL,
  `ip` varchar(30) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `feedback` */

insert  into `feedback`(`id`,`uname`,`content`,`pubtime`,`articleid`,`ip`) values (1,'8cuo 8cuo','写的很好呀','2016-01-22 15:50:32',1,'127.0.0.1'),(2,'你好','<FONT color=#ffff00>做的 不错呀！<BR></FONT>','2016-01-28 09:38:43',1,'127.0.0.1'),(3,'你好','往往往往<BR>','2016-01-28 09:38:43',2,'127.0.0.1'),(4,'北方的狼','<BR><FONT color=#ff6633>看了不错哦！</FONT>','2016-01-28 09:44:28',1,'127.0.0.1'),(5,'北方的狼','<BR><FONT color=#ff6633>看了不错哦！</FONT>','2016-01-28 09:44:28',1,'127.0.0.1');

/*Table structure for table `links` */

DROP TABLE IF EXISTS `links`;

CREATE TABLE `links` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(40) NOT NULL,
  `url` varchar(100) NOT NULL,
  `blogid` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `links` */

insert  into `links`(`id`,`name`,`url`,`blogid`) values (1,'好123','http://www.hao123.com',1),(2,'九九物流网','http://www.9956.cn',1),(3,'九九物流网','http://www.9956.cn',1),(4,'九九物流网','http://www.9956.cn',1),(5,'九九物流网','http://www.9956.cn',1),(6,'九九物流网','http://www.9956.cn',1),(7,'九九物流网','http://www.9956.cn',1),(8,'九九物流网','http://www.9956.cn',1),(9,'九九物流网','http://www.9956.cn',1),(10,'九九物流网','http://www.9956.cn',1),(11,'九九物流网','http://www.9956.cn',1),(12,'九九物流网','http://www.9956.cn',1),(13,'九九物流网','http://www.9956.cn',1),(14,'九九物流网','http://www.9956.cn',1),(15,'九九物流网','http://www.9956.cn',1),(16,'九九物流网','http://www.9956.cn',1),(17,'九九物流网','http://www.9956.cn',1),(19,'九九物流网','http://www.9956.cn',1),(20,'九九物流网','http://www.9956.cn',1),(21,'九九物流网','http://www.9956.cn',1),(22,'九九物流网','http://www.9956.cn',1),(23,'九九物流网','http://www.9956.cn',1),(24,'九九物流网','http://www.9956.cn',1),(25,'九九物流网','http://www.9956.cn',1),(26,'九九物流网','http://www.9956.cn',1),(28,'百度','http://www.baidu.com',1),(31,'一呼百应','http://www.youboy.com',1);

/*Table structure for table `sort` */

DROP TABLE IF EXISTS `sort`;

CREATE TABLE `sort` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(40) NOT NULL,
  `blogid` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `sort` */

insert  into `sort`(`id`,`name`,`blogid`) values (1,'个人日记',1),(3,'个人博客',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
