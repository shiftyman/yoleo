/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : yoleo

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2016-10-12 09:22:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for friend
-- ----------------------------
DROP TABLE IF EXISTS `friend`;
CREATE TABLE `friend` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `friend_id` bigint(20) DEFAULT NULL COMMENT '好友uid',
  `create_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `post_id` bigint(20) DEFAULT NULL COMMENT '帖子id',
  `cost` int(11) DEFAULT NULL COMMENT '费用',
  `create_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) DEFAULT NULL COMMENT '标题',
  `user_id` bigint(20) DEFAULT NULL COMMENT '发帖人',
  `description` varchar(500) DEFAULT NULL COMMENT '描述',
  `private_detail` varchar(500) DEFAULT NULL COMMENT '付费内容',
  `price` int(11) DEFAULT NULL COMMENT '单价。单位为分',
  `value` bigint(20) DEFAULT NULL COMMENT '总价值',
  `attack` int(11) DEFAULT NULL COMMENT '贬数量',
  `support` int(11) DEFAULT NULL COMMENT '赞数量',
  `create_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `nick` varchar(20) NOT NULL DEFAULT '' COMMENT '昵称',
  `sex` tinyint(1) DEFAULT '0' COMMENT '性别：0男、1女',
  `phone` varchar(20) DEFAULT '' COMMENT '电话',
  `location` varchar(200) DEFAULT '' COMMENT '位置',
  `create_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
