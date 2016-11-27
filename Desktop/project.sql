/*
Navicat MySQL Data Transfer

Source Server         : 123
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : project

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2016-11-27 19:19:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for commonds
-- ----------------------------
DROP TABLE IF EXISTS `commonds`;
CREATE TABLE `commonds` (
  `sid` int(20) unsigned NOT NULL,
  `cid` int(20) unsigned NOT NULL,
  `commond` text,
  PRIMARY KEY (`sid`,`cid`),
  KEY `sid` (`sid`) USING BTREE,
  KEY `cid` (`cid`) USING BTREE,
  CONSTRAINT `commonds_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `students` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `commonds_ibfk_2` FOREIGN KEY (`cid`) REFERENCES `courses` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of commonds
-- ----------------------------

-- ----------------------------
-- Table structure for courses
-- ----------------------------
DROP TABLE IF EXISTS `courses`;
CREATE TABLE `courses` (
  `cid` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) NOT NULL,
  `tid` int(20) unsigned NOT NULL,
  `ctime` datetime NOT NULL,
  `cplace` varchar(255) NOT NULL,
  `number` int(11) NOT NULL,
  `ctype` varchar(255) NOT NULL,
  `cprice` float(10,2) NOT NULL,
  `cintroduce` text NOT NULL,
  `leftcourse` int(11) NOT NULL,
  PRIMARY KEY (`cid`),
  KEY `tid` (`tid`) USING BTREE,
  KEY `cprice` (`cprice`),
  CONSTRAINT `courses_ibfk_3` FOREIGN KEY (`tid`) REFERENCES `teachers` (`tid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses
-- ----------------------------

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `oid` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(20) unsigned NOT NULL,
  `cid` int(20) unsigned NOT NULL,
  `otype` varchar(255) NOT NULL,
  `otime` datetime NOT NULL,
  `payway` varchar(255) NOT NULL,
  `paynumber` int(11) NOT NULL,
  `money` float NOT NULL,
  PRIMARY KEY (`oid`),
  KEY `sid` (`sid`) USING BTREE,
  KEY `cid` (`cid`) USING BTREE,
  KEY `money` (`money`) USING BTREE,
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `students` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`cid`) REFERENCES `courses` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`money`) REFERENCES `courses` (`cprice`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for students
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `sid` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `sname` varchar(255) NOT NULL,
  `ssex` varchar(10) NOT NULL,
  `sdate` date NOT NULL,
  `stel` varchar(20) NOT NULL,
  `sadd` varchar(255) NOT NULL,
  `spassword` varchar(255) NOT NULL,
  `registerdate` datetime NOT NULL,
  `id` char(255) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of students
-- ----------------------------
INSERT INTO `students` VALUES ('1', 'çŽ‹æ™—', 'ç”·', '0000-00-00', '1512354', '', '123456', '0000-00-00 00:00:00', '');
INSERT INTO `students` VALUES ('2', 'çŽ‹æ™—', 'ç”·', '0000-00-00', '123456', 'å¤©æ´¥', '123456', '0000-00-00 00:00:00', '');
INSERT INTO `students` VALUES ('3', '??????娑?', '濂?', '0000-00-00', '456', '澶╂触', '456123', '0000-00-00 00:00:00', '');
INSERT INTO `students` VALUES ('4', '??????娑?', '濂?', '0000-00-00', '456', '澶╂触', '123456', '0000-00-00 00:00:00', '');
INSERT INTO `students` VALUES ('5', '??????娑?', '濂?', '0000-00-00', '456', '澶╂触', '111', '0000-00-00 00:00:00', '');
INSERT INTO `students` VALUES ('6', 'çŽ‹æ™“æ¶µ', 'å¥³', '0000-00-00', '456', 'å¤©æ´¥', '123', '0000-00-00 00:00:00', '');
INSERT INTO `students` VALUES ('7', 'çŽ‹æ™“æ¶µ', 'å¥³', '0000-00-00', '456', 'å¤©æ´¥', '321', '0000-00-00 00:00:00', '');
INSERT INTO `students` VALUES ('8', 'çŽ‹æ™“æ¶µ', 'å¥³', '0000-00-00', '456', 'å¤©æ´¥', '123456', '0000-00-00 00:00:00', '');
INSERT INTO `students` VALUES ('9', 'çŽ‹æ™—', 'ç”·', '0000-00-00', '121', 'å¤©æ´¥', '123', '0000-00-00 00:00:00', '');
INSERT INTO `students` VALUES ('10', 'çŽ‹æ™—', 'ç”·', '0000-00-00', '123121', 'å¤©æ´¥', '123', '0000-00-00 00:00:00', '');
INSERT INTO `students` VALUES ('11', 'çŽ‹æ™—', 'ç”·', '0000-00-00', '123121', 'å¤©æ´¥', '123456', '0000-00-00 00:00:00', '');
INSERT INTO `students` VALUES ('12', 'çŽ‹æ™—', 'ç”·', '0000-00-00', '123121', 'å¤©æ´¥', '123', '0000-00-00 00:00:00', '');
INSERT INTO `students` VALUES ('13', 'çŽ‹æ™—', 'ç”·', '0000-00-00', '121', 'å¤©æ´¥', '123', '0000-00-00 00:00:00', '');
INSERT INTO `students` VALUES ('14', 'çŽ‹æ™—', 'ç”·', '0000-00-00', '123', 'å¤©æ´¥', '123', '0000-00-00 00:00:00', '');
INSERT INTO `students` VALUES ('15', 'çŽ‹æ™—', 'ç”·', '0000-00-00', '121', 'å¤©æ´¥', '123', '0000-00-00 00:00:00', '');
INSERT INTO `students` VALUES ('16', 'çŽ‹æ™—', 'ç”·', '0000-00-00', '123', 'å¤©æ´¥', '1', '0000-00-00 00:00:00', '');
INSERT INTO `students` VALUES ('17', 'çŽ‹æ™—', 'ç”·', '0000-00-00', '123', 'å¤©æ´¥', '1', '0000-00-00 00:00:00', '');
INSERT INTO `students` VALUES ('18', 'çŽ‹æ™—', 'ç”·', '0000-00-00', '121', 'å¤©æ´¥', '1', '0000-00-00 00:00:00', '');
INSERT INTO `students` VALUES ('19', 'çŽ‹æ™—', 'ç”·', '0000-00-00', '121', 'å¤©æ´¥', '123', '0000-00-00 00:00:00', '');
INSERT INTO `students` VALUES ('20', 'æ½˜è±¹', 'ç”·', '1996-03-05', '151', 'å¤©æ´¥å¸‚', '123', '0000-00-00 00:00:00', '15311');
INSERT INTO `students` VALUES ('21', 'æ½˜è±¹', 'ç”·', '1996-03-05', '151', 'å¤©æ´¥å¸‚', '123', '0000-00-00 00:00:00', '15311');
INSERT INTO `students` VALUES ('22', 'æ½˜è±¹', 'ç”·', '1996-03-05', '151', 'å¤©æ´¥å¸‚', '123', '0000-00-00 00:00:00', '15311');
INSERT INTO `students` VALUES ('23', 'æ½˜è±¹', 'ç”·', '1996-03-05', '151', 'å¤©æ´¥å¸‚', '123', '0000-00-00 00:00:00', '15311');
INSERT INTO `students` VALUES ('24', 'æ½˜è±¹', 'ç”·', '1996-03-05', '151', 'å¤©æ´¥å¸‚', '1', '2016-11-26 16:45:36', '15311');
INSERT INTO `students` VALUES ('25', 'æ½˜è±¹', 'ç”·', '1990-02-02', '123', 'å¤©æ´¥', '1', '2016-11-26 17:41:31', '123');
INSERT INTO `students` VALUES ('26', 'æ½˜è±¹', 'ç”·', '1990-02-02', '123', 'å¤©æ´¥', '123', '2016-11-26 17:43:21', '123');
INSERT INTO `students` VALUES ('27', 'æ½˜è±¹', 'ç”·', '1990-02-02', '123', 'å¤©æ´¥', '123', '2016-11-26 17:52:25', '123');
INSERT INTO `students` VALUES ('28', 'æ½˜è±¹', 'ç”·', '1990-02-02', '123', 'å¤©æ´¥', '123', '2016-11-26 18:04:52', '123');

-- ----------------------------
-- Table structure for teachers
-- ----------------------------
DROP TABLE IF EXISTS `teachers`;
CREATE TABLE `teachers` (
  `tid` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `tsex` varchar(20) NOT NULL,
  `tname` varchar(255) NOT NULL,
  `tdate` date NOT NULL,
  `tadd` varchar(255) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `tpassword` varchar(255) NOT NULL,
  `ttel` varchar(20) NOT NULL,
  `tintroduce` text NOT NULL,
  `position` varchar(255) NOT NULL,
  `tregistetime` datetime NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teachers
-- ----------------------------

-- ----------------------------
-- Table structure for teachers_cache
-- ----------------------------
DROP TABLE IF EXISTS `teachers_cache`;
CREATE TABLE `teachers_cache` (
  `tid` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `tsex` varchar(20) NOT NULL,
  `tname` varchar(255) NOT NULL,
  `tdate` date NOT NULL,
  `tadd` varchar(255) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `tpassword` varchar(255) NOT NULL,
  `ttel` varchar(20) NOT NULL,
  `tintroduce` text NOT NULL,
  `position` varchar(255) NOT NULL,
  `tregistetime` datetime NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teachers_cache
-- ----------------------------

-- ----------------------------
-- View structure for studentinformation
-- ----------------------------
DROP VIEW IF EXISTS `studentinformation`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `studentinformation` AS SELECT
students.sname AS `姓名`,
students.ssex AS `性别`,
students.sage AS `年龄`,
students.stel AS `电话`,
students.sadd AS `住址`,
students.spassword AS `密码`
FROM
students
WHERE
sid = sid ;
