/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : xrswzl

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2019-09-22 12:45:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `qw_auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `qw_auth_group`;
CREATE TABLE `qw_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qw_auth_group
-- ----------------------------
INSERT INTO `qw_auth_group` VALUES ('1', '超级管理员', '1', '1,2,3,56,6,5,7,8,9,10,51,52,53,57,13,14,15,16,17,18,108,109,110');

-- ----------------------------
-- Table structure for `qw_auth_group_access`
-- ----------------------------
DROP TABLE IF EXISTS `qw_auth_group_access`;
CREATE TABLE `qw_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qw_auth_group_access
-- ----------------------------
INSERT INTO `qw_auth_group_access` VALUES ('1', '1');

-- ----------------------------
-- Table structure for `qw_auth_rule`
-- ----------------------------
DROP TABLE IF EXISTS `qw_auth_rule`;
CREATE TABLE `qw_auth_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `name` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `condition` char(100) NOT NULL DEFAULT '',
  `islink` tinyint(1) NOT NULL DEFAULT '1',
  `o` int(11) NOT NULL COMMENT '排序',
  `tips` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qw_auth_rule
-- ----------------------------
INSERT INTO `qw_auth_rule` VALUES ('1', '0', 'Index/index', '返回首页', 'menu-icon fa fa-tachometer', '1', '1', '', '1', '0', '友情提示：经常查看操作日志，发现异常以便及时追查原因。');
INSERT INTO `qw_auth_rule` VALUES ('2', '0', '', '系统设置', 'menu-icon fa fa-cog', '1', '1', '', '1', '2', '');
INSERT INTO `qw_auth_rule` VALUES ('3', '2', 'Setting/setting', '网站设置', 'menu-icon fa fa-caret-right', '1', '1', '', '1', '3', '这是网站设置的提示。');
INSERT INTO `qw_auth_rule` VALUES ('4', '2', 'Menu/index', '后台菜单', 'menu-icon fa fa-caret-right', '1', '1', '', '1', '4', '');
INSERT INTO `qw_auth_rule` VALUES ('5', '2', 'Menu/add', '新增菜单', 'menu-icon fa fa-caret-right', '1', '1', '', '0', '5', '');
INSERT INTO `qw_auth_rule` VALUES ('6', '4', 'Menu/edit', '编辑菜单', '', '1', '1', '', '0', '6', '');
INSERT INTO `qw_auth_rule` VALUES ('7', '2', 'Menu/update', '保存菜单', 'menu-icon fa fa-caret-right', '1', '1', '', '0', '7', '');
INSERT INTO `qw_auth_rule` VALUES ('8', '2', 'Menu/del', '删除菜单', 'menu-icon fa fa-caret-right', '1', '1', '', '0', '8', '');
INSERT INTO `qw_auth_rule` VALUES ('9', '2', 'Database/backup', '数据库备份', 'menu-icon fa fa-caret-right', '1', '1', '', '1', '9', '');
INSERT INTO `qw_auth_rule` VALUES ('10', '9', 'Database/recovery', '数据库还原', '', '1', '1', '', '0', '10', '');
INSERT INTO `qw_auth_rule` VALUES ('13', '0', '', '用户及组', 'menu-icon fa fa-users', '1', '1', '', '1', '13', '');
INSERT INTO `qw_auth_rule` VALUES ('14', '13', 'Member/index', '用户管理', 'menu-icon fa fa-caret-right', '1', '1', '', '1', '14', '');
INSERT INTO `qw_auth_rule` VALUES ('15', '13', 'Member/add', '新增用户', 'menu-icon fa fa-caret-right', '1', '1', '', '1', '15', '');
INSERT INTO `qw_auth_rule` VALUES ('16', '13', 'Member/edit', '编辑用户', 'menu-icon fa fa-caret-right', '1', '1', '', '0', '16', '');
INSERT INTO `qw_auth_rule` VALUES ('17', '13', 'Member/update', '保存用户', 'menu-icon fa fa-caret-right', '1', '1', '', '0', '17', '');
INSERT INTO `qw_auth_rule` VALUES ('18', '13', 'Member/del', '删除用户', '', '1', '1', '', '0', '18', '');
INSERT INTO `qw_auth_rule` VALUES ('19', '13', 'Group/index', '用户组管理', 'menu-icon fa fa-caret-right', '1', '1', '', '1', '19', '');
INSERT INTO `qw_auth_rule` VALUES ('21', '13', 'Group/edit', '编辑用户组', 'menu-icon fa fa-caret-right', '1', '1', '', '0', '21', '');
INSERT INTO `qw_auth_rule` VALUES ('22', '13', 'Group/update', '保存用户组', 'menu-icon fa fa-caret-right', '1', '1', '', '0', '22', '');
INSERT INTO `qw_auth_rule` VALUES ('23', '13', 'Group/del', '删除用户组', '', '1', '1', '', '0', '23', '');
INSERT INTO `qw_auth_rule` VALUES ('51', '9', 'Database/export', '备份', '', '1', '1', '', '0', '51', '');
INSERT INTO `qw_auth_rule` VALUES ('52', '9', 'Database/optimize', '数据优化', '', '1', '1', '', '0', '52', '');
INSERT INTO `qw_auth_rule` VALUES ('53', '9', 'Database/repair', '修复表', '', '1', '1', '', '0', '53', '');
INSERT INTO `qw_auth_rule` VALUES ('56', '3', 'Setting/update', '设置保存', '', '1', '1', '', '0', '56', '');
INSERT INTO `qw_auth_rule` VALUES ('57', '9', 'Database/del', '备份删除', '', '1', '1', '', '0', '57', '');
INSERT INTO `qw_auth_rule` VALUES ('108', '0', '', '失物认领', 'menu-icon fa fa-desktop', '1', '1', '', '1', '14', '');
INSERT INTO `qw_auth_rule` VALUES ('109', '108', 'Swlist/lists', '信息列表', 'menu-icon fa fa-caret-right', '1', '1', '', '1', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('110', '108', 'Swlist/users', '会员管理', 'menu-icon fa fa-caret-right', '1', '1', '', '1', '2', '');

-- ----------------------------
-- Table structure for `qw_member`
-- ----------------------------
DROP TABLE IF EXISTS `qw_member`;
CREATE TABLE `qw_member` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(120) DEFAULT NULL COMMENT '信微ID',
  `headimgurl` varchar(255) DEFAULT NULL COMMENT '信微头像',
  `user` varchar(225) NOT NULL,
  `head` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex` tinyint(1) DEFAULT NULL COMMENT '0保密1男，2女',
  `birthday` int(10) DEFAULT NULL COMMENT '生日',
  `phone` varchar(20) NOT NULL COMMENT '电话',
  `qq` varchar(20) DEFAULT NULL COMMENT 'QQ',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `password` varchar(32) NOT NULL,
  `t` int(10) unsigned NOT NULL COMMENT '注册时间',
  `identifier` varchar(32) DEFAULT NULL,
  `token` varchar(32) DEFAULT NULL,
  `salt` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qw_member
-- ----------------------------
INSERT INTO `qw_member` VALUES ('1', '', '', 'admin', '/Public/attached/201601/1453389194.png', '1', '1420128000', '13800138000', '331349451', 'xieyanwei@qq.com', '66d6a1c8748025462128dc75bf5ae8d1', '1490075084', 'adde64a958dfeb865d2601612644c3f0', 'a48001a4ea31c146abf8b8c3e3129e88', '6vfvc47ubF');

-- ----------------------------
-- Table structure for `qw_setting`
-- ----------------------------
DROP TABLE IF EXISTS `qw_setting`;
CREATE TABLE `qw_setting` (
  `k` varchar(100) NOT NULL COMMENT '变量',
  `v` varchar(255) NOT NULL COMMENT '值',
  `type` tinyint(1) NOT NULL COMMENT '0系统，1自定义',
  `name` varchar(255) NOT NULL COMMENT '说明',
  PRIMARY KEY (`k`),
  KEY `k` (`k`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qw_setting
-- ----------------------------
INSERT INTO `qw_setting` VALUES ('sitename', '', '0', '');
INSERT INTO `qw_setting` VALUES ('title', '网站后台管理', '0', '');
INSERT INTO `qw_setting` VALUES ('keywords', '', '0', '');
INSERT INTO `qw_setting` VALUES ('description', '', '0', '');
INSERT INTO `qw_setting` VALUES ('footer', '', '0', '');
INSERT INTO `qw_setting` VALUES ('appID', 'wx977a202385225d6b', '1', 'appID');
INSERT INTO `qw_setting` VALUES ('appSecret', '85de648d41112463401adde4e13b8335', '1', 'appSecret');
INSERT INTO `qw_setting` VALUES ('sms_name', 'sms_name', '1', '短信账号');
INSERT INTO `qw_setting` VALUES ('sms_pwd', 'sms_pwd', '1', '短信密码');

-- ----------------------------
-- Table structure for `qw_xcxsw_guanzhu`
-- ----------------------------
DROP TABLE IF EXISTS `qw_xcxsw_guanzhu`;
CREATE TABLE `qw_xcxsw_guanzhu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vid` int(11) NOT NULL,
  `openid` varchar(150) CHARACTER SET utf8 NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `uname` varchar(150) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1193 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qw_xcxsw_guanzhu
-- ----------------------------
INSERT INTO `qw_xcxsw_guanzhu` VALUES ('1190', '472', 'oQ2Mu6YseVJSc8roaUYAlcz_OF9s', 'http://localhost/swzl/Public/attached/image/xiaowei.jpg', '游客', '1569078885');
INSERT INTO `qw_xcxsw_guanzhu` VALUES ('1191', '473', 'oQ2Mu6YseVJSc8roaUYAlcz_OF9s', 'http://localhost/swzl/Public/attached/image/xiaowei.jpg', '游客', '1569126334');
INSERT INTO `qw_xcxsw_guanzhu` VALUES ('1192', '474', 'oQ2Mu6YseVJSc8roaUYAlcz_OF9s', 'http://localhost/swzl/Public/attached/image/xiaowei.jpg', '游客', '1569126284');

-- ----------------------------
-- Table structure for `qw_xcxsw_list`
-- ----------------------------
DROP TABLE IF EXISTS `qw_xcxsw_list`;
CREATE TABLE `qw_xcxsw_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '程序小失物认领',
  `openid` varchar(120) NOT NULL,
  `rid` int(11) NOT NULL DEFAULT '0' COMMENT '0为丢东西,1为捡到东西',
  `photo` varchar(255) DEFAULT '0' COMMENT '品物图片',
  `content` text NOT NULL COMMENT '品物描述',
  `display` int(11) NOT NULL DEFAULT '0',
  `plnum` varchar(20) DEFAULT NULL,
  `lat` varchar(100) NOT NULL,
  `long` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL,
  `datetime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=475 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qw_xcxsw_list
-- ----------------------------
INSERT INTO `qw_xcxsw_list` VALUES ('474', 'oQ2Mu6YseVJSc8roaUYAlcz_OF9s', '0', 'Uploads/XcX/2019-09-22/5d86f655de379.jpg', '今天中午在食堂门口不小心把我新买的金士顿u盘丢下了，麻烦哪位兄弟姐妹看见了联系我下！', '0', '1', '30.65984', '104.10194', '四川省成都市成华区双林路196号', '1569125973');
INSERT INTO `qw_xcxsw_list` VALUES ('473', 'oQ2Mu6YseVJSc8roaUYAlcz_OF9s', '0', 'Uploads/XcX/2019-09-21/5d864225c9ce8.jpg', '我的苹果se手机掉了，谁捡到了？', '0', '1', '30.65984', '104.10194', '四川省成都市成华区双林路196号', '1569079845');

-- ----------------------------
-- Table structure for `qw_xcxsw_message`
-- ----------------------------
DROP TABLE IF EXISTS `qw_xcxsw_message`;
CREATE TABLE `qw_xcxsw_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vid` int(11) NOT NULL,
  `openid` varchar(150) CHARACTER SET utf8 NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `uname` varchar(150) NOT NULL,
  `content` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qw_xcxsw_message
-- ----------------------------
INSERT INTO `qw_xcxsw_message` VALUES ('153', '474', 'oQ2Mu6YseVJSc8roaUYAlcz_OF9s', 'http://localhost/swzl/Public/attached/image/xiaowei.jpg', '小薇', '我比较急，里面还保存了课件资料', '1569126299');
INSERT INTO `qw_xcxsw_message` VALUES ('154', '473', 'oQ2Mu6YseVJSc8roaUYAlcz_OF9s', 'http://localhost/swzl/Public/attached/image/xiaowei.jpg', '小薇', '捡到联系我，重金酬谢', '1569126375');

-- ----------------------------
-- Table structure for `qw_xcxsw_user`
-- ----------------------------
DROP TABLE IF EXISTS `qw_xcxsw_user`;
CREATE TABLE `qw_xcxsw_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(120) NOT NULL,
  `genDer` int(11) NOT NULL,
  `wxname` varchar(150) NOT NULL,
  `tel` varchar(11) NOT NULL,
  `headimgurl` text NOT NULL,
  `disuid` int(2) NOT NULL DEFAULT '0',
  `dateline` int(11) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qw_xcxsw_user
-- ----------------------------
INSERT INTO `qw_xcxsw_user` VALUES ('57', 'oQ2Mu6YseVJSc8roaUYAlcz_OF9s', '1', '小薇', '13688886666', 'http://localhost/swzl/Public/attached/image/xiaowei.jpg', '0', '1569079661');
