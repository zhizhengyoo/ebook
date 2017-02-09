/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50625
Source Host           : localhost:3306
Source Database       : ebook

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2017-02-09 16:15:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_book
-- ----------------------------
DROP TABLE IF EXISTS `sys_book`;
CREATE TABLE `sys_book` (
  `BOOK_ID` int(11) NOT NULL AUTO_INCREMENT,
  `BOOK_NAME` varchar(255) DEFAULT NULL,
  `AUTHOR` varchar(40) DEFAULT NULL COMMENT '作者',
  `BOOK_INFO` text COMMENT '书籍信息',
  `PRICE` decimal(10,0) DEFAULT NULL COMMENT '单价',
  `USER_ID` int(11) DEFAULT NULL,
  `CATEGORY_ID` int(11) DEFAULT NULL,
  `COVER` varchar(255) DEFAULT NULL COMMENT '封面',
  `PUBLISHING_COMPANY` varchar(255) DEFAULT NULL COMMENT '出版社',
  PRIMARY KEY (`BOOK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_book
-- ----------------------------

-- ----------------------------
-- Table structure for sys_category
-- ----------------------------
DROP TABLE IF EXISTS `sys_category`;
CREATE TABLE `sys_category` (
  `CATEGORY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CATEGORY_NAME` varchar(40) DEFAULT NULL,
  `PARENT_C_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`CATEGORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_category
-- ----------------------------

-- ----------------------------
-- Table structure for sys_comment
-- ----------------------------
DROP TABLE IF EXISTS `sys_comment`;
CREATE TABLE `sys_comment` (
  `COMMENT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) DEFAULT NULL,
  `BOOK_ID` int(11) DEFAULT NULL,
  `CONTENT` text,
  `BOOK_COMMENT_LEVEL` int(11) DEFAULT NULL COMMENT '书本描述分数',
  `SELLER_COMMENT_LEVEL` int(11) DEFAULT NULL COMMENT '卖家服务评价',
  `UPS_COMMENT_LEVEL` int(11) DEFAULT NULL COMMENT '发货速度评价',
  PRIMARY KEY (`COMMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_comment
-- ----------------------------

-- ----------------------------
-- Table structure for sys_inventory
-- ----------------------------
DROP TABLE IF EXISTS `sys_inventory`;
CREATE TABLE `sys_inventory` (
  `INVENTORY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `BOOK_ID` int(11) DEFAULT NULL,
  `TOTAL_NUM` int(11) DEFAULT NULL COMMENT '总量',
  `SOLD_NUM` int(11) DEFAULT NULL COMMENT '售出数量',
  `REMAIN_NUM` int(11) DEFAULT NULL COMMENT '剩余数量',
  PRIMARY KEY (`INVENTORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_inventory
-- ----------------------------

-- ----------------------------
-- Table structure for sys_order
-- ----------------------------
DROP TABLE IF EXISTS `sys_order`;
CREATE TABLE `sys_order` (
  `ORDER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `BUY_USER_ID` int(11) DEFAULT NULL COMMENT '买家',
  `STATUS` int(11) DEFAULT '0' COMMENT '''0''待付款；’1‘待发货；’2‘待收货；’3‘待评价；’4‘完成',
  `TOTAL_PRICE` decimal(10,0) DEFAULT NULL COMMENT '总价',
  `SELL_USER_ID` int(11) DEFAULT NULL COMMENT '卖家',
  `DATE` datetime DEFAULT NULL COMMENT '日期',
  `BOOK_PRICE` decimal(10,0) DEFAULT NULL COMMENT '商品总价',
  `FREIGHT` decimal(10,0) DEFAULT NULL COMMENT '运费',
  PRIMARY KEY (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_order
-- ----------------------------

-- ----------------------------
-- Table structure for sys_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `sys_order_detail`;
CREATE TABLE `sys_order_detail` (
  `ORDER_DETAIL_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ORDER_ID` int(11) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `SELLER_INFO` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ORDER_DETAIL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_order_detail
-- ----------------------------

-- ----------------------------
-- Table structure for sys_shopping_cart
-- ----------------------------
DROP TABLE IF EXISTS `sys_shopping_cart`;
CREATE TABLE `sys_shopping_cart` (
  `SHOPPING_CART_ID` int(11) NOT NULL AUTO_INCREMENT,
  `BOOK_ID` int(11) DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `TOTAL` decimal(10,0) DEFAULT NULL COMMENT '总价',
  `COUNTS` int(11) DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`SHOPPING_CART_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_shopping_cart
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `USER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_NAME` varchar(40) DEFAULT NULL,
  `EMAIL` varchar(150) DEFAULT NULL,
  `PHONE` int(11) DEFAULT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `USER_ROLE` int(11) DEFAULT NULL,
  `PASS_WORD` varchar(255) DEFAULT NULL,
  `ACCOUNT` int(255) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------

-- ----------------------------
-- Table structure for sys_wish_list
-- ----------------------------
DROP TABLE IF EXISTS `sys_wish_list`;
CREATE TABLE `sys_wish_list` (
  `WISH_LIST_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) DEFAULT NULL COMMENT '收藏者',
  `BOOK_ID` int(11) DEFAULT NULL COMMENT '收藏的商品',
  `USER_BOOK_ID` int(11) DEFAULT NULL COMMENT '收藏的用户',
  `CREATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`WISH_LIST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_wish_list
-- ----------------------------
