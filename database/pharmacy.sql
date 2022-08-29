-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 29, 2022 at 04:31 PM
-- Server version: 5.7.33
-- PHP Version: 8.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmacy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_credentials`
--

CREATE TABLE `admin_credentials` (
  `ID` int(11) NOT NULL,
  `LNAME` varchar(50) COLLATE utf16_bin DEFAULT NULL,
  `OTHERNAME` varchar(50) COLLATE utf16_bin DEFAULT NULL,
  `USERNAME` varchar(50) COLLATE utf16_bin NOT NULL,
  `PASSWORD` varchar(50) COLLATE utf16_bin NOT NULL,
  `IS_LOGGED_IN` enum('true','false') COLLATE utf16_bin DEFAULT NULL,
  `PHARMACY_NAME` varchar(50) COLLATE utf16_bin DEFAULT NULL,
  `ADDRESS` varchar(40) COLLATE utf16_bin DEFAULT NULL,
  `EMAIL` varchar(20) COLLATE utf16_bin DEFAULT NULL,
  `CONTACT_NUMBER` varchar(20) COLLATE utf16_bin DEFAULT NULL,
  `USERID` int(11) DEFAULT NULL,
  `GENDER` varchar(255) COLLATE utf16_bin DEFAULT NULL,
  `IMAGE` varchar(255) COLLATE utf16_bin DEFAULT NULL,
  `DATE` datetime DEFAULT NULL,
  `ADMIN_TYPE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `admin_credentials`
--

