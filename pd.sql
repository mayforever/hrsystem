/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.13-log : Database - pd
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`pd` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin */;

USE `pd`;

/*Table structure for table `allow_type` */

DROP TABLE IF EXISTS `allow_type`;

CREATE TABLE `allow_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

/*Data for the table `allow_type` */

insert  into `allow_type`(`id`,`code`,`name`,`description`) values (1,'KPIA-1','KPIA-1','2500'),(2,'KPIA-2','KPIA-2','2000');

/*Table structure for table `attendance` */

DROP TABLE IF EXISTS `attendance`;

CREATE TABLE `attendance` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `empl_id` bigint(20) NOT NULL,
  `log_type` int(11) NOT NULL,
  `value` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

/*Data for the table `attendance` */

/*Table structure for table `empl_allow` */

DROP TABLE IF EXISTS `empl_allow`;

CREATE TABLE `empl_allow` (
  `empl_id` int(11) NOT NULL,
  `allowance_type_id` int(11) NOT NULL,
  `value` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

/*Data for the table `empl_allow` */

insert  into `empl_allow`(`empl_id`,`allowance_type_id`,`value`) values (1,1,NULL);

/*Table structure for table `empl_atten_hist` */

DROP TABLE IF EXISTS `empl_atten_hist`;

CREATE TABLE `empl_atten_hist` (
  `empl_id` bigint(20) DEFAULT NULL,
  `log_time` datetime DEFAULT NULL,
  `log` int(11) DEFAULT NULL,
  `ob` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

/*Data for the table `empl_atten_hist` */

/*Table structure for table `empl_pos_sal` */

DROP TABLE IF EXISTS `empl_pos_sal`;

CREATE TABLE `empl_pos_sal` (
  `empl_id` bigint(20) DEFAULT NULL,
  `pos_id` bigint(20) DEFAULT NULL,
  `salary_per_month` float DEFAULT NULL,
  `income_type` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

/*Data for the table `empl_pos_sal` */

insert  into `empl_pos_sal`(`empl_id`,`pos_id`,`salary_per_month`,`income_type`) values (1,1,25000,1);

/*Table structure for table `empl_proc_log` */

DROP TABLE IF EXISTS `empl_proc_log`;

CREATE TABLE `empl_proc_log` (
  `empl_id` bigint(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `attendance` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

/*Data for the table `empl_proc_log` */

/*Table structure for table `employees` */

DROP TABLE IF EXISTS `employees`;

CREATE TABLE `employees` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `no` int(11) NOT NULL,
  `fname` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `mname` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `lname` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `address1` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `address2` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `contact1` varchar(40) COLLATE utf8mb4_bin NOT NULL,
  `contact2` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `birthdate` date NOT NULL,
  `gender` int(11) NOT NULL,
  `religion` int(11) NOT NULL,
  `sss` varchar(40) COLLATE utf8mb4_bin NOT NULL,
  `tin` varchar(40) COLLATE utf8mb4_bin NOT NULL,
  `philhealth` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `pagibig` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `bithdate` varchar(40) COLLATE utf8mb4_bin NOT NULL,
  `brgy` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `city` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `province` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `udf` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

/*Data for the table `employees` */

insert  into `employees`(`id`,`no`,`fname`,`mname`,`lname`,`address1`,`address2`,`contact1`,`contact2`,`birthdate`,`gender`,`religion`,`sss`,`tin`,`philhealth`,`pagibig`,`bithdate`,`brgy`,`city`,`province`,`udf`) values (1,120351,'John Aaron','Candelaria','Candelaria','Candelaria','Candelaria','Candelaria',NULL,'2020-03-20',0,1,'111111111111111','2222222222222222222','111111111','111111111111111','Candelaria','Looc','Cardona','Rizal',1);

/*Table structure for table `evaluation` */

DROP TABLE IF EXISTS `evaluation`;

CREATE TABLE `evaluation` (
  `id` bigint(20) DEFAULT NULL,
  `empl_id` bigint(20) DEFAULT NULL,
  `sup_id` bigint(20) DEFAULT NULL,
  `score` float DEFAULT NULL,
  `overall_scor` float DEFAULT NULL,
  `remark1` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL,
  `remark2` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL,
  `remark3` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL,
  `date_submitted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

/*Data for the table `evaluation` */

/*Table structure for table `groups` */

DROP TABLE IF EXISTS `groups`;

CREATE TABLE `groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `description` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

/*Data for the table `groups` */

insert  into `groups`(`id`,`code`,`name`,`description`) values (1,'MASTER','Programmer',NULL),(2,'HRMAN','HR Manager',NULL),(3,'ITMAN','IT Manager',NULL),(4,'HRASSIST','HR ASSISTANT',NULL),(5,'PAYROLL','Payroll Master',NULL),(6,'AUDIT','Audit',NULL);

/*Table structure for table `log_type` */

DROP TABLE IF EXISTS `log_type`;

CREATE TABLE `log_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

