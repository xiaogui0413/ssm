/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.5.56 : Database - test
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`test` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `test`;

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `code` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `major` varchar(50) DEFAULT NULL,
  `grade` varchar(50) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `birthday` varchar(50) DEFAULT NULL,
  `job` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=212126 DEFAULT CHARSET=utf8;

/*Data for the table `tb_user` */

insert  into `tb_user`(`sid`,`code`,`name`,`pwd`,`phone`,`major`,`grade`,`sex`,`birthday`,`job`) values (1,1003,'admin','000000','1388662097','软件工程','软工1班','1','1992.06.06','软件开发'),(2,1002,'xioahua','000000','1388662097','软件工程','软工1班','1','1992.06.06','软件开发'),(11,1025,'xioahu','000000','1388662097','软件工程','软工1班','1','1992.06.06','软件开发'),(32,3232,'32321','3232321','13886620971','计算机科学与技术1','000',NULL,NULL,NULL),(45,54,'54','545454','1388662097','计算机科学与技术',NULL,'2','1992.06.06','软件开发'),(127,212,'2121','2121','1388662097','计算机科学与技术','计算机1班','2','1992.06.06','软件开发'),(212,1221,'12121','2121211','1388662097','计算机科学与技术','软工1班','1','1992.06.06','软件开发'),(212121,2121,'2121','21212','1388662097','计算机科学与技术','软工1班','2','1992.06.06','软件开发'),(212122,767,'767','7676','767','67','76',NULL,NULL,NULL),(212123,2121,'212','2121','21212','212','2121',NULL,NULL,NULL),(212124,1,'1','1','13886620971','1','1',NULL,NULL,NULL),(212125,10089,'1','1','138866209711','1','1',NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
