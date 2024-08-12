/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50744
 Source Host           : localhost:3306
 Source Schema         : python_photo

 Target Server Type    : MySQL
 Target Server Version : 50744
 File Encoding         : 65001

 Date: 07/07/2024 21:59:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add ad', 7, 'add_ad');
INSERT INTO `auth_permission` VALUES (26, 'Can change ad', 7, 'change_ad');
INSERT INTO `auth_permission` VALUES (27, 'Can delete ad', 7, 'delete_ad');
INSERT INTO `auth_permission` VALUES (28, 'Can view ad', 7, 'view_ad');
INSERT INTO `auth_permission` VALUES (29, 'Can add classification', 8, 'add_classification');
INSERT INTO `auth_permission` VALUES (30, 'Can change classification', 8, 'change_classification');
INSERT INTO `auth_permission` VALUES (31, 'Can delete classification', 8, 'delete_classification');
INSERT INTO `auth_permission` VALUES (32, 'Can view classification', 8, 'view_classification');
INSERT INTO `auth_permission` VALUES (33, 'Can add error log', 9, 'add_errorlog');
INSERT INTO `auth_permission` VALUES (34, 'Can change error log', 9, 'change_errorlog');
INSERT INTO `auth_permission` VALUES (35, 'Can delete error log', 9, 'delete_errorlog');
INSERT INTO `auth_permission` VALUES (36, 'Can view error log', 9, 'view_errorlog');
INSERT INTO `auth_permission` VALUES (37, 'Can add login log', 10, 'add_loginlog');
INSERT INTO `auth_permission` VALUES (38, 'Can change login log', 10, 'change_loginlog');
INSERT INTO `auth_permission` VALUES (39, 'Can delete login log', 10, 'delete_loginlog');
INSERT INTO `auth_permission` VALUES (40, 'Can view login log', 10, 'view_loginlog');
INSERT INTO `auth_permission` VALUES (41, 'Can add notice', 11, 'add_notice');
INSERT INTO `auth_permission` VALUES (42, 'Can change notice', 11, 'change_notice');
INSERT INTO `auth_permission` VALUES (43, 'Can delete notice', 11, 'delete_notice');
INSERT INTO `auth_permission` VALUES (44, 'Can view notice', 11, 'view_notice');
INSERT INTO `auth_permission` VALUES (45, 'Can add op log', 12, 'add_oplog');
INSERT INTO `auth_permission` VALUES (46, 'Can change op log', 12, 'change_oplog');
INSERT INTO `auth_permission` VALUES (47, 'Can delete op log', 12, 'delete_oplog');
INSERT INTO `auth_permission` VALUES (48, 'Can view op log', 12, 'view_oplog');
INSERT INTO `auth_permission` VALUES (49, 'Can add user', 13, 'add_user');
INSERT INTO `auth_permission` VALUES (50, 'Can change user', 13, 'change_user');
INSERT INTO `auth_permission` VALUES (51, 'Can delete user', 13, 'delete_user');
INSERT INTO `auth_permission` VALUES (52, 'Can view user', 13, 'view_user');
INSERT INTO `auth_permission` VALUES (53, 'Can add thing', 14, 'add_thing');
INSERT INTO `auth_permission` VALUES (54, 'Can change thing', 14, 'change_thing');
INSERT INTO `auth_permission` VALUES (55, 'Can delete thing', 14, 'delete_thing');
INSERT INTO `auth_permission` VALUES (56, 'Can view thing', 14, 'view_thing');
INSERT INTO `auth_permission` VALUES (57, 'Can add record', 15, 'add_record');
INSERT INTO `auth_permission` VALUES (58, 'Can change record', 15, 'change_record');
INSERT INTO `auth_permission` VALUES (59, 'Can delete record', 15, 'delete_record');
INSERT INTO `auth_permission` VALUES (60, 'Can view record', 15, 'view_record');
INSERT INTO `auth_permission` VALUES (61, 'Can add order', 16, 'add_order');
INSERT INTO `auth_permission` VALUES (62, 'Can change order', 16, 'change_order');
INSERT INTO `auth_permission` VALUES (63, 'Can delete order', 16, 'delete_order');
INSERT INTO `auth_permission` VALUES (64, 'Can view order', 16, 'view_order');
INSERT INTO `auth_permission` VALUES (65, 'Can add comment', 17, 'add_comment');
INSERT INTO `auth_permission` VALUES (66, 'Can change comment', 17, 'change_comment');
INSERT INTO `auth_permission` VALUES (67, 'Can delete comment', 17, 'delete_comment');
INSERT INTO `auth_permission` VALUES (68, 'Can view comment', 17, 'view_comment');
INSERT INTO `auth_permission` VALUES (69, 'Can add feedback', 18, 'add_feedback');
INSERT INTO `auth_permission` VALUES (70, 'Can change feedback', 18, 'change_feedback');
INSERT INTO `auth_permission` VALUES (71, 'Can delete feedback', 18, 'delete_feedback');
INSERT INTO `auth_permission` VALUES (72, 'Can view feedback', 18, 'view_feedback');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for b_ad
-- ----------------------------
DROP TABLE IF EXISTS `b_ad`;
CREATE TABLE `b_ad`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_ad
-- ----------------------------
INSERT INTO `b_ad` VALUES (1, 'ad/1720359982493.jpeg', 'https://m3u8player.org', '2024-07-07 21:46:26.749442');
INSERT INTO `b_ad` VALUES (2, 'ad/1720359995192.jpeg', 'https://gitapp.cn/', '2024-07-07 21:46:37.929710');

-- ----------------------------
-- Table structure for b_classification
-- ----------------------------
DROP TABLE IF EXISTS `b_classification`;
CREATE TABLE `b_classification`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_classification
-- ----------------------------
INSERT INTO `b_classification` VALUES (1, '婚纱类', '2024-07-07 21:13:58.025455');
INSERT INTO `b_classification` VALUES (2, '儿童类', '2024-07-07 21:26:06.154879');
INSERT INTO `b_classification` VALUES (3, '友谊类', '2024-07-07 21:26:14.312570');
INSERT INTO `b_classification` VALUES (4, '孕妇类', '2024-07-07 21:26:20.665656');
INSERT INTO `b_classification` VALUES (5, '毕业类', '2024-07-07 21:26:51.930906');

-- ----------------------------
-- Table structure for b_comment
-- ----------------------------
DROP TABLE IF EXISTS `b_comment`;
CREATE TABLE `b_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment_time` datetime(6) NULL DEFAULT NULL,
  `like_count` int(11) NOT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_comment_thing_id_57ab492b_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_comment_user_id_46f0670f_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_comment_thing_id_57ab492b_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_comment_user_id_46f0670f_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_comment
-- ----------------------------
INSERT INTO `b_comment` VALUES (1, '11222222222222', '2024-07-07 21:45:16.882421', 0, 2, 2);
INSERT INTO `b_comment` VALUES (2, 'dddd11111', '2024-07-07 21:45:20.853602', 0, 2, 2);
INSERT INTO `b_comment` VALUES (3, '2222222222222222', '2024-07-07 21:55:37.423611', 0, 1, 5);
INSERT INTO `b_comment` VALUES (4, '555555555', '2024-07-07 21:55:51.860515', 0, 9, 5);

