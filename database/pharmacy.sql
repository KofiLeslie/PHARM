/*
 Navicat Premium Data Transfer

 Source Server         : LESLIE SQL
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : localhost:3306
 Source Schema         : pharmacy

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 31/08/2022 14:13:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_credentials
-- ----------------------------
DROP TABLE IF EXISTS `admin_credentials`;
CREATE TABLE `admin_credentials`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LNAME` varchar(50) CHARACTER SET utf16 COLLATE utf16_bin NULL DEFAULT NULL,
  `OTHERNAME` varchar(50) CHARACTER SET utf16 COLLATE utf16_bin NULL DEFAULT NULL,
  `USERNAME` varchar(50) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `PASSWORD` varchar(50) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `IS_LOGGED_IN` enum('true','false') CHARACTER SET utf16 COLLATE utf16_bin NULL DEFAULT NULL,
  `PHARMACY_NAME` varchar(50) CHARACTER SET utf16 COLLATE utf16_bin NULL DEFAULT NULL,
  `ADDRESS` varchar(40) CHARACTER SET utf16 COLLATE utf16_bin NULL DEFAULT NULL,
  `EMAIL` varchar(20) CHARACTER SET utf16 COLLATE utf16_bin NULL DEFAULT NULL,
  `CONTACT_NUMBER` varchar(20) CHARACTER SET utf16 COLLATE utf16_bin NULL DEFAULT NULL,
  `USERID` int(11) NULL DEFAULT NULL,
  `GENDER` varchar(255) CHARACTER SET utf16 COLLATE utf16_bin NULL DEFAULT NULL,
  `IMAGE` varchar(255) CHARACTER SET utf16 COLLATE utf16_bin NULL DEFAULT NULL,
  `DATE` datetime NULL DEFAULT NULL,
  `ADMIN_TYPE` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf16 COLLATE = utf16_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin_credentials
-- ----------------------------
INSERT INTO `admin_credentials` VALUES (1, 'Brobbs', 'Leslie', 'admin', 'admin123', 'true', 'FYNN PHARMACEUTICALS', 'DOME', 'abc@me.com', '020121231232', NULL, NULL, NULL, NULL, 1);
INSERT INTO `admin_credentials` VALUES (2, 'Akalili', 'Bless', 'albert', 'alaska', 'true', 'Poly', 'Pokuase Lodge', 'giftyasiedu5@gmail.c', '78464679756579', 62216, 'Male', NULL, NULL, 2);
INSERT INTO `admin_credentials` VALUES (3, 'Achepelago', 'Nasir', 'admin@admin.com', 'admin123', 'true', 'Pokaas', 'Near Ampomah Last Stop, Oyarifa\r\nGM-152-', 'jharrison1519@gmail.', '843954354343', 69471, 'Female', NULL, NULL, 2);
INSERT INTO `admin_credentials` VALUES (4, '', '', '', '', NULL, '', '', '', '', 4437, '', NULL, NULL, 0);
INSERT INTO `admin_credentials` VALUES (5, 'Les', 'Lie', 'space', 'space123', NULL, 'Pharm', 'Space 123 Admin', 'mail@mail.com', '39494940', 33910619, '', NULL, NULL, 1);

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(20) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `CONTACT_NUMBER` varchar(10) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `ADDRESS` varchar(100) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `DOCTOR_NAME` varchar(20) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `DOCTOR_ADDRESS` varchar(100) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `USERID` int(11) NULL DEFAULT NULL,
  `USERNAME` varchar(50) CHARACTER SET utf16 COLLATE utf16_bin NULL DEFAULT NULL,
  `EMAIL` varchar(30) CHARACTER SET utf16 COLLATE utf16_bin NULL DEFAULT NULL,
  `GENDER` varchar(10) CHARACTER SET utf16 COLLATE utf16_bin NULL DEFAULT NULL,
  `PASSWORD` varchar(255) CHARACTER SET utf16 COLLATE utf16_bin NULL DEFAULT NULL,
  `IMAGE` varchar(255) CHARACTER SET utf16 COLLATE utf16_bin NULL DEFAULT NULL,
  `DATE` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf16 COLLATE = utf16_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of customers
-- ----------------------------
INSERT INTO `customers` VALUES (4, 'Kiran Suthar', '1234567690', 'Andheri East', 'Anshari', 'Andheri East', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `customers` VALUES (6, 'Aditya', '7365687269', 'Virar West', 'Xyz', 'Virar West', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `customers` VALUES (11, 'Shivam Tiwari', '6862369896', 'Dadar West', 'Dr Kapoor', 'Dadar East', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `customers` VALUES (13, 'Varsha Suthar', '7622369694', 'Rani Station', 'Dr Ramesh', 'Rani Station', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `customers` VALUES (14, 'Prakash Bhattarai', '9802851472', 'Pokhara-16, Dhikidada', 'Hari Bahadur', 'Matepani-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `customers` VALUES (17, 'LESLIE KOFI BROBBEY', '0549781898', 'Oyarifa', 'DFGH', 'Near Ampomah Last Stop, Oyarifa\r\nGM-152-2186', 846394, 'admin', 'jharrison1519@gmail.com', 'Male', 'admin123', NULL, NULL);
INSERT INTO `customers` VALUES (18, 'Nancy Serwaa Nyarko', '0245315267', 'Pokuase Djanman', 'Sa', 'Near Ampomah Last Stop, Oyarifa\r\nGM-152-2186', 77254, 'admin@admin.com', 'nyarkon@gmail.com', 'Female', 'admin123', NULL, NULL);
INSERT INTO `customers` VALUES (19, 'Man', '00', 'AA', 'DSSC', 'EWDWD', 7085394, 'AMA', 'SD@DS.COM', 'Male', 'admin123', NULL, NULL);
INSERT INTO `customers` VALUES (20, 'ANITA ADDO', '2342335465', 'Accra', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `customers` VALUES (21, 'JOYCE AYERTEY', '0987654478', 'Accra Maame', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `customers` VALUES (22, 'SATAN MAAME', '8765445676', 'Weather', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `customers` VALUES (23, 'FANK', '3874343434', 'FBDBV  DIKDFBID', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `customers` VALUES (24, 'QWESI LOPI', '64758965', 'hggtyfughjgcfdhg', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `customers` VALUES (25, 'FGNHBCDFFFFG', '645354674', 'gjhfjhgdfjfh', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `customers` VALUES (26, 'HJFHDGFXDF', '75678987', 'jfvnmjkgfhgkh', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `customers` VALUES (27, 'ASHM MAEL', '5487098767', 'Malik', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `customers` VALUES (28, 'LASKILLA KILLA BOO', '0202219143', 'Killa Boo', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `customers` VALUES (29, 'FYNN ARTHUR', '0202219143', 'Achimota', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for invoices
-- ----------------------------
DROP TABLE IF EXISTS `invoices`;
CREATE TABLE `invoices`  (
  `INVOICE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `NET_TOTAL` double NOT NULL DEFAULT 0,
  `INVOICE_DATE` date NOT NULL,
  `CUSTOMER_ID` int(11) NOT NULL,
  `TOTAL_AMOUNT` double NOT NULL,
  `TOTAL_DISCOUNT` double NOT NULL,
  PRIMARY KEY (`INVOICE_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf16 COLLATE = utf16_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of invoices
-- ----------------------------
INSERT INTO `invoices` VALUES (1, 30, '2022-08-28', 19, 30, 0);
INSERT INTO `invoices` VALUES (2, 30, '2022-08-28', 17, 30, 0);
INSERT INTO `invoices` VALUES (3, 30, '2022-08-28', 0, 30, 0);
INSERT INTO `invoices` VALUES (4, 7878, '2022-08-28', 21, 7878, 0);
INSERT INTO `invoices` VALUES (5, 10504, '2022-08-28', 0, 10504, 0);
INSERT INTO `invoices` VALUES (6, 60398, '2022-08-28', 26, 60398, 0);
INSERT INTO `invoices` VALUES (7, 31512, '2022-08-28', 24, 31512, 0);
INSERT INTO `invoices` VALUES (8, 2626, '2022-08-28', 27, 2626, 0);
INSERT INTO `invoices` VALUES (9, 60, '2022-08-29', 28, 60, 0);
INSERT INTO `invoices` VALUES (10, 30, '2022-08-29', 29, 30, 0);

-- ----------------------------
-- Table structure for medicines
-- ----------------------------
DROP TABLE IF EXISTS `medicines`;
CREATE TABLE `medicines`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `PACKING` varchar(20) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `GENERIC_NAME` varchar(100) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `SUPPLIER_NAME` varchar(100) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf16 COLLATE = utf16_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of medicines
-- ----------------------------
INSERT INTO `medicines` VALUES (1, 'Nicip Plus', '10TAB', 'Paracetamole', 'BDPL PHARMA');
INSERT INTO `medicines` VALUES (2, 'Crosin', '10tab', 'Hdsgvkvajkcbja', 'Kiran Pharma');
INSERT INTO `medicines` VALUES (4, 'Dolo 650', '15tab', 'paracetamole', 'BDPL PHARMA');
INSERT INTO `medicines` VALUES (5, 'Gelusil', '10tab', 'mint fla', 'Desai Pharma');
INSERT INTO `medicines` VALUES (6, 'Paracetamol', '20 TAB', 'PCT', 'Ansah Emmanuel');
INSERT INTO `medicines` VALUES (7, 'Chloroquine', '20 TAB', 'PCT', 'Ansah Emmanuel');
INSERT INTO `medicines` VALUES (8, 'Chloroquines', '20 TAB', 'PCT', 'Ansah Emmanuel');
INSERT INTO `medicines` VALUES (9, 'Chloroquinese', '20 TAB', 'PCT', 'Ansah Emmanuel');

-- ----------------------------
-- Table structure for medicines_stock
-- ----------------------------
DROP TABLE IF EXISTS `medicines_stock`;
CREATE TABLE `medicines_stock`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `BATCH_ID` varchar(20) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `EXPIRY_DATE` varchar(10) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `QUANTITY` int(11) NOT NULL,
  `MRP` double NOT NULL,
  `RATE` double NOT NULL,
  `INVOICE_NUMBER` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE INDEX `BATCH_ID`(`BATCH_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf16 COLLATE = utf16_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of medicines_stock
-- ----------------------------
INSERT INTO `medicines_stock` VALUES (1, 'Crosin', 'CROS12', '12/34', 153, 2626, 26, NULL);
INSERT INTO `medicines_stock` VALUES (2, 'Gelusil', 'G327', '12/42', 84, 15, 12, NULL);
INSERT INTO `medicines_stock` VALUES (3, 'Dolo 650', 'DOLO327', '01/23', 6, 30, 24, NULL);
INSERT INTO `medicines_stock` VALUES (4, 'Nicip Plus', 'NI325', '05/22', 3, 32.65, 28, NULL);
INSERT INTO `medicines_stock` VALUES (5, 'Chloroquinese', 'CHL384', '08/2032', 3222, 3, 0, 604532266);

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `msgid` bigint(20) NOT NULL,
  `sender` bigint(20) NOT NULL,
  `receiver` bigint(20) NOT NULL,
  `message` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `files` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `date` datetime NOT NULL,
  `seen` int(11) NOT NULL,
  `received` int(11) NOT NULL,
  `deleted_sender` tinyint(1) NOT NULL,
  `deleted_receiver` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sender`(`sender`) USING BTREE,
  INDEX `receiver`(`receiver`) USING BTREE,
  INDEX `date`(`date`) USING BTREE,
  INDEX `deleted_sender`(`deleted_sender`) USING BTREE,
  INDEX `deleted_sender_2`(`deleted_sender`) USING BTREE,
  INDEX `deleted_receiver`(`deleted_receiver`) USING BTREE,
  INDEX `seen`(`seen`) USING BTREE,
  INDEX `msgid`(`msgid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 65 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of messages
-- ----------------------------
INSERT INTO `messages` VALUES (2, 0, 6407609, 89701890839882223, 'ko', '', '2021-01-12 20:34:01', 0, 0, 0, 0);
INSERT INTO `messages` VALUES (54, 0, 6407609, 602237466542138, 'hello', '', '2021-01-12 20:33:34', 1, 1, 0, 0);
INSERT INTO `messages` VALUES (55, 3, 6407609, 239152703, 'hi', '', '2021-01-12 20:36:12', 0, 0, 0, 0);
INSERT INTO `messages` VALUES (56, 3, 6407609, 239152703, 'hello', '', '2021-01-12 20:36:48', 0, 0, 0, 0);
INSERT INTO `messages` VALUES (57, 0, 602237466542138, 6407609, 'how are you brother', '', '2021-01-12 20:38:06', 1, 1, 0, 0);
INSERT INTO `messages` VALUES (58, 0, 602237466542138, 6407609, 'talk now', '', '2021-01-12 20:38:28', 1, 1, 0, 0);
INSERT INTO `messages` VALUES (59, 0, 6407609, 602237466542138, 'hello', '', '2021-01-12 20:38:53', 1, 1, 0, 0);
INSERT INTO `messages` VALUES (60, 0, 602237466542138, 6407609, 'hi', '', '2021-01-12 20:39:00', 1, 1, 0, 0);
INSERT INTO `messages` VALUES (61, 0, 602237466542138, 6407609, 'i love gari soaking', '', '2021-01-12 20:39:13', 1, 1, 0, 0);
INSERT INTO `messages` VALUES (62, 0, 6407609, 602237466542138, 'are u sure?', '', '2021-01-12 20:39:21', 0, 1, 0, 1);
INSERT INTO `messages` VALUES (63, 0, 6407609, 602237466542138, '', 'uploads/me.jpg', '2021-01-12 20:40:30', 0, 1, 1, 0);
INSERT INTO `messages` VALUES (64, 0, 6407609, 602237466542138, 'list', '', '2021-01-12 20:43:40', 0, 1, 1, 1);

-- ----------------------------
-- Table structure for purchases
-- ----------------------------
DROP TABLE IF EXISTS `purchases`;
CREATE TABLE `purchases`  (
  `SUPPLIER_NAME` varchar(100) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `INVOICE_NUMBER` int(11) NOT NULL,
  `VOUCHER_NUMBER` int(11) NOT NULL AUTO_INCREMENT,
  `PURCHASE_DATE` varchar(10) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `TOTAL_AMOUNT` double NOT NULL,
  `PAYMENT_STATUS` varchar(20) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  PRIMARY KEY (`VOUCHER_NUMBER`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf16 COLLATE = utf16_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of purchases
-- ----------------------------

-- ----------------------------
-- Table structure for sales
-- ----------------------------
DROP TABLE IF EXISTS `sales`;
CREATE TABLE `sales`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CUSTOMER_ID` int(11) NULL DEFAULT NULL,
  `INVOICE_NUMBER` int(11) NULL DEFAULT NULL,
  `MEDICINE_NAME` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `BATCH_ID` varchar(112) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `EXPIRY_DATE` varchar(112) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `QUANTITY` int(11) NULL DEFAULT NULL,
  `MRP` float NULL DEFAULT NULL,
  `DISCOUNT` float NULL DEFAULT NULL,
  `TOTAL` float NULL DEFAULT NULL,
  `DATE` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sales
-- ----------------------------
INSERT INTO `sales` VALUES (1, 23, 5, 'Dolo 650', 'DOLO327', '01/23', 3, 30, 0, 90, '2022-08-28 22:08:19');
INSERT INTO `sales` VALUES (2, 25, 5, 'Dolo 650', 'DOLO327', '01/23', 2, 30, 0, 60, '2022-08-28 22:10:09');
INSERT INTO `sales` VALUES (3, 26, 6, 'Crosin', 'CROS12', '12/34', 23, 2626, 0, 60398, NULL);
INSERT INTO `sales` VALUES (4, 24, 7, 'Crosin', 'CROS12', '12/34', 12, 2626, 0, 31512, NULL);
INSERT INTO `sales` VALUES (5, 27, 8, 'Crosin', 'CROS12', '12/34', 1, 2626, 0, 2626, NULL);
INSERT INTO `sales` VALUES (6, 28, 9, 'Dolo 650', 'DOLO327', '01/23', 2, 30, 0, 60, NULL);
INSERT INTO `sales` VALUES (7, 29, 10, 'Gelusil', 'G327', '12/42', 2, 15, 0, 30, NULL);

-- ----------------------------
-- Table structure for suppliers
-- ----------------------------
DROP TABLE IF EXISTS `suppliers`;
CREATE TABLE `suppliers`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `EMAIL` varchar(100) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `CONTACT_NUMBER` varchar(10) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `ADDRESS` varchar(100) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf16 COLLATE = utf16_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of suppliers
-- ----------------------------
INSERT INTO `suppliers` VALUES (1, 'Ansah Emmanuel', 'ansah@mail.com', '0202203343', 'Pokuase');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) NULL DEFAULT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `gender` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `date` datetime NULL DEFAULT NULL,
  `image` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `roleid` int(11) NULL DEFAULT NULL,
  `isActive` int(11) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 239152703, 'Eathorne', 'eathorne@yahoo.com', 'Male', 'password', '2020-12-25 15:31:32', 'uploads/afro-beautiful-black-women-fashion-Favim.com-3980589.jpg', 1, 0);
INSERT INTO `users` VALUES (2, 89701890839882223, 'Mary', 'mary@yahoo.com', 'Female', 'password', '2020-12-25 15:31:49', NULL, 1, 1);
INSERT INTO `users` VALUES (3, 1148711, 'John', 'john@yahoo.com', 'Male', 'password', '2020-12-25 15:32:10', 'uploads/handsome-adult-black-man-successful-business-african-person-117063782.jpg', 1, 1);
INSERT INTO `users` VALUES (4, 6407609, 'Leslie Kofi Brobbey', 'les@lie.com', 'Female', 'password', '2021-01-11 17:18:26', 'uploads/myself.jpg', 1, 0);
INSERT INTO `users` VALUES (5, 602237466542138, 'Nancy Afia Tetteh', 'na@an.cy', 'Male', 'password', '2021-01-11 17:19:20', 'uploads/IYZG8334.jpg', 1, 1);

SET FOREIGN_KEY_CHECKS = 1;