INSERT INTO `admin_credentials` (`ID`, `LNAME`, `OTHERNAME`, `USERNAME`, `PASSWORD`, `IS_LOGGED_IN`, `PHARMACY_NAME`, `ADDRESS`, `EMAIL`, `CONTACT_NUMBER`, `USERID`, `GENDER`, `IMAGE`, `DATE`, `ADMIN_TYPE`) VALUES
(1, 'Brobbs', 'Leslie', 'admin', 'admin123', 'true', 'FYNN PHARMACEUTICALS', 'DOME', 'abc@me.com', '020121231232', NULL, NULL, NULL, NULL, 1),
(2, 'Akalili', 'Bless', 'albert', 'alaska', 'true', 'Poly', 'Pokuase Lodge', 'giftyasiedu5@gmail.c', '78464679756579', 62216, 'Male', NULL, NULL, 2),
(3, 'Achepelago', 'Nasir', 'admin@admin.com', 'admin123', 'true', 'Pokaas', 'Near Ampomah Last Stop, Oyarifa\r\nGM-152-', 'jharrison1519@gmail.', '843954354343', 69471, 'Female', NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(20) COLLATE utf16_bin NOT NULL,
  `CONTACT_NUMBER` varchar(10) COLLATE utf16_bin NOT NULL,
  `ADDRESS` varchar(100) COLLATE utf16_bin NOT NULL,
  `DOCTOR_NAME` varchar(20) COLLATE utf16_bin NOT NULL,
  `DOCTOR_ADDRESS` varchar(100) COLLATE utf16_bin NOT NULL,
  `USERID` int(11) DEFAULT NULL,
  `USERNAME` varchar(50) COLLATE utf16_bin DEFAULT NULL,
  `EMAIL` varchar(30) COLLATE utf16_bin DEFAULT NULL,
  `GENDER` varchar(10) COLLATE utf16_bin DEFAULT NULL,
  `PASSWORD` varchar(255) COLLATE utf16_bin DEFAULT NULL,
  `IMAGE` varchar(255) COLLATE utf16_bin DEFAULT NULL,
  `DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`ID`, `NAME`, `CONTACT_NUMBER`, `ADDRESS`, `DOCTOR_NAME`, `DOCTOR_ADDRESS`, `USERID`, `USERNAME`, `EMAIL`, `GENDER`, `PASSWORD`, `IMAGE`, `DATE`) VALUES
(4, 'Kiran Suthar', '1234567690', 'Andheri East', 'Anshari', 'Andheri East', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Aditya', '7365687269', 'Virar West', 'Xyz', 'Virar West', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Shivam Tiwari', '6862369896', 'Dadar West', 'Dr Kapoor', 'Dadar East', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Varsha Suthar', '7622369694', 'Rani Station', 'Dr Ramesh', 'Rani Station', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Prakash Bhattarai', '9802851472', 'Pokhara-16, Dhikidada', 'Hari Bahadur', 'Matepani-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'LESLIE KOFI BROBBEY', '0549781898', 'Oyarifa', 'DFGH', 'Near Ampomah Last Stop, Oyarifa\r\nGM-152-2186', 846394, 'admin', 'jharrison1519@gmail.com', 'Male', 'admin123', NULL, NULL),
(18, 'Nancy Serwaa Nyarko', '0245315267', 'Pokuase Djanman', 'Sa', 'Near Ampomah Last Stop, Oyarifa\r\nGM-152-2186', 77254, 'admin@admin.com', 'nyarkon@gmail.com', 'Female', 'admin123', NULL, NULL),
(19, 'Man', '00', 'AA', 'DSSC', 'EWDWD', 7085394, 'AMA', 'SD@DS.COM', 'Male', 'admin123', NULL, NULL),
(20, 'ANITA ADDO', '2342335465', 'Accra', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'JOYCE AYERTEY', '0987654478', 'Accra Maame', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'SATAN MAAME', '8765445676', 'Weather', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'FANK', '3874343434', 'FBDBV  DIKDFBID', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'QWESI LOPI', '64758965', 'hggtyfughjgcfdhg', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'FGNHBCDFFFFG', '645354674', 'gjhfjhgdfjfh', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'HJFHDGFXDF', '75678987', 'jfvnmjkgfhgkh', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'ASHM MAEL', '5487098767', 'Malik', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'LASKILLA KILLA BOO', '0202219143', 'Killa Boo', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'FYNN ARTHUR', '0202219143', 'Achimota', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `INVOICE_ID` int(11) NOT NULL,
  `NET_TOTAL` double NOT NULL DEFAULT '0',
  `INVOICE_DATE` date NOT NULL,
  `CUSTOMER_ID` int(11) NOT NULL,
  `TOTAL_AMOUNT` double NOT NULL,
  `TOTAL_DISCOUNT` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`INVOICE_ID`, `NET_TOTAL`, `INVOICE_DATE`, `CUSTOMER_ID`, `TOTAL_AMOUNT`, `TOTAL_DISCOUNT`) VALUES
(1, 30, '2022-08-28', 19, 30, 0),
(2, 30, '2022-08-28', 17, 30, 0),
(3, 30, '2022-08-28', 0, 30, 0),
(4, 7878, '2022-08-28', 21, 7878, 0),
(5, 10504, '2022-08-28', 0, 10504, 0),
(6, 60398, '2022-08-28', 26, 60398, 0),
(7, 31512, '2022-08-28', 24, 31512, 0),
(8, 2626, '2022-08-28', 27, 2626, 0),
(9, 60, '2022-08-29', 28, 60, 0),
(10, 30, '2022-08-29', 29, 30, 0);

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(100) COLLATE utf16_bin NOT NULL,
  `PACKING` varchar(20) COLLATE utf16_bin NOT NULL,
  `GENERIC_NAME` varchar(100) COLLATE utf16_bin NOT NULL,
  `SUPPLIER_NAME` varchar(100) COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `medicines`
--

INSERT INTO `medicines` (`ID`, `NAME`, `PACKING`, `GENERIC_NAME`, `SUPPLIER_NAME`) VALUES
(1, 'Nicip Plus', '10TAB', 'Paracetamole', 'BDPL PHARMA'),
(2, 'Crosin', '10tab', 'Hdsgvkvajkcbja', 'Kiran Pharma'),
(4, 'Dolo 650', '15tab', 'paracetamole', 'BDPL PHARMA'),
(5, 'Gelusil', '10tab', 'mint fla', 'Desai Pharma');

-- --------------------------------------------------------

--
-- Table structure for table `medicines_stock`
--

CREATE TABLE `medicines_stock` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(100) COLLATE utf16_bin NOT NULL,
  `BATCH_ID` varchar(20) COLLATE utf16_bin NOT NULL,
  `EXPIRY_DATE` varchar(10) COLLATE utf16_bin NOT NULL,
  `QUANTITY` int(11) NOT NULL,
  `MRP` double NOT NULL,
  `RATE` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `medicines_stock`
--

INSERT INTO `medicines_stock` (`ID`, `NAME`, `BATCH_ID`, `EXPIRY_DATE`, `QUANTITY`, `MRP`, `RATE`) VALUES
(1, 'Crosin', 'CROS12', '12/34', 153, 2626, 26),
(2, 'Gelusil', 'G327', '12/42', 84, 15, 12),
(3, 'Dolo 650', 'DOLO327', '01/23', 6, 30, 24),
(4, 'Nicip Plus', 'NI325', '05/22', 3, 32.65, 28);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL,
  `msgid` bigint(20) NOT NULL,
  `sender` bigint(20) NOT NULL,
  `receiver` bigint(20) NOT NULL,
  `message` text NOT NULL,
  `files` text NOT NULL,
  `date` datetime NOT NULL,
  `seen` int(11) NOT NULL,
  `received` int(11) NOT NULL,
  `deleted_sender` tinyint(1) NOT NULL,
  `deleted_receiver` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `msgid`, `sender`, `receiver`, `message`, `files`, `date`, `seen`, `received`, `deleted_sender`, `deleted_receiver`) VALUES
(2, 0, 6407609, 89701890839882223, 'ko', '', '2021-01-12 20:34:01', 0, 0, 0, 0),
(54, 0, 6407609, 602237466542138, 'hello', '', '2021-01-12 20:33:34', 1, 1, 0, 0),
(55, 3, 6407609, 239152703, 'hi', '', '2021-01-12 20:36:12', 0, 0, 0, 0),
(56, 3, 6407609, 239152703, 'hello', '', '2021-01-12 20:36:48', 0, 0, 0, 0),
(57, 0, 602237466542138, 6407609, 'how are you brother', '', '2021-01-12 20:38:06', 1, 1, 0, 0),
(58, 0, 602237466542138, 6407609, 'talk now', '', '2021-01-12 20:38:28', 1, 1, 0, 0),
(59, 0, 6407609, 602237466542138, 'hello', '', '2021-01-12 20:38:53', 1, 1, 0, 0),
(60, 0, 602237466542138, 6407609, 'hi', '', '2021-01-12 20:39:00', 1, 1, 0, 0),
(61, 0, 602237466542138, 6407609, 'i love gari soaking', '', '2021-01-12 20:39:13', 1, 1, 0, 0),
(62, 0, 6407609, 602237466542138, 'are u sure?', '', '2021-01-12 20:39:21', 0, 1, 0, 1),
(63, 0, 6407609, 602237466542138, '', 'uploads/me.jpg', '2021-01-12 20:40:30', 0, 1, 1, 0),
(64, 0, 6407609, 602237466542138, 'list', '', '2021-01-12 20:43:40', 0, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `SUPPLIER_NAME` varchar(100) COLLATE utf16_bin NOT NULL,
  `INVOICE_NUMBER` int(11) NOT NULL,
  `VOUCHER_NUMBER` int(11) NOT NULL,
  `PURCHASE_DATE` varchar(10) COLLATE utf16_bin NOT NULL,
  `TOTAL_AMOUNT` double NOT NULL,
  `PAYMENT_STATUS` varchar(20) COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `ID` int(11) NOT NULL,
  `CUSTOMER_ID` int(11) DEFAULT NULL,
  `INVOICE_NUMBER` int(11) DEFAULT NULL,
  `MEDICINE_NAME` varchar(255) DEFAULT NULL,
  `BATCH_ID` varchar(112) DEFAULT NULL,
  `EXPIRY_DATE` varchar(112) DEFAULT NULL,
  `QUANTITY` int(11) DEFAULT NULL,
  `MRP` float DEFAULT NULL,
  `DISCOUNT` float DEFAULT NULL,
  `TOTAL` float DEFAULT NULL,
  `DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`ID`, `CUSTOMER_ID`, `INVOICE_NUMBER`, `MEDICINE_NAME`, `BATCH_ID`, `EXPIRY_DATE`, `QUANTITY`, `MRP`, `DISCOUNT`, `TOTAL`, `DATE`) VALUES
