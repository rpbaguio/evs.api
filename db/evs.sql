/*
 Navicat Premium Data Transfer

 Source Server         : Team 01
 Source Server Type    : MySQL
 Source Server Version : 100139
 Source Host           : localhost:3306
 Source Schema         : evs

 Target Server Type    : MySQL
 Target Server Version : 100139
 File Encoding         : 65001

 Date: 06/11/2019 02:07:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for global_reference_group
-- ----------------------------
DROP TABLE IF EXISTS `global_reference_group`;
CREATE TABLE `global_reference_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dt_created` datetime(0) NULL DEFAULT NULL,
  `created_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  `is_deleted` bit(1) NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of global_reference_group
-- ----------------------------
INSERT INTO `global_reference_group` VALUES (1, 'User Roles', 'User Roles', '2019-11-01 16:10:50', 1, NULL, NULL, b'0');
INSERT INTO `global_reference_group` VALUES (2, 'Gender', 'Gender', '2019-11-01 16:10:55', 1, NULL, NULL, b'0');

-- ----------------------------
-- Table structure for global_reference_group_value
-- ----------------------------
DROP TABLE IF EXISTS `global_reference_group_value`;
CREATE TABLE `global_reference_group_value`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `global_reference_group_id` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dt_created` datetime(0) NULL DEFAULT NULL,
  `created_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  `is_deleted` bit(1) NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of global_reference_group_value
-- ----------------------------
INSERT INTO `global_reference_group_value` VALUES (1, 1, 'Admin', 'Admin', '2019-11-01 16:17:18', 1, NULL, NULL, b'0');
INSERT INTO `global_reference_group_value` VALUES (2, 1, 'Voter', 'Voter', '2019-11-01 16:17:20', 1, NULL, NULL, b'0');
INSERT INTO `global_reference_group_value` VALUES (3, 2, 'Male', 'Male', '2019-11-01 16:17:18', 1, NULL, NULL, b'0');
INSERT INTO `global_reference_group_value` VALUES (4, 2, 'Female', 'Female', '2019-11-01 16:17:20', 1, NULL, NULL, b'0');

-- ----------------------------
-- Table structure for groups
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `short_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `long_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dt_created` datetime(0) NULL DEFAULT NULL,
  `created_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  `is_deleted` bit(1) NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 86 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of groups
-- ----------------------------
INSERT INTO `groups` VALUES (1, 'FSSH', 'Franciscan Sisters of the Sacred Hearts', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (2, 'DSFDS', 'Daughters of St. Francis De Sales', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (3, 'SJC', 'Servants of Jesus of Charity', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (4, 'LGC', 'Living the Gospel Community', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (5, 'DDIM', 'Dominican Daughters of the Immaculate Mother', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (6, 'MSIC', 'Missionary Sisters of the Immaculate Conc.', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (7, 'MS', 'Marist Sisters', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (8, 'MCSHS', 'Mission Congregation Servants of the Holy Spirit', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (9, 'SPM', 'Sisters of the Presentation of Mary', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (10, 'FSPIF', 'Franciscan Sisters Pro Infante et Familia', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (11, 'SDB', 'Salesians of Don Bosco', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (12, 'SDS', 'Sisters of the Divine Savior', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (13, 'DST', 'Dominican Sisters of the Trinity', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (14, 'ADM', 'Apostolic Daughters of Mary ', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (15, 'HSHJ', 'Handmaids of the Sacred Heart of Jesus ', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (16, 'CTSHF', 'Capuchin Tertiary Sisters of the Holy Family', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (17, 'CRMSD', 'Congregation of the Religious Missionaries of St. Dominic', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (18, 'INSMB', 'Instituto de Nuestra Senora de la Merced de Barcelon RMM', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (19, 'OSF', 'Sisters of St. Francis of Perpetual Adoration ', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (20, 'SHCSVDP', 'Sister Handmaids of Charity of St. Vincent De Paul', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (21, 'RSM', 'Religious Sisters of Mercy', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (22, 'PBVM', 'Presentation of the Blessed Virgin Mary', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (23, 'DC', 'Daughters of Charity', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (24, 'ASDL', 'Augustinian Sisters of Divine Love', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (25, 'FHLI', 'Franciscan Handmaids of the Lord, Inc.', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (26, 'DSS', 'Dominican Sisters of Siena', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (27, 'RVM', 'Religious of the Virgin Mary', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (28, 'OND', 'Oblates of Notre Dame', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (29, 'MOLPH', 'Missionary of Our Lady of Perpetual Help', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (30, 'BSEK', 'Benedictine Sisters of the Eucharistic King', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (31, 'DDM', 'Disciples of the Divine Master', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (32, 'UMSH', 'Ursuline Missionaries of the Sacred Heart', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (33, 'MDSJE', 'Missionary Daughters of St. Jerome Emiliani', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (34, 'MA', 'Missionaries of the Assumption', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (35, 'DDZ', 'Daughters of Divine Zeal', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (36, 'IHMA', 'Immaculate Heart of Mary Abbey', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (37, 'SSJ', 'Siervas de San Jose', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (38, 'DSMHRP', 'Dominican Sisters of the Most Holy Rosary of the Philippines', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (39, 'DSSJ', 'Dominican  Sisters of St. Joseph', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (40, 'CDC', 'Canossian Daughter of Charity', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (41, 'FI', 'Hijas de Jesus ', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (42, 'DW', 'Daughters of Wisdom', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (43, 'OFMCAP', 'Order of Friars Minor Capuchin ', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (44, 'MBST', 'Missionary Benidictine Sisters of Tutzing', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (45, 'SSJA', 'Sisters of St. Joseph of the Apparition', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (46, 'PS', 'Passionist Sisters', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (47, 'FAS', 'Franciscan Apostolic Sisters', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (48, 'MBS', 'Missionary of Benedictine Sisters', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (49, 'DSHR', 'Dominican Sisters of the Holy Rosary', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (50, 'US', 'Ursuline Sisters', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (51, 'CMS', 'Carmelite Missionaries Sister', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (52, 'DSOLR', 'Dominican Sisers of Our Lady of Remedios', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (53, 'CSC', 'Canossian Son of Charity', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (54, 'SPC', 'St.Paul of the Chartres', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (55, 'DSML', 'Daughters of St. Mary of Leuca', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (56, 'ASHFJ', 'Adoration Sisters of the Holy Face of Jesus', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (57, 'DSVP', 'Daughter of St. Vincent the Paul', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (58, 'CMA', 'Congregation of Marie Auxiliatrice', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (59, 'MSHT', 'Missionary Servants of the Holy Trinity', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (60, 'SJGSP', 'Sisters of Jesus Good Shepherd \"Pastorelle\"', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (61, 'SSPS', 'Missionary Congregation of the Servants of the Holy Spirit', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (62, 'ARS', 'Augustinian Recollect Sisters', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (63, 'SC', 'Servants of Charity', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (64, 'OSB', 'Order of St. Benedict', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (65, 'FMSIJ', 'Franciscan Missionary Sisters of the Infant Jesus', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (66, 'DSRR', 'Dominican Sisters of Regina Rosarii', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (67, 'CJM', 'Congregation of Jesus and Mary', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (68, 'CSIC', 'Congregation of the Son of the Immaculate Conception', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (69, 'SVD', 'Society of Divine Word', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (70, 'OP', 'Order of Preachers (Dominican Frs.)', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (71, 'TDM', 'Teresian Daughters of Mary', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (72, 'HDH', 'Handmaids of the Divine Heart', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (73, 'SAP', 'Society of the Angel of Peace', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (74, 'PSHJ', 'Priests of the Sacred Heart of Jesus', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (75, 'PC', 'Passionist Congregation', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (76, 'SSP', 'Society of St. Paul', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (77, 'FSIC', 'Franciscan Sisters of the Immaculate Conception', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (78, 'SSPC', 'Sisters of St. Paul of Chartress', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (79, 'HFB', 'Holy Family of Bordeaux', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (80, 'SCMM', 'Sisters of Charity Our Lady Mother of Mercy', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (81, 'PM', 'Presentation of Mary', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (82, 'SNDS', 'Sisters of Our Lady of Lasalette', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (83, 'OP', 'Dominican Sisters of the Rosary', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (84, 'CM', 'Claretian Missionaries', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');
INSERT INTO `groups` VALUES (85, 'OSA', 'Order of St. Augustine', '', '2019-11-01 19:39:13', 1, NULL, NULL, b'0');

-- ----------------------------
-- Table structure for keys
-- ----------------------------
DROP TABLE IF EXISTS `keys`;
CREATE TABLE `keys`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT 0,
  `is_private_key` tinyint(1) NOT NULL DEFAULT 0,
  `ip_addresses` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `date_created` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of keys
-- ----------------------------
INSERT INTO `keys` VALUES (1, 1, '365-Days', 1, 0, 0, '127.0.0.1', 0);

-- ----------------------------
-- Table structure for logs
-- ----------------------------
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uri` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `method` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `params` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `api_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float NULL DEFAULT NULL,
  `authorized` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `response_code` smallint(3) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for persons
-- ----------------------------
DROP TABLE IF EXISTS `persons`;
CREATE TABLE `persons`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prefix` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `middle_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `suffix` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender_id` int(5) NULL DEFAULT NULL,
  `access_code` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role_id` int(5) NULL DEFAULT 2,
  `is_validated` bit(1) NULL DEFAULT b'0',
  `is_voted` bit(1) NULL DEFAULT b'0',
  `is_candidate` int(1) NULL DEFAULT 0,
  `group_id` int(5) NULL DEFAULT 0,
  `position_id` int(5) NULL DEFAULT 0,
  `dt_created` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `created_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  `is_deleted` bit(1) NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 119 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of persons
-- ----------------------------
INSERT INTO `persons` VALUES (1, 'Mr.', 'System', '', 'Admin', '', '', 3, '6877bd313d43e612c7f0bd227784066f3b536300b7714e611da1271aad5d6b5d58397e3934f7434fa2c2aa3a79f3db0b6dfbaaaa60a660af3afc7f162b3379ae', 1, b'0', b'0', 0, 0, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (2, 'Sr.', 'Marlene', NULL, 'Dimaano', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 2, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (3, 'Sr.', 'Mylene', NULL, 'Toledana', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 3, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (4, 'Sr.', 'Felisa', NULL, 'Salac', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 6, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (5, 'Sr.', 'Lilibeth', NULL, 'Cajes', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 7, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (6, 'Sr.', 'Elaine Faith', NULL, 'Taneo', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 8, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (7, 'Sr.', 'Elsie', NULL, 'Valenson', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 10, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (8, 'Fr.', 'Norman Broderock', NULL, 'Segovia', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 11, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (9, 'Sr.', 'Marianne', NULL, 'Felisilda', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 12, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (10, 'Sr.', 'Edilyne', NULL, 'Lapara', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 13, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (11, 'Sr.', 'Ma. Anna', NULL, 'Mapa', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 14, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (12, 'Sr.', 'Miralinda', NULL, 'Vibar', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 15, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (13, 'Sr.', 'Rowena', NULL, 'Abulencia', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 16, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (14, 'Sr.', 'Annie Genoveva', NULL, 'Manapat', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 17, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (15, 'Sr.', 'Isabel', NULL, 'Lobo', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 18, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (16, 'Sr.', 'Esther', NULL, 'Tancinco', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 19, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (17, 'Sr.', 'Rubylyn', NULL, 'Sison', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 20, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (18, 'Sr.', 'Mary Rosario', NULL, 'Abacahin', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 21, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (19, 'Sr.', 'Aquila', NULL, 'Sy', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 22, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (20, 'Sr.', 'Zorila', NULL, 'Zamora', '', NULL, NULL, '7252dd1fa85505c1ac9e898de24d7ce05c9cc6a2cd64f4078d99adcd1f701b18ebb039e50683d109bb409348bcf67080709e2cf2b5bd05794e9516d37317ccca', 2, b'1', b'0', 0, 23, 0, '2019-11-06 02:07:02', 1, '2019-11-05 21:05:37', 20, b'0');
INSERT INTO `persons` VALUES (21, 'Sr.', 'Rosalinda', NULL, 'Bayeta', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 24, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (22, 'Sr.', 'Ma. Elaine', NULL, 'Cabrera', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 25, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (23, 'Sr.', 'Ma. Teresa', NULL, 'Cruz', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 26, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (24, 'Sr.', 'Ma. Teresita', NULL, 'Aspril', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 27, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (25, 'Sr.', 'Estrellita', NULL, 'Soccorro', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 28, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (26, NULL, 'Sample', NULL, 'Sample', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 30, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (27, 'Sr.', 'Alma', NULL, 'Sabanpan', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 31, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (28, 'Sr.', 'Marianita', NULL, 'Cena', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 32, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (29, 'Sr.', 'Merriddy', NULL, 'Fetalvero', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 33, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (30, 'Sr.', 'Roselyn', NULL, 'Patron', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 34, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (31, 'Sr.', 'M. Cenarose', NULL, 'Baldevarona', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 35, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (32, 'Sr.', 'Lourdes', NULL, 'Tacpalan', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 37, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (33, 'Sr. ', 'Elsie', NULL, 'Nini', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 40, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (34, 'Sr.', 'Ma. Shirley', NULL, 'Roble', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 44, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (35, 'Sr.', 'Patricia', NULL, 'Sue', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 45, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (36, 'Sr.', 'Lalaine', NULL, 'Sumayan', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 46, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (37, 'Sr.', 'Lolita', NULL, 'Rodriguez', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 47, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (38, 'Sr.', 'Teodora', NULL, 'Tubil', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 49, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (39, 'Sr.', 'Cynthia', NULL, 'Calamba', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 51, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (40, 'Sr.', 'Ma. Yolanda', NULL, 'Manapsal', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 52, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (41, 'Fr.', 'Mateo', NULL, 'Suarez', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 53, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (42, 'Sr.', 'Zaira', NULL, 'Crave', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 55, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (43, 'Sr.', 'Mary Carmel', NULL, 'Lera', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 56, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (44, 'Sr.', 'Therese', NULL, 'Fukatani', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 58, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (45, 'Sr.', 'Mary Jane', NULL, 'Ilisan', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 59, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (46, 'Sr.', 'Vilana', NULL, 'Laluan', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 60, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (47, 'Sr.', 'Margarita', NULL, 'Rabon', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 61, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (48, 'Sr.', 'Ma. Irma', NULL, 'Castrodes', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 62, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (49, 'Sr.', 'Mary Alphonse', NULL, 'Mabute', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 64, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (50, 'Sr.', 'Ma. Debbie', NULL, 'Carandang', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 65, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (51, 'Sr.', 'Ma. Violeta', NULL, 'Sobremisana', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 66, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (52, 'Fr.', 'Robert', NULL, 'Leus', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 67, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (53, 'Fr.', 'Joey', NULL, 'Ruega', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 69, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (54, 'Fr.', 'Bienvenido', NULL, 'Trenilla', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 70, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (55, 'Sr.', 'Ma. Victoria', NULL, 'Ticong', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 71, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (56, 'Sr.', 'Frebonia', NULL, 'Tecmo', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 72, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (57, 'Sr.', 'Mary', NULL, 'Cleofe', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 73, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (58, 'Fr.', 'Frank Glenn', NULL, 'Maga', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 75, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (59, 'Fr.', 'Ludovico', NULL, 'Tacdoro', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 76, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (60, 'Sr.', 'Lirio', NULL, 'Gavan', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 78, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (61, 'Fr.', 'Frank Glenn', NULL, 'Maga', NULL, NULL, NULL, NULL, 2, b'0', b'0', 1, 75, 1, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (62, 'Fr.', 'Ludovico', NULL, 'Tacdoro', ' Jr.', NULL, NULL, NULL, 2, b'0', b'0', 1, 76, 1, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (63, 'Sr.', 'Cynthia', NULL, 'Calamba', NULL, NULL, NULL, NULL, 2, b'0', b'0', 1, 51, 1, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (64, 'Sr.', 'Annie Genoveva', NULL, 'Manapat', NULL, NULL, NULL, NULL, 2, b'0', b'0', 1, 17, 1, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (65, 'Sr.', 'Elsie', NULL, 'Nini', NULL, NULL, NULL, NULL, 2, b'0', b'0', 1, 40, 1, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (66, 'Sr.', 'Luz', NULL, 'Espiritu', NULL, NULL, NULL, NULL, 2, b'0', b'0', 1, 77, 1, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (67, 'Sr.', 'Ma. Teresita', NULL, 'Aspril', NULL, NULL, NULL, NULL, 2, b'0', b'0', 1, 27, 1, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (68, 'Sr.', 'Alma', NULL, 'Sabanpan', NULL, NULL, NULL, NULL, 2, b'0', b'0', 1, 31, 1, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (69, 'Sr.', 'Ma. Teresa', NULL, 'Cruz', NULL, NULL, NULL, NULL, 2, b'0', b'0', 1, 26, 1, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (70, 'Fr.', 'Norberto', NULL, 'Panuncialman', NULL, NULL, NULL, NULL, 2, b'0', b'0', 1, 68, 1, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (71, 'Sr.', 'Ma. Debbie', NULL, 'Carandang', NULL, NULL, NULL, NULL, 2, b'0', b'0', 1, 65, 1, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (72, 'Sr.', 'Erminia', NULL, 'De Los Reyes', NULL, NULL, NULL, NULL, 2, b'0', b'0', 1, 61, 1, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (73, 'Sr.', 'Mary Jane', NULL, 'Ilisan', NULL, NULL, NULL, NULL, 2, b'0', b'0', 1, 59, 1, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (74, 'Fr.', 'Antonio', NULL, 'Ala', 'II', NULL, NULL, NULL, 2, b'0', b'0', 1, 43, 1, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (75, 'Sr.', 'Ma. Angeles', NULL, 'Martin', NULL, NULL, NULL, NULL, 2, b'0', b'0', 1, 15, 1, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (76, 'Sr.', 'Mary Alphonse', NULL, 'Mabute', NULL, NULL, NULL, NULL, 2, b'0', b'0', 1, 30, 2, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (77, 'Sr.', 'Ma. Eduarda', NULL, 'Bongo', NULL, NULL, NULL, NULL, 2, b'0', b'0', 1, 27, 2, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (78, 'Sr.', 'Myle', NULL, 'Toledana', NULL, NULL, NULL, NULL, 2, b'0', b'0', 1, 3, 2, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (79, 'Sr.', 'Moana Marie', NULL, 'Razal', NULL, NULL, NULL, NULL, 2, b'0', b'0', 1, 35, 2, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (80, 'Sr.', 'Marlene', NULL, 'Dimaano', NULL, NULL, NULL, NULL, 2, b'0', b'0', 1, 35, 2, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (81, 'Sr.', 'Leda', NULL, 'Hayahay', NULL, NULL, NULL, NULL, 2, b'0', b'0', 1, 1, 2, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (82, 'Sr.', 'Dolores', NULL, 'Clarete', NULL, NULL, NULL, NULL, 2, b'0', b'0', 1, 26, 2, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (83, 'Sr.', 'Felisa', NULL, 'Salac', NULL, NULL, NULL, NULL, 2, b'0', b'0', 1, 26, 2, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (84, 'Sr.', 'Mary Ann', NULL, 'Quincena', NULL, NULL, NULL, NULL, 2, b'0', b'0', 1, 23, 2, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (85, 'Fr.', 'Joey', NULL, 'Ruega', NULL, NULL, NULL, NULL, 2, b'0', b'0', 1, 69, 2, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (86, 'Sr.', 'Annie', NULL, 'Manapat', NULL, NULL, NULL, NULL, 2, b'0', b'0', 1, 70, 1, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (87, 'Sr.', 'Maria Vicenta', NULL, 'Estrella', NULL, NULL, NULL, NULL, 2, b'0', b'0', 1, 54, 2, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (88, 'Sr.', 'Ma. Chona', NULL, 'Mendiola', NULL, NULL, NULL, NULL, 2, b'0', b'0', 1, 39, 2, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (89, 'Sr.', 'Ma. Gloria', NULL, 'Paguio', NULL, NULL, NULL, NULL, 2, b'0', b'0', 1, 5, 2, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (90, 'Sr.', 'Maria Cireflor', NULL, 'Ducao', NULL, NULL, NULL, NULL, 2, b'0', b'0', 1, 13, 2, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (91, 'Sr.', 'Merlinia', NULL, 'Bongat', NULL, NULL, NULL, NULL, 2, b'0', b'0', 1, 15, 2, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (92, 'Sr.', 'Ma. Shirley', NULL, 'Roble', NULL, NULL, NULL, NULL, 2, b'0', b'0', 1, 44, 2, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (93, 'Sr.', 'Purisima', NULL, 'Tanedo', NULL, NULL, NULL, NULL, 2, b'0', b'0', 1, 60, 2, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (94, 'Sr.', 'Maribeth', NULL, 'Cauilan', NULL, NULL, NULL, NULL, 2, b'0', b'0', 1, 47, 2, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (95, 'Sr.', 'Elsie', NULL, 'Valenzona', NULL, NULL, NULL, NULL, 2, b'0', b'0', 1, 10, 3, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (96, 'Sr.', 'Elaine Faith', NULL, 'Taneo', NULL, NULL, NULL, NULL, 2, b'0', b'0', 1, 61, 3, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (97, 'Sr. M.', 'Lucy', NULL, 'Sabas', NULL, NULL, NULL, NULL, 2, b'0', b'0', 1, 19, 3, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (98, 'Sr. M.', 'Esther', NULL, 'Tancinco', NULL, NULL, NULL, NULL, 2, b'0', b'0', 1, 19, 3, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (99, 'Fr.', 'Adriano', NULL, 'Satura', NULL, NULL, NULL, NULL, 2, b'0', b'0', 1, 11, 3, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (100, 'Sr.', 'Ma. Rosalina', NULL, 'Galito', NULL, NULL, NULL, NULL, 2, b'0', b'0', 1, 4, 3, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (101, 'Sr.', 'Aquila', NULL, 'Sy', NULL, NULL, NULL, NULL, 2, b'0', b'0', 1, 22, 3, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (102, 'Sr.', 'Isidra', NULL, 'Dillo', NULL, NULL, NULL, NULL, 2, b'0', b'0', 1, 28, 3, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (103, 'Sr.', 'Josette', NULL, 'Ebajo', NULL, NULL, NULL, NULL, 2, b'0', b'0', 1, 25, 3, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (104, 'Sr.', 'Mary Rose', NULL, 'Villegas', NULL, NULL, NULL, NULL, 2, b'0', b'0', 1, 25, 3, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (105, 'Sr.', 'Nelly', NULL, 'Aninon', NULL, NULL, NULL, NULL, 2, b'0', b'0', 1, 27, 4, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (106, 'Sr.', 'Estrellita', NULL, 'Del Socorro', NULL, NULL, NULL, NULL, 2, b'0', b'0', 1, 28, 4, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (107, 'Sr.', 'Janet', NULL, 'Pilapil', NULL, NULL, NULL, NULL, 2, b'0', b'0', 1, 9, 4, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (108, 'Sr.', 'Ma. Victoria', NULL, 'Ticong', NULL, NULL, NULL, NULL, 2, b'0', b'0', 1, 71, 4, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (109, 'Sr.', 'Julie', NULL, 'Abarquez', NULL, NULL, NULL, NULL, 2, b'0', b'0', 1, 34, 4, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (110, 'Rev. Fr.', 'Candido', NULL, 'Saladaga', NULL, NULL, NULL, NULL, 2, b'0', b'0', 1, 64, 4, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (111, 'Sr.', 'Lita', NULL, 'Lapesura', NULL, NULL, NULL, NULL, 2, b'0', b'0', 1, 1, 4, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (112, 'Sr.', 'Ma. Jocelyn', NULL, 'Lopez', NULL, NULL, NULL, NULL, 2, b'0', b'0', 1, 38, 4, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (113, 'Sr.', 'Irma', NULL, 'Castrodes', NULL, NULL, NULL, NULL, 2, b'0', b'0', 1, 62, 1, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (114, 'Sr.', 'Maria Goretti', NULL, 'Peries', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 79, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (115, 'Fr.', 'Charles', NULL, 'Mortela', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 84, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (116, 'Sr.', 'Elizabeth', NULL, 'Cuyop', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 82, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (117, 'Sr.', 'Janet', NULL, 'Pilapil', NULL, NULL, NULL, NULL, 2, b'0', b'0', 0, 81, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');
INSERT INTO `persons` VALUES (118, 'Sr.', 'Melin', NULL, 'Sinak-ey', 'SCMM', NULL, NULL, NULL, 2, b'0', b'0', 0, 80, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');

-- ----------------------------
-- Table structure for positions
-- ----------------------------
DROP TABLE IF EXISTS `positions`;
CREATE TABLE `positions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `max_selection` int(5) NULL DEFAULT NULL,
  `sequence` int(11) NULL DEFAULT NULL,
  `dt_created` datetime(0) NULL DEFAULT NULL,
  `created_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  `is_deleted` bit(1) NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of positions
-- ----------------------------
INSERT INTO `positions` VALUES (1, 'Provincial Treasurers', 'Provincial Treasurers', 10, 1, '2019-11-03 01:58:56', 1, '2019-11-05 01:58:56', 1, b'0');
INSERT INTO `positions` VALUES (2, 'Local Treasurers', 'Local Treasurers', 10, 2, '2019-11-03 01:58:56', 1, '2019-11-05 15:12:17', 1, b'0');
INSERT INTO `positions` VALUES (3, 'Visayas Coordinators', 'Visayas Coordinators', 5, 3, '2019-11-03 01:58:56', 1, '2019-11-05 23:23:27', 1, b'0');
INSERT INTO `positions` VALUES (4, 'Mindanao Coordinators', 'Mindanao Coordinators', 5, 4, '2019-11-03 01:58:56', 1, '2019-11-05 15:12:14', 1, b'0');

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings`  (
  `id` int(11) NOT NULL,
  `header` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `slogan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `footer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES (1, 'EVS WEB v.1.0.0-beta', 'Electronic Voting System', 'EVS WEB 2019 by Team <01/>', 'http://localhost/evs.api/public/assets/img/logo.png');

-- ----------------------------
-- Table structure for tally
-- ----------------------------
DROP TABLE IF EXISTS `tally`;
CREATE TABLE `tally`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NULL DEFAULT NULL,
  `candidate_id` int(11) NULL DEFAULT NULL,
  `ip_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dt_created` datetime(0) NULL DEFAULT NULL,
  `created_by` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Procedure structure for sp_summary_results
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_summary_results`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_summary_results`()
BEGIN
	DECLARE total INT(11);
	SET total = (SELECT COUNT(id) FROM persons WHERE is_deleted = 0 AND role_id = 2 AND is_candidate = 0);
	SELECT 
		t4.name AS position_name,
		t2.prefix,
		t2.first_name,
		t2.middle_name,
		t2.last_name,
		t3.long_name AS group_name,
		COUNT(t2.id) AS total_votes,
		CONCAT(ROUND(( COUNT(t1.candidate_id) / total * 100 ),2),'%') AS percentage
	FROM tally AS t1
	LEFT JOIN persons AS t2 ON t2.id = t1.candidate_id
	LEFT JOIN groups AS t3 ON t3.id = t2.group_id
	LEFT JOIN positions AS t4 ON t4.id = t2.position_id
	WHERE t2.is_candidate = 1 AND t2.is_deleted = 0 AND t2.role_id = 2
	GROUP BY t2.id
  ORDER BY t4.sequence ASC, total_votes DESC;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
