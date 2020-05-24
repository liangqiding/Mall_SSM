/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : boot_crm

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-06-14 08:47:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `base_dict`
-- ----------------------------
DROP TABLE IF EXISTS `base_dict`;
CREATE TABLE `base_dict` (
  `dict_id` varchar(32) NOT NULL COMMENT '数据字典id(主键)',
  `dict_type_code` varchar(10) NOT NULL COMMENT '数据字典类别代码',
  `dict_type_name` varchar(50) NOT NULL COMMENT '数据字典类别名称',
  `dict_item_name` varchar(50) NOT NULL COMMENT '数据字典项目名称',
  `dict_item_code` varchar(10) DEFAULT NULL COMMENT '数据字典项目代码(可为空)',
  `dict_sort` int(10) DEFAULT NULL COMMENT '排序字段',
  `dict_enable` char(1) NOT NULL COMMENT '1:使用 0:停用',
  `dict_memo` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_dict
-- ----------------------------
INSERT INTO `base_dict` VALUES ('1', '001', '商品类别', '服装', null, '1', '1', null);
INSERT INTO `base_dict` VALUES ('2', '001', '商品类别', '零食', null, '2', '1', null);
INSERT INTO `base_dict` VALUES ('21', '006', '商品状态', '缺货', null, '4', '1', null);
INSERT INTO `base_dict` VALUES ('22', '006', '商品状态', '销售中', null, '1', '1', null);
INSERT INTO `base_dict` VALUES ('23', '006', '商品状态', '未销售', null, '2', '1', null);
INSERT INTO `base_dict` VALUES ('3', '001', '商品类别', '手机', null, '3', '1', null);
INSERT INTO `base_dict` VALUES ('4', '001', '商品类别', '电脑', null, '4', '1', null);
INSERT INTO `base_dict` VALUES ('5', '001', '商品类别', '鞋子', null, '5', '1', null);
INSERT INTO `base_dict` VALUES ('6', '002', '促销状态', '买一送一', null, '1', '1', null);
INSERT INTO `base_dict` VALUES ('7', '002', '促销状态', '全场5折', null, '2', '1', null);
INSERT INTO `base_dict` VALUES ('8', '002', '促销状态', '限时秒杀', null, '3', '1', null);

-- ----------------------------
-- Table structure for `customer`
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `s_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '客户编号(主键)',
  `s_name` varchar(50) NOT NULL COMMENT '客户名称',
  `s_user_id` int(32) DEFAULT NULL COMMENT '负责人id',
  `s_create_id` int(32) DEFAULT NULL COMMENT '创建人id',
  `s_supplier` varchar(50) DEFAULT NULL COMMENT '客户信息来源',
  `s_class` varchar(50) DEFAULT NULL COMMENT '客户所属行业',
  `s_state` varchar(32) DEFAULT NULL COMMENT '客户级别',
  `s_linkman` varchar(50) DEFAULT NULL COMMENT '备注',
  `s_xsum` int(32) DEFAULT NULL COMMENT '固定电话',
  `s_ksum` int(32) DEFAULT NULL COMMENT '移动电话',
  `s_price` int(32) DEFAULT NULL COMMENT '邮政编码',
  `cust_address` varchar(100) DEFAULT NULL COMMENT '联系地址',
  `cust_createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `img` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('1', '商品1a', null, '1', '6', '1', '23', '一个人', '0', '1000', '100', '奥德晒', '2019-06-11 14:18:18', 'upload/54e0c94c43c445f9bc5ec543d3977cad.png');
INSERT INTO `customer` VALUES ('2', '商品a', null, '1', '6', '2', '23', '1', '0', '100', '2000', 'bb', '2019-06-11 14:18:56', 'upload/l.png');
INSERT INTO `customer` VALUES ('3', '商品b', null, '1', '6', '2', '23', '0', '0', '100', '222', '商品', '2019-06-11 14:29:17', 'upload/l.png');
INSERT INTO `customer` VALUES ('4', '商品C', null, '1', '6', '4', '23', '0', '0', '1000', '100', '商品商品商品商品商品商品商品商品商品商品商品商品商品', '2019-06-11 14:29:49', 'upload/d.png');
INSERT INTO `customer` VALUES ('5', '商品D', null, '1', '6', '3', '23', '0', '0', '1000', '100', '商品商品商品商品商品商品商品商品商品商品商品商品商品', '2019-06-11 14:30:17', 'upload/s.png');
INSERT INTO `customer` VALUES ('6', '商品E', null, '1', '6', '5', '23', '0', '0', '1000', '100', '商品商品商品商品商品', '2019-06-11 15:55:59', 'upload/x.png');
INSERT INTO `customer` VALUES ('7', '商品F', null, '1', '7', '1', '23', '0', '0', '1000', '100', '商品商品商品商品商品商品', '2019-06-11 15:56:21', 'upload/f.png');
INSERT INTO `customer` VALUES ('8', '商品K', null, '1', '7', '2', '23', '0', '0', '1000', '1000', '商品商品商品商品商品商品商品', '2019-06-11 15:57:22', 'upload/l.png');
INSERT INTO `customer` VALUES ('9', '商品Q', null, '1', '6', '3', '23', '0', '0', '1000', '100', '商品商品商品商品商品', '2019-06-11 15:57:39', 'upload/s.png');
INSERT INTO `customer` VALUES ('10', '商品', null, '1', '6', '1', '23', '0', '0', '1000', '200', '200', '2019-06-11 15:57:54', 'upload/f.png');
INSERT INTO `customer` VALUES ('11', '商品', null, '1', '6', '1', '23', '0', '0', '1000', '10011', '商品商品', '2019-06-11 15:58:11', 'upload/f.png');
INSERT INTO `customer` VALUES ('12', '商品商品', null, '1', '7', '2', '23', '0', '0', '1000', '100', '商品商品商品', '2019-06-11 15:58:28', 'upload/l.png');
INSERT INTO `customer` VALUES ('13', '商品P', '1', '1', '6', '1', '23', '0', '0', '1000', '100', 'asdaasdadas', null, 'upload/f.png');
INSERT INTO `customer` VALUES ('14', '商品P', '1', '1', '6', '1', '23', '0', '0', '1000', '100', 'asdaasdadas', null, 'upload/f.png');
INSERT INTO `customer` VALUES ('15', '商品P', '1', '1', '6', '1', '23', '0', '0', '1000', '100', 'asdaasdadas', null, 'upload/f.png');
INSERT INTO `customer` VALUES ('16', '商品P', '1', '1', '6', '1', '23', '0', '0', '1000', '100', 'asdaasdadas', null, 'upload/f.png');
INSERT INTO `customer` VALUES ('17', '商品P', '1', '1', '6', '1', '23', '0', '0', '1000', '100', 'asdaasdadas', null, 'upload/f.png');
INSERT INTO `customer` VALUES ('18', '商品P', '1', '1', '6', '1', '23', '0', '0', '1000', '100', 'asdaasdadas', null, 'upload/f.png');
INSERT INTO `customer` VALUES ('19', '商品P', '1', '1', '6', '1', '23', '0', '0', '1000', '100', 'asdaasdadas', null, 'upload/f.png');
INSERT INTO `customer` VALUES ('20', '商品P', '1', '1', '6', '1', '23', '0', '0', '1000', '100', 'asdaasdadas', null, 'upload/f.png');
INSERT INTO `customer` VALUES ('29', '商品P', '1', '1', '6', '1', '23', '0', '0', '1000', '100', 'asdaasdadas', null, 'upload/f.png');
INSERT INTO `customer` VALUES ('43', '商品P', '1', '1', '6', '2', '23', '0', '0', '1000', '100', 'asdaasdadas', null, 'upload/l.png');
INSERT INTO `customer` VALUES ('44', '商品P', '1', '1', '6', '2', '23', '0', '0', '1000', '100', 'asdaasdadas', null, 'upload/l.png');
INSERT INTO `customer` VALUES ('45', '商品P', '1', '1', '6', '3', '23', '0', '0', '1000', '100', 'asdaasdadas', null, 'upload/s.png');
INSERT INTO `customer` VALUES ('46', '商品P', '1', '1', '6', '3', '23', '0', '0', '1000', '100', 'asdaasdadas', null, 'upload/s.png');
INSERT INTO `customer` VALUES ('47', '商品P', '1', '1', '6', '4', '23', '0', '0', '1000', '100', 'asdaasdadas', null, 'upload/d.png');
INSERT INTO `customer` VALUES ('48', '商品P', '1', '1', '6', '4', '23', '0', '0', '1000', '100', 'asdaasdadas', null, 'upload/d.png');
INSERT INTO `customer` VALUES ('49', '商品P', '1', '1', '6', '5', '23', '0', '0', '1000', '100', 'asdaasdadas', null, 'upload/x.png');
INSERT INTO `customer` VALUES ('50', '商品P', '1', '1', '6', '5', '23', '0', '0', '1000', '100', 'asdaasdadas', null, 'upload/x.png');
INSERT INTO `customer` VALUES ('51', '商品P', '1', '1', '6', '5', '23', '0', '0', '1000', '100', 'asdaasdadas', null, 'upload/x.png');
INSERT INTO `customer` VALUES ('52', '商品P', '1', '1', '6', '5', '23', '0', '0', '1000', '100', 'asdaasdadas', null, 'upload/x.png');
INSERT INTO `customer` VALUES ('53', '商品P', '1', '1', '6', '5', '23', '0', '0', '1000', '100', 'asdaasdadas', null, 'upload/x.png');
INSERT INTO `customer` VALUES ('54', '商品P', '1', '1', '6', '5', '23', '0', '0', '1000', '100', 'asdaasdadas', null, 'upload/x.png');
INSERT INTO `customer` VALUES ('55', '商品P', '1', '1', '7', '5', '23', '0', '0', '1000', '100', 'asdaasdadas', null, 'upload/x.png');
INSERT INTO `customer` VALUES ('56', '商品P', '1', '1', '7', '5', '23', '0', '0', '1000', '100', 'asdaasdadas', null, 'upload/x.png');
INSERT INTO `customer` VALUES ('57', '商品P', '1', '1', '7', '5', '23', '0', '0', '1000', '100', 'asdaasdadas', null, 'upload/x.png');
INSERT INTO `customer` VALUES ('58', '商品P', '1', '1', '7', '5', '23', '0', '0', '1000', '100', 'asdaasdadas', null, 'upload/x.png');
INSERT INTO `customer` VALUES ('59', '商品P', '1', '1', '7', '5', '23', '0', '0', '1000', '100', 'asdaasdadas', null, 'upload/x.png');
INSERT INTO `customer` VALUES ('60', '商品P', '1', '1', '7', '5', '23', '0', '0', '1000', '100', 'asdaasdadas', null, 'upload/x.png');
INSERT INTO `customer` VALUES ('61', '商品P', '1', '1', '7', '5', '23', '0', '0', '1000', '100', 'asdaasdadas', null, 'upload/x.png');
INSERT INTO `customer` VALUES ('62', '商品P', '1', '1', '7', '5', '23', '0', '0', '1000', '100', 'asdaasdadas', null, 'upload/x.png');
INSERT INTO `customer` VALUES ('63', '商品P', '1', '1', '7', '5', '23', '0', '0', '1000', '100', 'asdaasdadas', null, 'upload/x.png');
INSERT INTO `customer` VALUES ('64', '商品P', '1', '1', '7', '5', '23', '0', '0', '1000', '100', 'asdaasdadas', null, 'upload/x.png');
INSERT INTO `customer` VALUES ('65', '商品P', '1', '1', '7', '5', '23', '0', '0', '1000', '100', 'asdaasdadas', null, 'upload/x.png');
INSERT INTO `customer` VALUES ('66', '商品P', '1', '1', '7', '5', '23', '0', '0', '1000', '100', 'asdaasdadas', null, 'upload/x.png');
INSERT INTO `customer` VALUES ('71', '手机', null, '1', '8', '4', '23', '咕咕咕', '0', '100', '100', '阿斯达', '2019-06-13 15:21:18', 'upload/c8fa91f2528346c5b386c6ae1ba86512.png');
INSERT INTO `customer` VALUES ('72', '阿斯达', null, '1', '8', '2', '23', '', '0', '111', '111', '阿萨斯多', '2019-06-13 16:13:48', 'upload/ec34ba1201644706a31f8d74257228f6.png');
INSERT INTO `customer` VALUES ('73', '商品', null, '1', '8', '1', '23', '', '0', '100', '1000', '是的阿斯达', '2019-06-13 18:21:23', 'upload/54e0c94c43c445f9bc5ec543d3977cad.png');
INSERT INTO `customer` VALUES ('74', '硕大', null, '1', '8', '4', '23', '', '0', '100', '100', '硕大', '2019-06-14 07:39:51', 'upload/28ede648c7c44041b21491195f620a03.png');

-- ----------------------------
-- Table structure for `i_img`
-- ----------------------------
DROP TABLE IF EXISTS `i_img`;
CREATE TABLE `i_img` (
  `i_id` int(32) NOT NULL AUTO_INCREMENT,
  `i_data` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`i_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of i_img
-- ----------------------------
INSERT INTO `i_img` VALUES ('1', 'upload/28ede648c7c44041b21491195f620a03.png');

-- ----------------------------
-- Table structure for `m_user`
-- ----------------------------
DROP TABLE IF EXISTS `m_user`;
CREATE TABLE `m_user` (
  `id` int(32) NOT NULL,
  `m_code` int(32) DEFAULT NULL,
  `m_password` int(32) DEFAULT NULL,
  `m_name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of m_user
-- ----------------------------

-- ----------------------------
-- Table structure for `o_order`
-- ----------------------------
DROP TABLE IF EXISTS `o_order`;
CREATE TABLE `o_order` (
  `o_id` int(32) NOT NULL AUTO_INCREMENT,
  `o_uid` int(32) DEFAULT NULL,
  `o_cid` int(32) DEFAULT NULL,
  `o_cnum` int(32) DEFAULT NULL,
  `o_price` int(64) DEFAULT NULL,
  `o_state` varchar(32) DEFAULT NULL,
  `o_address` varchar(64) DEFAULT NULL,
  `o_name` varchar(32) DEFAULT NULL,
  `o_data` int(32) DEFAULT NULL,
  `o_sum` int(32) DEFAULT NULL,
  `o_mid` int(32) DEFAULT NULL,
  PRIMARY KEY (`o_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of o_order
-- ----------------------------
INSERT INTO `o_order` VALUES ('14', '1', '2', '10', '2000', '未发货', '暗示的啊', '商品a', null, '20000', '4');
INSERT INTO `o_order` VALUES ('15', '1', '2', '10', '2000', '未发货', '敖德萨暗地', '商品a', null, '20000', '1');
INSERT INTO `o_order` VALUES ('16', '1', '3', '20', '222', '未发货', '阿斯达啊', '商品b', null, '4440', '1');
INSERT INTO `o_order` VALUES ('17', '1', '2', '10', '2000', '未发货', '广科', '商品a', null, '20000', '1');
INSERT INTO `o_order` VALUES ('18', '1', '2', '20', '2000', '未发货', '广科', '商品a', null, '40000', '1');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `user_code` varchar(32) NOT NULL COMMENT '用户账号',
  `user_name` varchar(50) NOT NULL COMMENT '用户名称',
  `user_password` varchar(32) NOT NULL COMMENT '用户密码',
  `user_state` int(1) NOT NULL COMMENT '1:正常,0:暂停',
  `user_vip` int(8) DEFAULT NULL,
  `vip` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '1', '卖家001', '1', '1', '1', '卖家');
INSERT INTO `sys_user` VALUES ('2', '4', '4', '4', '1', '-1', '普通会员');
INSERT INTO `sys_user` VALUES ('10', '2', '用户002', '2', '1', '-1', '普通会员');
INSERT INTO `sys_user` VALUES ('11', '5', '用户5', '5', '1', '-1', '普通会员');
INSERT INTO `sys_user` VALUES ('12', '6', '6', '6', '1', '-1', '普通会员');
