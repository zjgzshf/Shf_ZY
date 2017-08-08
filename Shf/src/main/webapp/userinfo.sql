/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50534
Source Host           : localhost:3306
Source Database       : books

Target Server Type    : MYSQL
Target Server Version : 50534
File Encoding         : 65001

Date: 2017-08-08 14:32:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(20) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `introduction` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `loginname` (`loginname`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1', 'admin', '123', '');
INSERT INTO `userinfo` VALUES ('2', 'user1', 'p2', '');
INSERT INTO `userinfo` VALUES ('3', 'user2', 'p2', '');
INSERT INTO `userinfo` VALUES ('4', 'username', 'password', '');
INSERT INTO `userinfo` VALUES ('5', 'tom', 'p3', 'eeeee');
INSERT INTO `userinfo` VALUES ('7', 'fgg', 'dd', 'www');
INSERT INTO `userinfo` VALUES ('8', 'wew', 'ss', 'aa');
INSERT INTO `userinfo` VALUES ('9', 'a', 'a', 'a');
INSERT INTO `userinfo` VALUES ('10', 's2', 's2', 's2');
INSERT INTO `userinfo` VALUES ('11', 's3', 's3', 's3');
