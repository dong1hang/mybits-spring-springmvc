/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50611
Source Host           : localhost:3306
Source Database       : crm

Target Server Type    : MYSQL
Target Server Version : 50611
File Encoding         : 65001

Date: 2016-05-12 00:07:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for base_dict
-- ----------------------------
DROP TABLE IF EXISTS `base_dict`;
CREATE TABLE `base_dict` (
  `dict_id` varchar(32) NOT NULL ,
  `dict_type_code` varchar(10) NOT NULL ,
  `dict_type_name` varchar(64) NOT NULL ,
  `dict_item_name` varchar(64) NOT NULL ,
  `dict_item_code` varchar(10) DEFAULT NULL ,
  `dict_sort` int(10) DEFAULT NULL　,
  `dict_enable` char(1) NOT NULL ,
  `dict_memo` varchar(64) DEFAULT NULL ,
  PRIMARY KEY (`dict_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_dict
-- ----------------------------
INSERT INTO `base_dict` VALUES ('1', '001', 顧客業界', '会社 ', null, '1', '1', null);
INSERT INTO `base_dict` VALUES ('10', '003', '会社TYPE', '自由職業者', null, '3', '1', null);
INSERT INTO `base_dict` VALUES ('12', '004', '売上', '1-10万', null, '1', '1', null);
INSERT INTO `base_dict` VALUES ('13', '004', '売上', '10-20万', null, '2', '1', null);
INSERT INTO `base_dict` VALUES ('14', '004', '売上', '20-50万', null, '3', '1', null);
INSERT INTO `base_dict` VALUES ('15', '004', '売上', '50-100万', null, '4', '1', null);
INSERT INTO `base_dict` VALUES ('16', '004', '売上', '100-500万', null, '5', '1', null);
INSERT INTO `base_dict` VALUES ('17', '004', '売上', '500-1000万', null, '6', '1', null);
INSERT INTO `base_dict` VALUES ('18', '005', '顧客状態', '普通', null, '1', '1', null);
INSERT INTO `base_dict` VALUES ('19', '005', '顧客状態', 'VIP', null, '2', '1', null);
INSERT INTO `base_dict` VALUES ('2', '001', '顧客業界', '电子商务', null, '2', '1', null);
INSERT INTO `base_dict` VALUES ('20', '005', '顧客状態', '有効顧客', null, '3', '1', null);
INSERT INTO `base_dict` VALUES ('21', '005', '顧客状態', '無効顧客', null, '4', '1', null);
INSERT INTO `base_dict` VALUES ('22', '006', '顧客レベル', '普通顧客', null, '1', '1', null);
INSERT INTO `base_dict` VALUES ('23', '006', '顧客レベル', 'VIP顧客', null, '2', '1', null);
INSERT INTO `base_dict` VALUES ('24', '007', 'ビジネス状態', '一', null, '1', '1', null);
INSERT INTO `base_dict` VALUES ('25', '007', 'ビジネス状態', '二', null, '2', '1', null);
INSERT INTO `base_dict` VALUES ('26', '007', 'ビジネス状態', '三', null, '3', '1', null);
INSERT INTO `base_dict` VALUES ('27', '007', 'ビジネス状態', '四', null, '4', '1', null);
INSERT INTO `base_dict` VALUES ('3', '001', '顧客業界', '对外贸易', null, '3', '1', null);
INSERT INTO `base_dict` VALUES ('30', '008', 'ビジネスTYPE', 'NEW', null, '1', '1', null);
INSERT INTO `base_dict` VALUES ('31', '008', 'ビジネスTYPE', '既存', null, '2', '1', null);
INSERT INTO `base_dict` VALUES ('32', '009', 'ビジネスソース', '電話', null, '1', '1', null);
INSERT INTO `base_dict` VALUES ('33', '009', 'ビジネスソース', 'ネット', null, '2', '1', null);
INSERT INTO `base_dict` VALUES ('34', '009', 'ビジネスソース', '活動', null, '3', '1', null);
INSERT INTO `base_dict` VALUES ('4', '001', '顧客業界', '旅行', null, '4', '1', null);
INSERT INTO `base_dict` VALUES ('5', '001', '顧客業界', '不動産', null, '5', '1', null);
INSERT INTO `base_dict` VALUES ('6', '002', '顧客状態ソース', '電話', null, '1', '1', null);
INSERT INTO `base_dict` VALUES ('7', '002', '顧客状態ソース', 'ネット', null, '2', '1', null);
INSERT INTO `base_dict` VALUES ('8', '003', '会社タイプ', '株式', null, '1', '1', null);
INSERT INTO `base_dict` VALUES ('9', '003', '会社タイプ', '派遣', null, '2', '1', null);

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `cust_id` bigint(32) NOT NULL AUTO_INCREMENT ,
  `cust_name` varchar(32) NOT NULL ,
  `cust_user_id` bigint(32) DEFAULT NULL ,
  `cust_create_id` bigint(32) DEFAULT NULL ,
  `cust_source` varchar(32) DEFAULT NULL ,
  `cust_industry` varchar(32) DEFAULT NULL ,
  `cust_level` varchar(32) DEFAULT NULL ,
  `cust_linkman` varchar(64) DEFAULT NULL ,
  `cust_phone` varchar(64) DEFAULT NULL ,
  `cust_mobile` varchar(16) DEFAULT NULL ,
  `cust_zipcode` varchar(10) DEFAULT NULL,
  `cust_address` varchar(100) DEFAULT NULL,
  `cust_createtime` datetime DEFAULT NULL ,
  PRIMARY KEY (`cust_id`),
  KEY `FK_cst_customer_source` (`cust_source`),
  KEY `FK_cst_customer_industry` (`cust_industry`),
  KEY `FK_cst_customer_level` (`cust_level`),
  KEY `FK_cst_customer_user_id` (`cust_user_id`),
  KEY `FK_cst_customer_create_id` (`cust_create_id`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('14', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:01');
INSERT INTO `customer` VALUES ('15', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:01');
INSERT INTO `customer` VALUES ('16', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:01');
INSERT INTO `customer` VALUES ('17', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:02');
INSERT INTO `customer` VALUES ('22', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:03');
INSERT INTO `customer` VALUES ('24', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:03');
INSERT INTO `customer` VALUES ('25', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:03');
INSERT INTO `customer` VALUES ('26', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:03');
INSERT INTO `customer` VALUES ('28', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:04');
INSERT INTO `customer` VALUES ('29', 'KING', null, null, '7', '1', '23', 'PPP', '0108888886', '07012345678', '6123456', '東京6', '2020-07-25  20:30:04');
INSERT INTO `customer` VALUES ('30', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:04');
INSERT INTO `customer` VALUES ('31', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:04');
INSERT INTO `customer` VALUES ('33', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:04');
INSERT INTO `customer` VALUES ('34', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:05');
INSERT INTO `customer` VALUES ('35', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:05');
INSERT INTO `customer` VALUES ('36', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:05');
INSERT INTO `customer` VALUES ('37', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:05');
INSERT INTO `customer` VALUES ('38', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:05');
INSERT INTO `customer` VALUES ('39', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:06');
INSERT INTO `customer` VALUES ('40', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:06');
INSERT INTO `customer` VALUES ('41', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:06');
INSERT INTO `customer` VALUES ('42', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:06');
INSERT INTO `customer` VALUES ('43', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:06');
INSERT INTO `customer` VALUES ('44', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:07');
INSERT INTO `customer` VALUES ('45', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:07');
INSERT INTO `customer` VALUES ('46', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:07');
INSERT INTO `customer` VALUES ('47', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:07');
INSERT INTO `customer` VALUES ('48', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:07');
INSERT INTO `customer` VALUES ('49', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:07');
INSERT INTO `customer` VALUES ('50', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:08');
INSERT INTO `customer` VALUES ('51', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:08');
INSERT INTO `customer` VALUES ('52', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:08');
INSERT INTO `customer` VALUES ('53', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:08');
INSERT INTO `customer` VALUES ('54', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:08');
INSERT INTO `customer` VALUES ('55', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:08');
INSERT INTO `customer` VALUES ('56', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:09');
INSERT INTO `customer` VALUES ('57', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:09');
INSERT INTO `customer` VALUES ('58', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:09');
INSERT INTO `customer` VALUES ('59', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:29');
INSERT INTO `customer` VALUES ('60', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:29');
INSERT INTO `customer` VALUES ('61', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:29');
INSERT INTO `customer` VALUES ('62', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:29');
INSERT INTO `customer` VALUES ('63', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:30');
INSERT INTO `customer` VALUES ('64', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:30');
INSERT INTO `customer` VALUES ('65', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:30');
INSERT INTO `customer` VALUES ('66', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:30');
INSERT INTO `customer` VALUES ('67', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:30');
INSERT INTO `customer` VALUES ('68', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:30');
INSERT INTO `customer` VALUES ('69', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:31');
INSERT INTO `customer` VALUES ('70', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:31');
INSERT INTO `customer` VALUES ('71', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:31');
INSERT INTO `customer` VALUES ('72', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:31');
INSERT INTO `customer` VALUES ('73', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:31');
INSERT INTO `customer` VALUES ('74', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:32');
INSERT INTO `customer` VALUES ('75', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:32');
INSERT INTO `customer` VALUES ('76', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:32');
INSERT INTO `customer` VALUES ('77', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:32');
INSERT INTO `customer` VALUES ('78', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:32');
INSERT INTO `customer` VALUES ('79', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:32');
INSERT INTO `customer` VALUES ('80', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:33');
INSERT INTO `customer` VALUES ('81', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:33');
INSERT INTO `customer` VALUES ('82', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:33');
INSERT INTO `customer` VALUES ('83', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:33');
INSERT INTO `customer` VALUES ('84', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:33');
INSERT INTO `customer` VALUES ('85', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:33');
INSERT INTO `customer` VALUES ('86', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:34');
INSERT INTO `customer` VALUES ('87', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:34');
INSERT INTO `customer` VALUES ('88', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:34');
INSERT INTO `customer` VALUES ('89', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:34');
INSERT INTO `customer` VALUES ('90', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:34');
INSERT INTO `customer` VALUES ('91', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:34');
INSERT INTO `customer` VALUES ('92', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:35');
INSERT INTO `customer` VALUES ('93', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:35');
INSERT INTO `customer` VALUES ('94', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:35');
INSERT INTO `customer` VALUES ('95', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:35');
INSERT INTO `customer` VALUES ('96', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:35');
INSERT INTO `customer` VALUES ('97', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:36');
INSERT INTO `customer` VALUES ('98', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:36');
INSERT INTO `customer` VALUES ('99', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:36');
INSERT INTO `customer` VALUES ('100', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:36');
INSERT INTO `customer` VALUES ('101', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:36');
INSERT INTO `customer` VALUES ('102', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:36');
INSERT INTO `customer` VALUES ('103', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:37');
INSERT INTO `customer` VALUES ('104', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:37');
INSERT INTO `customer` VALUES ('105', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:37');
INSERT INTO `customer` VALUES ('106', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:37');
INSERT INTO `customer` VALUES ('107', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:37');
INSERT INTO `customer` VALUES ('108', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:38');
INSERT INTO `customer` VALUES ('109', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:38');
INSERT INTO `customer` VALUES ('110', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:38');
INSERT INTO `customer` VALUES ('111', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:38');
INSERT INTO `customer` VALUES ('112', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:38');
INSERT INTO `customer` VALUES ('113', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:38');
INSERT INTO `customer` VALUES ('114', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:39');
INSERT INTO `customer` VALUES ('115', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:39');
INSERT INTO `customer` VALUES ('116', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:39');
INSERT INTO `customer` VALUES ('117', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:39');
INSERT INTO `customer` VALUES ('118', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:39');
INSERT INTO `customer` VALUES ('119', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:40');
INSERT INTO `customer` VALUES ('120', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:40');
INSERT INTO `customer` VALUES ('121', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:40');
INSERT INTO `customer` VALUES ('122', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:40');
INSERT INTO `customer` VALUES ('123', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:40');
INSERT INTO `customer` VALUES ('124', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:40');
INSERT INTO `customer` VALUES ('125', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:41');
INSERT INTO `customer` VALUES ('126', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:41');
INSERT INTO `customer` VALUES ('127', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:41');
INSERT INTO `customer` VALUES ('128', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:41');
INSERT INTO `customer` VALUES ('129', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:41');
INSERT INTO `customer` VALUES ('130', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:42');
INSERT INTO `customer` VALUES ('131', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:42');
INSERT INTO `customer` VALUES ('132', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:42');
INSERT INTO `customer` VALUES ('133', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:42');
INSERT INTO `customer` VALUES ('134', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:42');
INSERT INTO `customer` VALUES ('135', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:42');
INSERT INTO `customer` VALUES ('136', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:43');
INSERT INTO `customer` VALUES ('137', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:43');
INSERT INTO `customer` VALUES ('138', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:43');
INSERT INTO `customer` VALUES ('139', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:43');
INSERT INTO `customer` VALUES ('140', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:43');
INSERT INTO `customer` VALUES ('141', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:44');
INSERT INTO `customer` VALUES ('142', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:44');
INSERT INTO `customer` VALUES ('143', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:44');
INSERT INTO `customer` VALUES ('144', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:44');
INSERT INTO `customer` VALUES ('145', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:44');
INSERT INTO `customer` VALUES ('146', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:44');
INSERT INTO `customer` VALUES ('147', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:45');
INSERT INTO `customer` VALUES ('148', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:45');
INSERT INTO `customer` VALUES ('149', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:45');
INSERT INTO `customer` VALUES ('150', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:45');
INSERT INTO `customer` VALUES ('151', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:45');
INSERT INTO `customer` VALUES ('152', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:46');
INSERT INTO `customer` VALUES ('153', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:46');
INSERT INTO `customer` VALUES ('154', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:46');
INSERT INTO `customer` VALUES ('155', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:46');
INSERT INTO `customer` VALUES ('156', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:46');
INSERT INTO `customer` VALUES ('157', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:46');
INSERT INTO `customer` VALUES ('158', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:47');
INSERT INTO `customer` VALUES ('159', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:47');
INSERT INTO `customer` VALUES ('160', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:47');
INSERT INTO `customer` VALUES ('161', '太郎', null, null, '6', '2', '22', '次郎', '0108888887', '07012345678', '123456', '東京', '2020-07-25  20:30:47');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(32) NOT NULL AUTO_INCREMENT,
  `user_code` varchar(32) NOT NULL ,
  `user_name` varchar(64) NOT NULL ,
  `user_password` varchar(32) NOT NULL ,
  `user_state` char(1) NOT NULL ,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('5', 'm0003', 'demo1', '123', '1');
INSERT INTO `sys_user` VALUES ('6', 'm0001', 'demo2', '123', '1');
INSERT INTO `sys_user` VALUES ('7', 'm0001', 'demo3', '123', '1');
INSERT INTO `sys_user` VALUES ('8', 'm0001', 'demo3', '123', '1');
