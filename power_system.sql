/*
Navicat MySQL Data Transfer

Source Server         : mysqllocal001
Source Server Version : 50513
Source Host           : localhost:3306
Source Database       : power_system

Target Server Type    : MYSQL
Target Server Version : 50513
File Encoding         : 65001

Date: 2024-05-15 23:54:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for comprehensive_tb
-- ----------------------------
DROP TABLE IF EXISTS `comprehensive_tb`;
CREATE TABLE `comprehensive_tb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `enterprise_id` int(11) NOT NULL,
  `year` varchar(4) DEFAULT NULL COMMENT '年份',
  `total_assets` double DEFAULT NULL COMMENT '总资产（万元）',
  `total_liabilities` double DEFAULT NULL COMMENT '总负债（万元）',
  `asset_return_rate` double DEFAULT NULL COMMENT '总资产收益率%',
  `employees_number` double DEFAULT NULL COMMENT '员工人数',
  `business_areas` int(11) DEFAULT NULL COMMENT '主营业务领域/板块（个）',
  PRIMARY KEY (`id`),
  KEY `t_comprehensive_id_fk` (`enterprise_id`),
  CONSTRAINT `t_comprehensive_id_fk` FOREIGN KEY (`enterprise_id`) REFERENCES `enterprise_tb` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comprehensive_tb
-- ----------------------------
INSERT INTO `comprehensive_tb` VALUES ('1', '1', '2020', '48080', '30504', '3.1', '38071', '4');
INSERT INTO `comprehensive_tb` VALUES ('2', '1', '2021', '45406', '40141', '4.1', '47082', '4');
INSERT INTO `comprehensive_tb` VALUES ('3', '1', '2022', '80800', '70101', '5.1', '90903', '4');
INSERT INTO `comprehensive_tb` VALUES ('4', '2', '2020', '30501', '14001', '3.2', '38074', '4');
INSERT INTO `comprehensive_tb` VALUES ('5', '2', '2021', '48551', '74080', '4.2', '47085', '4');
INSERT INTO `comprehensive_tb` VALUES ('6', '2', '2022', '90810', '79048', '5.2', '90906', '4');
INSERT INTO `comprehensive_tb` VALUES ('7', '3', '2020', '60801', '30504', '3.3', '38077', '4');
INSERT INTO `comprehensive_tb` VALUES ('8', '3', '2021', '70801', '60518', '4.3', '47088', '4');
INSERT INTO `comprehensive_tb` VALUES ('9', '3', '2022', '90580', '80844', '5.3', '90970', '4');
INSERT INTO `comprehensive_tb` VALUES ('10', '4', '2020', '60811', '33504', '3.4', '38020', '4');
INSERT INTO `comprehensive_tb` VALUES ('11', '4', '2021', '70811', '63518', '4.4', '47030', '4');
INSERT INTO `comprehensive_tb` VALUES ('12', '4', '2022', '90510', '83844', '5.4', '90940', '4');
INSERT INTO `comprehensive_tb` VALUES ('13', '5', '2020', '61801', '32504', '3.5', '38050', '4');
INSERT INTO `comprehensive_tb` VALUES ('14', '5', '2021', '71801', '62518', '4.5', '47060', '4');
INSERT INTO `comprehensive_tb` VALUES ('15', '5', '2022', '91580', '82844', '5.5', '90970', '4');

-- ----------------------------
-- Table structure for develop_tb
-- ----------------------------
DROP TABLE IF EXISTS `develop_tb`;
CREATE TABLE `develop_tb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `enterprise_id` int(11) NOT NULL,
  `year` varchar(4) NOT NULL COMMENT '年份',
  `income` double DEFAULT NULL COMMENT '营业收入(万元)',
  `cash_ratio` double DEFAULT NULL COMMENT '营业现金比率%',
  `asset_growth_rate` double DEFAULT NULL COMMENT '总资产增长率%',
  `quick_ratio` double DEFAULT NULL COMMENT '速动比率%',
  `asset_liability_ratio` double DEFAULT NULL COMMENT '资产负债率%',
  PRIMARY KEY (`id`),
  KEY `t_develop_id_fk` (`enterprise_id`),
  CONSTRAINT `t_develop_id_fk` FOREIGN KEY (`enterprise_id`) REFERENCES `enterprise_tb` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of develop_tb
-- ----------------------------
INSERT INTO `develop_tb` VALUES ('1', '1', '2020', '111111', '0', '7.1', '61.1', '72.1');
INSERT INTO `develop_tb` VALUES ('2', '1', '2021', '222221', '0', '8.1', '71.1', '82.1');
INSERT INTO `develop_tb` VALUES ('3', '1', '2022', '333331', '0', '9.1', '81.1', '92.1');
INSERT INTO `develop_tb` VALUES ('4', '2', '2020', '111112', '0', '7.2', '61.2', '72.2');
INSERT INTO `develop_tb` VALUES ('5', '2', '2021', '222222', '0', '8.2', '71.2', '82.2');
INSERT INTO `develop_tb` VALUES ('6', '2', '2022', '333332', '0', '9.2', '81.2', '92.2');
INSERT INTO `develop_tb` VALUES ('7', '3', '2020', '111113', '0', '7.3', '61.3', '72.3');
INSERT INTO `develop_tb` VALUES ('8', '3', '2021', '222223', '0', '8.3', '71.3', '82.3');
INSERT INTO `develop_tb` VALUES ('9', '3', '2022', '333333', '0', '9.3', '81.3', '92.3');
INSERT INTO `develop_tb` VALUES ('10', '4', '2020', '111114', '0', '7.4', '61.4', '72.4');
INSERT INTO `develop_tb` VALUES ('11', '4', '2021', '222224', '0', '8.4', '71.4', '82.4');
INSERT INTO `develop_tb` VALUES ('12', '4', '2022', '333334', '0', '9.4', '81.4', '92.4');
INSERT INTO `develop_tb` VALUES ('13', '5', '2020', '111115', '0', '7.5', '61.5', '72.5');
INSERT INTO `develop_tb` VALUES ('14', '5', '2021', '222225', '0', '8.5', '71.5', '82.5');
INSERT INTO `develop_tb` VALUES ('15', '5', '2022', '333335', '0', '9.5', '81.5', '92.5');

-- ----------------------------
-- Table structure for enterprise_tb
-- ----------------------------
DROP TABLE IF EXISTS `enterprise_tb`;
CREATE TABLE `enterprise_tb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) DEFAULT NULL COMMENT '序号',
  `company` varchar(20) DEFAULT NULL COMMENT '公司名称',
  `shares` varchar(20) DEFAULT NULL COMMENT '股票',
  `content` text COMMENT '企业简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of enterprise_tb
-- ----------------------------
INSERT INTO `enterprise_tb` VALUES ('1', '1', '华电科工', '111111', '华电科工是一家以电力科技为核心，致力于提供全方位电力解决方案的公司。我们专注于研发和生产高效、可靠的电力设备和技术，涵盖发电、输配电、电力自动化等领域。公司拥有一支充满激情和专业知识的团队，致力于推动电力行业的创新和发展。我们不仅为客户提供高质量的产品和服务，还致力于与合作伙伴建立长期稳固的合作关系，共同促进电力行业的可持续发展。华电科工，与您共创美好明天。');
INSERT INTO `enterprise_tb` VALUES ('2', '2', '国电南自', '222222', '国电南自环保股份有限公司是中国电力投资集团公司的全资子公司，成立于2007年，总部位于广东省深圳市。公司主要从事固体废物处理、生活垃圾处理、资源化利用等环保产业的研发、设计、施工、运营和服务。秉承“创新、和谐、共赢”的经营理念，国电南自致力于打造环境友好型企业，推动环保产业的发展，为社会可持续发展做出贡献。');
INSERT INTO `enterprise_tb` VALUES ('3', '3', '国电科环', '333333', '国电科环保股份有限公司是中国国家能源集团有限公司的全资子公司，成立于2005年，总部位于北京市。公司主营业务涵盖燃气、水处理、固废处理等环保领域，提供环境治理、节能减排、资源综合利用等解决方案。国电科环以科技创新为驱动力，不断提升环保产业的技术水平和服务质量，致力于为客户提供全方位的环境保护和能源效益解决方案。');
INSERT INTO `enterprise_tb` VALUES ('4', '4', '大唐环境', '444444', '大唐环境保护科技股份有限公司是中国大唐集团公司的全资子公司，成立于1998年，总部位于北京市。公司是中国领先的环境保护和治理服务提供商，业务涵盖固体废物处理、污水处理、大气污染治理等领域。大唐环境致力于推动绿色发展，以科技创新和可持续发展为核心，为客户提供高效、可靠的环保解决方案，促进生态环境的改善。');
INSERT INTO `enterprise_tb` VALUES ('5', '5', '远达环保', '555555', '远达环保股份有限公司是中国环保产业的领军企业之一，成立于2004年，总部位于上海市。公司专注于水处理、固废处理、大气治理等领域的环保技术研发和应用，提供全方位的环境保护解决方案。远达环保秉承“技术创新、绿色发展”的理念，致力于为客户提供高效、节能、环保的产品和服务，推动环境保护事业的可持续发展。');

-- ----------------------------
-- Table structure for govern_tb
-- ----------------------------
DROP TABLE IF EXISTS `govern_tb`;
CREATE TABLE `govern_tb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `enterprise_id` int(11) NOT NULL,
  `year` varchar(4) NOT NULL COMMENT '年份',
  `trisome_construction` varchar(20) DEFAULT NULL COMMENT '三体系建设（文件这个建设属性有体系健全与未健全，健全就为1，不健全就为0）',
  `case_disputes` int(11) DEFAULT NULL COMMENT '案件纠纷数量',
  `asset_turnover_rate` double DEFAULT NULL COMMENT '总资产周转率%',
  PRIMARY KEY (`id`),
  KEY `t_govern_id_fk` (`enterprise_id`),
  CONSTRAINT `t_govern_id_fk` FOREIGN KEY (`enterprise_id`) REFERENCES `enterprise_tb` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of govern_tb
-- ----------------------------
INSERT INTO `govern_tb` VALUES ('1', '1', '2020', '1', '2', '32.1');
INSERT INTO `govern_tb` VALUES ('2', '1', '2021', '1', '3', '42.1');
INSERT INTO `govern_tb` VALUES ('3', '1', '2022', '1', '4', '42.1');
INSERT INTO `govern_tb` VALUES ('4', '2', '2020', '0', '2', '32.2');
INSERT INTO `govern_tb` VALUES ('5', '2', '2021', '0', '3', '42.2');
INSERT INTO `govern_tb` VALUES ('6', '2', '2022', '0', '4', '42.2');
INSERT INTO `govern_tb` VALUES ('7', '3', '2020', '0', '2', '32.3');
INSERT INTO `govern_tb` VALUES ('8', '3', '2021', '0', '3', '42.3');
INSERT INTO `govern_tb` VALUES ('9', '3', '2022', '0', '4', '42.3');
INSERT INTO `govern_tb` VALUES ('10', '4', '2020', '0', '2', '32.4');
INSERT INTO `govern_tb` VALUES ('11', '4', '2021', '0', '3', '42.4');
INSERT INTO `govern_tb` VALUES ('12', '4', '2022', '0', '4', '42.4');
INSERT INTO `govern_tb` VALUES ('13', '5', '2020', '0', '2', '32.5');
INSERT INTO `govern_tb` VALUES ('14', '5', '2021', '0', '3', '42.5');
INSERT INTO `govern_tb` VALUES ('15', '5', '2022', '0', '4', '42.5');

-- ----------------------------
-- Table structure for technological_create_tb
-- ----------------------------
DROP TABLE IF EXISTS `technological_create_tb`;
CREATE TABLE `technological_create_tb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `enterprise_id` int(11) NOT NULL,
  `year` varchar(4) NOT NULL COMMENT '年份',
  `funds_input` double DEFAULT NULL COMMENT '研发经费投入费用（亿元）',
  `patent_num` int(11) DEFAULT NULL COMMENT '发明专利总数（个）',
  `new_inventions` int(11) DEFAULT NULL COMMENT '新增发明专利数（个）',
  `research_investment` double DEFAULT NULL COMMENT '科研投入占收入比%',
  `technical_personnel` int(11) DEFAULT NULL COMMENT '研发人员',
  PRIMARY KEY (`id`),
  KEY `t_t_create_id_fk` (`enterprise_id`),
  CONSTRAINT `t_t_create_id_fk` FOREIGN KEY (`enterprise_id`) REFERENCES `enterprise_tb` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of technological_create_tb
-- ----------------------------
INSERT INTO `technological_create_tb` VALUES ('1', '1', '2020', '7.81', '241', '21', '3.1', '701');
INSERT INTO `technological_create_tb` VALUES ('2', '1', '2021', '8.81', '341', '31', '4.1', '801');
INSERT INTO `technological_create_tb` VALUES ('3', '1', '2022', '9.81', '441', '41', '5.1', '901');
INSERT INTO `technological_create_tb` VALUES ('4', '2', '2020', '7.82', '242', '22', '3.2', '702');
INSERT INTO `technological_create_tb` VALUES ('5', '2', '2021', '8.82', '342', '32', '4.2', '802');
INSERT INTO `technological_create_tb` VALUES ('6', '2', '2022', '9.82', '442', '42', '5.2', '902');
INSERT INTO `technological_create_tb` VALUES ('7', '3', '2020', '7.83', '243', '23', '3.3', '703');
INSERT INTO `technological_create_tb` VALUES ('8', '3', '2021', '8.83', '343', '33', '4.3', '803');
INSERT INTO `technological_create_tb` VALUES ('9', '3', '2022', '9.83', '443', '43', '5.3', '903');
INSERT INTO `technological_create_tb` VALUES ('10', '4', '2020', '7.84', '244', '24', '3.4', '704');
INSERT INTO `technological_create_tb` VALUES ('11', '4', '2021', '8.84', '344', '34', '4.4', '804');
INSERT INTO `technological_create_tb` VALUES ('12', '4', '2022', '9.84', '444', '44', '5.4', '904');
INSERT INTO `technological_create_tb` VALUES ('13', '5', '2020', '7.85', '245', '25', '3.5', '705');
INSERT INTO `technological_create_tb` VALUES ('14', '5', '2021', '8.85', '345', '35', '4.5', '805');
INSERT INTO `technological_create_tb` VALUES ('15', '5', '2022', '9.85', '445', '45', '5.5', '905');

-- ----------------------------
-- Table structure for user_tb
-- ----------------------------
DROP TABLE IF EXISTS `user_tb`;
CREATE TABLE `user_tb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL COMMENT '登录账户',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `email` varchar(20) DEFAULT NULL COMMENT '邮件',
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机',
  `status` varchar(20) DEFAULT NULL COMMENT '0 为管理员 1 为公司',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_tb
-- ----------------------------
INSERT INTO `user_tb` VALUES ('1', 'root', '63a9f0ea7bb98050796b649e85481845', null, '18722821443', '管理员', '2024-05-03 00:04:26');
INSERT INTO `user_tb` VALUES ('2', '1', '63a9f0ea7bb98050796b649e85481845', null, '18722821256', '1', '2024-05-03 00:04:26');
INSERT INTO `user_tb` VALUES ('3', '2', '63a9f0ea7bb98050796b649e85481845', '', '18722821256', '3', '2024-05-03 00:04:26');
INSERT INTO `user_tb` VALUES ('4', '3', '63a9f0ea7bb98050796b649e85481845', '', '18722821256', '3', '2024-05-03 00:04:26');
INSERT INTO `user_tb` VALUES ('5', '4', '63a9f0ea7bb98050796b649e85481845', '', '18722821256', '4', '2024-05-03 00:04:26');
INSERT INTO `user_tb` VALUES ('6', '5', '63a9f0ea7bb98050796b649e85481845', '', '18722821256', '5', '2024-05-03 00:04:26');
INSERT INTO `user_tb` VALUES ('7', 'lingdao', '63a9f0ea7bb98050796b649e85481845', '', '18722821443', '领导人员', '2024-05-11 14:12:59');
INSERT INTO `user_tb` VALUES ('8', 'test123', '123456', '12481@qq.com', '18722821243', null, '2024-05-15 23:38:08');

-- ----------------------------
-- Table structure for value_create_tb
-- ----------------------------
DROP TABLE IF EXISTS `value_create_tb`;
CREATE TABLE `value_create_tb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `enterprise_id` int(11) NOT NULL,
  `year` varchar(4) NOT NULL COMMENT '年份',
  `total_profit` double DEFAULT NULL COMMENT '利润总额（万元）',
  `net_profit` double DEFAULT NULL COMMENT '净利润（万元）',
  `net_assets` double DEFAULT NULL COMMENT '净资产（万元）',
  `return_equity` double DEFAULT NULL COMMENT '净资产收益率%',
  PRIMARY KEY (`id`),
  KEY `t_v_create_id_fk` (`enterprise_id`),
  CONSTRAINT `t_v_create_id_fk` FOREIGN KEY (`enterprise_id`) REFERENCES `enterprise_tb` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of value_create_tb
-- ----------------------------
INSERT INTO `value_create_tb` VALUES ('1', '1', '2020', '79878.1', '626256.1', '5050151.1', '3.1');
INSERT INTO `value_create_tb` VALUES ('2', '1', '2021', '89878.1', '726256.1', '6050151.1', '4.1');
INSERT INTO `value_create_tb` VALUES ('3', '1', '2022', '89878.1', '826256.1', '7050151.1', '5.1');
INSERT INTO `value_create_tb` VALUES ('4', '2', '2020', '79878.2', '626256.2', '5050151.2', '3.2');
INSERT INTO `value_create_tb` VALUES ('5', '2', '2021', '89878.2', '726256.2', '6050151.2', '4.2');
INSERT INTO `value_create_tb` VALUES ('6', '2', '2022', '89878.2', '826256.2', '7050151.2', '5.2');
INSERT INTO `value_create_tb` VALUES ('7', '3', '2020', '79878.3', '626256.3', '5050151.3', '3.3');
INSERT INTO `value_create_tb` VALUES ('8', '3', '2021', '89878.3', '726256.3', '6050151.3', '4.3');
INSERT INTO `value_create_tb` VALUES ('9', '3', '2022', '89878.3', '826256.3', '7050151.3', '5.3');
INSERT INTO `value_create_tb` VALUES ('10', '4', '2020', '79878.4', '626256.4', '5050151.4', '3.4');
INSERT INTO `value_create_tb` VALUES ('11', '4', '2021', '89878.4', '726256.4', '6050151.4', '4.4');
INSERT INTO `value_create_tb` VALUES ('12', '4', '2022', '89878.4', '826256.4', '7050151.4', '5.4');
INSERT INTO `value_create_tb` VALUES ('13', '5', '2020', '79878.5', '626256.5', '5050151.5', '3.5');
INSERT INTO `value_create_tb` VALUES ('14', '5', '2021', '89878.5', '726256.5', '6050151.5', '4.5');
INSERT INTO `value_create_tb` VALUES ('15', '5', '2022', '89878.5', '826256.5', '7050151.5', '5.5');