(1, 23, 5, 'Dolo 650', 'DOLO327', '01/23', 3, 30, 0, 90, '2022-08-28 22:08:19'),
(2, 25, 5, 'Dolo 650', 'DOLO327', '01/23', 2, 30, 0, 60, '2022-08-28 22:10:09'),
(3, 26, 6, 'Crosin', 'CROS12', '12/34', 23, 2626, 0, 60398, NULL),
(4, 24, 7, 'Crosin', 'CROS12', '12/34', 12, 2626, 0, 31512, NULL),
(5, 27, 8, 'Crosin', 'CROS12', '12/34', 1, 2626, 0, 2626, NULL),
(6, 28, 9, 'Dolo 650', 'DOLO327', '01/23', 2, 30, 0, 60, NULL),
(7, 29, 10, 'Gelusil', 'G327', '12/42', 2, 15, 0, 30, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(100) COLLATE utf16_bin NOT NULL,
  `EMAIL` varchar(100) COLLATE utf16_bin NOT NULL,
  `CONTACT_NUMBER` varchar(10) COLLATE utf16_bin NOT NULL,
  `ADDRESS` varchar(100) COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin ROW_FORMAT=DYNAMIC;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_credentials`
--
ALTER TABLE `admin_credentials`
  ADD PRIMARY KEY (`ID`) USING BTREE;

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`ID`) USING BTREE;

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`INVOICE_ID`) USING BTREE;

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`ID`) USING BTREE;

--
-- Indexes for table `medicines_stock`
--
ALTER TABLE `medicines_stock`
  ADD PRIMARY KEY (`ID`) USING BTREE,
  ADD UNIQUE KEY `BATCH_ID` (`BATCH_ID`) USING BTREE;

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `sender` (`sender`) USING BTREE,
  ADD KEY `receiver` (`receiver`) USING BTREE,
  ADD KEY `date` (`date`) USING BTREE,
  ADD KEY `deleted_sender` (`deleted_sender`) USING BTREE,
  ADD KEY `deleted_sender_2` (`deleted_sender`) USING BTREE,
  ADD KEY `deleted_receiver` (`deleted_receiver`) USING BTREE,
  ADD KEY `seen` (`seen`) USING BTREE,
  ADD KEY `msgid` (`msgid`) USING BTREE;

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`VOUCHER_NUMBER`) USING BTREE;

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`ID`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_credentials`
--
ALTER TABLE `admin_credentials`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `INVOICE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `medicines_stock`
--
ALTER TABLE `medicines_stock`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `VOUCHER_NUMBER` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
