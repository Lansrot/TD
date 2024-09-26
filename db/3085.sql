/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 50744
 Source Host           : localhost:3308
 Source Schema         : 3085

 Target Server Type    : MySQL
 Target Server Version : 50744
 File Encoding         : 65001

 Date: 26/09/2024 10:42:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主キー',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '配置文件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 'picture1', 'http://localhost:8080/springboot2r52r/upload/picture1.jpg');
INSERT INTO `config` VALUES (2, 'picture2', 'http://localhost:8080/springboot2r52r/upload/picture2.jpg');
INSERT INTO `config` VALUES (3, 'picture3', 'http://localhost:8080/springboot2r52r/upload/picture3.jpg');
INSERT INTO `config` VALUES (6, 'homepage', NULL);

-- ----------------------------
-- Table structure for defaultuser
-- ----------------------------
DROP TABLE IF EXISTS `defaultuser`;
CREATE TABLE `defaultuser`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主キー',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '作る時間',
  `username` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'User',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'password',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '名前',
  `sex` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '性別',
  `age` int(11) DEFAULT NULL COMMENT '年齢',
  `phone` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '電話番号',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '写真',
  `email` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'メール',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '新規' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of defaultuser
-- ----------------------------
INSERT INTO `defaultuser` VALUES (41, '2021-02-24 19:11:05', 'User1', '123456', '名前1', '男', 1, '020-89819991', 'http://localhost:8080/springboot2r52r/upload/defaultuser_picture1.jpg', '773890001@qq.com');
INSERT INTO `defaultuser` VALUES (42, '2021-02-24 19:11:05', 'User2', '123456', '名前2', '男', 2, '020-89819992', 'http://localhost:8080/springboot2r52r/upload/defaultuser_picture2.jpg', '773890002@qq.com');
INSERT INTO `defaultuser` VALUES (43, '2021-02-24 19:11:05', 'User3', '123456', '名前3', '男', 3, '020-89819993', 'http://localhost:8080/springboot2r52r/upload/defaultuser_picture3.jpg', '773890003@qq.com');
INSERT INTO `defaultuser` VALUES (44, '2021-02-24 19:11:05', 'User4', '123456', '名前4', '男', 4, '020-89819994', 'http://localhost:8080/springboot2r52r/upload/defaultuser_picture4.jpg', '773890004@qq.com');
INSERT INTO `defaultuser` VALUES (45, '2021-02-24 19:11:05', 'User5', '123456', '名前5', '男', 5, '020-89819995', 'http://localhost:8080/springboot2r52r/upload/defaultuser_picture5.jpg', '773890005@qq.com');
INSERT INTO `defaultuser` VALUES (46, '2021-02-24 19:11:05', 'User6', '123456', '名前6', '男', 6, '020-89819996', 'http://localhost:8080/springboot2r52r/upload/defaultuser_picture6.jpg', '773890006@qq.com');

-- ----------------------------
-- Table structure for discusslvyoufangan
-- ----------------------------
DROP TABLE IF EXISTS `discusslvyoufangan`;
CREATE TABLE `discusslvyoufangan`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主キー',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '作る時間',
  `refid` bigint(20) NOT NULL COMMENT '関連表id',
  `userid` bigint(20) NOT NULL COMMENT 'Userid',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '評価',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '回復',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 77 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '評価表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discusslvyoufangan
-- ----------------------------
INSERT INTO `discusslvyoufangan` VALUES (71, '2021-02-24 19:11:05', 1, 1, '評価1', '回復1');
INSERT INTO `discusslvyoufangan` VALUES (72, '2021-02-24 19:11:05', 2, 2, '評価2', '回復2');
INSERT INTO `discusslvyoufangan` VALUES (73, '2021-02-24 19:11:05', 3, 3, '評価3', '回復3');
INSERT INTO `discusslvyoufangan` VALUES (74, '2021-02-24 19:11:05', 4, 4, '評価4', '回復4');
INSERT INTO `discusslvyoufangan` VALUES (75, '2021-02-24 19:11:05', 5, 5, '評価5', '回復5');
INSERT INTO `discusslvyoufangan` VALUES (76, '2021-02-24 19:11:05', 6, 6, '評価6', '回復6');

-- ----------------------------
-- Table structure for lvyoufangan
-- ----------------------------
DROP TABLE IF EXISTS `lvyoufangan`;
CREATE TABLE `lvyoufangan`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主キー',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fanganbianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '方案编号',
  `fanganmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '方案名称',
  `zhaopian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '照片',
  `chufachengshi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '出发城市',
  `lvyouluxian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '旅游路线',
  `yudingxuzhi` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '预定须知',
  `xingchengtianshu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '行程天数',
  `xiangqingjianjie` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '详情简介',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `sfsh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '审核回复',
  `thumbsupnum` int(11) DEFAULT 0 COMMENT '赞',
  `crazilynum` int(11) DEFAULT 0 COMMENT '踩',
  `clicktime` datetime(0) DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT 0 COMMENT '点击次数',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `fanganbianhao`(`fanganbianhao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1614161683619 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '旅游方案' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for lvyougoumai
-- ----------------------------
DROP TABLE IF EXISTS `lvyougoumai`;
CREATE TABLE `lvyougoumai`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fanganbianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '方案编号',
  `fanganmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '方案名称',
  `jiage` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '价格',
  `renshu` int(11) NOT NULL COMMENT '人数',
  `zongjia` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '总价',
  `zhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '姓名',
  `ispay` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1614162090553 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '旅游购买' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `introduction` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '简介',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 67 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '旅游资讯' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '表名',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收藏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'token表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 1, 'abo', 'users', '管理员', 'fmku4ez3jne7z8mmrjcjy2g72pgk8mbs', '2021-02-24 19:12:29', '2024-09-26 01:34:07');
INSERT INTO `token` VALUES (2, 1614161736363, '111', 'yonghu', '用户', 'm66167e210zz7wjlxwsxf9trzfv9memj', '2021-02-24 19:15:47', '2021-02-24 12:21:20');
INSERT INTO `token` VALUES (3, 1727293739382, '3085', 'yonghu', '用户', 'gbkx0vqzknxcildex1qs4inj57yrxwt6', '2024-09-26 04:49:09', '2024-09-26 01:40:57');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'abo', 'abo', '管理员', '2021-02-24 19:11:05');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '账号',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '头像',
  `gexingqianming` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '个性签名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1727293739383 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES (1727293739382, '2024-09-26 04:48:59', '3085', '1', '3085', '男', 'http://localhost:8080/springboot2r52r/upload/1727295523483.jpg', NULL);

SET FOREIGN_KEY_CHECKS = 1;
