-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 03, 2019 at 04:55 AM
-- Server version: 5.7.24-log
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `4420 project`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `phone`, `name`) VALUES
(1001, '8019312124', 'steve'),
(1002, '6022906594', 'aaron'),
(1003, '3852184542', 'devon'),
(1004, '80121542211', 'juan'),
(1005, '8012125481', 'karren'),
(1006, '3021234567', 'david'),
(1007, '3151265487', 'jose'),
(1008, '5242125475', 'jin');

-- --------------------------------------------------------

--
-- Table structure for table `dealercus`
--

CREATE TABLE `dealercus` (
  `customer_id` int(10) NOT NULL,
  `dealername` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dealercus`
--

INSERT INTO `dealercus` (`customer_id`, `dealername`) VALUES
(1006, 'carmax'),
(1003, 'hyundai auto'),
(1002, 'jumax');

-- --------------------------------------------------------

--
-- Table structure for table `dealership`
--

CREATE TABLE `dealership` (
  `dealername` varchar(50) NOT NULL,
  `street` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `zip` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dealership`
--

INSERT INTO `dealership` (`dealername`, `street`, `city`, `zip`) VALUES
('lucky auto', '3081s state', 'salt lake city', 84115),
('presetman auto', '2865s state', 'salt lake city', 84115),
('prestman auth', '17n state st', 'salt lake city', 84042),
('rivers auto', '17n state st', 'lindon', 84042);

-- --------------------------------------------------------

--
-- Table structure for table `flatvehicle`
--

CREATE TABLE `flatvehicle` (
  `vin` varchar(100) NOT NULL,
  `truck_id` int(10) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `flatvehicle`
--

INSERT INTO `flatvehicle` (`vin`, `truck_id`, `date`) VALUES
('1BAKBCPH5DF227844', 701, '2019-08-07'),
('1FMCU94148KD42023', 702, '2019-08-13'),
('1FMCU94148KD42023', 704, '2019-08-06'),
('3FAHP0DC6BR142560', 703, '2019-08-21');

-- --------------------------------------------------------

--
-- Table structure for table `flat_bed`
--

CREATE TABLE `flat_bed` (
  `truck_id` int(10) NOT NULL,
  `mpg` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `flat_bed`
--

INSERT INTO `flat_bed` (`truck_id`, `mpg`) VALUES
(701, 12),
(702, 14),
(703, 11),
(704, 13),
(705, 12);

-- --------------------------------------------------------

--
-- Table structure for table `impound`
--

CREATE TABLE `impound` (
  `yard_id` int(10) NOT NULL,
  `street` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `zip` int(100) DEFAULT NULL,
  `rvin` varchar(100) DEFAULT NULL,
  `pvin` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `impound`
--

INSERT INTO `impound` (`yard_id`, `street`, `city`, `zip`, `rvin`, `pvin`) VALUES
(212, '1242s 5421', 'slc', 84102, '1FTYR10U78PA83060', '1FMCU94148KD42023'),
(213, '31 your ave', 'murray', 84050, '1M1AW07Y98N064454', '1FMCU94148KD42023');

-- --------------------------------------------------------

--
-- Table structure for table `junkyard`
--

CREATE TABLE `junkyard` (
  `junk_id` int(10) NOT NULL,
  `street` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `zip` int(100) DEFAULT NULL,
  `pvin` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `junkyard`
--

INSERT INTO `junkyard` (`junk_id`, `street`, `city`, `zip`, `pvin`) VALUES
(111, '1512s 1512w', 'draper', 80502, '3FAHP0DC6BR142560'),
(112, '1512s 1512w', 'sandy', 85020, '1FTYR10U78PA83060');

-- --------------------------------------------------------

--
-- Table structure for table `pubcus`
--

CREATE TABLE `pubcus` (
  `customer_id` int(10) NOT NULL,
  `publicname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pubcus`
--

INSERT INTO `pubcus` (`customer_id`, `publicname`) VALUES
(1002, 'garage'),
(1006, 'storage');

-- --------------------------------------------------------

--
-- Table structure for table `public`
--

CREATE TABLE `public` (
  `publicname` varchar(100) NOT NULL,
  `street` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `zip` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `public`
--

INSERT INTO `public` (`publicname`, `street`, `city`, `zip`) VALUES
('autopart', '12225w1020s', 'salt lake city', 84201),
('garage', '855s300w', 'draper', 84021),
('storage', '2000s500w ', 'sandy', 84215);

-- --------------------------------------------------------

--
-- Table structure for table `purchased`
--

CREATE TABLE `purchased` (
  `pvin` varchar(100) NOT NULL,
  `cost` int(100) DEFAULT NULL,
  `purchased_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchased`
--

INSERT INTO `purchased` (`pvin`, `cost`, `purchased_id`) VALUES
('1M1AW07Y98N064454', 9999, 151),
('JM1BJ2210Y0355253', 5000, 121);

-- --------------------------------------------------------

--
-- Table structure for table `purdealer`
--

CREATE TABLE `purdealer` (
  `dealername` varchar(100) NOT NULL,
  `pvin` varchar(100) DEFAULT NULL,
  `cost` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purdealer`
--

INSERT INTO `purdealer` (`dealername`, `pvin`, `cost`) VALUES
('presetman auto', '1FTYR10U78PA83060', 5000),
('rivers auto', 'JM1BJ2210Y0355253', 123);

-- --------------------------------------------------------

--
-- Table structure for table `purpub`
--

CREATE TABLE `purpub` (
  `pub_name` varchar(100) NOT NULL,
  `pvin` varchar(100) DEFAULT NULL,
  `cost` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purpub`
--

INSERT INTO `purpub` (`pub_name`, `pvin`, `cost`) VALUES
('car', '3FAHP0DC6BR142560', 500),
('killer', '3FAHP0DC6BR142560', 3000);

-- --------------------------------------------------------

--
-- Table structure for table `purshop`
--

CREATE TABLE `purshop` (
  `shopname` varchar(100) NOT NULL,
  `pvin` varchar(100) NOT NULL,
  `cost` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purshop`
--

INSERT INTO `purshop` (`shopname`, `pvin`, `cost`) VALUES
('kangsauto', '1BAKBCPH5DF227844', 499),
('kangsauto', '1FMCU94148KD42023', 1400);

-- --------------------------------------------------------

--
-- Table structure for table `repodealer`
--

CREATE TABLE `repodealer` (
  `dealername` varchar(100) NOT NULL,
  `rvin` varchar(100) DEFAULT NULL,
  `fee` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `repodealer`
--

INSERT INTO `repodealer` (`dealername`, `rvin`, `fee`) VALUES
('lucky auto', '1M1AW07Y98N064454', 500),
('presetman auto', '1FMCU94148KD42023', 231);

-- --------------------------------------------------------

--
-- Table structure for table `repossess`
--

CREATE TABLE `repossess` (
  `rvin` varchar(100) NOT NULL,
  `cost` int(100) DEFAULT NULL,
  `purchsed_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `repossess`
--

INSERT INTO `repossess` (`rvin`, `cost`, `purchsed_id`) VALUES
('JM1BJ2210Y0355253', 6999, 2),
('YV1MS682962248386', 5999, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `shopname` varchar(100) NOT NULL,
  `street` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `zip` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`shopname`, `street`, `city`, `zip`) VALUES
('carmax', '455s700e', 'salt lake city', 84102),
('hyundai auto', '152 rose st', 'salt lake city', 80541),
('jumax', '585s wisconsin st', 'salt lake city', 84021),
('kangsauto', '155s12500e', 'sandy', 83102),
('yourcar', '500s700w', 'salt lake city', 83012);

-- --------------------------------------------------------

--
-- Table structure for table `shopcus`
--

CREATE TABLE `shopcus` (
  `customer_id` int(10) NOT NULL,
  `shopname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shopcus`
--

INSERT INTO `shopcus` (`customer_id`, `shopname`) VALUES
(1003, 'hyundai auto'),
(1006, 'jumax');

-- --------------------------------------------------------

--
-- Table structure for table `towdealer`
--

CREATE TABLE `towdealer` (
  `dealername` varchar(100) NOT NULL,
  `tvin` varchar(100) DEFAULT NULL,
  `fee` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `towdealer`
--

INSERT INTO `towdealer` (`dealername`, `tvin`, `fee`) VALUES
('lucky auto', '3FAHP0DC6BR142560', 500),
('presetman auto', '1FTYR10U78PA83060', 59);

-- --------------------------------------------------------

--
-- Table structure for table `towed`
--

CREATE TABLE `towed` (
  `tvin` varchar(100) NOT NULL,
  `tow_id` int(10) NOT NULL,
  `fee` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `towed`
--

INSERT INTO `towed` (`tvin`, `tow_id`, `fee`) VALUES
('1M1AW07Y98N064454', 402, 400),
('JM1BJ2210Y0355253', 401, 300),
('YV1MS682962248386', 400, 500);

-- --------------------------------------------------------

--
-- Table structure for table `towpub`
--

CREATE TABLE `towpub` (
  `pubname` varchar(100) NOT NULL,
  `tvin` varchar(100) DEFAULT NULL,
  `fee` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `towpub`
--

INSERT INTO `towpub` (`pubname`, `tvin`, `fee`) VALUES
('pub', '3FAHP0DC6BR142560', 30),
('public', '1FMCU94148KD42023', 59);

-- --------------------------------------------------------

--
-- Table structure for table `towshop`
--

CREATE TABLE `towshop` (
  `shopname` varchar(100) NOT NULL,
  `tvin` varchar(100) NOT NULL,
  `fee` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `towshop`
--

INSERT INTO `towshop` (`shopname`, `tvin`, `fee`) VALUES
('hyundai auto', '1M1AW07Y98N064454', 350),
('jumax', '1FTYR10U78PA83060', 550);

-- --------------------------------------------------------

--
-- Table structure for table `truck_operator`
--

CREATE TABLE `truck_operator` (
  `operator_id` int(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` int(100) DEFAULT NULL,
  `wreck_id` int(10) DEFAULT NULL,
  `truck_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `truck_operator`
--

INSERT INTO `truck_operator` (`operator_id`, `name`, `phone`, `wreck_id`, `truck_id`) VALUES
(901, 'kris', 1525472222, 800, 701),
(902, 'horse', 520147212, 802, 702);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `vin` varchar(30) NOT NULL,
  `vyear` int(6) NOT NULL,
  `make` varchar(30) NOT NULL,
  `model` varchar(30) NOT NULL,
  `color` varchar(30) NOT NULL,
  `vehicletype` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`vin`, `vyear`, `make`, `model`, `color`, `vehicletype`) VALUES
('1BAKBCPH5DF227844', 2008, 'nissan', 'altima', 'gold', 'sedan'),
('1FMCU94148KD42023', 2008, 'nissan', 'altima', 'gold', 'sedan'),
('1FTYR10U78PA83060', 2013, 'toyota', 'camry', 'white', 'sedan'),
('1M1AW07Y98N064454', 1999, 'chevy', 'silverado', 'red', 'suv'),
('3FAHP0DC6BR142560', 2016, 'ford', 'f150', 'black', 'truck'),
('JM1BJ2210Y0355253', 2010, 'ford', 'fiesta', 'gray', 'sedan'),
('YV1MS682962248386', 2007, 'audi', 'a4', 'white', 'sedan');

-- --------------------------------------------------------

--
-- Table structure for table `wreckler`
--

CREATE TABLE `wreckler` (
  `wreck_id` int(100) NOT NULL,
  `mpg` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wreckler`
--

INSERT INTO `wreckler` (`wreck_id`, `mpg`) VALUES
(800, 5),
(801, 10),
(802, 15),
(803, 12),
(804, 13);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `dealercus`
--
ALTER TABLE `dealercus`
  ADD PRIMARY KEY (`customer_id`,`dealername`),
  ADD KEY `dcus_fk2` (`dealername`);

--
-- Indexes for table `dealership`
--
ALTER TABLE `dealership`
  ADD PRIMARY KEY (`dealername`);

--
-- Indexes for table `flatvehicle`
--
ALTER TABLE `flatvehicle`
  ADD PRIMARY KEY (`vin`,`truck_id`);

--
-- Indexes for table `flat_bed`
--
ALTER TABLE `flat_bed`
  ADD PRIMARY KEY (`truck_id`);

--
-- Indexes for table `impound`
--
ALTER TABLE `impound`
  ADD PRIMARY KEY (`yard_id`),
  ADD KEY `impound_fk1` (`rvin`),
  ADD KEY `impound_fk2` (`pvin`);

--
-- Indexes for table `junkyard`
--
ALTER TABLE `junkyard`
  ADD PRIMARY KEY (`junk_id`),
  ADD KEY `junkyard_fk` (`pvin`);

--
-- Indexes for table `pubcus`
--
ALTER TABLE `pubcus`
  ADD PRIMARY KEY (`customer_id`,`publicname`),
  ADD KEY `pubcus_fk2` (`publicname`);

--
-- Indexes for table `public`
--
ALTER TABLE `public`
  ADD PRIMARY KEY (`publicname`);

--
-- Indexes for table `purchased`
--
ALTER TABLE `purchased`
  ADD PRIMARY KEY (`pvin`);

--
-- Indexes for table `purdealer`
--
ALTER TABLE `purdealer`
  ADD PRIMARY KEY (`dealername`),
  ADD KEY `pd_fk2` (`pvin`);

--
-- Indexes for table `purpub`
--
ALTER TABLE `purpub`
  ADD PRIMARY KEY (`pub_name`),
  ADD KEY `pur_fk` (`pvin`);

--
-- Indexes for table `purshop`
--
ALTER TABLE `purshop`
  ADD PRIMARY KEY (`shopname`,`pvin`),
  ADD KEY `ps_fk1` (`pvin`);

--
-- Indexes for table `repodealer`
--
ALTER TABLE `repodealer`
  ADD PRIMARY KEY (`dealername`),
  ADD KEY `rd_fk2` (`rvin`);

--
-- Indexes for table `repossess`
--
ALTER TABLE `repossess`
  ADD PRIMARY KEY (`rvin`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`shopname`);

--
-- Indexes for table `shopcus`
--
ALTER TABLE `shopcus`
  ADD PRIMARY KEY (`customer_id`,`shopname`),
  ADD KEY `shopcus_fk2` (`shopname`);

--
-- Indexes for table `towdealer`
--
ALTER TABLE `towdealer`
  ADD PRIMARY KEY (`dealername`),
  ADD KEY `td_fk2` (`tvin`);

--
-- Indexes for table `towed`
--
ALTER TABLE `towed`
  ADD PRIMARY KEY (`tvin`);

--
-- Indexes for table `towpub`
--
ALTER TABLE `towpub`
  ADD PRIMARY KEY (`pubname`),
  ADD KEY `towpub_fk` (`tvin`);

--
-- Indexes for table `towshop`
--
ALTER TABLE `towshop`
  ADD PRIMARY KEY (`shopname`,`tvin`),
  ADD KEY `ts_fk2` (`tvin`);

--
-- Indexes for table `truck_operator`
--
ALTER TABLE `truck_operator`
  ADD PRIMARY KEY (`operator_id`),
  ADD KEY `truck_operator_fk1` (`wreck_id`),
  ADD KEY `truck_operator_fk2` (`truck_id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`vin`);

--
-- Indexes for table `wreckler`
--
ALTER TABLE `wreckler`
  ADD PRIMARY KEY (`wreck_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dealercus`
--
ALTER TABLE `dealercus`
  ADD CONSTRAINT `dcus_fk1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `dcus_fk2` FOREIGN KEY (`dealername`) REFERENCES `shop` (`shopname`) ON UPDATE CASCADE;

--
-- Constraints for table `flatvehicle`
--
ALTER TABLE `flatvehicle`
  ADD CONSTRAINT `flatvehicle_fk1` FOREIGN KEY (`vin`) REFERENCES `vehicle` (`vin`) ON UPDATE CASCADE;

--
-- Constraints for table `impound`
--
ALTER TABLE `impound`
  ADD CONSTRAINT `impound_fk1` FOREIGN KEY (`rvin`) REFERENCES `vehicle` (`vin`) ON UPDATE CASCADE,
  ADD CONSTRAINT `impound_fk2` FOREIGN KEY (`pvin`) REFERENCES `vehicle` (`vin`) ON UPDATE CASCADE;

--
-- Constraints for table `junkyard`
--
ALTER TABLE `junkyard`
  ADD CONSTRAINT `junkyard_fk` FOREIGN KEY (`pvin`) REFERENCES `vehicle` (`vin`) ON UPDATE CASCADE;

--
-- Constraints for table `pubcus`
--
ALTER TABLE `pubcus`
  ADD CONSTRAINT `pubcus_fk1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pubcus_fk2` FOREIGN KEY (`publicname`) REFERENCES `public` (`publicname`) ON UPDATE CASCADE;

--
-- Constraints for table `purchased`
--
ALTER TABLE `purchased`
  ADD CONSTRAINT `purchased_fk` FOREIGN KEY (`pvin`) REFERENCES `vehicle` (`vin`) ON UPDATE CASCADE;

--
-- Constraints for table `purdealer`
--
ALTER TABLE `purdealer`
  ADD CONSTRAINT `pd_fk1` FOREIGN KEY (`dealername`) REFERENCES `dealership` (`dealername`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pd_fk2` FOREIGN KEY (`pvin`) REFERENCES `vehicle` (`vin`);

--
-- Constraints for table `purpub`
--
ALTER TABLE `purpub`
  ADD CONSTRAINT `pur_fk` FOREIGN KEY (`pvin`) REFERENCES `vehicle` (`vin`) ON UPDATE CASCADE;

--
-- Constraints for table `purshop`
--
ALTER TABLE `purshop`
  ADD CONSTRAINT `ps_fk` FOREIGN KEY (`shopname`) REFERENCES `shop` (`shopname`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ps_fk1` FOREIGN KEY (`pvin`) REFERENCES `vehicle` (`vin`) ON UPDATE CASCADE;

--
-- Constraints for table `repodealer`
--
ALTER TABLE `repodealer`
  ADD CONSTRAINT `rd_fk1` FOREIGN KEY (`dealername`) REFERENCES `dealership` (`dealername`) ON UPDATE CASCADE,
  ADD CONSTRAINT `rd_fk2` FOREIGN KEY (`rvin`) REFERENCES `vehicle` (`vin`);

--
-- Constraints for table `repossess`
--
ALTER TABLE `repossess`
  ADD CONSTRAINT `repossess_fk` FOREIGN KEY (`rvin`) REFERENCES `vehicle` (`vin`) ON UPDATE CASCADE;

--
-- Constraints for table `shopcus`
--
ALTER TABLE `shopcus`
  ADD CONSTRAINT `shopcus_fk1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `shopcus_fk2` FOREIGN KEY (`shopname`) REFERENCES `shop` (`shopname`) ON UPDATE CASCADE;

--
-- Constraints for table `towdealer`
--
ALTER TABLE `towdealer`
  ADD CONSTRAINT `td_fk1` FOREIGN KEY (`dealername`) REFERENCES `dealership` (`dealername`) ON UPDATE CASCADE,
  ADD CONSTRAINT `td_fk2` FOREIGN KEY (`tvin`) REFERENCES `vehicle` (`vin`) ON UPDATE CASCADE;

--
-- Constraints for table `towed`
--
ALTER TABLE `towed`
  ADD CONSTRAINT `towed_fk` FOREIGN KEY (`tvin`) REFERENCES `vehicle` (`vin`) ON UPDATE CASCADE;

--
-- Constraints for table `towpub`
--
ALTER TABLE `towpub`
  ADD CONSTRAINT `towpub_fk` FOREIGN KEY (`tvin`) REFERENCES `vehicle` (`vin`) ON UPDATE CASCADE;

--
-- Constraints for table `towshop`
--
ALTER TABLE `towshop`
  ADD CONSTRAINT `ts_fk1` FOREIGN KEY (`shopname`) REFERENCES `shop` (`shopname`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ts_fk2` FOREIGN KEY (`tvin`) REFERENCES `vehicle` (`vin`) ON UPDATE CASCADE;

--
-- Constraints for table `truck_operator`
--
ALTER TABLE `truck_operator`
  ADD CONSTRAINT `truck_operator_fk1` FOREIGN KEY (`wreck_id`) REFERENCES `wreckler` (`wreck_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `truck_operator_fk2` FOREIGN KEY (`truck_id`) REFERENCES `flat_bed` (`truck_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