/*Data for the table `log_type` */

insert  into `log_type`(`id`,`code`) values (1,'IN'),(2,'OUT'),(3,'BREAK-IN'),(4,'BREAK-OUT');

/*Table structure for table `ob` */

DROP TABLE IF EXISTS `ob`;

CREATE TABLE `ob` (
  `id` bigint(20) DEFAULT NULL,
  `user_approved` bigint(20) DEFAULT NULL,
  `sup_approved` bigint(20) DEFAULT NULL,
  `time_out` datetime DEFAULT NULL,
  `time_in` datetime DEFAULT NULL,
  `employee` bigint(20) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `descirption` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL,
  `reason` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

/*Data for the table `ob` */

/*Table structure for table `ob_type` */

DROP TABLE IF EXISTS `ob_type`;

CREATE TABLE `ob_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `description` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`code`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

/*Data for the table `ob_type` */

insert  into `ob_type`(`id`,`code`,`name`,`description`) values (1,'OB001','Official Business','Normal OB'),(2,'SL001','Sick Leave','use when sick'),(3,'VL001','Vacation Leave','Normal Vacation Leave');

/*Table structure for table `position` */

DROP TABLE IF EXISTS `position`;

CREATE TABLE `position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `description` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL,
  `min_sal` float NOT NULL,
  `max_sal` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

/*Data for the table `position` */

insert  into `position`(`id`,`code`,`name`,`description`,`min_sal`,`max_sal`) values (1,'PROG001','JR Programmer','Newly Grad Programmer',18000,20000),(2,'PROG004','SR Programmer','Senior Programmer',26000,40000);

/*Table structure for table `sal_history` */

DROP TABLE IF EXISTS `sal_history`;

CREATE TABLE `sal_history` (
  `empl_id` bigint(20) DEFAULT NULL,
  `net_income` float DEFAULT NULL,
  `gross_income` float DEFAULT NULL,
  `late` float DEFAULT NULL,
  `undertime` float DEFAULT NULL,
  `ot` float DEFAULT NULL,
  `otnight` float DEFAULT NULL,
  `allowance` int(11) DEFAULT NULL,
  `regular_holiday` float DEFAULT NULL,
  `special_holiday` float DEFAULT NULL,
  `date_range_start` datetime DEFAULT NULL,
  `date_range_end` datetime DEFAULT NULL,
  `deduction` int(11) DEFAULT NULL,
  `loans` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

/*Data for the table `sal_history` */

/*Table structure for table `tables` */

DROP TABLE IF EXISTS `tables`;

CREATE TABLE `tables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

/*Data for the table `tables` */

insert  into `tables`(`id`,`name`,`description`) values (1,'allow_type',NULL),(2,'attendance',NULL),(3,'empl_allow',NULL),(4,'empl_atten_hist',NULL);

/*Table structure for table `udf_datatype` */

DROP TABLE IF EXISTS `udf_datatype`;

CREATE TABLE `udf_datatype` (
  `id` int(11) DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `description` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

/*Data for the table `udf_datatype` */

/*Table structure for table `udf_empl_datatype` */

DROP TABLE IF EXISTS `udf_empl_datatype`;

CREATE TABLE `udf_empl_datatype` (
  `udf1` int(11) DEFAULT NULL,
  `udf2` int(11) DEFAULT NULL,
  `udf3` int(11) DEFAULT NULL,
  `udf4` int(11) DEFAULT NULL,
  `udf5` int(11) DEFAULT NULL,
  `udf6` int(11) DEFAULT NULL,
  `udf7` int(11) DEFAULT NULL,
  `udf8` int(11) DEFAULT NULL,
  `udf9` int(11) DEFAULT NULL,
  `udf10` int(11) DEFAULT NULL,
  `udf11` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

/*Data for the table `udf_empl_datatype` */

/*Table structure for table `udf_empl_value` */

DROP TABLE IF EXISTS `udf_empl_value`;

CREATE TABLE `udf_empl_value` (
  `id` bigint(20) DEFAULT NULL,
  `udf1` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL,
  `udf2` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL,
  `udf3` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL,
  `udf4` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL,
  `udf5` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL,
  `udf6` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL,
  `udf7` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL,
  `udf8` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL,
  `udf9` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL,
  `udf10` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL,
  `udf11` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

/*Data for the table `udf_empl_value` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `fname` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `mname` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `lname` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `group` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

/*Data for the table `users` */

insert  into `users`(`id`,`code`,`fname`,`mname`,`lname`,`password`,`group`) values (1,'aaron15','John Aaron','Candelaria','Valencia','misreset07',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
