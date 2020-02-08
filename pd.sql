/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 8.0.19-0ubuntu0.19.10.3 : Database - pd
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`pd` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `pd`;

/*Table structure for table `allow_type` */

DROP TABLE IF EXISTS `allow_type`;

CREATE TABLE `allow_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `allow_type` */

/*Table structure for table `attendance` */

DROP TABLE IF EXISTS `attendance`;

CREATE TABLE `attendance` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `empl_id` bigint NOT NULL,
  `log_type` int NOT NULL,
  `value` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `attendance` */

/*Table structure for table `empl_allow` */

DROP TABLE IF EXISTS `empl_allow`;

CREATE TABLE `empl_allow` (
  `empl_id` int NOT NULL,
  `allowance_type_id` int NOT NULL,
  `value` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `empl_allow` */

/*Table structure for table `empl_atten_hist` */

DROP TABLE IF EXISTS `empl_atten_hist`;

CREATE TABLE `empl_atten_hist` (
  `empl_id` bigint DEFAULT NULL,
  `log_time` datetime DEFAULT NULL,
  `log` int DEFAULT NULL,
  `ob` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `empl_atten_hist` */

/*Table structure for table `empl_pos_sal` */

DROP TABLE IF EXISTS `empl_pos_sal`;

CREATE TABLE `empl_pos_sal` (
  `empl_id` bigint DEFAULT NULL,
  `pos_id` bigint DEFAULT NULL,
  `salary_per_month` float DEFAULT NULL,
  `income_type` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `empl_pos_sal` */

/*Table structure for table `empl_proc_log` */

DROP TABLE IF EXISTS `empl_proc_log`;

CREATE TABLE `empl_proc_log` (
  `empl_id` bigint DEFAULT NULL,
  `date` date DEFAULT NULL,
  `attendance` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `empl_proc_log` */

/*Table structure for table `employees` */

DROP TABLE IF EXISTS `employees`;

CREATE TABLE `employees` (
  `id` bigint DEFAULT NULL,
  `no` int DEFAULT NULL,
  `fname` varchar(200) DEFAULT NULL,
  `mname` varchar(200) DEFAULT NULL,
  `lname` varchar(200) DEFAULT NULL,
  `address1` varchar(200) DEFAULT NULL,
  `address2` varchar(200) DEFAULT NULL,
  `contact1` varchar(40) DEFAULT NULL,
  `contact2` varchar(40) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `gender` int DEFAULT NULL,
  `religion` int DEFAULT NULL,
  `sss` varchar(40) DEFAULT NULL,
  `tin` varchar(40) DEFAULT NULL,
  `philhealt` varchar(40) DEFAULT NULL,
  `pagibig` varchar(40) DEFAULT NULL,
  `bithdate` varchar(40) DEFAULT NULL,
  `brgy` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `udf` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `employees` */

/*Table structure for table `evaluation` */

DROP TABLE IF EXISTS `evaluation`;

CREATE TABLE `evaluation` (
  `id` bigint DEFAULT NULL,
  `empl_id` bigint DEFAULT NULL,
  `sup_id` bigint DEFAULT NULL,
  `score` float DEFAULT NULL,
  `overall_scor` float DEFAULT NULL,
  `remark1` varchar(500) DEFAULT NULL,
  `remark2` varchar(500) DEFAULT NULL,
  `remark3` varchar(500) DEFAULT NULL,
  `date_submitted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `evaluation` */

/*Table structure for table `groups` */

DROP TABLE IF EXISTS `groups`;

CREATE TABLE `groups` (
  `id` bigint DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `groups` */

/*Table structure for table `log_type` */

DROP TABLE IF EXISTS `log_type`;

CREATE TABLE `log_type` (
  `id` int DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `log_type` */

/*Table structure for table `ob` */

DROP TABLE IF EXISTS `ob`;

CREATE TABLE `ob` (
  `id` bigint DEFAULT NULL,
  `user_approved` bigint DEFAULT NULL,
  `sup_approved` bigint DEFAULT NULL,
  `time_out` datetime DEFAULT NULL,
  `time_in` datetime DEFAULT NULL,
  `employee` bigint DEFAULT NULL,
  `type` int DEFAULT NULL,
  `descirption` varchar(500) DEFAULT NULL,
  `reason` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `ob` */

/*Table structure for table `ob_type` */

DROP TABLE IF EXISTS `ob_type`;

CREATE TABLE `ob_type` (
  `code` varchar(50) DEFAULT NULL,
  `id` int DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `ob_type` */

/*Table structure for table `position` */

DROP TABLE IF EXISTS `position`;

CREATE TABLE `position` (
  `id` int DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `min_sal` float DEFAULT NULL,
  `max_sal` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `position` */

/*Table structure for table `sal_history` */

DROP TABLE IF EXISTS `sal_history`;

CREATE TABLE `sal_history` (
  `empl_id` bigint DEFAULT NULL,
  `net_income` float DEFAULT NULL,
  `gross_income` float DEFAULT NULL,
  `late` float DEFAULT NULL,
  `undertime` float DEFAULT NULL,
  `ot` float DEFAULT NULL,
  `otnight` float DEFAULT NULL,
  `allowance` int DEFAULT NULL,
  `regular_holiday` float DEFAULT NULL,
  `special_holiday` float DEFAULT NULL,
  `date_range_start` datetime DEFAULT NULL,
  `date_range_end` datetime DEFAULT NULL,
  `deduction` int DEFAULT NULL,
  `loans` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `sal_history` */

/*Table structure for table `tables` */

DROP TABLE IF EXISTS `tables`;

CREATE TABLE `tables` (
  `id` int DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `tables` */

/*Table structure for table `udf_datatype` */

DROP TABLE IF EXISTS `udf_datatype`;

CREATE TABLE `udf_datatype` (
  `id` int DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `udf_datatype` */

/*Table structure for table `udf_empl_datatype` */

DROP TABLE IF EXISTS `udf_empl_datatype`;

CREATE TABLE `udf_empl_datatype` (
  `udf1` int DEFAULT NULL,
  `udf2` int DEFAULT NULL,
  `udf3` int DEFAULT NULL,
  `udf4` int DEFAULT NULL,
  `udf5` int DEFAULT NULL,
  `udf6` int DEFAULT NULL,
  `udf7` int DEFAULT NULL,
  `udf8` int DEFAULT NULL,
  `udf9` int DEFAULT NULL,
  `udf10` int DEFAULT NULL,
  `udf11` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `udf_empl_datatype` */

/*Table structure for table `udf_empl_value` */

DROP TABLE IF EXISTS `udf_empl_value`;

CREATE TABLE `udf_empl_value` (
  `id` bigint DEFAULT NULL,
  `udf1` varchar(1000) DEFAULT NULL,
  `udf2` varchar(1000) DEFAULT NULL,
  `udf3` varchar(1000) DEFAULT NULL,
  `udf4` varchar(1000) DEFAULT NULL,
  `udf5` varchar(1000) DEFAULT NULL,
  `udf6` varchar(1000) DEFAULT NULL,
  `udf7` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `udf8` varchar(1000) DEFAULT NULL,
  `udf9` varchar(1000) DEFAULT NULL,
  `udf10` varchar(1000) DEFAULT NULL,
  `udf11` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `udf_empl_value` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `mname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `group` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `users` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
