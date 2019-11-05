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

 Date: 06/11/2019 02:05:53
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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of persons
-- ----------------------------
INSERT INTO `persons` VALUES (1, 'Mr.', 'System', '', 'Admin', '', '', 3, '6877bd313d43e612c7f0bd227784066f3b536300b7714e611da1271aad5d6b5d58397e3934f7434fa2c2aa3a79f3db0b6dfbaaaa60a660af3afc7f162b3379ae', 1, b'0', b'0', 0, 0, 0, '2019-11-03 20:00:53', 1, NULL, NULL, b'0');

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

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
