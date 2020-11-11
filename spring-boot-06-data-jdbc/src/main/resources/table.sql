/*
Navicat MySQL Data Transfer

Source Server         : zhang
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : millet

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2020-11-03 11:51:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id` varchar(50) NOT NULL COMMENT '图片id',
  `image_url` varchar(255) DEFAULT '' COMMENT '图片url',
  `created_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `created_id` bigint(20) DEFAULT NULL COMMENT '创建用户id',
  `created_name` varchar(255) DEFAULT NULL COMMENT '创建用户名称',
  `updated_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `updated_id` bigint(20) DEFAULT NULL COMMENT '更新用户id',
  `updated_name` varchar(255) DEFAULT NULL COMMENT '更新用户名称',
  `logic_delete` int(11) unsigned zerofill DEFAULT NULL COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES ('11', 'https://dss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2534506313,1688529724&fm=26&gp=0.jpg', '2020-10-28 17:27:08', null, null, '2020-10-28 17:27:08', null, null, '00000000000');
INSERT INTO `banner` VALUES ('12', 'https://dss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3892521478,1695688217&fm=26&gp=0.jpg', '2020-10-28 17:27:08', null, null, '2020-10-28 17:27:08', null, null, '00000000000');
INSERT INTO `banner` VALUES ('13', 'https://dss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1593106255,4245861836&fm=26&gp=0.jpg', '2020-10-28 17:27:09', null, null, '2020-10-28 17:27:09', null, null, '00000000000');
INSERT INTO `banner` VALUES ('14', 'https://dss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1689053532,4230915864&fm=26&gp=0.jpg', '2020-10-28 17:27:10', null, null, '2020-10-28 17:27:10', null, null, '00000000000');

-- ----------------------------
-- Table structure for merchant
-- ----------------------------
DROP TABLE IF EXISTS `merchant`;
CREATE TABLE `merchant` (
  `id` varchar(50) NOT NULL COMMENT '商户id',
  `merchant_name` varchar(255) DEFAULT '' COMMENT '商户名称',
  `merchant_logo` varchar(255) DEFAULT '' COMMENT '商户头像',
  `city` varchar(255) DEFAULT NULL COMMENT '商户所在城市',
  `location` varchar(255) DEFAULT NULL COMMENT '商户地址',
  `scale` varchar(255) DEFAULT NULL COMMENT '商户规模',
  `establish_time` datetime DEFAULT NULL COMMENT '成立时间',
  `nature` varchar(255) DEFAULT NULL COMMENT '商户性质',
  `funds` varchar(255) DEFAULT NULL COMMENT '商户注册资金',
  `merchant_range` varchar(255) DEFAULT NULL COMMENT '商户经营范围',
  `created_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `created_id` bigint(20) DEFAULT NULL COMMENT '创建用户id',
  `created_name` varchar(255) DEFAULT NULL COMMENT '创建用户名称',
  `updated_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `updated_id` bigint(20) DEFAULT NULL COMMENT '更新用户id',
  `updated_name` varchar(255) DEFAULT NULL COMMENT '更新用户名称',
  `logic_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of merchant
-- ----------------------------
INSERT INTO `merchant` VALUES ('11', '如意馄饨', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3484285671,3988413062&fm=26&gp=0.jpg', '苏州', '苏州凯马广场', '10人', '2020-10-28 10:37:47', '私营', '100万', '面条，馄饨，水饺...', '2020-10-28 17:23:59', null, null, '2020-10-28 17:23:59', null, null, '0');
INSERT INTO `merchant` VALUES ('12', '肯德基', 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3170817482,3417439457&fm=26&gp=0.jpg', '苏州', '苏州凯马广场', '20人', '2020-10-28 10:39:02', '私营', '100万', '吮指原味鸡', '2020-10-28 17:24:01', null, null, '2020-10-28 17:24:01', null, null, '0');
INSERT INTO `merchant` VALUES ('13', '丰田汽车', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2322620529,3317063633&fm=26&gp=0.jpg', '苏州', '苏州凯马广场', '100人', '2020-10-14 10:39:04', '私营', '100万', '卡罗拉，凯美瑞', '2020-10-28 17:24:01', null, null, '2020-10-28 17:24:01', null, null, '0');
INSERT INTO `merchant` VALUES ('14', '同程旅游', 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2860165682,2651126009&fm=26&gp=0.jpg', '苏州', '苏州凯马广场', '10000+人', '2020-10-13 10:39:07', '私营', '100万', '旅游，度假', '2020-10-28 17:24:02', null, null, '2020-10-28 17:24:02', null, null, '0');

-- ----------------------------
-- Table structure for merchant_picture
-- ----------------------------
DROP TABLE IF EXISTS `merchant_picture`;
CREATE TABLE `merchant_picture` (
  `id` varchar(11) NOT NULL COMMENT '商户图片id',
  `merchant_id` varchar(11) DEFAULT NULL COMMENT '商户id',
  `picture` varchar(255) DEFAULT NULL COMMENT '商户图片',
  `created_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `created_id` bigint(20) DEFAULT NULL COMMENT '创建用户id',
  `created_name` varchar(255) DEFAULT NULL COMMENT '创建用户名称',
  `updated_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `updated_id` bigint(20) DEFAULT NULL COMMENT '更新用户id',
  `updated_name` varchar(255) DEFAULT NULL COMMENT '更新用户名称',
  `logic_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of merchant_picture
-- ----------------------------
INSERT INTO `merchant_picture` VALUES ('11', '11', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1603863127051&di=654038392b9653292f30b52302eb8fd9&imgtype=0&src=http%3A%2F%2Fm.news.89178.com%2Fupload%2Farticle%2F20140704%2F58907003871404464440.jpg', '2020-10-28 17:24:31', null, null, '2020-10-28 17:24:31', null, null, '0');
INSERT INTO `merchant_picture` VALUES ('12', '11', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1603863183182&di=f1a91d0b5bce9292cc14899517aa0bc1&imgtype=0&src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fimages%2F20170901%2F05cf069303ba4898a1f57a38bdf2f662.jpeg', '2020-10-28 17:24:32', null, null, '2020-10-28 17:24:32', null, null, '0');
INSERT INTO `merchant_picture` VALUES ('13', '11', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3588987418,3011749534&fm=26&gp=0.jpg', '2020-10-28 17:24:32', null, null, '2020-10-28 17:24:32', null, null, '0');
INSERT INTO `merchant_picture` VALUES ('14', '12', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1603863241368&di=41ff3817bd8073b7eeaeac9ec2c56036&imgtype=0&src=http%3A%2F%2Fuploads.qj.com.cn%2Fimage2017%2F20170909%2F1504927368795069317.jpg', '2020-10-28 17:24:33', null, null, '2020-10-28 17:24:33', null, null, '0');
INSERT INTO `merchant_picture` VALUES ('15', '12', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=297395008,3732625364&fm=26&gp=0.jpg', '2020-10-28 17:24:33', null, null, '2020-10-28 17:24:33', null, null, '0');
INSERT INTO `merchant_picture` VALUES ('16', '13', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1202077559,521790360&fm=26&gp=0.jpg', '2020-10-28 17:24:34', null, null, '2020-10-28 17:24:34', null, null, '0');
INSERT INTO `merchant_picture` VALUES ('17', '13', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1603863301734&di=9daa1d71a8b66801677615cc5fe306c3&imgtype=0&src=http%3A%2F%2Fimg.cheshi-img.com%2Fproduct%2F1_1024%2F996%2F4b317016e0790.jpg', '2020-10-28 17:24:35', null, null, '2020-10-28 17:24:35', null, null, '0');
INSERT INTO `merchant_picture` VALUES ('18', '13', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1603863301730&di=ecbb6319fdb9484fd1617552a0881f7b&imgtype=0&src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fimages%2F20180116%2F3cd7ba41f81944d7b8eb57492e38ed5b.jpeg', '2020-10-28 17:24:36', null, null, '2020-10-28 17:24:36', null, null, '0');
INSERT INTO `merchant_picture` VALUES ('19', '14', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1603863387392&di=5e15f161fa1b7681aee0bdc7f6040895&imgtype=0&src=http%3A%2F%2Fimg.mp.itc.cn%2Fupload%2F20161009%2F03b49ce3ea7745aaa95e423ecac8e5b4_th.jpg', '2020-10-29 14:20:42', null, null, '2020-10-29 14:20:42', null, null, '0');

-- ----------------------------
-- Table structure for merchant_task
-- ----------------------------
DROP TABLE IF EXISTS `merchant_task`;
CREATE TABLE `merchant_task` (
  `id` varchar(50) NOT NULL COMMENT '任务id',
  `merchant_id` varchar(50) NOT NULL COMMENT '商户id',
  `task_name` varchar(255) DEFAULT '' COMMENT '任务名称',
  `task_location` varchar(255) DEFAULT NULL COMMENT '任务地址',
  `task_desc` varchar(255) DEFAULT '' COMMENT '任务描述',
  `unit_price` float(10,2) DEFAULT NULL COMMENT '单价',
  `created_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `created_id` bigint(20) DEFAULT NULL COMMENT '创建用户id',
  `created_name` varchar(255) DEFAULT NULL COMMENT '创建用户名称',
  `updated_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `updated_id` bigint(20) DEFAULT NULL COMMENT '更新用户id',
  `updated_name` varchar(255) DEFAULT NULL COMMENT '更新用户名称',
  `logic_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  PRIMARY KEY (`id`,`merchant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of merchant_task
-- ----------------------------
INSERT INTO `merchant_task` VALUES ('11', '11', '一碗馄饨', '苏州', '有一批货需要从园区运输到吴江区，货物不多，差不多只有一吨左右，是一些瓜果蔬菜，所以需要当天送达，有意向的司机可以报名，要求自己有车，当日结算费用，最好是有招商银行…  ', '10.00', '2020-10-29 17:13:38', null, null, '2020-10-29 17:13:38', null, null, '0');
INSERT INTO `merchant_task` VALUES ('12', '11', '联网馄饨', '南通', '两碗馄饨的日子', '30.00', '2020-10-29 11:49:47', null, null, '2020-10-29 11:49:47', null, null, '0');
INSERT INTO `merchant_task` VALUES ('13', '12', '吮指原味鸡', '苏州', '原味鸡的味道', '30.00', '2020-10-29 11:49:51', null, null, '2020-10-29 11:49:51', null, null, '0');
INSERT INTO `merchant_task` VALUES ('14', '13', '卡罗拉', '杭州', '车到山前必有路', '180000.00', '2020-10-29 11:49:58', null, null, '2020-10-29 11:49:58', null, null, '0');
INSERT INTO `merchant_task` VALUES ('15', '13', '雷林', '上海', '车到山前必有路', '150000.00', '2020-10-29 11:50:02', null, null, '2020-10-29 11:50:02', null, null, '0');

-- ----------------------------
-- Table structure for merchant_task_picture
-- ----------------------------
DROP TABLE IF EXISTS `merchant_task_picture`;
CREATE TABLE `merchant_task_picture` (
  `id` varchar(11) NOT NULL COMMENT '商户图片id',
  `task_id` varchar(11) DEFAULT NULL COMMENT '商户id',
  `picture` varchar(255) DEFAULT NULL COMMENT '商户图片',
  `created_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `created_id` bigint(20) DEFAULT NULL COMMENT '创建用户id',
  `created_name` varchar(255) DEFAULT NULL COMMENT '创建用户名称',
  `updated_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `updated_id` bigint(20) DEFAULT NULL COMMENT '更新用户id',
  `updated_name` varchar(255) DEFAULT NULL COMMENT '更新用户名称',
  `logic_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of merchant_task_picture
-- ----------------------------
INSERT INTO `merchant_task_picture` VALUES ('11', '11', 'https://dss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3017084119,3290537556&fm=26&gp=0.jpg', '2020-10-29 16:08:08', null, null, '2020-10-29 16:08:08', null, null, '0');
INSERT INTO `merchant_task_picture` VALUES ('12', '11', 'https://dss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1352640652,935170192&fm=26&gp=0.jpg', '2020-10-29 16:09:20', null, null, '2020-10-29 16:09:20', null, null, '0');
INSERT INTO `merchant_task_picture` VALUES ('13', '11', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=867026591,4282317423&fm=26&gp=0.jpg', '2020-10-29 16:09:35', null, null, '2020-10-29 16:09:35', null, null, '0');
INSERT INTO `merchant_task_picture` VALUES ('14', '12', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=867026591,4282317423&fm=26&gp=0.jpg', '2020-10-29 16:09:47', null, null, '2020-10-29 16:09:47', null, null, '0');
INSERT INTO `merchant_task_picture` VALUES ('15', '12', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2345006326,1806794284&fm=26&gp=0.jpg', '2020-10-29 16:10:00', null, null, '2020-10-29 16:10:00', null, null, '0');
INSERT INTO `merchant_task_picture` VALUES ('16', '13', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1202077559,521790360&fm=26&gp=0.jpg', '2020-10-28 17:24:34', null, null, '2020-10-28 17:24:34', null, null, '0');
INSERT INTO `merchant_task_picture` VALUES ('17', '13', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1603863301734&di=9daa1d71a8b66801677615cc5fe306c3&imgtype=0&src=http%3A%2F%2Fimg.cheshi-img.com%2Fproduct%2F1_1024%2F996%2F4b317016e0790.jpg', '2020-10-28 17:24:35', null, null, '2020-10-28 17:24:35', null, null, '0');
INSERT INTO `merchant_task_picture` VALUES ('18', '13', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1603863301730&di=ecbb6319fdb9484fd1617552a0881f7b&imgtype=0&src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fimages%2F20180116%2F3cd7ba41f81944d7b8eb57492e38ed5b.jpeg', '2020-10-28 17:24:36', null, null, '2020-10-28 17:24:36', null, null, '0');
INSERT INTO `merchant_task_picture` VALUES ('19', '14', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1202077559,521790360&fm=26&gp=0.jpg', '2020-10-30 14:05:58', null, null, '2020-10-30 14:05:58', null, null, '0');
INSERT INTO `merchant_task_picture` VALUES ('20', '15', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1202077559,521790360&fm=26&gp=0.jpg', '2020-10-30 14:06:01', null, null, '2020-10-30 14:06:01', null, null, '0');
INSERT INTO `merchant_task_picture` VALUES ('21', '14', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1603863301734&di=9daa1d71a8b66801677615cc5fe306c3&imgtype=0&src=http%3A%2F%2Fimg.cheshi-img.com%2Fproduct%2F1_1024%2F996%2F4b317016e0790.jpg', '2020-10-30 14:06:53', null, null, '2020-10-30 14:06:53', null, null, '0');
INSERT INTO `merchant_task_picture` VALUES ('22', '14', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1603863301730&di=ecbb6319fdb9484fd1617552a0881f7b&imgtype=0&src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fimages%2F20180116%2F3cd7ba41f81944d7b8eb57492e38ed5b.jpeg', '2020-10-28 17:24:36', null, null, '2020-10-28 17:24:36', null, null, '0');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(255) NOT NULL COMMENT 'id',
  `name` varchar(255) DEFAULT NULL COMMENT '用户名称',
  `sex` int(11) DEFAULT NULL COMMENT '用户性别 1：男 2：女',
  `mobile` varchar(255) DEFAULT NULL COMMENT '手机号码',
  `pass_word` varchar(255) DEFAULT NULL COMMENT '密码',
  `created_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `created_id` bigint(20) DEFAULT NULL COMMENT '创建用户id',
  `created_name` varchar(255) DEFAULT NULL COMMENT '创建用户名称',
  `updated_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `updated_id` bigint(20) DEFAULT NULL COMMENT '更新用户id',
  `updated_name` varchar(255) DEFAULT NULL COMMENT '更新用户名称',
  `logic_delete` int(11) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1318479915886223361', 'name', '2', '13142667571', '123456', '2020-10-28 17:24:57', null, null, '2020-10-28 17:24:57', null, null, '0');
INSERT INTO `user` VALUES ('1318750093639315457', '张生', '1', '13142667577', '12345678', '2020-10-21 03:04:58', null, null, null, null, null, '0');
INSERT INTO `user` VALUES ('1319168416751534081', '张生', '1', '13142668611', '123456', '2020-10-23 15:48:54', null, null, '2020-10-23 15:48:54', null, null, '0');
INSERT INTO `user` VALUES ('1319546084332347393', '张的啊', '0', '1314266816', '987654', '2020-10-23 07:47:57', null, null, null, null, null, '0');
INSERT INTO `user` VALUES ('1319546498108825601', '着急', '0', '123466796', '123', '2020-10-23 07:49:36', null, null, null, null, null, '0');
INSERT INTO `user` VALUES ('1319546789675868162', '着急', '0', '1234667961', '123', '2020-10-23 07:50:45', null, null, null, null, null, '0');
INSERT INTO `user` VALUES ('1319547916983148546', '张银磊', '0', '1312312325', '12334', '2020-10-23 07:55:14', null, null, null, null, null, '0');
INSERT INTO `user` VALUES ('1319548273180221441', '张银磊', '0', '12345670880', '123', '2020-10-23 07:56:39', null, null, null, null, null, '0');
INSERT INTO `user` VALUES ('1319549798229155841', '855', '0', '123456', '1233', '2020-10-23 08:02:43', null, null, null, null, null, '0');
INSERT INTO `user` VALUES ('1319550471008100353', '1', '0', '1', '1', '2020-10-23 08:05:23', null, null, null, null, null, '0');
INSERT INTO `user` VALUES ('1319550526750400514', '2', '0', '2', '2', '2020-10-23 08:05:36', null, null, null, null, null, '0');
INSERT INTO `user` VALUES ('1319550931618177027', '3', '0', '3', '3', '2020-10-28 14:37:24', null, null, '2020-10-28 14:37:24', null, null, '0');