-- ----------------------------
-- Table structure for b_error_log
-- ----------------------------
DROP TABLE IF EXISTS `b_error_log`;
CREATE TABLE `b_error_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_error_log
-- ----------------------------

-- ----------------------------
-- Table structure for b_feedback
-- ----------------------------
DROP TABLE IF EXISTS `b_feedback`;
CREATE TABLE `b_feedback`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_feedback
-- ----------------------------
INSERT INTO `b_feedback` VALUES (1, '测试反馈221111', '哈哈哈哈哈', '刘静', '777011@gmail.com', '666651534', '2024-07-07 21:47:25.956051');

-- ----------------------------
-- Table structure for b_login_log
-- ----------------------------
DROP TABLE IF EXISTS `b_login_log`;
CREATE TABLE `b_login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_login_log
-- ----------------------------
INSERT INTO `b_login_log` VALUES (1, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-07 21:09:35.692337');
INSERT INTO `b_login_log` VALUES (2, 'ddd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-07 21:31:24.431693');
INSERT INTO `b_login_log` VALUES (3, 'admin123', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-07 21:52:28.624593');
INSERT INTO `b_login_log` VALUES (4, 'test004', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-07 21:55:29.644215');
INSERT INTO `b_login_log` VALUES (5, 'test004', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-07 21:56:10.518432');

-- ----------------------------
-- Table structure for b_notice
-- ----------------------------
DROP TABLE IF EXISTS `b_notice`;
CREATE TABLE `b_notice`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_notice
-- ----------------------------
INSERT INTO `b_notice` VALUES (1, '测试通知', 'hhhhhhhhh', '2024-07-07 21:46:46.187263');
INSERT INTO `b_notice` VALUES (2, '测试通知222', '哈哈哈哈', '2024-07-07 21:46:54.549114');

-- ----------------------------
-- Table structure for b_op_log
-- ----------------------------
DROP TABLE IF EXISTS `b_op_log`;
CREATE TABLE `b_op_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `re_ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_time` datetime(6) NULL DEFAULT NULL,
  `re_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `access_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1020 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_op_log
-- ----------------------------
INSERT INTO `b_op_log` VALUES (1, '127.0.0.1', '2024-07-07 21:06:49.345165', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (2, '127.0.0.1', '2024-07-07 21:06:49.346974', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (3, '127.0.0.1', '2024-07-07 21:06:49.358919', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (4, '127.0.0.1', '2024-07-07 21:09:35.709819', '/myapp/admin/adminLogin', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (5, '127.0.0.1', '2024-07-07 21:09:37.280361', '/myapp/admin/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (6, '127.0.0.1', '2024-07-07 21:09:37.280361', '/myapp/admin/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (7, '127.0.0.1', '2024-07-07 21:09:43.013151', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (8, '127.0.0.1', '2024-07-07 21:09:43.194813', '/myapp/admin/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (9, '127.0.0.1', '2024-07-07 21:09:43.197636', '/myapp/admin/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (10, '127.0.0.1', '2024-07-07 21:13:19.290731', '/myapp/admin/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (11, '127.0.0.1', '2024-07-07 21:13:19.288509', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (12, '127.0.0.1', '2024-07-07 21:13:20.469696', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (13, '127.0.0.1', '2024-07-07 21:13:21.008239', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (14, '127.0.0.1', '2024-07-07 21:13:21.016764', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (15, '127.0.0.1', '2024-07-07 21:13:50.246511', '/myapp/admin/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (16, '127.0.0.1', '2024-07-07 21:13:58.043049', '/myapp/admin/classification/create', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (17, '127.0.0.1', '2024-07-07 21:13:58.087902', '/myapp/admin/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (18, '127.0.0.1', '2024-07-07 21:13:59.156172', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (19, '127.0.0.1', '2024-07-07 21:13:59.160569', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (20, '127.0.0.1', '2024-07-07 21:20:34.614389', '/myapp/admin/thing/create', 'POST', NULL, '476');
INSERT INTO `b_op_log` VALUES (21, '127.0.0.1', '2024-07-07 21:20:34.706386', '/myapp/admin/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (22, '127.0.0.1', '2024-07-07 21:21:16.324454', '/upload/cover/1720358406645.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (23, '127.0.0.1', '2024-07-07 21:21:26.686817', '/myapp/admin/thing/update', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (24, '127.0.0.1', '2024-07-07 21:21:26.779237', '/myapp/admin/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (25, '127.0.0.1', '2024-07-07 21:21:34.152746', '/myapp/index/notice/list_api', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (26, '127.0.0.1', '2024-07-07 21:21:34.179677', '/myapp/index/thing/getRecommend', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (27, '127.0.0.1', '2024-07-07 21:21:34.201955', '/upload/cover/1720358406645.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (28, '127.0.0.1', '2024-07-07 21:21:34.614998', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (29, '127.0.0.1', '2024-07-07 21:21:34.629663', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (30, '127.0.0.1', '2024-07-07 21:21:34.641128', '/myapp/index/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (31, '127.0.0.1', '2024-07-07 21:22:12.964706', '/myapp/admin/thing/list', 'GET', NULL, '181');
INSERT INTO `b_op_log` VALUES (32, '127.0.0.1', '2024-07-07 21:22:45.621192', '/myapp/admin/thing/update', 'POST', NULL, '51');
INSERT INTO `b_op_log` VALUES (33, '127.0.0.1', '2024-07-07 21:22:45.862613', '/myapp/admin/thing/list', 'GET', NULL, '174');
INSERT INTO `b_op_log` VALUES (34, '127.0.0.1', '2024-07-07 21:23:06.465188', '/myapp/admin/thing/update', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (35, '127.0.0.1', '2024-07-07 21:23:06.655028', '/myapp/admin/thing/list', 'GET', NULL, '133');
INSERT INTO `b_op_log` VALUES (36, '127.0.0.1', '2024-07-07 21:23:30.116278', '/myapp/admin/thing/update', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (37, '127.0.0.1', '2024-07-07 21:23:30.325036', '/myapp/admin/thing/list', 'GET', NULL, '150');
INSERT INTO `b_op_log` VALUES (38, '127.0.0.1', '2024-07-07 21:23:54.517175', '/myapp/admin/thing/update', 'POST', NULL, '64');
INSERT INTO `b_op_log` VALUES (39, '127.0.0.1', '2024-07-07 21:23:54.710242', '/myapp/admin/thing/list', 'GET', NULL, '125');
INSERT INTO `b_op_log` VALUES (40, '127.0.0.1', '2024-07-07 21:24:17.052472', '/myapp/admin/thing/update', 'POST', NULL, '51');
INSERT INTO `b_op_log` VALUES (41, '127.0.0.1', '2024-07-07 21:24:17.297417', '/myapp/admin/thing/list', 'GET', NULL, '160');
INSERT INTO `b_op_log` VALUES (42, '127.0.0.1', '2024-07-07 21:24:31.955587', '/myapp/admin/thing/update', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (43, '127.0.0.1', '2024-07-07 21:24:32.121266', '/myapp/admin/thing/list', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (44, '127.0.0.1', '2024-07-07 21:24:43.790878', '/myapp/admin/thing/update', 'POST', NULL, '55');
INSERT INTO `b_op_log` VALUES (45, '127.0.0.1', '2024-07-07 21:24:44.020811', '/myapp/admin/thing/list', 'GET', NULL, '166');
INSERT INTO `b_op_log` VALUES (46, '127.0.0.1', '2024-07-07 21:24:59.103811', '/myapp/admin/thing/update', 'POST', NULL, '66');
INSERT INTO `b_op_log` VALUES (47, '127.0.0.1', '2024-07-07 21:24:59.334662', '/myapp/admin/thing/list', 'GET', NULL, '166');
INSERT INTO `b_op_log` VALUES (48, '127.0.0.1', '2024-07-07 21:25:23.982340', '/myapp/admin/thing/update', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (49, '127.0.0.1', '2024-07-07 21:25:24.211842', '/myapp/admin/thing/list', 'GET', NULL, '168');
INSERT INTO `b_op_log` VALUES (50, '127.0.0.1', '2024-07-07 21:25:33.226966', '/myapp/admin/thing/update', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (51, '127.0.0.1', '2024-07-07 21:25:33.433067', '/myapp/admin/thing/list', 'GET', NULL, '152');
INSERT INTO `b_op_log` VALUES (52, '127.0.0.1', '2024-07-07 21:25:47.911526', '/myapp/admin/thing/update', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (53, '127.0.0.1', '2024-07-07 21:25:48.129881', '/myapp/admin/thing/list', 'GET', NULL, '172');
INSERT INTO `b_op_log` VALUES (54, '127.0.0.1', '2024-07-07 21:25:58.820441', '/myapp/admin/thing/update', 'POST', NULL, '71');
INSERT INTO `b_op_log` VALUES (55, '127.0.0.1', '2024-07-07 21:25:59.030311', '/myapp/admin/thing/list', 'GET', NULL, '159');
INSERT INTO `b_op_log` VALUES (56, '127.0.0.1', '2024-07-07 21:26:01.112145', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (57, '127.0.0.1', '2024-07-07 21:26:06.159749', '/myapp/admin/classification/create', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (58, '127.0.0.1', '2024-07-07 21:26:06.216360', '/myapp/admin/classification/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (59, '127.0.0.1', '2024-07-07 21:26:14.325281', '/myapp/admin/classification/create', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (60, '127.0.0.1', '2024-07-07 21:26:14.357285', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (61, '127.0.0.1', '2024-07-07 21:26:20.671154', '/myapp/admin/classification/create', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (62, '127.0.0.1', '2024-07-07 21:26:20.727718', '/myapp/admin/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (63, '127.0.0.1', '2024-07-07 21:26:25.336538', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (64, '127.0.0.1', '2024-07-07 21:26:25.453404', '/myapp/admin/classification/list', 'GET', NULL, '118');
INSERT INTO `b_op_log` VALUES (65, '127.0.0.1', '2024-07-07 21:26:29.979272', '/upload/cover/1720358585314.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (66, '127.0.0.1', '2024-07-07 21:26:33.888399', '/myapp/admin/thing/update', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (67, '127.0.0.1', '2024-07-07 21:26:34.134666', '/myapp/admin/thing/list', 'GET', NULL, '179');
INSERT INTO `b_op_log` VALUES (68, '127.0.0.1', '2024-07-07 21:26:35.316353', '/upload/cover/1720358608911.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (69, '127.0.0.1', '2024-07-07 21:26:38.624011', '/myapp/admin/thing/update', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (70, '127.0.0.1', '2024-07-07 21:26:38.884732', '/myapp/admin/thing/list', 'GET', NULL, '202');
INSERT INTO `b_op_log` VALUES (71, '127.0.0.1', '2024-07-07 21:26:40.327757', '/upload/cover/1720358633207.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (72, '127.0.0.1', '2024-07-07 21:26:45.440473', '/myapp/admin/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (73, '127.0.0.1', '2024-07-07 21:26:51.934095', '/myapp/admin/classification/create', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (74, '127.0.0.1', '2024-07-07 21:26:51.971967', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (75, '127.0.0.1', '2024-07-07 21:26:55.347541', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (76, '127.0.0.1', '2024-07-07 21:26:55.491502', '/myapp/admin/classification/list', 'GET', NULL, '153');
INSERT INTO `b_op_log` VALUES (77, '127.0.0.1', '2024-07-07 21:26:57.981263', '/upload/cover/1720358633207.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (78, '127.0.0.1', '2024-07-07 21:27:00.927703', '/myapp/admin/thing/update', 'POST', NULL, '58');
INSERT INTO `b_op_log` VALUES (79, '127.0.0.1', '2024-07-07 21:27:01.114754', '/myapp/admin/thing/list', 'GET', NULL, '136');
INSERT INTO `b_op_log` VALUES (80, '127.0.0.1', '2024-07-07 21:27:04.501805', '/upload/cover/1720358641398.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (81, '127.0.0.1', '2024-07-07 21:27:09.174137', '/myapp/admin/thing/update', 'POST', NULL, '54');
INSERT INTO `b_op_log` VALUES (82, '127.0.0.1', '2024-07-07 21:27:09.391718', '/myapp/admin/thing/list', 'GET', NULL, '153');
INSERT INTO `b_op_log` VALUES (83, '127.0.0.1', '2024-07-07 21:27:11.647417', '/upload/cover/1720358670842.jpeg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (84, '127.0.0.1', '2024-07-07 21:27:16.944822', '/upload/cover/1720358753887.jpeg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (85, '127.0.0.1', '2024-07-07 21:27:20.675140', '/myapp/admin/thing/update', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (86, '127.0.0.1', '2024-07-07 21:27:20.904193', '/myapp/admin/thing/list', 'GET', NULL, '179');
INSERT INTO `b_op_log` VALUES (87, '127.0.0.1', '2024-07-07 21:27:21.747715', '/upload/cover/1720358746912.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (88, '127.0.0.1', '2024-07-07 21:27:26.199839', '/myapp/admin/thing/update', 'POST', NULL, '55');
INSERT INTO `b_op_log` VALUES (89, '127.0.0.1', '2024-07-07 21:27:26.441090', '/myapp/admin/thing/list', 'GET', NULL, '179');
INSERT INTO `b_op_log` VALUES (90, '127.0.0.1', '2024-07-07 21:27:31.258204', '/myapp/index/thing/getRecommend', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (91, '127.0.0.1', '2024-07-07 21:27:31.310554', '/myapp/index/thing/getRecommend', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (92, '127.0.0.1', '2024-07-07 21:27:31.432726', '/upload/cover/1720358746912.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (93, '127.0.0.1', '2024-07-07 21:27:31.488267', '/upload/cover/1720358633207.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (94, '127.0.0.1', '2024-07-07 21:27:31.498428', '/upload/cover/1720358608911.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (95, '127.0.0.1', '2024-07-07 21:27:31.498428', '/upload/cover/1720358641398.jpeg', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (96, '127.0.0.1', '2024-07-07 21:27:31.500228', '/upload/cover/1720358641398.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (97, '127.0.0.1', '2024-07-07 21:27:31.509942', '/upload/cover/1720358608911.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (98, '127.0.0.1', '2024-07-07 21:27:31.516242', '/upload/cover/1720358697731.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (99, '127.0.0.1', '2024-07-07 21:27:31.542801', '/upload/cover/1720358753887.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (100, '127.0.0.1', '2024-07-07 21:27:31.544731', '/upload/cover/1720358670842.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (101, '127.0.0.1', '2024-07-07 21:27:31.562027', '/upload/cover/1720358670842.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (102, '127.0.0.1', '2024-07-07 21:27:32.689802', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (103, '127.0.0.1', '2024-07-07 21:27:32.696348', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (104, '127.0.0.1', '2024-07-07 21:27:32.762832', '/myapp/index/thing/list', 'GET', NULL, '98');
INSERT INTO `b_op_log` VALUES (105, '127.0.0.1', '2024-07-07 21:27:43.684384', '/myapp/admin/thing/update', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (106, '127.0.0.1', '2024-07-07 21:27:43.918952', '/myapp/admin/thing/list', 'GET', NULL, '165');
INSERT INTO `b_op_log` VALUES (107, '127.0.0.1', '2024-07-07 21:27:50.750800', '/myapp/admin/thing/update', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (108, '127.0.0.1', '2024-07-07 21:27:50.992116', '/myapp/admin/thing/list', 'GET', NULL, '179');
INSERT INTO `b_op_log` VALUES (109, '127.0.0.1', '2024-07-07 21:27:52.087873', '/upload/cover/1720358682532.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (110, '127.0.0.1', '2024-07-07 21:27:55.848770', '/myapp/admin/thing/update', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (111, '127.0.0.1', '2024-07-07 21:27:56.109044', '/myapp/admin/thing/list', 'GET', NULL, '196');
INSERT INTO `b_op_log` VALUES (112, '127.0.0.1', '2024-07-07 21:28:00.737255', '/myapp/admin/thing/update', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (113, '127.0.0.1', '2024-07-07 21:28:00.942527', '/myapp/admin/thing/list', 'GET', NULL, '149');
INSERT INTO `b_op_log` VALUES (114, '127.0.0.1', '2024-07-07 21:28:07.919862', '/myapp/admin/thing/update', 'POST', NULL, '61');
INSERT INTO `b_op_log` VALUES (115, '127.0.0.1', '2024-07-07 21:28:08.117279', '/myapp/admin/thing/list', 'GET', NULL, '144');
INSERT INTO `b_op_log` VALUES (116, '127.0.0.1', '2024-07-07 21:28:08.876256', '/upload/cover/1720358753887.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (117, '127.0.0.1', '2024-07-07 21:28:13.265125', '/myapp/admin/thing/update', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (118, '127.0.0.1', '2024-07-07 21:28:13.450873', '/myapp/admin/thing/list', 'GET', NULL, '142');
INSERT INTO `b_op_log` VALUES (119, '127.0.0.1', '2024-07-07 21:28:17.589553', '/upload/cover/1720358564192.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (120, '127.0.0.1', '2024-07-07 21:28:23.887356', '/myapp/admin/thing/update', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (121, '127.0.0.1', '2024-07-07 21:28:24.090867', '/myapp/admin/thing/list', 'GET', NULL, '149');
INSERT INTO `b_op_log` VALUES (122, '127.0.0.1', '2024-07-07 21:28:32.274154', '/myapp/admin/thing/update', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (123, '127.0.0.1', '2024-07-07 21:28:32.483221', '/myapp/admin/thing/list', 'GET', NULL, '157');
INSERT INTO `b_op_log` VALUES (124, '127.0.0.1', '2024-07-07 21:28:35.033798', '/upload/cover/1720358608911.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (125, '127.0.0.1', '2024-07-07 21:28:39.959580', '/myapp/admin/thing/update', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (126, '127.0.0.1', '2024-07-07 21:28:40.194018', '/myapp/admin/thing/list', 'GET', NULL, '163');
INSERT INTO `b_op_log` VALUES (127, '127.0.0.1', '2024-07-07 21:28:50.304507', '/myapp/admin/thing/update', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (128, '127.0.0.1', '2024-07-07 21:28:50.535697', '/myapp/admin/thing/list', 'GET', NULL, '179');
INSERT INTO `b_op_log` VALUES (129, '127.0.0.1', '2024-07-07 21:28:51.927183', '/upload/cover/1720358641398.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (130, '127.0.0.1', '2024-07-07 21:28:53.892726', '/myapp/admin/thing/update', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (131, '127.0.0.1', '2024-07-07 21:28:54.155952', '/myapp/admin/thing/list', 'GET', NULL, '184');
INSERT INTO `b_op_log` VALUES (132, '127.0.0.1', '2024-07-07 21:28:55.522050', '/upload/cover/1720358670842.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (133, '127.0.0.1', '2024-07-07 21:28:57.621801', '/myapp/admin/thing/update', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (134, '127.0.0.1', '2024-07-07 21:28:57.846229', '/myapp/admin/thing/list', 'GET', NULL, '158');
INSERT INTO `b_op_log` VALUES (135, '127.0.0.1', '2024-07-07 21:29:00.946781', '/myapp/admin/thing/update', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (136, '127.0.0.1', '2024-07-07 21:29:01.151663', '/myapp/admin/thing/list', 'GET', NULL, '155');
INSERT INTO `b_op_log` VALUES (137, '127.0.0.1', '2024-07-07 21:29:01.860614', '/upload/cover/1720358697731.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (138, '127.0.0.1', '2024-07-07 21:29:03.671061', '/myapp/admin/thing/update', 'POST', NULL, '55');
INSERT INTO `b_op_log` VALUES (139, '127.0.0.1', '2024-07-07 21:29:03.888926', '/myapp/admin/thing/list', 'GET', NULL, '152');
INSERT INTO `b_op_log` VALUES (140, '127.0.0.1', '2024-07-07 21:29:10.053572', '/myapp/admin/thing/update', 'POST', NULL, '53');
INSERT INTO `b_op_log` VALUES (141, '127.0.0.1', '2024-07-07 21:29:10.295211', '/myapp/admin/thing/list', 'GET', NULL, '187');
INSERT INTO `b_op_log` VALUES (142, '127.0.0.1', '2024-07-07 21:29:15.436142', '/myapp/admin/thing/update', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (143, '127.0.0.1', '2024-07-07 21:29:15.650832', '/myapp/admin/thing/list', 'GET', NULL, '166');
INSERT INTO `b_op_log` VALUES (144, '127.0.0.1', '2024-07-07 21:29:18.622998', '/myapp/admin/thing/update', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (145, '127.0.0.1', '2024-07-07 21:29:18.819743', '/myapp/admin/thing/list', 'GET', NULL, '162');
INSERT INTO `b_op_log` VALUES (146, '127.0.0.1', '2024-07-07 21:29:27.461012', '/myapp/admin/thing/list', 'GET', NULL, '151');
INSERT INTO `b_op_log` VALUES (147, '127.0.0.1', '2024-07-07 21:29:32.077720', '/myapp/index/thing/getRecommend', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (148, '127.0.0.1', '2024-07-07 21:29:32.122428', '/myapp/index/thing/getRecommend', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (149, '127.0.0.1', '2024-07-07 21:29:32.571734', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (150, '127.0.0.1', '2024-07-07 21:29:32.579190', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (151, '127.0.0.1', '2024-07-07 21:29:32.622440', '/myapp/index/thing/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (152, '127.0.0.1', '2024-07-07 21:29:33.454178', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (153, '127.0.0.1', '2024-07-07 21:29:33.937952', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (154, '127.0.0.1', '2024-07-07 21:29:34.388188', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (155, '127.0.0.1', '2024-07-07 21:29:35.026655', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (156, '127.0.0.1', '2024-07-07 21:29:35.419808', '/myapp/index/thing/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (157, '127.0.0.1', '2024-07-07 21:29:36.472006', '/myapp/index/thing/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (158, '127.0.0.1', '2024-07-07 21:29:55.507191', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (159, '127.0.0.1', '2024-07-07 21:29:55.973508', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (160, '127.0.0.1', '2024-07-07 21:29:58.353195', '/myapp/index/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (161, '127.0.0.1', '2024-07-07 21:29:58.957259', '/myapp/index/thing/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (162, '127.0.0.1', '2024-07-07 21:29:59.792359', '/myapp/index/thing/list', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (163, '127.0.0.1', '2024-07-07 21:30:00.166615', '/myapp/index/thing/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (164, '127.0.0.1', '2024-07-07 21:30:22.596730', '/myapp/index/thing/detail', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (165, '127.0.0.1', '2024-07-07 21:30:22.606405', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (166, '127.0.0.1', '2024-07-07 21:30:22.635106', '/myapp/index/comment/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (167, '127.0.0.1', '2024-07-07 21:30:22.676928', '/myapp/index/comment/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (168, '127.0.0.1', '2024-07-07 21:30:22.684944', '/myapp/index/comment/list', 'GET', NULL, '88');
INSERT INTO `b_op_log` VALUES (169, '127.0.0.1', '2024-07-07 21:30:27.717758', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (170, '127.0.0.1', '2024-07-07 21:30:27.738964', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (171, '127.0.0.1', '2024-07-07 21:30:27.768517', '/myapp/index/thing/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (172, '127.0.0.1', '2024-07-07 21:30:29.210495', '/myapp/index/thing/detail', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (173, '127.0.0.1', '2024-07-07 21:30:29.210495', '/myapp/index/thing/detail', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (174, '127.0.0.1', '2024-07-07 21:30:29.227247', '/myapp/index/thing/detail', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (175, '127.0.0.1', '2024-07-07 21:30:29.310270', '/myapp/index/thing/detail', 'GET', NULL, '114');
INSERT INTO `b_op_log` VALUES (176, '127.0.0.1', '2024-07-07 21:30:29.325508', '/myapp/index/thing/detail', 'GET', NULL, '130');
INSERT INTO `b_op_log` VALUES (177, '127.0.0.1', '2024-07-07 21:30:30.200097', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (178, '127.0.0.1', '2024-07-07 21:30:30.212416', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (179, '127.0.0.1', '2024-07-07 21:30:30.264696', '/myapp/index/thing/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (180, '127.0.0.1', '2024-07-07 21:30:31.148282', '/myapp/index/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (181, '127.0.0.1', '2024-07-07 21:30:31.148282', '/myapp/index/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (182, '127.0.0.1', '2024-07-07 21:30:31.179030', '/myapp/index/comment/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (183, '127.0.0.1', '2024-07-07 21:30:31.224439', '/myapp/index/comment/list', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (184, '127.0.0.1', '2024-07-07 21:30:31.232074', '/myapp/index/comment/list', 'GET', NULL, '104');
INSERT INTO `b_op_log` VALUES (185, '127.0.0.1', '2024-07-07 21:30:31.274032', '/upload/cover/1720358585314.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (186, '127.0.0.1', '2024-07-07 21:30:31.322082', '/upload/cover/1720358608911.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (187, '127.0.0.1', '2024-07-07 21:30:31.322082', '/upload/cover/1720358608911.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (188, '127.0.0.1', '2024-07-07 21:30:31.322082', '/upload/cover/1720358608911.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (189, '127.0.0.1', '2024-07-07 21:30:32.059580', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (190, '127.0.0.1', '2024-07-07 21:30:32.066889', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (191, '127.0.0.1', '2024-07-07 21:30:32.100993', '/myapp/index/thing/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (192, '127.0.0.1', '2024-07-07 21:30:32.163256', '/upload/cover/1720358682532.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (193, '127.0.0.1', '2024-07-07 21:30:32.163256', '/upload/cover/1720358682532.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (194, '127.0.0.1', '2024-07-07 21:30:32.176911', '/upload/cover/1720358682532.jpeg', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (195, '127.0.0.1', '2024-07-07 21:30:32.177662', '/upload/cover/1720358682532.jpeg', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (196, '127.0.0.1', '2024-07-07 21:30:32.178432', '/upload/cover/1720358682532.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (197, '127.0.0.1', '2024-07-07 21:30:32.178432', '/upload/cover/1720358682532.jpeg', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (198, '127.0.0.1', '2024-07-07 21:30:33.063059', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (199, '127.0.0.1', '2024-07-07 21:30:33.073872', '/myapp/index/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (200, '127.0.0.1', '2024-07-07 21:30:33.096772', '/myapp/index/comment/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (201, '127.0.0.1', '2024-07-07 21:30:33.124026', '/myapp/index/comment/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (202, '127.0.0.1', '2024-07-07 21:30:33.157951', '/myapp/index/comment/list', 'GET', NULL, '104');
INSERT INTO `b_op_log` VALUES (203, '127.0.0.1', '2024-07-07 21:30:34.053703', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (204, '127.0.0.1', '2024-07-07 21:30:34.059817', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (205, '127.0.0.1', '2024-07-07 21:30:34.110911', '/myapp/index/thing/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (206, '127.0.0.1', '2024-07-07 21:30:35.256750', '/myapp/index/comment/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (207, '127.0.0.1', '2024-07-07 21:30:35.262578', '/myapp/index/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (208, '127.0.0.1', '2024-07-07 21:30:35.277107', '/myapp/index/comment/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (209, '127.0.0.1', '2024-07-07 21:30:35.340772', '/myapp/index/comment/list', 'GET', NULL, '95');
INSERT INTO `b_op_log` VALUES (210, '127.0.0.1', '2024-07-07 21:30:35.342740', '/myapp/index/comment/list', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (211, '127.0.0.1', '2024-07-07 21:30:36.140547', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (212, '127.0.0.1', '2024-07-07 21:30:36.156441', '/myapp/index/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (213, '127.0.0.1', '2024-07-07 21:30:36.193660', '/myapp/index/thing/list', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (214, '127.0.0.1', '2024-07-07 21:30:37.342352', '/myapp/index/thing/detail', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (215, '127.0.0.1', '2024-07-07 21:30:37.359012', '/myapp/index/thing/detail', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (216, '127.0.0.1', '2024-07-07 21:30:37.380336', '/myapp/index/thing/detail', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (217, '127.0.0.1', '2024-07-07 21:30:37.424989', '/myapp/index/thing/detail', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (218, '127.0.0.1', '2024-07-07 21:30:37.457385', '/myapp/index/thing/detail', 'GET', NULL, '131');
INSERT INTO `b_op_log` VALUES (219, '127.0.0.1', '2024-07-07 21:30:38.257935', '/myapp/index/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (220, '127.0.0.1', '2024-07-07 21:30:38.262859', '/myapp/index/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (221, '127.0.0.1', '2024-07-07 21:30:38.311742', '/myapp/index/classification/list', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (222, '127.0.0.1', '2024-07-07 21:30:39.265495', '/myapp/index/thing/detail', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (223, '127.0.0.1', '2024-07-07 21:30:39.277308', '/myapp/index/thing/detail', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (224, '127.0.0.1', '2024-07-07 21:30:39.294360', '/myapp/index/thing/detail', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (225, '127.0.0.1', '2024-07-07 21:30:39.354468', '/myapp/index/thing/detail', 'GET', NULL, '104');
INSERT INTO `b_op_log` VALUES (226, '127.0.0.1', '2024-07-07 21:30:39.377466', '/myapp/index/thing/detail', 'GET', NULL, '127');
INSERT INTO `b_op_log` VALUES (227, '127.0.0.1', '2024-07-07 21:30:40.194500', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (228, '127.0.0.1', '2024-07-07 21:30:40.203471', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (229, '127.0.0.1', '2024-07-07 21:30:40.263632', '/myapp/index/thing/list', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (230, '127.0.0.1', '2024-07-07 21:30:41.410381', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (231, '127.0.0.1', '2024-07-07 21:30:41.410381', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (232, '127.0.0.1', '2024-07-07 21:30:41.446870', '/myapp/index/comment/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (233, '127.0.0.1', '2024-07-07 21:30:41.494034', '/myapp/index/comment/list', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (234, '127.0.0.1', '2024-07-07 21:30:41.538677', '/myapp/index/comment/list', 'GET', NULL, '134');
INSERT INTO `b_op_log` VALUES (235, '127.0.0.1', '2024-07-07 21:30:42.858128', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (236, '127.0.0.1', '2024-07-07 21:30:42.862295', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (237, '127.0.0.1', '2024-07-07 21:30:42.913782', '/myapp/index/thing/list', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (238, '127.0.0.1', '2024-07-07 21:30:43.763076', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (239, '127.0.0.1', '2024-07-07 21:30:43.777781', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (240, '127.0.0.1', '2024-07-07 21:30:43.793840', '/myapp/index/comment/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (241, '127.0.0.1', '2024-07-07 21:30:43.843754', '/myapp/index/comment/list', 'GET', NULL, '96');
INSERT INTO `b_op_log` VALUES (242, '127.0.0.1', '2024-07-07 21:30:43.876206', '/myapp/index/comment/list', 'GET', NULL, '124');
INSERT INTO `b_op_log` VALUES (243, '127.0.0.1', '2024-07-07 21:30:44.717082', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (244, '127.0.0.1', '2024-07-07 21:30:44.730660', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (245, '127.0.0.1', '2024-07-07 21:30:44.778750', '/myapp/index/thing/list', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (246, '127.0.0.1', '2024-07-07 21:30:47.101576', '/myapp/index/thing/detail', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (247, '127.0.0.1', '2024-07-07 21:30:47.105637', '/myapp/index/thing/detail', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (248, '127.0.0.1', '2024-07-07 21:30:47.145413', '/myapp/index/thing/detail', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (249, '127.0.0.1', '2024-07-07 21:30:47.181292', '/myapp/index/thing/detail', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (250, '127.0.0.1', '2024-07-07 21:30:47.225909', '/myapp/index/thing/detail', 'GET', NULL, '139');
INSERT INTO `b_op_log` VALUES (251, '127.0.0.1', '2024-07-07 21:30:47.919010', '/myapp/index/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (252, '127.0.0.1', '2024-07-07 21:30:47.933010', '/myapp/index/classification/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (253, '127.0.0.1', '2024-07-07 21:30:47.982010', '/myapp/index/classification/list', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (254, '127.0.0.1', '2024-07-07 21:30:49.393585', '/myapp/index/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (255, '127.0.0.1', '2024-07-07 21:30:49.409639', '/myapp/index/comment/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (256, '127.0.0.1', '2024-07-07 21:30:49.426214', '/myapp/index/comment/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (257, '127.0.0.1', '2024-07-07 21:30:49.473158', '/myapp/index/comment/list', 'GET', NULL, '86');
INSERT INTO `b_op_log` VALUES (258, '127.0.0.1', '2024-07-07 21:30:49.505109', '/myapp/index/comment/list', 'GET', NULL, '128');
INSERT INTO `b_op_log` VALUES (259, '127.0.0.1', '2024-07-07 21:30:50.346068', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (260, '127.0.0.1', '2024-07-07 21:30:50.350516', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (261, '127.0.0.1', '2024-07-07 21:30:50.409654', '/myapp/index/thing/list', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (262, '127.0.0.1', '2024-07-07 21:30:51.116056', '/myapp/index/thing/detail', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (263, '127.0.0.1', '2024-07-07 21:30:51.131436', '/myapp/index/thing/detail', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (264, '127.0.0.1', '2024-07-07 21:30:51.164794', '/myapp/index/thing/detail', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (265, '127.0.0.1', '2024-07-07 21:30:51.215255', '/myapp/index/thing/detail', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (266, '127.0.0.1', '2024-07-07 21:30:51.249185', '/myapp/index/thing/detail', 'GET', NULL, '138');
INSERT INTO `b_op_log` VALUES (267, '127.0.0.1', '2024-07-07 21:30:52.004905', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (268, '127.0.0.1', '2024-07-07 21:30:52.016779', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (269, '127.0.0.1', '2024-07-07 21:30:52.066749', '/myapp/index/thing/list', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (270, '127.0.0.1', '2024-07-07 21:30:55.323182', '/myapp/index/thing/getRecommend', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (271, '127.0.0.1', '2024-07-07 21:30:55.340083', '/myapp/index/thing/getRecommend', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (272, '127.0.0.1', '2024-07-07 21:30:55.380073', '/myapp/index/thing/getRecommend', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (273, '127.0.0.1', '2024-07-07 21:30:55.406708', '/myapp/index/thing/getRecommend', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (274, '127.0.0.1', '2024-07-07 21:30:55.438618', '/myapp/index/thing/getRecommend', 'GET', NULL, '132');
INSERT INTO `b_op_log` VALUES (275, '127.0.0.1', '2024-07-07 21:30:56.193441', '/myapp/index/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (276, '127.0.0.1', '2024-07-07 21:30:56.224385', '/myapp/index/classification/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (277, '127.0.0.1', '2024-07-07 21:30:56.256618', '/myapp/index/classification/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (278, '127.0.0.1', '2024-07-07 21:30:56.869121', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (279, '127.0.0.1', '2024-07-07 21:30:56.886227', '/myapp/index/comment/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (280, '127.0.0.1', '2024-07-07 21:30:56.886227', '/myapp/index/comment/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (281, '127.0.0.1', '2024-07-07 21:30:56.968823', '/myapp/index/comment/list', 'GET', NULL, '125');
INSERT INTO `b_op_log` VALUES (282, '127.0.0.1', '2024-07-07 21:30:57.006963', '/myapp/index/comment/list', 'GET', NULL, '163');
INSERT INTO `b_op_log` VALUES (283, '127.0.0.1', '2024-07-07 21:30:57.640504', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (284, '127.0.0.1', '2024-07-07 21:30:57.650465', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (285, '127.0.0.1', '2024-07-07 21:30:57.687982', '/myapp/index/thing/list', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (286, '127.0.0.1', '2024-07-07 21:30:58.349656', '/myapp/admin/ad/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (287, '127.0.0.1', '2024-07-07 21:30:58.349656', '/myapp/admin/ad/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (288, '127.0.0.1', '2024-07-07 21:30:58.397591', '/myapp/admin/ad/list', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (289, '127.0.0.1', '2024-07-07 21:30:58.412685', '/myapp/admin/ad/list', 'GET', NULL, '90');
INSERT INTO `b_op_log` VALUES (290, '127.0.0.1', '2024-07-07 21:30:58.477202', '/myapp/admin/ad/list', 'GET', NULL, '146');
INSERT INTO `b_op_log` VALUES (291, '127.0.0.1', '2024-07-07 21:30:59.330926', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (292, '127.0.0.1', '2024-07-07 21:30:59.339609', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (293, '127.0.0.1', '2024-07-07 21:30:59.386672', '/myapp/index/thing/list', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (294, '127.0.0.1', '2024-07-07 21:30:59.417490', '/upload/cover/1720358753887.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (295, '127.0.0.1', '2024-07-07 21:30:59.997375', '/myapp/index/thing/detail', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (296, '127.0.0.1', '2024-07-07 21:31:00.004692', '/myapp/index/thing/detail', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (297, '127.0.0.1', '2024-07-07 21:31:00.007557', '/myapp/index/thing/detail', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (298, '127.0.0.1', '2024-07-07 21:31:00.050559', '/myapp/index/thing/detail', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (299, '127.0.0.1', '2024-07-07 21:31:00.106842', '/myapp/index/thing/detail', 'GET', NULL, '131');
INSERT INTO `b_op_log` VALUES (300, '127.0.0.1', '2024-07-07 21:31:01.127201', '/myapp/index/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (301, '127.0.0.1', '2024-07-07 21:31:01.134892', '/myapp/index/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (302, '127.0.0.1', '2024-07-07 21:31:01.179579', '/myapp/index/classification/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (303, '127.0.0.1', '2024-07-07 21:31:01.961868', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (304, '127.0.0.1', '2024-07-07 21:31:01.966037', '/myapp/index/comment/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (305, '127.0.0.1', '2024-07-07 21:31:01.986038', '/myapp/index/comment/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (306, '127.0.0.1', '2024-07-07 21:31:02.021612', '/myapp/index/comment/list', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (307, '127.0.0.1', '2024-07-07 21:31:02.070418', '/myapp/index/comment/list', 'GET', NULL, '132');
INSERT INTO `b_op_log` VALUES (308, '127.0.0.1', '2024-07-07 21:31:02.887787', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (309, '127.0.0.1', '2024-07-07 21:31:02.894371', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (310, '127.0.0.1', '2024-07-07 21:31:02.956271', '/myapp/index/thing/list', 'GET', NULL, '88');
INSERT INTO `b_op_log` VALUES (311, '127.0.0.1', '2024-07-07 21:31:09.905953', '/myapp/admin/ad/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (312, '127.0.0.1', '2024-07-07 21:31:09.920696', '/myapp/admin/ad/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (313, '127.0.0.1', '2024-07-07 21:31:09.920696', '/myapp/admin/ad/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (314, '127.0.0.1', '2024-07-07 21:31:09.960430', '/myapp/admin/ad/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (315, '127.0.0.1', '2024-07-07 21:31:10.001166', '/myapp/admin/ad/list', 'GET', NULL, '104');
INSERT INTO `b_op_log` VALUES (316, '127.0.0.1', '2024-07-07 21:31:10.038107', '/upload/cover/1720358682532.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (317, '127.0.0.1', '2024-07-07 21:31:10.038107', '/upload/cover/1720358682532.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (318, '127.0.0.1', '2024-07-07 21:31:22.015407', '/myapp/index/user/register', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (319, '127.0.0.1', '2024-07-07 21:31:24.431693', '/myapp/index/user/login', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (320, '127.0.0.1', '2024-07-07 21:31:24.529106', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (321, '127.0.0.1', '2024-07-07 21:31:24.532595', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (322, '127.0.0.1', '2024-07-07 21:31:24.549945', '/myapp/index/user/info', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (323, '127.0.0.1', '2024-07-07 21:31:24.582125', '/myapp/index/user/info', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (324, '127.0.0.1', '2024-07-07 21:31:24.631946', '/upload/cover/1720358697731.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (325, '127.0.0.1', '2024-07-07 21:31:24.631946', '/upload/cover/1720358697731.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (326, '127.0.0.1', '2024-07-07 21:31:24.631946', '/upload/cover/1720358697731.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (327, '127.0.0.1', '2024-07-07 21:31:24.639167', '/upload/cover/1720358697731.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (328, '127.0.0.1', '2024-07-07 21:31:25.420649', '/myapp/admin/ad/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (329, '127.0.0.1', '2024-07-07 21:31:25.437716', '/myapp/admin/ad/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (330, '127.0.0.1', '2024-07-07 21:31:25.454961', '/myapp/admin/ad/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (331, '127.0.0.1', '2024-07-07 21:31:25.454961', '/myapp/admin/ad/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (332, '127.0.0.1', '2024-07-07 21:31:25.513106', '/myapp/admin/ad/list', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (333, '127.0.0.1', '2024-07-07 21:31:25.554535', '/myapp/admin/ad/list', 'GET', NULL, '161');
INSERT INTO `b_op_log` VALUES (334, '127.0.0.1', '2024-07-07 21:31:25.568663', '/upload/cover/1720358564192.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (335, '127.0.0.1', '2024-07-07 21:31:25.605698', '/upload/cover/1720358585314.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (336, '127.0.0.1', '2024-07-07 21:32:09.151542', '/myapp/index/thing/addWishUser', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (337, '127.0.0.1', '2024-07-07 21:32:09.191902', '/myapp/index/thing/detail', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (338, '127.0.0.1', '2024-07-07 21:32:09.617588', '/myapp/index/thing/addCollectUser', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (339, '127.0.0.1', '2024-07-07 21:32:09.684916', '/myapp/index/thing/detail', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (340, '127.0.0.1', '2024-07-07 21:32:36.190355', '/myapp/index/thing/getRecommend', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (341, '127.0.0.1', '2024-07-07 21:32:36.197971', '/myapp/index/thing/getRecommend', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (342, '127.0.0.1', '2024-07-07 21:32:36.237148', '/myapp/index/thing/getRecommend', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (343, '127.0.0.1', '2024-07-07 21:32:36.277189', '/upload/cover/1720358608911.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (344, '127.0.0.1', '2024-07-07 21:32:36.277189', '/upload/cover/1720358608911.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (345, '127.0.0.1', '2024-07-07 21:32:36.278368', '/upload/cover/1720358608911.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (346, '127.0.0.1', '2024-07-07 21:32:36.280483', '/upload/cover/1720358608911.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (347, '127.0.0.1', '2024-07-07 21:32:36.280483', '/upload/cover/1720358608911.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (348, '127.0.0.1', '2024-07-07 21:32:36.288240', '/upload/cover/1720358608911.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (349, '127.0.0.1', '2024-07-07 21:32:41.034140', '/myapp/index/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (350, '127.0.0.1', '2024-07-07 21:32:41.043047', '/myapp/index/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (351, '127.0.0.1', '2024-07-07 21:32:41.045926', '/myapp/index/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (352, '127.0.0.1', '2024-07-07 21:32:41.097511', '/myapp/index/classification/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (353, '127.0.0.1', '2024-07-07 21:32:42.478704', '/myapp/index/thing/getRecommend', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (354, '127.0.0.1', '2024-07-07 21:32:42.509442', '/myapp/index/thing/getRecommend', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (355, '127.0.0.1', '2024-07-07 21:32:42.562164', '/myapp/index/thing/getRecommend', 'GET', NULL, '93');
INSERT INTO `b_op_log` VALUES (356, '127.0.0.1', '2024-07-07 21:32:48.153968', '/myapp/index/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (357, '127.0.0.1', '2024-07-07 21:32:48.164376', '/myapp/index/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (358, '127.0.0.1', '2024-07-07 21:32:48.184201', '/myapp/index/classification/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (359, '127.0.0.1', '2024-07-07 21:32:48.230799', '/myapp/index/classification/list', 'GET', NULL, '93');
INSERT INTO `b_op_log` VALUES (360, '127.0.0.1', '2024-07-07 21:32:52.480343', '/myapp/index/thing/getRecommend', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (361, '127.0.0.1', '2024-07-07 21:32:52.496242', '/myapp/index/thing/getRecommend', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (362, '127.0.0.1', '2024-07-07 21:32:52.543977', '/myapp/index/thing/getRecommend', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (363, '127.0.0.1', '2024-07-07 21:33:12.154003', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (364, '127.0.0.1', '2024-07-07 21:33:12.169940', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (365, '127.0.0.1', '2024-07-07 21:33:12.169940', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (366, '127.0.0.1', '2024-07-07 21:33:12.214633', '/myapp/index/thing/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (367, '127.0.0.1', '2024-07-07 21:33:16.780854', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (368, '127.0.0.1', '2024-07-07 21:33:16.788244', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (369, '127.0.0.1', '2024-07-07 21:33:16.805655', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (370, '127.0.0.1', '2024-07-07 21:33:16.887386', '/upload/cover/1720358746912.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (371, '127.0.0.1', '2024-07-07 21:33:16.887386', '/upload/cover/1720358746912.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (372, '127.0.0.1', '2024-07-07 21:33:34.279086', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (373, '127.0.0.1', '2024-07-07 21:33:34.289955', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (374, '127.0.0.1', '2024-07-07 21:33:34.295308', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (375, '127.0.0.1', '2024-07-07 21:33:34.336288', '/myapp/index/thing/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (376, '127.0.0.1', '2024-07-07 21:33:34.386755', '/upload/cover/1720358682532.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (377, '127.0.0.1', '2024-07-07 21:33:34.386755', '/upload/cover/1720358682532.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (378, '127.0.0.1', '2024-07-07 21:33:34.386755', '/upload/cover/1720358682532.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (379, '127.0.0.1', '2024-07-07 21:33:34.386755', '/upload/cover/1720358682532.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (380, '127.0.0.1', '2024-07-07 21:33:34.386755', '/upload/cover/1720358682532.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (381, '127.0.0.1', '2024-07-07 21:33:34.400494', '/upload/cover/1720358682532.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (382, '127.0.0.1', '2024-07-07 21:33:34.416591', '/upload/cover/1720358697731.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (383, '127.0.0.1', '2024-07-07 21:33:34.418231', '/upload/cover/1720358753887.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (384, '127.0.0.1', '2024-07-07 21:33:35.767398', '/myapp/admin/ad/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (385, '127.0.0.1', '2024-07-07 21:33:35.779831', '/myapp/admin/ad/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (386, '127.0.0.1', '2024-07-07 21:33:35.798140', '/myapp/admin/ad/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (387, '127.0.0.1', '2024-07-07 21:33:35.821939', '/myapp/admin/ad/list', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (388, '127.0.0.1', '2024-07-07 21:33:35.846632', '/myapp/admin/ad/list', 'GET', NULL, '95');
INSERT INTO `b_op_log` VALUES (389, '127.0.0.1', '2024-07-07 21:33:35.883118', '/myapp/admin/ad/list', 'GET', NULL, '132');
INSERT INTO `b_op_log` VALUES (390, '127.0.0.1', '2024-07-07 21:33:36.832881', '/myapp/index/thing/addWishUser', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (391, '127.0.0.1', '2024-07-07 21:33:36.903040', '/myapp/index/thing/detail', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (392, '127.0.0.1', '2024-07-07 21:33:37.348442', '/myapp/index/thing/addCollectUser', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (393, '127.0.0.1', '2024-07-07 21:33:37.402354', '/myapp/index/thing/detail', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (394, '127.0.0.1', '2024-07-07 21:33:39.175954', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (395, '127.0.0.1', '2024-07-07 21:33:39.183780', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (396, '127.0.0.1', '2024-07-07 21:33:39.217380', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (397, '127.0.0.1', '2024-07-07 21:33:39.226194', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (398, '127.0.0.1', '2024-07-07 21:33:39.226194', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (399, '127.0.0.1', '2024-07-07 21:33:39.261681', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (400, '127.0.0.1', '2024-07-07 21:33:40.672785', '/myapp/index/thing/getWishThingList', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (401, '127.0.0.1', '2024-07-07 21:33:41.127609', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (402, '127.0.0.1', '2024-07-07 21:34:12.014353', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (403, '127.0.0.1', '2024-07-07 21:34:14.604597', '/myapp/index/thing/getWishThingList', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (404, '127.0.0.1', '2024-07-07 21:34:15.763611', '/myapp/index/thing/removeWishUser', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (405, '127.0.0.1', '2024-07-07 21:34:15.831492', '/myapp/index/thing/getWishThingList', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (406, '127.0.0.1', '2024-07-07 21:34:17.308720', '/myapp/admin/ad/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (407, '127.0.0.1', '2024-07-07 21:34:17.323452', '/myapp/admin/ad/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (408, '127.0.0.1', '2024-07-07 21:34:17.336766', '/myapp/admin/ad/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (409, '127.0.0.1', '2024-07-07 21:34:17.356845', '/myapp/admin/ad/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (410, '127.0.0.1', '2024-07-07 21:34:17.403958', '/myapp/admin/ad/list', 'GET', NULL, '95');
INSERT INTO `b_op_log` VALUES (411, '127.0.0.1', '2024-07-07 21:34:17.452611', '/myapp/admin/ad/list', 'GET', NULL, '154');
INSERT INTO `b_op_log` VALUES (412, '127.0.0.1', '2024-07-07 21:34:17.509241', '/upload/cover/1720358670842.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (413, '127.0.0.1', '2024-07-07 21:34:20.149893', '/myapp/index/order/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (414, '127.0.0.1', '2024-07-07 21:34:20.951799', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (415, '127.0.0.1', '2024-07-07 21:34:25.415687', '/myapp/index/thing/detail', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (416, '127.0.0.1', '2024-07-07 21:34:25.423728', '/myapp/index/thing/detail', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (417, '127.0.0.1', '2024-07-07 21:34:25.431350', '/myapp/index/thing/detail', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (418, '127.0.0.1', '2024-07-07 21:34:25.461425', '/myapp/index/thing/detail', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (419, '127.0.0.1', '2024-07-07 21:34:25.490657', '/myapp/index/thing/detail', 'GET', NULL, '93');
INSERT INTO `b_op_log` VALUES (420, '127.0.0.1', '2024-07-07 21:34:25.530521', '/myapp/index/thing/detail', 'GET', NULL, '145');
INSERT INTO `b_op_log` VALUES (421, '127.0.0.1', '2024-07-07 21:34:26.677529', '/myapp/index/thing/addWishUser', 'POST', NULL, '77');
INSERT INTO `b_op_log` VALUES (422, '127.0.0.1', '2024-07-07 21:34:26.745761', '/myapp/index/thing/detail', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (423, '127.0.0.1', '2024-07-07 21:34:27.061210', '/myapp/index/thing/addCollectUser', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (424, '127.0.0.1', '2024-07-07 21:34:27.129679', '/myapp/index/thing/detail', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (425, '127.0.0.1', '2024-07-07 21:34:28.914893', '/myapp/admin/ad/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (426, '127.0.0.1', '2024-07-07 21:34:28.914893', '/myapp/admin/ad/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (427, '127.0.0.1', '2024-07-07 21:34:28.955489', '/myapp/admin/ad/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (428, '127.0.0.1', '2024-07-07 21:34:28.998342', '/myapp/admin/ad/list', 'GET', NULL, '113');
INSERT INTO `b_op_log` VALUES (429, '127.0.0.1', '2024-07-07 21:34:29.953447', '/myapp/index/thing/addWishUser', 'POST', NULL, '73');
INSERT INTO `b_op_log` VALUES (430, '127.0.0.1', '2024-07-07 21:34:30.022201', '/myapp/index/thing/detail', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (431, '127.0.0.1', '2024-07-07 21:34:30.282168', '/myapp/index/thing/addCollectUser', 'POST', NULL, '56');
INSERT INTO `b_op_log` VALUES (432, '127.0.0.1', '2024-07-07 21:34:30.356717', '/myapp/index/thing/detail', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (433, '127.0.0.1', '2024-07-07 21:34:32.059350', '/myapp/index/thing/getWishThingList', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (434, '127.0.0.1', '2024-07-07 21:34:32.099637', '/upload/cover/1720358641398.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (435, '127.0.0.1', '2024-07-07 21:34:32.656630', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (436, '127.0.0.1', '2024-07-07 21:35:10.888469', '/myapp/index/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (437, '127.0.0.1', '2024-07-07 21:35:10.888469', '/myapp/index/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (438, '127.0.0.1', '2024-07-07 21:35:10.907009', '/myapp/index/classification/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (439, '127.0.0.1', '2024-07-07 21:35:10.951450', '/myapp/index/classification/list', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (440, '127.0.0.1', '2024-07-07 21:35:11.004860', '/upload/cover/1720358746912.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (441, '127.0.0.1', '2024-07-07 21:35:11.006641', '/upload/cover/1720358746912.jpeg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (442, '127.0.0.1', '2024-07-07 21:35:11.006641', '/upload/cover/1720358746912.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (443, '127.0.0.1', '2024-07-07 21:35:11.006641', '/upload/cover/1720358746912.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (444, '127.0.0.1', '2024-07-07 21:35:11.006641', '/upload/cover/1720358746912.jpeg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (445, '127.0.0.1', '2024-07-07 21:35:11.006641', '/upload/cover/1720358746912.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (446, '127.0.0.1', '2024-07-07 21:35:16.670499', '/myapp/index/thing/getRecommend', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (447, '127.0.0.1', '2024-07-07 21:35:16.684270', '/myapp/index/thing/getRecommend', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (448, '127.0.0.1', '2024-07-07 21:35:16.705092', '/myapp/index/thing/getRecommend', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (449, '127.0.0.1', '2024-07-07 21:35:16.734039', '/myapp/index/thing/getRecommend', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (450, '127.0.0.1', '2024-07-07 21:35:16.767682', '/myapp/index/thing/getRecommend', 'GET', NULL, '108');
INSERT INTO `b_op_log` VALUES (451, '127.0.0.1', '2024-07-07 21:35:16.818064', '/myapp/index/thing/getRecommend', 'GET', NULL, '158');
INSERT INTO `b_op_log` VALUES (452, '127.0.0.1', '2024-07-07 21:36:11.651803', '/myapp/index/thing/getRecommend', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (453, '127.0.0.1', '2024-07-07 21:36:11.659023', '/myapp/index/thing/getRecommend', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (454, '127.0.0.1', '2024-07-07 21:36:11.671292', '/myapp/index/thing/getRecommend', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (455, '127.0.0.1', '2024-07-07 21:36:11.702784', '/myapp/index/thing/getRecommend', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (456, '127.0.0.1', '2024-07-07 21:36:11.724836', '/myapp/index/thing/getRecommend', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (457, '127.0.0.1', '2024-07-07 21:36:11.759083', '/myapp/index/notice/list_api', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (458, '127.0.0.1', '2024-07-07 21:36:11.800681', '/myapp/admin/ad/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (459, '127.0.0.1', '2024-07-07 21:36:11.800681', '/myapp/admin/ad/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (460, '127.0.0.1', '2024-07-07 21:36:11.815113', '/myapp/admin/ad/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (461, '127.0.0.1', '2024-07-07 21:36:11.822650', '/myapp/index/thing/getRecommend', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (462, '127.0.0.1', '2024-07-07 21:36:11.838140', '/myapp/index/thing/getRecommend', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (463, '127.0.0.1', '2024-07-07 21:36:11.888000', '/myapp/index/thing/getRecommend', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (464, '127.0.0.1', '2024-07-07 21:36:12.867001', '/myapp/index/notice/list_api', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (465, '127.0.0.1', '2024-07-07 21:36:12.875192', '/myapp/index/notice/list_api', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (466, '127.0.0.1', '2024-07-07 21:36:12.891831', '/myapp/index/notice/list_api', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (467, '127.0.0.1', '2024-07-07 21:36:12.915969', '/myapp/index/notice/list_api', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (468, '127.0.0.1', '2024-07-07 21:36:12.919251', '/myapp/index/notice/list_api', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (469, '127.0.0.1', '2024-07-07 21:36:12.955486', '/myapp/index/notice/list_api', 'GET', NULL, '110');
INSERT INTO `b_op_log` VALUES (470, '127.0.0.1', '2024-07-07 21:40:33.380708', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (471, '127.0.0.1', '2024-07-07 21:40:33.396341', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (472, '127.0.0.1', '2024-07-07 21:40:47.067460', '/myapp/index/order/create', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (473, '127.0.0.1', '2024-07-07 21:40:47.253196', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (474, '127.0.0.1', '2024-07-07 21:40:47.265597', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (475, '127.0.0.1', '2024-07-07 21:41:11.518222', '/myapp/index/order/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (476, '127.0.0.1', '2024-07-07 21:41:11.533236', '/myapp/index/order/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (477, '127.0.0.1', '2024-07-07 21:41:11.580454', '/myapp/index/user/info', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (478, '127.0.0.1', '2024-07-07 21:41:11.604440', '/myapp/index/user/info', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (479, '127.0.0.1', '2024-07-07 21:41:11.612499', '/myapp/index/user/info', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (480, '127.0.0.1', '2024-07-07 21:41:11.617083', '/myapp/index/user/info', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (481, '127.0.0.1', '2024-07-07 21:41:38.645397', '/myapp/index/order/cancel_order', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (482, '127.0.0.1', '2024-07-07 21:41:38.683537', '/myapp/index/order/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (483, '127.0.0.1', '2024-07-07 21:42:22.976310', '/myapp/admin/order/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (484, '127.0.0.1', '2024-07-07 21:43:07.129150', '/myapp/admin/order/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (485, '127.0.0.1', '2024-07-07 21:43:41.277477', '/myapp/admin/order/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (486, '127.0.0.1', '2024-07-07 21:43:57.341544', '/myapp/index/comment/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (487, '127.0.0.1', '2024-07-07 21:43:57.341544', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (488, '127.0.0.1', '2024-07-07 21:43:57.392822', '/myapp/index/comment/list', 'GET', NULL, '90');
INSERT INTO `b_op_log` VALUES (489, '127.0.0.1', '2024-07-07 21:43:57.422873', '/myapp/index/comment/list', 'GET', NULL, '116');
INSERT INTO `b_op_log` VALUES (490, '127.0.0.1', '2024-07-07 21:43:58.748468', '/myapp/admin/ad/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (491, '127.0.0.1', '2024-07-07 21:43:58.748468', '/myapp/admin/ad/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (492, '127.0.0.1', '2024-07-07 21:43:58.772365', '/myapp/admin/ad/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (493, '127.0.0.1', '2024-07-07 21:43:58.772365', '/myapp/admin/ad/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (494, '127.0.0.1', '2024-07-07 21:43:58.835081', '/myapp/admin/ad/list', 'GET', NULL, '101');
INSERT INTO `b_op_log` VALUES (495, '127.0.0.1', '2024-07-07 21:43:58.868013', '/myapp/admin/ad/list', 'GET', NULL, '150');
INSERT INTO `b_op_log` VALUES (496, '127.0.0.1', '2024-07-07 21:44:19.424160', '/myapp/index/order/create', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (497, '127.0.0.1', '2024-07-07 21:44:19.515377', '/myapp/index/user/info', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (498, '127.0.0.1', '2024-07-07 21:44:19.521158', '/myapp/index/user/info', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (499, '127.0.0.1', '2024-07-07 21:44:21.066838', '/myapp/index/order/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (500, '127.0.0.1', '2024-07-07 21:44:21.077798', '/myapp/index/order/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (501, '127.0.0.1', '2024-07-07 21:44:21.137572', '/myapp/index/user/info', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (502, '127.0.0.1', '2024-07-07 21:44:21.143448', '/myapp/index/user/info', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (503, '127.0.0.1', '2024-07-07 21:44:21.158051', '/myapp/index/user/info', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (504, '127.0.0.1', '2024-07-07 21:44:21.161962', '/myapp/index/user/info', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (505, '127.0.0.1', '2024-07-07 21:44:47.723777', '/myapp/admin/user/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (506, '127.0.0.1', '2024-07-07 21:44:48.187960', '/myapp/admin/order/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (507, '127.0.0.1', '2024-07-07 21:45:02.958300', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (508, '127.0.0.1', '2024-07-07 21:45:03.096521', '/myapp/admin/classification/list', 'GET', NULL, '154');
INSERT INTO `b_op_log` VALUES (509, '127.0.0.1', '2024-07-07 21:45:03.935057', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (510, '127.0.0.1', '2024-07-07 21:45:05.446445', '/myapp/admin/comment/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (511, '127.0.0.1', '2024-07-07 21:45:09.778182', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (512, '127.0.0.1', '2024-07-07 21:45:09.791338', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (513, '127.0.0.1', '2024-07-07 21:45:09.805238', '/myapp/index/thing/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (514, '127.0.0.1', '2024-07-07 21:45:09.854860', '/myapp/index/thing/list', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (515, '127.0.0.1', '2024-07-07 21:45:09.950324', '/upload/cover/1720358682532.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (516, '127.0.0.1', '2024-07-07 21:45:09.950324', '/upload/cover/1720358697731.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (517, '127.0.0.1', '2024-07-07 21:45:09.953513', '/upload/cover/1720358682532.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (518, '127.0.0.1', '2024-07-07 21:45:09.953513', '/upload/cover/1720358682532.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (519, '127.0.0.1', '2024-07-07 21:45:09.953513', '/upload/cover/1720358682532.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (520, '127.0.0.1', '2024-07-07 21:45:09.964041', '/upload/cover/1720358753887.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (521, '127.0.0.1', '2024-07-07 21:45:09.973887', '/upload/cover/1720358746912.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (522, '127.0.0.1', '2024-07-07 21:45:12.922615', '/myapp/index/thing/getRecommend', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (523, '127.0.0.1', '2024-07-07 21:45:12.922615', '/myapp/index/thing/getRecommend', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (524, '127.0.0.1', '2024-07-07 21:45:12.943052', '/myapp/index/thing/getRecommend', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (525, '127.0.0.1', '2024-07-07 21:45:12.972401', '/myapp/index/thing/getRecommend', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (526, '127.0.0.1', '2024-07-07 21:45:13.001104', '/myapp/index/thing/getRecommend', 'GET', NULL, '96');
INSERT INTO `b_op_log` VALUES (527, '127.0.0.1', '2024-07-07 21:45:13.040027', '/myapp/index/thing/getRecommend', 'GET', NULL, '135');
INSERT INTO `b_op_log` VALUES (528, '127.0.0.1', '2024-07-07 21:45:16.899725', '/myapp/index/comment/create', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (529, '127.0.0.1', '2024-07-07 21:45:16.945670', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (530, '127.0.0.1', '2024-07-07 21:45:20.871238', '/myapp/index/comment/create', 'POST', NULL, '51');
INSERT INTO `b_op_log` VALUES (531, '127.0.0.1', '2024-07-07 21:45:20.921216', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (532, '127.0.0.1', '2024-07-07 21:45:22.734882', '/myapp/index/comment/create', 'POST', NULL, '0');
INSERT INTO `b_op_log` VALUES (533, '127.0.0.1', '2024-07-07 21:45:29.535621', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (534, '127.0.0.1', '2024-07-07 21:45:30.462378', '/myapp/admin/comment/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (535, '127.0.0.1', '2024-07-07 21:45:43.885453', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (536, '127.0.0.1', '2024-07-07 21:45:44.832246', '/myapp/admin/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (537, '127.0.0.1', '2024-07-07 21:45:46.293163', '/myapp/admin/user/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (538, '127.0.0.1', '2024-07-07 21:45:53.883909', '/myapp/admin/user/create', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (539, '127.0.0.1', '2024-07-07 21:45:53.947330', '/myapp/admin/user/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (540, '127.0.0.1', '2024-07-07 21:46:01.743420', '/myapp/admin/user/create', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (541, '127.0.0.1', '2024-07-07 21:46:01.808496', '/myapp/admin/user/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (542, '127.0.0.1', '2024-07-07 21:46:09.535316', '/myapp/admin/user/create', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (543, '127.0.0.1', '2024-07-07 21:46:09.619521', '/myapp/admin/user/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (544, '127.0.0.1', '2024-07-07 21:46:11.320803', '/myapp/admin/order/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (545, '127.0.0.1', '2024-07-07 21:46:12.369146', '/myapp/admin/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (546, '127.0.0.1', '2024-07-07 21:46:13.250240', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (547, '127.0.0.1', '2024-07-07 21:46:14.000167', '/myapp/admin/user/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (548, '127.0.0.1', '2024-07-07 21:46:14.776058', '/myapp/admin/order/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (549, '127.0.0.1', '2024-07-07 21:46:16.879666', '/myapp/admin/ad/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (550, '127.0.0.1', '2024-07-07 21:46:26.772318', '/myapp/admin/ad/create', 'POST', NULL, '365');
INSERT INTO `b_op_log` VALUES (551, '127.0.0.1', '2024-07-07 21:46:26.804365', '/myapp/admin/ad/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (552, '127.0.0.1', '2024-07-07 21:46:26.856243', '/upload/ad/1720359982493.jpeg', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (553, '127.0.0.1', '2024-07-07 21:46:37.938202', '/myapp/admin/ad/create', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (554, '127.0.0.1', '2024-07-07 21:46:38.007070', '/myapp/admin/ad/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (555, '127.0.0.1', '2024-07-07 21:46:38.143536', '/upload/ad/1720359995192.jpeg', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (556, '127.0.0.1', '2024-07-07 21:46:39.576400', '/myapp/admin/notice/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (557, '127.0.0.1', '2024-07-07 21:46:46.203633', '/myapp/admin/notice/create', 'POST', NULL, '51');
INSERT INTO `b_op_log` VALUES (558, '127.0.0.1', '2024-07-07 21:46:46.256591', '/myapp/admin/notice/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (559, '127.0.0.1', '2024-07-07 21:46:54.554537', '/myapp/admin/notice/create', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (560, '127.0.0.1', '2024-07-07 21:46:54.586596', '/myapp/admin/notice/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (561, '127.0.0.1', '2024-07-07 21:46:57.506697', '/myapp/admin/loginLog/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (562, '127.0.0.1', '2024-07-07 21:46:58.130574', '/myapp/admin/opLog/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (563, '127.0.0.1', '2024-07-07 21:46:59.052758', '/myapp/admin/errorLog/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (564, '127.0.0.1', '2024-07-07 21:47:00.975111', '/myapp/admin/overview/count', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (565, '127.0.0.1', '2024-07-07 21:47:03.691766', '/myapp/admin/feedback/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (566, '127.0.0.1', '2024-07-07 21:47:05.518965', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1132');
INSERT INTO `b_op_log` VALUES (567, '127.0.0.1', '2024-07-07 21:47:08.868259', '/myapp/index/user/info', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (568, '127.0.0.1', '2024-07-07 21:47:08.877294', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (569, '127.0.0.1', '2024-07-07 21:47:25.960879', '/myapp/index/feedback/create', 'POST', NULL, '14');
INSERT INTO `b_op_log` VALUES (570, '127.0.0.1', '2024-07-07 21:47:27.934851', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (571, '127.0.0.1', '2024-07-07 21:47:27.942332', '/myapp/index/user/info', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (572, '127.0.0.1', '2024-07-07 21:47:28.193902', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (573, '127.0.0.1', '2024-07-07 21:47:28.206740', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (574, '127.0.0.1', '2024-07-07 21:47:28.218771', '/myapp/index/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (575, '127.0.0.1', '2024-07-07 21:47:28.337575', '/myapp/index/thing/list', 'GET', NULL, '147');
INSERT INTO `b_op_log` VALUES (576, '127.0.0.1', '2024-07-07 21:47:28.398849', '/upload/cover/1720358585314.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (577, '127.0.0.1', '2024-07-07 21:47:28.398849', '/upload/cover/1720358585314.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (578, '127.0.0.1', '2024-07-07 21:47:28.405049', '/upload/cover/1720358585314.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (579, '127.0.0.1', '2024-07-07 21:47:28.405873', '/upload/cover/1720358608911.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (580, '127.0.0.1', '2024-07-07 21:47:28.409085', '/upload/cover/1720358608911.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (581, '127.0.0.1', '2024-07-07 21:47:28.441182', '/upload/cover/1720358682532.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (582, '127.0.0.1', '2024-07-07 21:47:28.441182', '/upload/cover/1720358608911.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (583, '127.0.0.1', '2024-07-07 21:47:28.445730', '/upload/cover/1720358753887.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (584, '127.0.0.1', '2024-07-07 21:47:28.451834', '/upload/cover/1720358746912.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (585, '127.0.0.1', '2024-07-07 21:47:28.454862', '/upload/cover/1720358753887.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (586, '127.0.0.1', '2024-07-07 21:47:29.825920', '/myapp/admin/feedback/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (587, '127.0.0.1', '2024-07-07 21:47:31.756344', '/myapp/admin/order/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (588, '127.0.0.1', '2024-07-07 21:47:32.781202', '/myapp/admin/user/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (589, '127.0.0.1', '2024-07-07 21:47:34.149049', '/myapp/admin/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (590, '127.0.0.1', '2024-07-07 21:47:47.375699', '/myapp/admin/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (591, '127.0.0.1', '2024-07-07 21:47:48.927079', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (592, '127.0.0.1', '2024-07-07 21:47:50.294434', '/myapp/admin/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (593, '127.0.0.1', '2024-07-07 21:47:50.396474', '/myapp/admin/classification/list', 'GET', NULL, '115');
INSERT INTO `b_op_log` VALUES (594, '127.0.0.1', '2024-07-07 21:47:54.810316', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (595, '127.0.0.1', '2024-07-07 21:47:55.994128', '/myapp/admin/classification/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (596, '127.0.0.1', '2024-07-07 21:47:56.158245', '/myapp/admin/classification/list', 'GET', NULL, '199');
INSERT INTO `b_op_log` VALUES (597, '127.0.0.1', '2024-07-07 21:47:58.654159', '/myapp/admin/thing/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (598, '127.0.0.1', '2024-07-07 21:48:00.673071', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (599, '127.0.0.1', '2024-07-07 21:48:01.488272', '/myapp/admin/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (600, '127.0.0.1', '2024-07-07 21:48:02.099017', '/myapp/admin/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (601, '127.0.0.1', '2024-07-07 21:48:02.238251', '/myapp/admin/thing/list', 'GET', NULL, '159');
INSERT INTO `b_op_log` VALUES (602, '127.0.0.1', '2024-07-07 21:48:03.334259', '/myapp/admin/user/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (603, '127.0.0.1', '2024-07-07 21:48:04.154445', '/myapp/admin/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (604, '127.0.0.1', '2024-07-07 21:48:04.614837', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (605, '127.0.0.1', '2024-07-07 21:48:05.604052', '/myapp/admin/user/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (606, '127.0.0.1', '2024-07-07 21:48:06.099185', '/myapp/admin/order/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (607, '127.0.0.1', '2024-07-07 21:49:13.063603', '/myapp/index/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (608, '127.0.0.1', '2024-07-07 21:49:13.074927', '/myapp/index/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (609, '127.0.0.1', '2024-07-07 21:49:13.074927', '/myapp/index/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (610, '127.0.0.1', '2024-07-07 21:49:13.122100', '/myapp/index/classification/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (611, '127.0.0.1', '2024-07-07 21:49:13.142103', '/upload/cover/1720358406645.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (612, '127.0.0.1', '2024-07-07 21:49:14.508077', '/myapp/index/thing/getRecommend', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (613, '127.0.0.1', '2024-07-07 21:49:14.515862', '/myapp/index/thing/getRecommend', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (614, '127.0.0.1', '2024-07-07 21:49:14.555320', '/myapp/index/thing/getRecommend', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (615, '127.0.0.1', '2024-07-07 21:49:15.487112', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (616, '127.0.0.1', '2024-07-07 21:49:15.492039', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (617, '127.0.0.1', '2024-07-07 21:49:15.496826', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (618, '127.0.0.1', '2024-07-07 21:49:15.531795', '/myapp/index/thing/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (619, '127.0.0.1', '2024-07-07 21:49:46.680050', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (620, '127.0.0.1', '2024-07-07 21:49:46.689576', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (621, '127.0.0.1', '2024-07-07 21:49:46.716917', '/myapp/index/user/info', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (622, '127.0.0.1', '2024-07-07 21:49:46.746245', '/myapp/index/user/info', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (623, '127.0.0.1', '2024-07-07 21:49:46.780159', '/upload/cover/1720358746912.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (624, '127.0.0.1', '2024-07-07 21:49:46.780159', '/upload/cover/1720358746912.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (625, '127.0.0.1', '2024-07-07 21:49:46.792618', '/upload/cover/1720358746912.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (626, '127.0.0.1', '2024-07-07 21:49:46.795849', '/upload/cover/1720358746912.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (627, '127.0.0.1', '2024-07-07 21:49:46.795849', '/upload/cover/1720358746912.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (628, '127.0.0.1', '2024-07-07 21:49:47.279289', '/myapp/admin/order/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (629, '127.0.0.1', '2024-07-07 21:49:49.938187', '/myapp/index/thing/getRecommend', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (630, '127.0.0.1', '2024-07-07 21:49:49.945668', '/myapp/index/thing/getRecommend', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (631, '127.0.0.1', '2024-07-07 21:49:50.006441', '/myapp/index/thing/getRecommend', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (632, '127.0.0.1', '2024-07-07 21:49:50.682455', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (633, '127.0.0.1', '2024-07-07 21:49:50.697153', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (634, '127.0.0.1', '2024-07-07 21:49:50.697153', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (635, '127.0.0.1', '2024-07-07 21:49:50.764693', '/myapp/index/thing/list', 'GET', NULL, '98');
INSERT INTO `b_op_log` VALUES (636, '127.0.0.1', '2024-07-07 21:50:19.377030', '/myapp/index/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (637, '127.0.0.1', '2024-07-07 21:50:19.394169', '/myapp/index/classification/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (638, '127.0.0.1', '2024-07-07 21:50:19.414344', '/myapp/index/classification/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (639, '127.0.0.1', '2024-07-07 21:50:19.442110', '/myapp/index/classification/list', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (640, '127.0.0.1', '2024-07-07 21:50:19.485685', '/upload/cover/1720358608911.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (641, '127.0.0.1', '2024-07-07 21:50:19.485685', '/upload/cover/1720358608911.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (642, '127.0.0.1', '2024-07-07 21:50:19.485685', '/upload/cover/1720358608911.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (643, '127.0.0.1', '2024-07-07 21:50:19.517499', '/upload/cover/1720358641398.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (644, '127.0.0.1', '2024-07-07 21:50:19.517499', '/upload/cover/1720358641398.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (645, '127.0.0.1', '2024-07-07 21:50:19.887173', '/myapp/admin/order/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (646, '127.0.0.1', '2024-07-07 21:50:50.875243', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (647, '127.0.0.1', '2024-07-07 21:50:50.875243', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (648, '127.0.0.1', '2024-07-07 21:50:50.891999', '/myapp/index/user/info', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (649, '127.0.0.1', '2024-07-07 21:50:50.936786', '/myapp/index/user/info', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (650, '127.0.0.1', '2024-07-07 21:50:51.437625', '/myapp/admin/order/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (651, '127.0.0.1', '2024-07-07 21:50:53.081883', '/myapp/index/thing/getWishThingList', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (652, '127.0.0.1', '2024-07-07 21:50:53.085877', '/myapp/index/thing/getWishThingList', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (653, '127.0.0.1', '2024-07-07 21:50:53.124963', '/myapp/index/user/info', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (654, '127.0.0.1', '2024-07-07 21:50:53.128325', '/myapp/index/user/info', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (655, '127.0.0.1', '2024-07-07 21:50:53.128325', '/myapp/index/user/info', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (656, '127.0.0.1', '2024-07-07 21:50:53.156415', '/myapp/index/user/info', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (657, '127.0.0.1', '2024-07-07 21:51:26.104700', '/myapp/index/user/info', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (658, '127.0.0.1', '2024-07-07 21:51:26.114800', '/myapp/index/user/info', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (659, '127.0.0.1', '2024-07-07 21:51:26.121802', '/myapp/index/user/info', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (660, '127.0.0.1', '2024-07-07 21:51:26.182743', '/myapp/index/user/info', 'GET', NULL, '97');
INSERT INTO `b_op_log` VALUES (661, '127.0.0.1', '2024-07-07 21:51:27.007986', '/myapp/index/notice/list_api', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (662, '127.0.0.1', '2024-07-07 21:51:27.017510', '/myapp/index/notice/list_api', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (663, '127.0.0.1', '2024-07-07 21:51:27.071957', '/myapp/index/notice/list_api', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (664, '127.0.0.1', '2024-07-07 21:51:27.742440', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (665, '127.0.0.1', '2024-07-07 21:51:27.748456', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (666, '127.0.0.1', '2024-07-07 21:51:27.764853', '/myapp/index/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (667, '127.0.0.1', '2024-07-07 21:51:27.823258', '/myapp/index/thing/list', 'GET', NULL, '105');
INSERT INTO `b_op_log` VALUES (668, '127.0.0.1', '2024-07-07 21:51:29.084397', '/myapp/admin/ad/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (669, '127.0.0.1', '2024-07-07 21:51:29.093525', '/myapp/admin/ad/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (670, '127.0.0.1', '2024-07-07 21:51:29.107267', '/myapp/admin/ad/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (671, '127.0.0.1', '2024-07-07 21:51:29.157503', '/upload/ad/1720359982493.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (672, '127.0.0.1', '2024-07-07 21:51:29.178828', '/upload/ad/1720359982493.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (673, '127.0.0.1', '2024-07-07 21:51:29.188426', '/upload/ad/1720359982493.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (674, '127.0.0.1', '2024-07-07 21:51:29.205584', '/upload/ad/1720359982493.jpeg', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (675, '127.0.0.1', '2024-07-07 21:51:29.229301', '/upload/ad/1720359982493.jpeg', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (676, '127.0.0.1', '2024-07-07 21:51:30.336385', '/myapp/index/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (677, '127.0.0.1', '2024-07-07 21:51:30.340973', '/myapp/index/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (678, '127.0.0.1', '2024-07-07 21:51:30.357365', '/myapp/index/classification/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (679, '127.0.0.1', '2024-07-07 21:51:30.407718', '/myapp/index/classification/list', 'GET', NULL, '93');
INSERT INTO `b_op_log` VALUES (680, '127.0.0.1', '2024-07-07 21:51:30.958692', '/myapp/index/thing/detail', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (681, '127.0.0.1', '2024-07-07 21:51:30.968220', '/myapp/index/thing/detail', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (682, '127.0.0.1', '2024-07-07 21:51:30.992002', '/myapp/index/thing/detail', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (683, '127.0.0.1', '2024-07-07 21:51:31.027241', '/myapp/index/thing/detail', 'GET', NULL, '98');
INSERT INTO `b_op_log` VALUES (684, '127.0.0.1', '2024-07-07 21:51:31.079881', '/myapp/index/thing/detail', 'GET', NULL, '147');
INSERT INTO `b_op_log` VALUES (685, '127.0.0.1', '2024-07-07 21:51:31.108936', '/myapp/index/thing/detail', 'GET', NULL, '180');
INSERT INTO `b_op_log` VALUES (686, '127.0.0.1', '2024-07-07 21:51:31.675213', '/myapp/index/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (687, '127.0.0.1', '2024-07-07 21:51:31.693974', '/myapp/index/classification/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (688, '127.0.0.1', '2024-07-07 21:51:31.698486', '/myapp/index/classification/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (689, '127.0.0.1', '2024-07-07 21:51:31.758845', '/myapp/index/classification/list', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (690, '127.0.0.1', '2024-07-07 21:51:32.275724', '/myapp/admin/ad/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (691, '127.0.0.1', '2024-07-07 21:51:32.288749', '/myapp/admin/ad/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (692, '127.0.0.1', '2024-07-07 21:51:32.288749', '/myapp/admin/ad/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (693, '127.0.0.1', '2024-07-07 21:51:32.340687', '/myapp/admin/ad/list', 'GET', NULL, '91');
INSERT INTO `b_op_log` VALUES (694, '127.0.0.1', '2024-07-07 21:51:32.383971', '/myapp/admin/ad/list', 'GET', NULL, '135');
INSERT INTO `b_op_log` VALUES (695, '127.0.0.1', '2024-07-07 21:51:32.414994', '/myapp/admin/ad/list', 'GET', NULL, '166');
INSERT INTO `b_op_log` VALUES (696, '127.0.0.1', '2024-07-07 21:51:32.974127', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (697, '127.0.0.1', '2024-07-07 21:51:32.984486', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (698, '127.0.0.1', '2024-07-07 21:51:33.000198', '/myapp/index/thing/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (699, '127.0.0.1', '2024-07-07 21:51:33.059308', '/myapp/index/thing/list', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (700, '127.0.0.1', '2024-07-07 21:51:33.482248', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (701, '127.0.0.1', '2024-07-07 21:51:33.490856', '/myapp/index/user/info', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (702, '127.0.0.1', '2024-07-07 21:51:33.542507', '/myapp/index/user/info', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (703, '127.0.0.1', '2024-07-07 21:51:34.625939', '/myapp/index/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (704, '127.0.0.1', '2024-07-07 21:51:34.631737', '/myapp/index/classification/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (705, '127.0.0.1', '2024-07-07 21:51:34.636307', '/myapp/index/classification/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (706, '127.0.0.1', '2024-07-07 21:51:34.693817', '/myapp/index/classification/list', 'GET', NULL, '95');
INSERT INTO `b_op_log` VALUES (707, '127.0.0.1', '2024-07-07 21:51:35.816197', '/myapp/admin/ad/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (708, '127.0.0.1', '2024-07-07 21:51:35.834608', '/myapp/admin/ad/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (709, '127.0.0.1', '2024-07-07 21:51:35.834608', '/myapp/admin/ad/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (710, '127.0.0.1', '2024-07-07 21:51:35.868620', '/myapp/admin/ad/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (711, '127.0.0.1', '2024-07-07 21:51:35.932886', '/myapp/admin/ad/list', 'GET', NULL, '145');
INSERT INTO `b_op_log` VALUES (712, '127.0.0.1', '2024-07-07 21:51:35.944683', '/myapp/admin/ad/list', 'GET', NULL, '145');
INSERT INTO `b_op_log` VALUES (713, '127.0.0.1', '2024-07-07 21:51:36.825000', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (714, '127.0.0.1', '2024-07-07 21:51:36.842503', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (715, '127.0.0.1', '2024-07-07 21:51:36.865052', '/myapp/index/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (716, '127.0.0.1', '2024-07-07 21:51:36.912925', '/myapp/index/thing/list', 'GET', NULL, '88');
INSERT INTO `b_op_log` VALUES (717, '127.0.0.1', '2024-07-07 21:51:37.666350', '/myapp/admin/ad/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (718, '127.0.0.1', '2024-07-07 21:51:37.670201', '/myapp/admin/ad/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (719, '127.0.0.1', '2024-07-07 21:51:37.699379', '/myapp/admin/ad/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (720, '127.0.0.1', '2024-07-07 21:51:37.716757', '/myapp/admin/ad/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (721, '127.0.0.1', '2024-07-07 21:51:37.798472', '/myapp/admin/ad/list', 'GET', NULL, '151');
INSERT INTO `b_op_log` VALUES (722, '127.0.0.1', '2024-07-07 21:51:37.816559', '/myapp/admin/ad/list', 'GET', NULL, '176');
INSERT INTO `b_op_log` VALUES (723, '127.0.0.1', '2024-07-07 21:51:38.601321', '/myapp/index/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (724, '127.0.0.1', '2024-07-07 21:51:38.609790', '/myapp/index/classification/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (725, '127.0.0.1', '2024-07-07 21:51:38.624673', '/myapp/index/classification/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (726, '127.0.0.1', '2024-07-07 21:51:38.685029', '/myapp/index/classification/list', 'GET', NULL, '104');
INSERT INTO `b_op_log` VALUES (727, '127.0.0.1', '2024-07-07 21:51:39.007687', '/myapp/index/thing/getRecommend', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (728, '127.0.0.1', '2024-07-07 21:51:39.017186', '/myapp/index/thing/getRecommend', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (729, '127.0.0.1', '2024-07-07 21:51:39.062006', '/myapp/index/thing/getRecommend', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (730, '127.0.0.1', '2024-07-07 21:51:41.128927', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (731, '127.0.0.1', '2024-07-07 21:51:41.139408', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (732, '127.0.0.1', '2024-07-07 21:51:41.141753', '/myapp/index/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (733, '127.0.0.1', '2024-07-07 21:51:41.203865', '/myapp/index/thing/list', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (734, '127.0.0.1', '2024-07-07 21:51:41.910157', '/myapp/admin/ad/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (735, '127.0.0.1', '2024-07-07 21:51:41.929997', '/myapp/admin/ad/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (736, '127.0.0.1', '2024-07-07 21:51:41.941679', '/myapp/admin/ad/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (737, '127.0.0.1', '2024-07-07 21:51:41.958378', '/myapp/admin/ad/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (738, '127.0.0.1', '2024-07-07 21:51:42.017428', '/myapp/admin/ad/list', 'GET', NULL, '119');
INSERT INTO `b_op_log` VALUES (739, '127.0.0.1', '2024-07-07 21:51:42.051156', '/myapp/admin/ad/list', 'GET', NULL, '159');
INSERT INTO `b_op_log` VALUES (740, '127.0.0.1', '2024-07-07 21:51:43.093440', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (741, '127.0.0.1', '2024-07-07 21:51:43.115246', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (742, '127.0.0.1', '2024-07-07 21:51:43.134841', '/myapp/index/thing/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (743, '127.0.0.1', '2024-07-07 21:51:43.183565', '/myapp/index/thing/list', 'GET', NULL, '107');
INSERT INTO `b_op_log` VALUES (744, '127.0.0.1', '2024-07-07 21:52:19.807591', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (745, '127.0.0.1', '2024-07-07 21:52:20.007566', '/myapp/admin/classification/list', 'GET', NULL, '214');
INSERT INTO `b_op_log` VALUES (746, '127.0.0.1', '2024-07-07 21:52:21.635231', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (747, '127.0.0.1', '2024-07-07 21:52:23.114342', '/myapp/admin/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (748, '127.0.0.1', '2024-07-07 21:52:24.020623', '/myapp/admin/user/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (749, '127.0.0.1', '2024-07-07 21:52:24.906854', '/myapp/admin/order/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (750, '127.0.0.1', '2024-07-07 21:52:26.159247', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (751, '127.0.0.1', '2024-07-07 21:52:26.290031', '/myapp/admin/classification/list', 'GET', NULL, '139');
INSERT INTO `b_op_log` VALUES (752, '127.0.0.1', '2024-07-07 21:52:28.635488', '/myapp/admin/adminLogin', 'POST', NULL, '51');
INSERT INTO `b_op_log` VALUES (753, '127.0.0.1', '2024-07-07 21:52:28.903864', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (754, '127.0.0.1', '2024-07-07 21:52:29.032454', '/myapp/admin/classification/list', 'GET', NULL, '141');
INSERT INTO `b_op_log` VALUES (755, '127.0.0.1', '2024-07-07 21:52:30.224069', '/upload/cover/1720358406645.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (756, '127.0.0.1', '2024-07-07 21:52:31.204536', '/myapp/admin/thing/update', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (757, '127.0.0.1', '2024-07-07 21:52:33.011981', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (758, '127.0.0.1', '2024-07-07 21:52:33.607239', '/myapp/admin/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (759, '127.0.0.1', '2024-07-07 21:52:34.645280', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (760, '127.0.0.1', '2024-07-07 21:52:34.802031', '/myapp/admin/classification/list', 'GET', NULL, '174');
INSERT INTO `b_op_log` VALUES (761, '127.0.0.1', '2024-07-07 21:53:05.258565', '/myapp/admin/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (762, '127.0.0.1', '2024-07-07 21:53:05.478919', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (763, '127.0.0.1', '2024-07-07 21:53:05.559831', '/myapp/admin/classification/list', 'GET', NULL, '98');
INSERT INTO `b_op_log` VALUES (764, '127.0.0.1', '2024-07-07 21:54:09.249607', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (765, '127.0.0.1', '2024-07-07 21:54:16.239947', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (766, '127.0.0.1', '2024-07-07 21:54:16.895385', '/myapp/admin/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (767, '127.0.0.1', '2024-07-07 21:54:17.020702', '/myapp/admin/thing/list', 'GET', NULL, '152');
INSERT INTO `b_op_log` VALUES (768, '127.0.0.1', '2024-07-07 21:54:31.188880', '/myapp/admin/classification/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (769, '127.0.0.1', '2024-07-07 21:54:31.800053', '/myapp/admin/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (770, '127.0.0.1', '2024-07-07 21:54:31.880382', '/myapp/admin/classification/list', 'GET', NULL, '105');
INSERT INTO `b_op_log` VALUES (771, '127.0.0.1', '2024-07-07 21:54:39.345543', '/myapp/index/thing/getRecommend', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (772, '127.0.0.1', '2024-07-07 21:54:39.350713', '/myapp/index/thing/getRecommend', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (773, '127.0.0.1', '2024-07-07 21:54:39.394441', '/myapp/index/thing/getRecommend', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (774, '127.0.0.1', '2024-07-07 21:54:39.469968', '/upload/cover/1720358641398.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (775, '127.0.0.1', '2024-07-07 21:54:39.475723', '/upload/cover/1720358746912.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (776, '127.0.0.1', '2024-07-07 21:54:39.475723', '/upload/cover/1720358641398.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (777, '127.0.0.1', '2024-07-07 21:54:39.485309', '/upload/cover/1720358682532.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (778, '127.0.0.1', '2024-07-07 21:54:39.486387', '/upload/cover/1720358697731.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (779, '127.0.0.1', '2024-07-07 21:54:40.436887', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (780, '127.0.0.1', '2024-07-07 21:54:40.443218', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (781, '127.0.0.1', '2024-07-07 21:54:40.458392', '/myapp/index/thing/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (782, '127.0.0.1', '2024-07-07 21:54:40.508592', '/myapp/index/thing/list', 'GET', NULL, '95');
INSERT INTO `b_op_log` VALUES (783, '127.0.0.1', '2024-07-07 21:54:40.558912', '/upload/cover/1720358608911.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (784, '127.0.0.1', '2024-07-07 21:54:40.568703', '/upload/cover/1720358608911.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (785, '127.0.0.1', '2024-07-07 21:54:40.568703', '/upload/cover/1720358608911.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (786, '127.0.0.1', '2024-07-07 21:54:40.568703', '/upload/cover/1720358608911.jpeg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (787, '127.0.0.1', '2024-07-07 21:54:40.580025', '/upload/cover/1720358608911.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (788, '127.0.0.1', '2024-07-07 21:54:44.338140', '/myapp/index/thing/getRecommend', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (789, '127.0.0.1', '2024-07-07 21:54:44.378318', '/myapp/index/thing/getRecommend', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (790, '127.0.0.1', '2024-07-07 21:54:44.990629', '/myapp/index/notice/list_api', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (791, '127.0.0.1', '2024-07-07 21:54:45.009128', '/myapp/index/notice/list_api', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (792, '127.0.0.1', '2024-07-07 21:54:45.045242', '/myapp/index/notice/list_api', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (793, '127.0.0.1', '2024-07-07 21:54:50.226796', '/myapp/index/thing/list', 'GET', NULL, '86');
INSERT INTO `b_op_log` VALUES (794, '127.0.0.1', '2024-07-07 21:54:51.171109', '/myapp/index/thing/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (795, '127.0.0.1', '2024-07-07 21:54:51.958607', '/myapp/index/thing/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (796, '127.0.0.1', '2024-07-07 21:54:52.677099', '/myapp/index/thing/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (797, '127.0.0.1', '2024-07-07 21:54:57.039042', '/myapp/admin/ad/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (798, '127.0.0.1', '2024-07-07 21:54:57.061532', '/myapp/admin/ad/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (799, '127.0.0.1', '2024-07-07 21:54:57.088779', '/myapp/admin/ad/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (800, '127.0.0.1', '2024-07-07 21:54:57.105831', '/myapp/admin/ad/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (801, '127.0.0.1', '2024-07-07 21:54:57.122102', '/myapp/admin/ad/list', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (802, '127.0.0.1', '2024-07-07 21:54:57.175377', '/upload/ad/1720359982493.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (803, '127.0.0.1', '2024-07-07 21:54:57.175377', '/upload/ad/1720359982493.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (804, '127.0.0.1', '2024-07-07 21:55:00.581508', '/myapp/index/thing/detail', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (805, '127.0.0.1', '2024-07-07 21:55:00.593924', '/myapp/index/thing/detail', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (806, '127.0.0.1', '2024-07-07 21:55:00.633610', '/myapp/index/thing/detail', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (807, '127.0.0.1', '2024-07-07 21:55:00.638804', '/myapp/index/thing/detail', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (808, '127.0.0.1', '2024-07-07 21:55:00.638804', '/myapp/index/thing/detail', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (809, '127.0.0.1', '2024-07-07 21:55:05.902348', '/myapp/index/thing/rate', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (810, '127.0.0.1', '2024-07-07 21:55:06.286290', '/myapp/index/thing/rate', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (811, '127.0.0.1', '2024-07-07 21:55:06.676272', '/myapp/index/thing/rate', 'POST', NULL, '7');
INSERT INTO `b_op_log` VALUES (812, '127.0.0.1', '2024-07-07 21:55:06.858010', '/myapp/index/thing/rate', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (813, '127.0.0.1', '2024-07-07 21:55:07.031889', '/myapp/index/thing/rate', 'POST', NULL, '16');
INSERT INTO `b_op_log` VALUES (814, '127.0.0.1', '2024-07-07 21:55:07.232692', '/myapp/index/thing/rate', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (815, '127.0.0.1', '2024-07-07 21:55:07.412866', '/myapp/index/thing/rate', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (816, '127.0.0.1', '2024-07-07 21:55:07.567259', '/myapp/index/thing/rate', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (817, '127.0.0.1', '2024-07-07 21:55:07.749775', '/myapp/index/thing/rate', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (818, '127.0.0.1', '2024-07-07 21:55:07.912955', '/myapp/index/thing/rate', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (819, '127.0.0.1', '2024-07-07 21:55:08.099401', '/myapp/index/thing/rate', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (820, '127.0.0.1', '2024-07-07 21:55:08.246054', '/myapp/index/thing/rate', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (821, '127.0.0.1', '2024-07-07 21:55:08.429423', '/myapp/index/thing/rate', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (822, '127.0.0.1', '2024-07-07 21:55:08.595830', '/myapp/index/thing/rate', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (823, '127.0.0.1', '2024-07-07 21:55:08.803291', '/myapp/index/thing/rate', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (824, '127.0.0.1', '2024-07-07 21:55:08.947791', '/myapp/index/thing/rate', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (825, '127.0.0.1', '2024-07-07 21:55:14.364114', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (826, '127.0.0.1', '2024-07-07 21:55:14.373662', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (827, '127.0.0.1', '2024-07-07 21:55:14.390091', '/myapp/index/comment/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (828, '127.0.0.1', '2024-07-07 21:55:14.417175', '/myapp/index/comment/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (829, '127.0.0.1', '2024-07-07 21:55:14.432047', '/myapp/index/comment/list', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (830, '127.0.0.1', '2024-07-07 21:55:16.017713', '/myapp/index/thing/rate', 'POST', NULL, '15');
INSERT INTO `b_op_log` VALUES (831, '127.0.0.1', '2024-07-07 21:55:18.689096', '/myapp/index/thing/rate', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (832, '127.0.0.1', '2024-07-07 21:55:21.301887', '/myapp/admin/ad/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (833, '127.0.0.1', '2024-07-07 21:55:21.307613', '/myapp/admin/ad/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (834, '127.0.0.1', '2024-07-07 21:55:21.311773', '/myapp/admin/ad/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (835, '127.0.0.1', '2024-07-07 21:55:21.354046', '/myapp/admin/ad/list', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (836, '127.0.0.1', '2024-07-07 21:55:21.375035', '/myapp/admin/ad/list', 'GET', NULL, '92');
INSERT INTO `b_op_log` VALUES (837, '127.0.0.1', '2024-07-07 21:55:29.653746', '/myapp/index/user/login', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (838, '127.0.0.1', '2024-07-07 21:55:29.756171', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (839, '127.0.0.1', '2024-07-07 21:55:29.777867', '/myapp/index/user/info', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (840, '127.0.0.1', '2024-07-07 21:55:29.777867', '/myapp/index/user/info', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (841, '127.0.0.1', '2024-07-07 21:55:29.827961', '/myapp/index/user/info', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (842, '127.0.0.1', '2024-07-07 21:55:31.191296', '/myapp/index/thing/list', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (843, '127.0.0.1', '2024-07-07 21:55:33.379847', '/myapp/index/thing/list', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (844, '127.0.0.1', '2024-07-07 21:55:33.840118', '/myapp/admin/ad/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (845, '127.0.0.1', '2024-07-07 21:55:33.867866', '/myapp/admin/ad/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (846, '127.0.0.1', '2024-07-07 21:55:33.867866', '/myapp/admin/ad/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (847, '127.0.0.1', '2024-07-07 21:55:33.887097', '/myapp/admin/ad/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (848, '127.0.0.1', '2024-07-07 21:55:33.933363', '/myapp/admin/ad/list', 'GET', NULL, '107');
INSERT INTO `b_op_log` VALUES (849, '127.0.0.1', '2024-07-07 21:55:33.944302', '/myapp/admin/ad/list', 'GET', NULL, '122');
INSERT INTO `b_op_log` VALUES (850, '127.0.0.1', '2024-07-07 21:55:37.431701', '/myapp/index/comment/create', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (851, '127.0.0.1', '2024-07-07 21:55:37.465163', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (852, '127.0.0.1', '2024-07-07 21:55:38.947555', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (853, '127.0.0.1', '2024-07-07 21:55:38.951376', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (854, '127.0.0.1', '2024-07-07 21:55:38.977058', '/myapp/index/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (855, '127.0.0.1', '2024-07-07 21:55:39.012802', '/myapp/index/thing/list', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (856, '127.0.0.1', '2024-07-07 21:55:47.935400', '/myapp/index/thing/detail', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (857, '127.0.0.1', '2024-07-07 21:55:47.947023', '/myapp/index/thing/detail', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (858, '127.0.0.1', '2024-07-07 21:55:47.953656', '/myapp/index/thing/detail', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (859, '127.0.0.1', '2024-07-07 21:55:47.966773', '/myapp/index/thing/detail', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (860, '127.0.0.1', '2024-07-07 21:55:48.009558', '/myapp/index/thing/detail', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (861, '127.0.0.1', '2024-07-07 21:55:48.035605', '/myapp/index/thing/detail', 'GET', NULL, '125');
INSERT INTO `b_op_log` VALUES (862, '127.0.0.1', '2024-07-07 21:55:51.869758', '/myapp/index/comment/create', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (863, '127.0.0.1', '2024-07-07 21:55:51.916822', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (864, '127.0.0.1', '2024-07-07 21:55:53.296228', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (865, '127.0.0.1', '2024-07-07 21:55:53.304491', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (866, '127.0.0.1', '2024-07-07 21:55:53.313881', '/myapp/index/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (867, '127.0.0.1', '2024-07-07 21:55:53.374729', '/myapp/index/thing/list', 'GET', NULL, '93');
INSERT INTO `b_op_log` VALUES (868, '127.0.0.1', '2024-07-07 21:55:55.405639', '/myapp/admin/comment/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (869, '127.0.0.1', '2024-07-07 21:55:56.404031', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (870, '127.0.0.1', '2024-07-07 21:55:56.538587', '/myapp/admin/classification/list', 'GET', NULL, '147');
INSERT INTO `b_op_log` VALUES (871, '127.0.0.1', '2024-07-07 21:56:10.526360', '/myapp/index/user/login', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (872, '127.0.0.1', '2024-07-07 21:56:10.610705', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (873, '127.0.0.1', '2024-07-07 21:56:10.616761', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (874, '127.0.0.1', '2024-07-07 21:56:10.627033', '/myapp/index/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (875, '127.0.0.1', '2024-07-07 21:56:10.672196', '/myapp/index/thing/list', 'GET', NULL, '86');
INSERT INTO `b_op_log` VALUES (876, '127.0.0.1', '2024-07-07 21:56:14.396744', '/myapp/index/thing/getWishThingList', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (877, '127.0.0.1', '2024-07-07 21:56:14.416982', '/myapp/index/thing/getWishThingList', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (878, '127.0.0.1', '2024-07-07 21:56:14.433962', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (879, '127.0.0.1', '2024-07-07 21:56:14.447011', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (880, '127.0.0.1', '2024-07-07 21:56:14.450434', '/myapp/index/user/info', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (881, '127.0.0.1', '2024-07-07 21:56:14.466688', '/myapp/index/user/info', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (882, '127.0.0.1', '2024-07-07 21:56:15.546668', '/myapp/index/order/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (883, '127.0.0.1', '2024-07-07 21:56:17.014499', '/myapp/index/comment/listMyComments', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (884, '127.0.0.1', '2024-07-07 21:56:17.868996', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (885, '127.0.0.1', '2024-07-07 21:56:19.336141', '/myapp/index/notice/list_api', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (886, '127.0.0.1', '2024-07-07 21:56:20.768357', '/myapp/index/order/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (887, '127.0.0.1', '2024-07-07 21:56:22.040856', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (888, '127.0.0.1', '2024-07-07 21:56:31.718848', '/myapp/index/user/update', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (889, '127.0.0.1', '2024-07-07 21:56:32.768869', '/myapp/index/thing/getWishThingList', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (890, '127.0.0.1', '2024-07-07 21:56:32.778240', '/myapp/index/thing/getWishThingList', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (891, '127.0.0.1', '2024-07-07 21:56:32.781403', '/myapp/index/thing/getWishThingList', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (892, '127.0.0.1', '2024-07-07 21:56:32.788409', '/myapp/index/thing/getWishThingList', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (893, '127.0.0.1', '2024-07-07 21:56:32.816279', '/upload/avatar/1720360587483.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (894, '127.0.0.1', '2024-07-07 21:56:32.832102', '/upload/avatar/1720360587483.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (895, '127.0.0.1', '2024-07-07 21:56:32.856254', '/myapp/index/user/info', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (896, '127.0.0.1', '2024-07-07 21:56:39.300901', '/myapp/index/user/update', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (897, '127.0.0.1', '2024-07-07 21:56:56.910464', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (898, '127.0.0.1', '2024-07-07 21:56:56.916512', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (899, '127.0.0.1', '2024-07-07 21:56:56.929558', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (900, '127.0.0.1', '2024-07-07 21:56:56.947299', '/upload/avatar/1720360587483.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (901, '127.0.0.1', '2024-07-07 21:56:56.947299', '/upload/avatar/1720360587483.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (902, '127.0.0.1', '2024-07-07 21:56:56.962628', '/upload/avatar/1720360587483.jpeg', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (903, '127.0.0.1', '2024-07-07 21:56:56.984491', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (904, '127.0.0.1', '2024-07-07 21:56:58.659743', '/myapp/index/comment/listMyComments', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (905, '127.0.0.1', '2024-07-07 21:56:59.282058', '/myapp/index/user/info', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (906, '127.0.0.1', '2024-07-07 21:57:06.073096', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (907, '127.0.0.1', '2024-07-07 21:57:06.079592', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (908, '127.0.0.1', '2024-07-07 21:57:06.101672', '/myapp/index/thing/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (909, '127.0.0.1', '2024-07-07 21:57:06.129128', '/myapp/index/thing/list', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (910, '127.0.0.1', '2024-07-07 21:57:06.174487', '/upload/cover/1720358406645.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (911, '127.0.0.1', '2024-07-07 21:57:29.806747', '/myapp/index/thing/getRecommend', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (912, '127.0.0.1', '2024-07-07 21:57:29.814993', '/myapp/index/thing/getRecommend', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (913, '127.0.0.1', '2024-07-07 21:57:29.844909', '/myapp/index/thing/getRecommend', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (914, '127.0.0.1', '2024-07-07 21:57:30.433144', '/myapp/index/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (915, '127.0.0.1', '2024-07-07 21:57:30.439131', '/myapp/index/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (916, '127.0.0.1', '2024-07-07 21:57:30.445408', '/myapp/index/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (917, '127.0.0.1', '2024-07-07 21:57:30.482722', '/myapp/index/classification/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (918, '127.0.0.1', '2024-07-07 21:58:23.716024', '/myapp/index/notice/list_api', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (919, '127.0.0.1', '2024-07-07 21:58:23.746482', '/myapp/index/thing/getRecommend', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (920, '127.0.0.1', '2024-07-07 21:58:23.781439', '/myapp/index/thing/getRecommend', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (921, '127.0.0.1', '2024-07-07 21:58:24.652596', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (922, '127.0.0.1', '2024-07-07 21:58:24.664390', '/myapp/index/user/info', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (923, '127.0.0.1', '2024-07-07 21:58:24.669170', '/myapp/index/user/info', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (924, '127.0.0.1', '2024-07-07 21:58:24.736966', '/upload/avatar/1720360587483.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (925, '127.0.0.1', '2024-07-07 21:58:24.736966', '/upload/avatar/1720360587483.jpeg', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (926, '127.0.0.1', '2024-07-07 21:58:24.801883', '/upload/cover/1720358641398.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (927, '127.0.0.1', '2024-07-07 21:58:24.801883', '/upload/cover/1720358641398.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (928, '127.0.0.1', '2024-07-07 21:58:24.808689', '/upload/cover/1720358641398.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (929, '127.0.0.1', '2024-07-07 21:58:24.808689', '/upload/cover/1720358641398.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (930, '127.0.0.1', '2024-07-07 21:58:24.817591', '/upload/cover/1720358641398.jpeg', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (931, '127.0.0.1', '2024-07-07 21:58:24.844485', '/upload/cover/1720358670842.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (932, '127.0.0.1', '2024-07-07 21:58:24.856970', '/upload/cover/1720358746912.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (933, '127.0.0.1', '2024-07-07 21:58:24.858294', '/upload/cover/1720358746912.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (934, '127.0.0.1', '2024-07-07 21:58:24.858294', '/upload/cover/1720358746912.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (935, '127.0.0.1', '2024-07-07 21:58:24.858294', '/upload/cover/1720358753887.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (936, '127.0.0.1', '2024-07-07 21:58:25.571023', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (937, '127.0.0.1', '2024-07-07 21:58:25.587373', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (938, '127.0.0.1', '2024-07-07 21:58:25.603324', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (939, '127.0.0.1', '2024-07-07 21:58:25.620099', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (940, '127.0.0.1', '2024-07-07 21:58:25.624312', '/myapp/index/user/info', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (941, '127.0.0.1', '2024-07-07 21:58:25.652994', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (942, '127.0.0.1', '2024-07-07 21:58:26.270104', '/myapp/index/thing/getRecommend', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (943, '127.0.0.1', '2024-07-07 21:58:26.284755', '/myapp/index/thing/getRecommend', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (944, '127.0.0.1', '2024-07-07 21:58:26.319442', '/myapp/index/thing/getRecommend', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (945, '127.0.0.1', '2024-07-07 21:58:26.869261', '/myapp/index/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (946, '127.0.0.1', '2024-07-07 21:58:26.878852', '/myapp/index/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (947, '127.0.0.1', '2024-07-07 21:58:26.895320', '/myapp/index/classification/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (948, '127.0.0.1', '2024-07-07 21:58:26.932674', '/myapp/index/classification/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (949, '127.0.0.1', '2024-07-07 21:58:27.950148', '/myapp/index/thing/getWishThingList', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (950, '127.0.0.1', '2024-07-07 21:58:27.950148', '/myapp/index/thing/getWishThingList', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (951, '127.0.0.1', '2024-07-07 21:58:27.967663', '/myapp/index/user/info', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (952, '127.0.0.1', '2024-07-07 21:58:27.983634', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (953, '127.0.0.1', '2024-07-07 21:58:28.001073', '/myapp/index/user/info', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (954, '127.0.0.1', '2024-07-07 21:58:28.028729', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (955, '127.0.0.1', '2024-07-07 21:58:31.515570', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (956, '127.0.0.1', '2024-07-07 21:58:31.523541', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (957, '127.0.0.1', '2024-07-07 21:58:31.557572', '/myapp/index/user/info', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (958, '127.0.0.1', '2024-07-07 21:58:32.300999', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (959, '127.0.0.1', '2024-07-07 21:58:32.309319', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (960, '127.0.0.1', '2024-07-07 21:58:32.309319', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (961, '127.0.0.1', '2024-07-07 21:58:32.374876', '/myapp/index/thing/list', 'GET', NULL, '90');
INSERT INTO `b_op_log` VALUES (962, '127.0.0.1', '2024-07-07 21:58:33.726212', '/myapp/index/thing/detail', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (963, '127.0.0.1', '2024-07-07 21:58:33.757716', '/myapp/index/thing/detail', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (964, '127.0.0.1', '2024-07-07 21:58:33.763403', '/myapp/index/thing/detail', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (965, '127.0.0.1', '2024-07-07 21:58:33.807625', '/upload/ad/1720359982493.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (966, '127.0.0.1', '2024-07-07 21:58:33.807625', '/upload/ad/1720359995192.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (967, '127.0.0.1', '2024-07-07 21:58:33.807625', '/upload/ad/1720359982493.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (968, '127.0.0.1', '2024-07-07 21:58:33.831988', '/upload/ad/1720359982493.jpeg', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (969, '127.0.0.1', '2024-07-07 21:58:33.862221', '/upload/ad/1720359982493.jpeg', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (970, '127.0.0.1', '2024-07-07 21:58:35.438313', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (971, '127.0.0.1', '2024-07-07 21:58:35.443857', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (972, '127.0.0.1', '2024-07-07 21:58:35.480034', '/myapp/index/user/info', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (973, '127.0.0.1', '2024-07-07 21:58:36.131036', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (974, '127.0.0.1', '2024-07-07 21:58:36.135748', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (975, '127.0.0.1', '2024-07-07 21:58:36.146792', '/myapp/index/thing/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (976, '127.0.0.1', '2024-07-07 21:58:36.190378', '/myapp/index/thing/list', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (977, '127.0.0.1', '2024-07-07 21:58:37.545186', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (978, '127.0.0.1', '2024-07-07 21:58:37.556198', '/myapp/index/comment/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (979, '127.0.0.1', '2024-07-07 21:58:37.560980', '/myapp/index/comment/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (980, '127.0.0.1', '2024-07-07 21:58:37.576828', '/myapp/index/comment/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (981, '127.0.0.1', '2024-07-07 21:58:37.625830', '/myapp/index/comment/list', 'GET', NULL, '102');
INSERT INTO `b_op_log` VALUES (982, '127.0.0.1', '2024-07-07 21:58:37.627135', '/myapp/index/comment/list', 'GET', NULL, '106');
INSERT INTO `b_op_log` VALUES (983, '127.0.0.1', '2024-07-07 21:58:39.034147', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (984, '127.0.0.1', '2024-07-07 21:58:39.040936', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (985, '127.0.0.1', '2024-07-07 21:58:39.049972', '/myapp/index/thing/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (986, '127.0.0.1', '2024-07-07 21:58:39.103412', '/myapp/index/thing/list', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (987, '127.0.0.1', '2024-07-07 21:58:39.957974', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (988, '127.0.0.1', '2024-07-07 21:58:39.972387', '/myapp/index/user/info', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (989, '127.0.0.1', '2024-07-07 21:58:39.995464', '/myapp/index/user/info', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (990, '127.0.0.1', '2024-07-07 21:58:40.883595', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (991, '127.0.0.1', '2024-07-07 21:58:40.899352', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (992, '127.0.0.1', '2024-07-07 21:58:40.908813', '/myapp/index/user/info', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (993, '127.0.0.1', '2024-07-07 21:58:40.914332', '/myapp/index/user/info', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (994, '127.0.0.1', '2024-07-07 21:58:40.931953', '/upload/avatar/1720360587483.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (995, '127.0.0.1', '2024-07-07 21:58:40.954659', '/upload/avatar/1720360587483.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (996, '127.0.0.1', '2024-07-07 21:58:40.966432', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (997, '127.0.0.1', '2024-07-07 21:58:41.644572', '/myapp/index/thing/getRecommend', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (998, '127.0.0.1', '2024-07-07 21:58:41.660720', '/myapp/index/thing/getRecommend', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (999, '127.0.0.1', '2024-07-07 21:58:41.695407', '/myapp/index/thing/getRecommend', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (1000, '127.0.0.1', '2024-07-07 21:58:42.855902', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1001, '127.0.0.1', '2024-07-07 21:58:42.873551', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1002, '127.0.0.1', '2024-07-07 21:58:42.880766', '/myapp/index/thing/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (1003, '127.0.0.1', '2024-07-07 21:58:42.921685', '/myapp/index/thing/list', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (1004, '127.0.0.1', '2024-07-07 21:58:43.510694', '/myapp/index/thing/getWishThingList', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1005, '127.0.0.1', '2024-07-07 21:58:43.538610', '/myapp/index/thing/getWishThingList', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (1006, '127.0.0.1', '2024-07-07 21:58:43.538610', '/myapp/index/thing/getWishThingList', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (1007, '127.0.0.1', '2024-07-07 21:58:43.555123', '/myapp/index/thing/getWishThingList', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (1008, '127.0.0.1', '2024-07-07 21:58:43.582534', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1009, '127.0.0.1', '2024-07-07 21:58:43.621150', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1010, '127.0.0.1', '2024-07-07 21:58:57.646594', '/myapp/index/user/info', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1011, '127.0.0.1', '2024-07-07 21:58:57.652285', '/myapp/index/user/info', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1012, '127.0.0.1', '2024-07-07 21:58:57.697337', '/myapp/index/user/info', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (1013, '127.0.0.1', '2024-07-07 21:59:01.278581', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1014, '127.0.0.1', '2024-07-07 21:59:01.286053', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1015, '127.0.0.1', '2024-07-07 21:59:01.304708', '/upload/avatar/1720360587483.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1016, '127.0.0.1', '2024-07-07 21:59:04.696667', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1017, '127.0.0.1', '2024-07-07 21:59:04.707120', '/myapp/index/thing/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (1018, '127.0.0.1', '2024-07-07 21:59:04.723674', '/myapp/index/thing/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (1019, '127.0.0.1', '2024-07-07 21:59:04.768819', '/myapp/index/thing/list', 'GET', NULL, '89');

-- ----------------------------
-- Table structure for b_order
-- ----------------------------
DROP TABLE IF EXISTS `b_order`;
CREATE TABLE `b_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_number` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `count` int(11) NOT NULL,
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_time` datetime(6) NULL DEFAULT NULL,
  `receiver_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_time` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_order_thing_id_4e345e2c_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_order_user_id_64854046_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_order_thing_id_4e345e2c_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_order_user_id_64854046_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_order
-- ----------------------------
INSERT INTO `b_order` VALUES (1, '1720359647039', 1, '2', '2024-07-07 21:40:47.055448', '刘德华', '周六上午8点', '123111111', '', 2, 2);
INSERT INTO `b_order` VALUES (2, '1720359859395', 1, '1', '2024-07-07 21:44:19.404523', '潘金莲', '周二下午2点', '13455556666', '1222', 6, 2);

-- ----------------------------
-- Table structure for b_record
-- ----------------------------
DROP TABLE IF EXISTS `b_record`;
CREATE TABLE `b_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `score` int(11) NOT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_record_thing_id_d8e773c0_fk_b_thing_id`(`thing_id`) USING BTREE,
  CONSTRAINT `b_record_thing_id_d8e773c0_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_record
-- ----------------------------
INSERT INTO `b_record` VALUES (1, 2, 12, '127.0.0.1');
INSERT INTO `b_record` VALUES (2, 1, 1, '127.0.0.2');
INSERT INTO `b_record` VALUES (3, 3, 6, '127.0.0.2');
INSERT INTO `b_record` VALUES (4, 6, 6, '127.0.0.2');
INSERT INTO `b_record` VALUES (5, 11, 1, '127.0.0.2');
INSERT INTO `b_record` VALUES (6, 9, 1, '127.0.0.2');
INSERT INTO `b_record` VALUES (7, 10, 2, '127.0.0.2');
INSERT INTO `b_record` VALUES (8, 12, 1, '127.0.0.2');
INSERT INTO `b_record` VALUES (9, 4, 4, '127.0.0.2');
INSERT INTO `b_record` VALUES (10, 5, 1, '127.0.0.2');
INSERT INTO `b_record` VALUES (11, 8, 2, '127.0.0.2');
INSERT INTO `b_record` VALUES (12, 7, 2, '127.0.0.2');
INSERT INTO `b_record` VALUES (13, 3, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (14, 1, 2, '127.0.0.1');
INSERT INTO `b_record` VALUES (15, 11, 2, '127.0.0.1');
INSERT INTO `b_record` VALUES (16, 5, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (17, 4, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (18, 9, 5, '127.0.0.1');
INSERT INTO `b_record` VALUES (19, 6, 1, '127.0.0.1');

-- ----------------------------
-- Table structure for b_thing
-- ----------------------------
DROP TABLE IF EXISTS `b_thing`;
CREATE TABLE `b_thing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cover` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `price` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `location` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `pv` int(11) NOT NULL,
  `recommend_count` int(11) NOT NULL,
  `wish_count` int(11) NOT NULL,
  `collect_count` int(11) NOT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `rate` int(11) NOT NULL,
  `wxts` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_thing_classification_id_47675ac4_fk_b_classification_id`(`classification_id`) USING BTREE,
  INDEX `b_thing_user_id_9918a633_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_classification_id_47675ac4_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_user_id_9918a633_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing
-- ----------------------------
INSERT INTO `b_thing` VALUES (1, '意大利梦幻之都婚纱摄影', 'cover/1720358406645.jpeg', '影楼摄影是指专业摄影机构提供的各种摄影服务，包括婚纱摄影、家庭摄影、个人写真、商业摄影等。影楼摄影行业在近年来蓬勃发展，吸引了越来越多的消费者和爱好者。\r\n\r\n影楼摄影的婚纱摄影服务是其中最为知名和热门的服务之一。新人们在筹备婚礼的时候，往往会选择影楼摄影为他们记录最美好的瞬间。影楼会提供专业的摄影师、化妆师、场地、道具等，为新人们打造出唯美、浪漫的婚纱照片，让他们永远珍藏这份美好回忆。\r\n\r\n除了婚纱摄影，影楼还提供家庭摄影服务。家庭摄影是记录家庭成员间亲情、温暖的方式，通过摄影作品传递家庭的幸福和快乐。许多家庭会选择在特殊的日子，如家庭成员生日、结婚纪念日等，来影楼拍摄家庭照片，留下珍贵的回忆。\r\n\r\n影楼摄影也常为个人提供写真摄影服务，包括艺术、时尚、校园、毕业等不同风格的写真照片。这些照片既可以用于个人欣赏，也可以用于社交媒体展示，展现个人的魅力和风采。\r\n\r\n另外，商业摄影也是影楼摄影的一大范畴。商业摄影主要为企业和商家提供产品拍摄、企业形象宣传、广告宣传等服务。影楼摄影通过专业的摄影师和设备，为客户创作出高品质、有创意的照片，帮助客户提升品牌形象和产品销售。\r\n\r\n影楼摄影是一个综合性的摄影服务机构，为不同需求的客户提供专业、贴心的服务。随着社会的发展和人们对美好的追求，影楼摄影行业将不断创新，为更多人带来美丽的照片和幸福的回忆。', '238', '意大利西西里岛', '0', '2024-07-07 21:20:34.581337', 3, 0, 0, 0, 1, NULL, 3, '需提前预订机票');
INSERT INTO `b_thing` VALUES (2, '青岛帆船主题婚纱摄影', 'cover/1720358564192.jpeg', '影楼摄影是指专业摄影机构提供的各种摄影服务，包括婚纱摄影、家庭摄影、个人写真、商业摄影等。影楼摄影行业在近年来蓬勃发展，吸引了越来越多的消费者和爱好者。\r\n\r\n影楼摄影的婚纱摄影服务是其中最为知名和热门的服务之一。新人们在筹备婚礼的时候，往往会选择影楼摄影为他们记录最美好的瞬间。影楼会提供专业的摄影师、化妆师、场地、道具等，为新人们打造出唯美、浪漫的婚纱照片，让他们永远珍藏这份美好回忆。\r\n\r\n除了婚纱摄影，影楼还提供家庭摄影服务。家庭摄影是记录家庭成员间亲情、温暖的方式，通过摄影作品传递家庭的幸福和快乐。许多家庭会选择在特殊的日子，如家庭成员生日、结婚纪念日等，来影楼拍摄家庭照片，留下珍贵的回忆。\r\n\r\n影楼摄影也常为个人提供写真摄影服务，包括艺术、时尚、校园、毕业等不同风格的写真照片。这些照片既可以用于个人欣赏，也可以用于社交媒体展示，展现个人的魅力和风采。\r\n\r\n另外，商业摄影也是影楼摄影的一大范畴。商业摄影主要为企业和商家提供产品拍摄、企业形象宣传、广告宣传等服务。影楼摄影通过专业的摄影师和设备，为客户创作出高品质、有创意的照片，帮助客户提升品牌形象和产品销售。\r\n\r\n影楼摄影是一个综合性的摄影服务机构，为不同需求的客户提供专业、贴心的服务。随着社会的发展和人们对美好的追求，影楼摄影行业将不断创新，为更多人带来美丽的照片和幸福的回忆。', '238', '青岛海边', '0', '2024-07-07 21:20:34.581337', 12, 0, 1, 1, 1, NULL, 3, '需提前预订机票');
INSERT INTO `b_thing` VALUES (3, '上海外滩主题儿童拍摄套餐', 'cover/1720358585314.jpeg', '影楼摄影是指专业摄影机构提供的各种摄影服务，包括婚纱摄影、家庭摄影、个人写真、商业摄影等。影楼摄影行业在近年来蓬勃发展，吸引了越来越多的消费者和爱好者。\r\n\r\n影楼摄影的婚纱摄影服务是其中最为知名和热门的服务之一。新人们在筹备婚礼的时候，往往会选择影楼摄影为他们记录最美好的瞬间。影楼会提供专业的摄影师、化妆师、场地、道具等，为新人们打造出唯美、浪漫的婚纱照片，让他们永远珍藏这份美好回忆。\r\n\r\n除了婚纱摄影，影楼还提供家庭摄影服务。家庭摄影是记录家庭成员间亲情、温暖的方式，通过摄影作品传递家庭的幸福和快乐。许多家庭会选择在特殊的日子，如家庭成员生日、结婚纪念日等，来影楼拍摄家庭照片，留下珍贵的回忆。\r\n\r\n影楼摄影也常为个人提供写真摄影服务，包括艺术、时尚、校园、毕业等不同风格的写真照片。这些照片既可以用于个人欣赏，也可以用于社交媒体展示，展现个人的魅力和风采。\r\n\r\n另外，商业摄影也是影楼摄影的一大范畴。商业摄影主要为企业和商家提供产品拍摄、企业形象宣传、广告宣传等服务。影楼摄影通过专业的摄影师和设备，为客户创作出高品质、有创意的照片，帮助客户提升品牌形象和产品销售。\r\n\r\n影楼摄影是一个综合性的摄影服务机构，为不同需求的客户提供专业、贴心的服务。随着社会的发展和人们对美好的追求，影楼摄影行业将不断创新，为更多人带来美丽的照片和幸福的回忆。', '121', '上海外滩', '0', '2024-07-07 21:20:34.581337', 7, 0, 1, 1, 2, NULL, 3, '需提前预订机票');
INSERT INTO `b_thing` VALUES (4, '青岛金沙滩儿童摄影套餐', 'cover/1720358608911.jpeg', '影楼摄影是指专业摄影机构提供的各种摄影服务，包括婚纱摄影、家庭摄影、个人写真、商业摄影等。影楼摄影行业在近年来蓬勃发展，吸引了越来越多的消费者和爱好者。\r\n\r\n影楼摄影的婚纱摄影服务是其中最为知名和热门的服务之一。新人们在筹备婚礼的时候，往往会选择影楼摄影为他们记录最美好的瞬间。影楼会提供专业的摄影师、化妆师、场地、道具等，为新人们打造出唯美、浪漫的婚纱照片，让他们永远珍藏这份美好回忆。\r\n\r\n除了婚纱摄影，影楼还提供家庭摄影服务。家庭摄影是记录家庭成员间亲情、温暖的方式，通过摄影作品传递家庭的幸福和快乐。许多家庭会选择在特殊的日子，如家庭成员生日、结婚纪念日等，来影楼拍摄家庭照片，留下珍贵的回忆。\r\n\r\n影楼摄影也常为个人提供写真摄影服务，包括艺术、时尚、校园、毕业等不同风格的写真照片。这些照片既可以用于个人欣赏，也可以用于社交媒体展示，展现个人的魅力和风采。\r\n\r\n另外，商业摄影也是影楼摄影的一大范畴。商业摄影主要为企业和商家提供产品拍摄、企业形象宣传、广告宣传等服务。影楼摄影通过专业的摄影师和设备，为客户创作出高品质、有创意的照片，帮助客户提升品牌形象和产品销售。\r\n\r\n影楼摄影是一个综合性的摄影服务机构，为不同需求的客户提供专业、贴心的服务。随着社会的发展和人们对美好的追求，影楼摄影行业将不断创新，为更多人带来美丽的照片和幸福的回忆。', '238', '青岛海边', '0', '2024-07-07 21:20:34.581337', 5, 0, 0, 1, 2, NULL, 3, '需提前预订机票');
INSERT INTO `b_thing` VALUES (5, '大学毕业合影主题摄影', 'cover/1720358633207.jpeg', '影楼摄影是指专业摄影机构提供的各种摄影服务，包括婚纱摄影、家庭摄影、个人写真、商业摄影等。影楼摄影行业在近年来蓬勃发展，吸引了越来越多的消费者和爱好者。\r\n\r\n影楼摄影的婚纱摄影服务是其中最为知名和热门的服务之一。新人们在筹备婚礼的时候，往往会选择影楼摄影为他们记录最美好的瞬间。影楼会提供专业的摄影师、化妆师、场地、道具等，为新人们打造出唯美、浪漫的婚纱照片，让他们永远珍藏这份美好回忆。\r\n\r\n除了婚纱摄影，影楼还提供家庭摄影服务。家庭摄影是记录家庭成员间亲情、温暖的方式，通过摄影作品传递家庭的幸福和快乐。许多家庭会选择在特殊的日子，如家庭成员生日、结婚纪念日等，来影楼拍摄家庭照片，留下珍贵的回忆。\r\n\r\n影楼摄影也常为个人提供写真摄影服务，包括艺术、时尚、校园、毕业等不同风格的写真照片。这些照片既可以用于个人欣赏，也可以用于社交媒体展示，展现个人的魅力和风采。\r\n\r\n另外，商业摄影也是影楼摄影的一大范畴。商业摄影主要为企业和商家提供产品拍摄、企业形象宣传、广告宣传等服务。影楼摄影通过专业的摄影师和设备，为客户创作出高品质、有创意的照片，帮助客户提升品牌形象和产品销售。\r\n\r\n影楼摄影是一个综合性的摄影服务机构，为不同需求的客户提供专业、贴心的服务。随着社会的发展和人们对美好的追求，影楼摄影行业将不断创新，为更多人带来美丽的照片和幸福的回忆。', '2556', '人民大街', '0', '2024-07-07 21:20:34.581337', 2, 0, 0, 0, 5, NULL, 3, '需提前预订机票');
INSERT INTO `b_thing` VALUES (6, '毕业生照片合影', 'cover/1720358641398.jpeg', '影楼摄影是指专业摄影机构提供的各种摄影服务，包括婚纱摄影、家庭摄影、个人写真、商业摄影等。影楼摄影行业在近年来蓬勃发展，吸引了越来越多的消费者和爱好者。\r\n\r\n影楼摄影的婚纱摄影服务是其中最为知名和热门的服务之一。新人们在筹备婚礼的时候，往往会选择影楼摄影为他们记录最美好的瞬间。影楼会提供专业的摄影师、化妆师、场地、道具等，为新人们打造出唯美、浪漫的婚纱照片，让他们永远珍藏这份美好回忆。\r\n\r\n除了婚纱摄影，影楼还提供家庭摄影服务。家庭摄影是记录家庭成员间亲情、温暖的方式，通过摄影作品传递家庭的幸福和快乐。许多家庭会选择在特殊的日子，如家庭成员生日、结婚纪念日等，来影楼拍摄家庭照片，留下珍贵的回忆。\r\n\r\n影楼摄影也常为个人提供写真摄影服务，包括艺术、时尚、校园、毕业等不同风格的写真照片。这些照片既可以用于个人欣赏，也可以用于社交媒体展示，展现个人的魅力和风采。\r\n\r\n另外，商业摄影也是影楼摄影的一大范畴。商业摄影主要为企业和商家提供产品拍摄、企业形象宣传、广告宣传等服务。影楼摄影通过专业的摄影师和设备，为客户创作出高品质、有创意的照片，帮助客户提升品牌形象和产品销售。\r\n\r\n影楼摄影是一个综合性的摄影服务机构，为不同需求的客户提供专业、贴心的服务。随着社会的发展和人们对美好的追求，影楼摄影行业将不断创新，为更多人带来美丽的照片和幸福的回忆。', '238', '人民大街', '0', '2024-07-07 21:20:34.581337', 7, 0, 1, 1, 5, NULL, 3, '需提前预订机票');
INSERT INTO `b_thing` VALUES (7, '梦幻之都婚纱摄影222', 'cover/1720358670842.jpeg', '影楼摄影是指专业摄影机构提供的各种摄影服务，包括婚纱摄影、家庭摄影、个人写真、商业摄影等。影楼摄影行业在近年来蓬勃发展，吸引了越来越多的消费者和爱好者。\r\n\r\n影楼摄影的婚纱摄影服务是其中最为知名和热门的服务之一。新人们在筹备婚礼的时候，往往会选择影楼摄影为他们记录最美好的瞬间。影楼会提供专业的摄影师、化妆师、场地、道具等，为新人们打造出唯美、浪漫的婚纱照片，让他们永远珍藏这份美好回忆。\r\n\r\n除了婚纱摄影，影楼还提供家庭摄影服务。家庭摄影是记录家庭成员间亲情、温暖的方式，通过摄影作品传递家庭的幸福和快乐。许多家庭会选择在特殊的日子，如家庭成员生日、结婚纪念日等，来影楼拍摄家庭照片，留下珍贵的回忆。\r\n\r\n影楼摄影也常为个人提供写真摄影服务，包括艺术、时尚、校园、毕业等不同风格的写真照片。这些照片既可以用于个人欣赏，也可以用于社交媒体展示，展现个人的魅力和风采。\r\n\r\n另外，商业摄影也是影楼摄影的一大范畴。商业摄影主要为企业和商家提供产品拍摄、企业形象宣传、广告宣传等服务。影楼摄影通过专业的摄影师和设备，为客户创作出高品质、有创意的照片，帮助客户提升品牌形象和产品销售。\r\n\r\n影楼摄影是一个综合性的摄影服务机构，为不同需求的客户提供专业、贴心的服务。随着社会的发展和人们对美好的追求，影楼摄影行业将不断创新，为更多人带来美丽的照片和幸福的回忆。', '238', '人民大街', '0', '2024-07-07 21:20:34.581337', 2, 0, 0, 0, 1, NULL, 3, '需提前预订机票');
INSERT INTO `b_thing` VALUES (8, '梦幻之都婚纱摄影333', 'cover/1720358682532.jpeg', '影楼摄影是指专业摄影机构提供的各种摄影服务，包括婚纱摄影、家庭摄影、个人写真、商业摄影等。影楼摄影行业在近年来蓬勃发展，吸引了越来越多的消费者和爱好者。\r\n\r\n影楼摄影的婚纱摄影服务是其中最为知名和热门的服务之一。新人们在筹备婚礼的时候，往往会选择影楼摄影为他们记录最美好的瞬间。影楼会提供专业的摄影师、化妆师、场地、道具等，为新人们打造出唯美、浪漫的婚纱照片，让他们永远珍藏这份美好回忆。\r\n\r\n除了婚纱摄影，影楼还提供家庭摄影服务。家庭摄影是记录家庭成员间亲情、温暖的方式，通过摄影作品传递家庭的幸福和快乐。许多家庭会选择在特殊的日子，如家庭成员生日、结婚纪念日等，来影楼拍摄家庭照片，留下珍贵的回忆。\r\n\r\n影楼摄影也常为个人提供写真摄影服务，包括艺术、时尚、校园、毕业等不同风格的写真照片。这些照片既可以用于个人欣赏，也可以用于社交媒体展示，展现个人的魅力和风采。\r\n\r\n另外，商业摄影也是影楼摄影的一大范畴。商业摄影主要为企业和商家提供产品拍摄、企业形象宣传、广告宣传等服务。影楼摄影通过专业的摄影师和设备，为客户创作出高品质、有创意的照片，帮助客户提升品牌形象和产品销售。\r\n\r\n影楼摄影是一个综合性的摄影服务机构，为不同需求的客户提供专业、贴心的服务。随着社会的发展和人们对美好的追求，影楼摄影行业将不断创新，为更多人带来美丽的照片和幸福的回忆。', '1220', '人民大街', '0', '2024-07-07 21:20:34.581337', 2, 0, 0, 0, 1, NULL, 3, '需提前预订机票');
INSERT INTO `b_thing` VALUES (9, '梦幻之都婚纱摄影333', 'cover/1720358697731.jpeg', '影楼摄影是指专业摄影机构提供的各种摄影服务，包括婚纱摄影、家庭摄影、个人写真、商业摄影等。影楼摄影行业在近年来蓬勃发展，吸引了越来越多的消费者和爱好者。\r\n\r\n影楼摄影的婚纱摄影服务是其中最为知名和热门的服务之一。新人们在筹备婚礼的时候，往往会选择影楼摄影为他们记录最美好的瞬间。影楼会提供专业的摄影师、化妆师、场地、道具等，为新人们打造出唯美、浪漫的婚纱照片，让他们永远珍藏这份美好回忆。\r\n\r\n除了婚纱摄影，影楼还提供家庭摄影服务。家庭摄影是记录家庭成员间亲情、温暖的方式，通过摄影作品传递家庭的幸福和快乐。许多家庭会选择在特殊的日子，如家庭成员生日、结婚纪念日等，来影楼拍摄家庭照片，留下珍贵的回忆。\r\n\r\n影楼摄影也常为个人提供写真摄影服务，包括艺术、时尚、校园、毕业等不同风格的写真照片。这些照片既可以用于个人欣赏，也可以用于社交媒体展示，展现个人的魅力和风采。\r\n\r\n另外，商业摄影也是影楼摄影的一大范畴。商业摄影主要为企业和商家提供产品拍摄、企业形象宣传、广告宣传等服务。影楼摄影通过专业的摄影师和设备，为客户创作出高品质、有创意的照片，帮助客户提升品牌形象和产品销售。\r\n\r\n影楼摄影是一个综合性的摄影服务机构，为不同需求的客户提供专业、贴心的服务。随着社会的发展和人们对美好的追求，影楼摄影行业将不断创新，为更多人带来美丽的照片和幸福的回忆。', '238', '人民大街', '0', '2024-07-07 21:20:34.581337', 6, 0, 0, 0, 1, NULL, 4, '需提前预订机票');
INSERT INTO `b_thing` VALUES (10, '荷兰风车婚纱影', 'cover/1720358406645.jpeg', '影楼摄影是指专业摄影机构提供的各种摄影服务，包括婚纱摄影、家庭摄影、个人写真、商业摄影等。影楼摄影行业在近年来蓬勃发展，吸引了越来越多的消费者和爱好者。\r\n\r\n影楼摄影的婚纱摄影服务是其中最为知名和热门的服务之一。新人们在筹备婚礼的时候，往往会选择影楼摄影为他们记录最美好的瞬间。影楼会提供专业的摄影师、化妆师、场地、道具等，为新人们打造出唯美、浪漫的婚纱照片，让他们永远珍藏这份美好回忆。\r\n\r\n除了婚纱摄影，影楼还提供家庭摄影服务。家庭摄影是记录家庭成员间亲情、温暖的方式，通过摄影作品传递家庭的幸福和快乐。许多家庭会选择在特殊的日子，如家庭成员生日、结婚纪念日等，来影楼拍摄家庭照片，留下珍贵的回忆。\r\n\r\n影楼摄影也常为个人提供写真摄影服务，包括艺术、时尚、校园、毕业等不同风格的写真照片。这些照片既可以用于个人欣赏，也可以用于社交媒体展示，展现个人的魅力和风采。\r\n\r\n另外，商业摄影也是影楼摄影的一大范畴。商业摄影主要为企业和商家提供产品拍摄、企业形象宣传、广告宣传等服务。影楼摄影通过专业的摄影师和设备，为客户创作出高品质、有创意的照片，帮助客户提升品牌形象和产品销售。\r\n\r\n影楼摄影是一个综合性的摄影服务机构，为不同需求的客户提供专业、贴心的服务。随着社会的发展和人们对美好的追求，影楼摄影行业将不断创新，为更多人带来美丽的照片和幸福的回忆。', '3900', '荷兰', '0', '2024-07-07 21:20:34.581337', 2, 0, 0, 0, 1, NULL, 3, '需提前预订机票');
INSERT INTO `b_thing` VALUES (11, '测试套餐99998', 'cover/1720358753887.jpeg', '影楼摄影是指专业摄影机构提供的各种摄影服务，包括婚纱摄影、家庭摄影、个人写真、商业摄影等。影楼摄影行业在近年来蓬勃发展，吸引了越来越多的消费者和爱好者。\r\n\r\n影楼摄影的婚纱摄影服务是其中最为知名和热门的服务之一。新人们在筹备婚礼的时候，往往会选择影楼摄影为他们记录最美好的瞬间。影楼会提供专业的摄影师、化妆师、场地、道具等，为新人们打造出唯美、浪漫的婚纱照片，让他们永远珍藏这份美好回忆。\r\n\r\n除了婚纱摄影，影楼还提供家庭摄影服务。家庭摄影是记录家庭成员间亲情、温暖的方式，通过摄影作品传递家庭的幸福和快乐。许多家庭会选择在特殊的日子，如家庭成员生日、结婚纪念日等，来影楼拍摄家庭照片，留下珍贵的回忆。\r\n\r\n影楼摄影也常为个人提供写真摄影服务，包括艺术、时尚、校园、毕业等不同风格的写真照片。这些照片既可以用于个人欣赏，也可以用于社交媒体展示，展现个人的魅力和风采。\r\n\r\n另外，商业摄影也是影楼摄影的一大范畴。商业摄影主要为企业和商家提供产品拍摄、企业形象宣传、广告宣传等服务。影楼摄影通过专业的摄影师和设备，为客户创作出高品质、有创意的照片，帮助客户提升品牌形象和产品销售。\r\n\r\n影楼摄影是一个综合性的摄影服务机构，为不同需求的客户提供专业、贴心的服务。随着社会的发展和人们对美好的追求，影楼摄影行业将不断创新，为更多人带来美丽的照片和幸福的回忆。', '1299', '人民大街', '0', '2024-07-07 21:20:34.581337', 3, 0, 0, 0, 4, NULL, 3, '需提前预订机票');
INSERT INTO `b_thing` VALUES (12, '测试套餐321', 'cover/1720358746912.jpeg', '影楼摄影是指专业摄影机构提供的各种摄影服务，包括婚纱摄影、家庭摄影、个人写真、商业摄影等。影楼摄影行业在近年来蓬勃发展，吸引了越来越多的消费者和爱好者。\r\n\r\n影楼摄影的婚纱摄影服务是其中最为知名和热门的服务之一。新人们在筹备婚礼的时候，往往会选择影楼摄影为他们记录最美好的瞬间。影楼会提供专业的摄影师、化妆师、场地、道具等，为新人们打造出唯美、浪漫的婚纱照片，让他们永远珍藏这份美好回忆。\r\n\r\n除了婚纱摄影，影楼还提供家庭摄影服务。家庭摄影是记录家庭成员间亲情、温暖的方式，通过摄影作品传递家庭的幸福和快乐。许多家庭会选择在特殊的日子，如家庭成员生日、结婚纪念日等，来影楼拍摄家庭照片，留下珍贵的回忆。\r\n\r\n影楼摄影也常为个人提供写真摄影服务，包括艺术、时尚、校园、毕业等不同风格的写真照片。这些照片既可以用于个人欣赏，也可以用于社交媒体展示，展现个人的魅力和风采。\r\n\r\n另外，商业摄影也是影楼摄影的一大范畴。商业摄影主要为企业和商家提供产品拍摄、企业形象宣传、广告宣传等服务。影楼摄影通过专业的摄影师和设备，为客户创作出高品质、有创意的照片，帮助客户提升品牌形象和产品销售。\r\n\r\n影楼摄影是一个综合性的摄影服务机构，为不同需求的客户提供专业、贴心的服务。随着社会的发展和人们对美好的追求，影楼摄影行业将不断创新，为更多人带来美丽的照片和幸福的回忆。', '988', '人民大街', '0', '2024-07-07 21:20:34.581337', 1, 0, 0, 0, 3, NULL, 3, '需提前预订机票');

-- ----------------------------
-- Table structure for b_thing_collect
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_collect`;
CREATE TABLE `b_thing_collect`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_collect_thing_id_user_id_45b9f252_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_collect_user_id_e5d69968_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_collect_thing_id_8edce8b3_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_collect_user_id_e5d69968_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_collect
-- ----------------------------
INSERT INTO `b_thing_collect` VALUES (1, 2, 2);
INSERT INTO `b_thing_collect` VALUES (4, 3, 2);
INSERT INTO `b_thing_collect` VALUES (2, 4, 2);
INSERT INTO `b_thing_collect` VALUES (3, 6, 2);

-- ----------------------------
-- Table structure for b_thing_wish
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_wish`;
CREATE TABLE `b_thing_wish`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_wish_thing_id_user_id_9d647bbb_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_wish_user_id_e2d94f6c_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_wish_thing_id_f0864b16_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_wish_user_id_e2d94f6c_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_wish
-- ----------------------------
INSERT INTO `b_thing_wish` VALUES (1, 2, 2);
INSERT INTO `b_thing_wish` VALUES (4, 3, 2);
INSERT INTO `b_thing_wish` VALUES (3, 6, 2);

-- ----------------------------
-- Table structure for b_user
-- ----------------------------
DROP TABLE IF EXISTS `b_user`;
CREATE TABLE `b_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  `push_email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `push_switch` tinyint(1) NULL DEFAULT NULL,
  `admin_token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_user
-- ----------------------------
INSERT INTO `b_user` VALUES (1, 'admin', '78aafd3207ec4ef6d16f9fc07e95ebc3', '1', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-05-04 16:37:10.143202', 0, NULL, 0, '21232f297a57a5a743894a0e4a801fc3', NULL);
INSERT INTO `b_user` VALUES (2, 'ddd', '77963b7a931377ad4ab5ad6a9cd718aa', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-07-07 21:31:21.999936', 0, NULL, 0, NULL, '77963b7a931377ad4ab5ad6a9cd718aa');
INSERT INTO `b_user` VALUES (3, 'admin123', '0192023a7bbd73250516f069df18b500', '3', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-07-07 21:45:53.878364', 0, NULL, 0, '0192023a7bbd73250516f069df18b500', NULL);
INSERT INTO `b_user` VALUES (4, 'test003', 'db270e0074bad27c1177f31627818618', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-07-07 21:46:01.735265', 0, NULL, 0, NULL, NULL);
INSERT INTO `b_user` VALUES (5, 'test004', 'b990a1577e88882a43f26b232d85632b', '2', '0', 'hhgf', 'avatar/1720360587483.jpeg', NULL, NULL, NULL, '9988', '2024-07-07 21:46:09.528307', 0, NULL, 0, NULL, 'b990a1577e88882a43f26b232d85632b');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'myapp', 'ad');
INSERT INTO `django_content_type` VALUES (8, 'myapp', 'classification');
INSERT INTO `django_content_type` VALUES (17, 'myapp', 'comment');
INSERT INTO `django_content_type` VALUES (9, 'myapp', 'errorlog');
INSERT INTO `django_content_type` VALUES (18, 'myapp', 'feedback');
INSERT INTO `django_content_type` VALUES (10, 'myapp', 'loginlog');
INSERT INTO `django_content_type` VALUES (11, 'myapp', 'notice');
INSERT INTO `django_content_type` VALUES (12, 'myapp', 'oplog');
INSERT INTO `django_content_type` VALUES (16, 'myapp', 'order');
INSERT INTO `django_content_type` VALUES (15, 'myapp', 'record');
INSERT INTO `django_content_type` VALUES (14, 'myapp', 'thing');
INSERT INTO `django_content_type` VALUES (13, 'myapp', 'user');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2024-07-07 21:03:15.172033');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2024-07-07 21:03:15.797825');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2024-07-07 21:03:15.954976');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2024-07-07 21:03:15.977177');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2024-07-07 21:03:15.999822');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2024-07-07 21:03:16.164850');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2024-07-07 21:03:16.259798');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2024-07-07 21:03:16.343185');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2024-07-07 21:03:16.359707');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2024-07-07 21:03:16.444485');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2024-07-07 21:03:16.453159');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2024-07-07 21:03:16.474454');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2024-07-07 21:03:16.567426');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2024-07-07 21:03:16.658833');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2024-07-07 21:03:16.750989');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2024-07-07 21:03:16.767567');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2024-07-07 21:03:16.862465');
INSERT INTO `django_migrations` VALUES (18, 'myapp', '0001_initial', '2024-07-07 21:03:18.609422');
INSERT INTO `django_migrations` VALUES (19, 'myapp', '0002_thing_user', '2024-07-07 21:03:18.706430');
INSERT INTO `django_migrations` VALUES (20, 'myapp', '0003_auto_20240504_1643', '2024-07-07 21:03:18.990551');
INSERT INTO `django_migrations` VALUES (21, 'myapp', '0004_auto_20240504_1700', '2024-07-07 21:03:19.155181');
INSERT INTO `django_migrations` VALUES (22, 'myapp', '0005_auto_20240707_2103', '2024-07-07 21:03:20.046020');
INSERT INTO `django_migrations` VALUES (23, 'sessions', '0001_initial', '2024-07-07 21:03:20.154100');
INSERT INTO `django_migrations` VALUES (24, 'myapp', '0006_rename_receiver_address_order_receiver_time', '2024-07-07 21:38:58.044520');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
