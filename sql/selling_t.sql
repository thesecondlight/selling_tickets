/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3306
 Source Schema         : selling_t

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 22/10/2019 10:20:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) NULL DEFAULT NULL COMMENT '场次',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `site_id`(`site_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1660 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1518, 3);
INSERT INTO `orders` VALUES (1519, 3);
INSERT INTO `orders` VALUES (1520, 3);
INSERT INTO `orders` VALUES (1521, 3);
INSERT INTO `orders` VALUES (1522, 3);
INSERT INTO `orders` VALUES (1523, 3);
INSERT INTO `orders` VALUES (1524, 3);
INSERT INTO `orders` VALUES (1525, 3);
INSERT INTO `orders` VALUES (1526, 3);
INSERT INTO `orders` VALUES (1527, 3);
INSERT INTO `orders` VALUES (1528, 3);
INSERT INTO `orders` VALUES (1529, 3);
INSERT INTO `orders` VALUES (1530, 3);
INSERT INTO `orders` VALUES (1531, 3);
INSERT INTO `orders` VALUES (1532, 3);
INSERT INTO `orders` VALUES (1533, 3);
INSERT INTO `orders` VALUES (1534, 3);
INSERT INTO `orders` VALUES (1535, 3);
INSERT INTO `orders` VALUES (1536, 3);
INSERT INTO `orders` VALUES (1537, 3);
INSERT INTO `orders` VALUES (1538, 3);
INSERT INTO `orders` VALUES (1539, 3);
INSERT INTO `orders` VALUES (1540, 3);
INSERT INTO `orders` VALUES (1541, 3);
INSERT INTO `orders` VALUES (1542, 3);
INSERT INTO `orders` VALUES (1543, 3);
INSERT INTO `orders` VALUES (1544, 3);
INSERT INTO `orders` VALUES (1545, 3);
INSERT INTO `orders` VALUES (1546, 3);
INSERT INTO `orders` VALUES (1547, 3);
INSERT INTO `orders` VALUES (1548, 3);
INSERT INTO `orders` VALUES (1549, 3);
INSERT INTO `orders` VALUES (1550, 3);
INSERT INTO `orders` VALUES (1551, 3);
INSERT INTO `orders` VALUES (1552, 3);
INSERT INTO `orders` VALUES (1553, 3);
INSERT INTO `orders` VALUES (1554, 3);
INSERT INTO `orders` VALUES (1555, 3);
INSERT INTO `orders` VALUES (1556, 3);
INSERT INTO `orders` VALUES (1557, 3);
INSERT INTO `orders` VALUES (1558, 3);
INSERT INTO `orders` VALUES (1559, 3);
INSERT INTO `orders` VALUES (1560, 3);
INSERT INTO `orders` VALUES (1561, 3);
INSERT INTO `orders` VALUES (1562, 3);
INSERT INTO `orders` VALUES (1563, 3);
INSERT INTO `orders` VALUES (1564, 3);
INSERT INTO `orders` VALUES (1565, 3);
INSERT INTO `orders` VALUES (1566, 3);
INSERT INTO `orders` VALUES (1567, 3);
INSERT INTO `orders` VALUES (1568, 3);
INSERT INTO `orders` VALUES (1569, 3);
INSERT INTO `orders` VALUES (1570, 3);
INSERT INTO `orders` VALUES (1571, 3);
INSERT INTO `orders` VALUES (1572, 3);
INSERT INTO `orders` VALUES (1573, 3);
INSERT INTO `orders` VALUES (1574, 3);
INSERT INTO `orders` VALUES (1575, 3);
INSERT INTO `orders` VALUES (1576, 3);
INSERT INTO `orders` VALUES (1577, 3);
INSERT INTO `orders` VALUES (1578, 3);
INSERT INTO `orders` VALUES (1579, 3);
INSERT INTO `orders` VALUES (1580, 3);
INSERT INTO `orders` VALUES (1581, 3);
INSERT INTO `orders` VALUES (1582, 3);
INSERT INTO `orders` VALUES (1583, 3);
INSERT INTO `orders` VALUES (1584, 3);
INSERT INTO `orders` VALUES (1585, 3);
INSERT INTO `orders` VALUES (1586, 3);
INSERT INTO `orders` VALUES (1587, 3);
INSERT INTO `orders` VALUES (1588, 3);
INSERT INTO `orders` VALUES (1589, 3);
INSERT INTO `orders` VALUES (1590, 3);
INSERT INTO `orders` VALUES (1591, 3);
INSERT INTO `orders` VALUES (1592, 3);
INSERT INTO `orders` VALUES (1593, 3);
INSERT INTO `orders` VALUES (1594, 3);
INSERT INTO `orders` VALUES (1595, 3);
INSERT INTO `orders` VALUES (1596, 3);
INSERT INTO `orders` VALUES (1597, 3);
INSERT INTO `orders` VALUES (1598, 3);
INSERT INTO `orders` VALUES (1599, 3);
INSERT INTO `orders` VALUES (1600, 3);
INSERT INTO `orders` VALUES (1601, 3);
INSERT INTO `orders` VALUES (1602, 3);
INSERT INTO `orders` VALUES (1603, 3);
INSERT INTO `orders` VALUES (1604, 3);
INSERT INTO `orders` VALUES (1605, 3);
INSERT INTO `orders` VALUES (1606, 3);
INSERT INTO `orders` VALUES (1607, 3);
INSERT INTO `orders` VALUES (1608, 3);
INSERT INTO `orders` VALUES (1609, 3);
INSERT INTO `orders` VALUES (1610, 3);
INSERT INTO `orders` VALUES (1611, 3);
INSERT INTO `orders` VALUES (1612, 3);
INSERT INTO `orders` VALUES (1613, 3);
INSERT INTO `orders` VALUES (1614, 3);
INSERT INTO `orders` VALUES (1615, 3);
INSERT INTO `orders` VALUES (1616, 3);
INSERT INTO `orders` VALUES (1617, 3);
INSERT INTO `orders` VALUES (1618, 4);
INSERT INTO `orders` VALUES (1619, 4);
INSERT INTO `orders` VALUES (1620, 4);
INSERT INTO `orders` VALUES (1621, 4);
INSERT INTO `orders` VALUES (1622, 4);
INSERT INTO `orders` VALUES (1623, 4);
INSERT INTO `orders` VALUES (1624, 4);
INSERT INTO `orders` VALUES (1625, 4);
INSERT INTO `orders` VALUES (1626, 4);
INSERT INTO `orders` VALUES (1627, 4);
INSERT INTO `orders` VALUES (1628, 4);
INSERT INTO `orders` VALUES (1629, 4);
INSERT INTO `orders` VALUES (1630, 4);
INSERT INTO `orders` VALUES (1631, 4);
INSERT INTO `orders` VALUES (1632, 4);
INSERT INTO `orders` VALUES (1633, 4);
INSERT INTO `orders` VALUES (1634, 4);
INSERT INTO `orders` VALUES (1635, 4);
INSERT INTO `orders` VALUES (1636, 4);
INSERT INTO `orders` VALUES (1637, 4);
INSERT INTO `orders` VALUES (1638, 4);
INSERT INTO `orders` VALUES (1639, 4);
INSERT INTO `orders` VALUES (1640, 4);
INSERT INTO `orders` VALUES (1641, 4);
INSERT INTO `orders` VALUES (1642, 4);
INSERT INTO `orders` VALUES (1643, 4);
INSERT INTO `orders` VALUES (1644, 4);
INSERT INTO `orders` VALUES (1645, 4);
INSERT INTO `orders` VALUES (1646, 4);
INSERT INTO `orders` VALUES (1647, 4);
INSERT INTO `orders` VALUES (1648, 4);
INSERT INTO `orders` VALUES (1649, 4);
INSERT INTO `orders` VALUES (1650, 4);
INSERT INTO `orders` VALUES (1651, 4);
INSERT INTO `orders` VALUES (1652, 4);
INSERT INTO `orders` VALUES (1653, 4);
INSERT INTO `orders` VALUES (1654, 4);
INSERT INTO `orders` VALUES (1655, 4);
INSERT INTO `orders` VALUES (1656, 4);
INSERT INTO `orders` VALUES (1657, 4);
INSERT INTO `orders` VALUES (1658, 4);
INSERT INTO `orders` VALUES (1659, 4);

-- ----------------------------
-- Table structure for t2019
-- ----------------------------
DROP TABLE IF EXISTS `t2019`;
CREATE TABLE `t2019`  (
  `site` int(1) NOT NULL AUTO_INCREMENT COMMENT '123:201911161945；456：201911171945',
  `money` float(11, 2) NULL DEFAULT NULL,
  `num` int(11) NULL DEFAULT NULL,
  INDEX `site`(`site`) USING BTREE,
  INDEX `money`(`money`) USING BTREE,
  INDEX `sy1`(`site`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t2019
-- ----------------------------
INSERT INTO `t2019` VALUES (1, 500.00, -1);
INSERT INTO `t2019` VALUES (2, 1000.00, 60);
INSERT INTO `t2019` VALUES (3, 2000.00, -1);
INSERT INTO `t2019` VALUES (4, 500.00, 66);
INSERT INTO `t2019` VALUES (5, 1000.00, -1);
INSERT INTO `t2019` VALUES (6, 2999.00, 26);

-- ----------------------------
-- Function structure for NewProc
-- ----------------------------
DROP FUNCTION IF EXISTS `NewProc`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `NewProc`(`id` int) RETURNS int(11)
    DETERMINISTIC
BEGIN
	declare temp int;
	#Routine body goes here...
  select count(*) into temp from t2019 where site=id;
  return temp;
END
;;
delimiter ;

-- ----------------------------
-- Function structure for ss
-- ----------------------------
DROP FUNCTION IF EXISTS `ss`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `ss`(`id` int) RETURNS int(11)
    DETERMINISTIC
BEGIN
	declare temp int;
	#Routine body goes here...
  select count(*) into temp from t2019 where site=id;
  return temp;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
