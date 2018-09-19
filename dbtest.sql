-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2018 at 06:21 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbtest`
--

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
`order-id` int(30) NOT NULL,
  `food` varchar(55) NOT NULL,
  `price` varchar(55) NOT NULL,
  `check` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
`id` int(14) NOT NULL,
  `date` datetime NOT NULL,
  `ship_fee` decimal(9,2) NOT NULL,
  `ship_name` varchar(255) NOT NULL,
  `Ship_street` varchar(255) NOT NULL,
  `ship_city` varchar(50) NOT NULL,
  `ship_state` varchar(50) NOT NULL,
  `sales_tax` float NOT NULL,
  `submitted` int(1) NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--


-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE IF NOT EXISTS `order_items` (
`id` int(14) NOT NULL,
  `order_id` int(14) NOT NULL,
  `item_number` int(4) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `quantity` decimal(9,2) NOT NULL,
  `price` decimal(9,2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `item_number`, `item_name`, `quantity`, `price`) VALUES
(1, 1, 3, 'pasta', '18.00', '2548.00'),
(3, 2, 2, 'halwa', '16.00', '2242.00'),
(4, 3, 3, 'burger', '17.00', '2400.00'),
(5, 4, 2, 'halwa', '17.00', '2380.00'),
(6, 4, 3, 'pasta', '16.00', '2252.00'),
(7, 5, 2, 'halwa', '19.00', '2656.00'),
(11, 7, 2, 'halwa', '19.00', '2656.00'),
(12, 8, 3, 'burger', '17.00', '2400.00'),
(14, 10, 3, 'coke', '22.00', '2384.00'),
(15, 11, 3, 'coke', '18.00', '2224.00'),
(18, 13, 2, 'halwa', '18.00', '2518.00'),
(19, 14, 2, 'halwa', '18.00', '2518.00'),
(20, 14, 3, 'MOMO', '16.00', '2144.00'),
(21, 16, 3, 'sandwich', '22.00', '2664.00'),
(22, 17, 1, 'pizza', '16.00', '2600.00'),
(23, 18, 3, 'pasta', '15.00', '2172.00'),
(24, 19, 3, 'MOMO', '17.00', '2144.00'),
(25, 20, 3, 'sandwich', '16.00', '2184.00'),
(27, 21, 3, 'pasta', '15.00', '2172.00'),
(31, 23, 3, 'coke', '15.00', '2064.00'),
(32, 24, 3, 'paneer', '16.00', '2320.00'),
(33, 25, 2, 'halwa', '16.00', '2300.00'),
(34, 26, 3, 'pasta', '16.00', '2320.00'),
(36, 28, 2, 'halwa', '15.00', '2162.00'),
(37, 29, 3, 'pasta', '12.00', '1896.00'),
(39, 30, 1, 'pizza', '13.00', '1256.00'),
(40, 30, 3, 'pasta', '9.00', '1256.00'),
(47, 31, 6, 'idli', '5.00', '634.00'),
(48, 32, 2, 'halwa', '6.00', '810.00'),
(49, 32, 6, 'idli', '5.00', '634.00'),
(50, 32, 5, 'pastry', '5.00', '582.00'),
(51, 32, 1, 'pizza', '5.00', '822.00'),
(52, 32, 4, 'pasta', '5.00', '682.00'),
(53, 32, 8, 'MOMO', '5.00', '574.00'),
(54, 33, 3, 'burger', '6.00', '830.00'),
(56, 34, 2, 'halwa', '6.00', '810.00'),
(57, 35, 2, 'halwa', '5.00', '672.00'),
(58, 35, 4, 'pasta', '5.00', '682.00'),
(59, 36, 3, 'pasta', '6.00', '830.00'),
(60, 37, 2, 'halwa', '6.00', '810.00'),
(62, 38, 3, 'sandwich', '5.00', '614.00'),
(63, 39, 3, 'burger', '7.00', '978.00'),
(65, 40, 4, 'pasta', '6.00', '830.00'),
(68, 42, 4, 'pasta', '7.00', '978.00'),
(69, 43, 3, 'paneer', '6.00', '830.00'),
(70, 44, 3, 'burger', '6.00', '830.00'),
(71, 44, 1, 'pizza', '5.00', '822.00'),
(72, 44, 2, 'halwa', '5.00', '672.00'),
(73, 45, 3, 'MOMO', '9.00', '822.66'),
(75, 45, 1, 'noodles', '5.00', '564.00'),
(76, 45, 2, 'springroll', '5.00', '672.00'),
(77, 46, 2, 'halwa', '3.00', '424.00'),
(78, 47, 8, 'MOMO', '4.00', '268.00'),
(79, 48, 1, 'pizza', '3.00', '724.00'),
(80, 48, 2, 'halwa', '2.00', '286.00'),
(81, 48, 4, 'pasta', '2.00', '296.00'),
(82, 49, 2, 'halwa', '4.00', '562.00'),
(83, 41, 2, 'halwa', '1.00', '138.00');

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE IF NOT EXISTS `restaurants` (
`restaurant-id` int(20) NOT NULL,
  `resataurant name` varchar(60) NOT NULL,
  `restaurant-type` varchar(60) NOT NULL,
  `restaurant-location` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
`staff-id` int(30) NOT NULL,
  `staff-name` varchar(55) NOT NULL,
  `staff-contact no.` varchar(55) NOT NULL,
  `location` varchar(55) NOT NULL,
  `restaurant` varchar(55) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff-id`, `staff-name`, `staff-contact no.`, `location`, `restaurant`) VALUES
(1, 'RAKESH', '9876543289', 'GANGTOK', 'FOOD PLAZA'),
(2, 'ANUJ', '9999787854', 'GANGTOK', 'FOOD MANIA'),
(3, 'RAVINDRA', '786543290', 'GANGTOK', 'PIZZA HUT'),
(4, 'ASHWIN', '7896547898', 'GANGTOK', 'FOODIES'),
(5, 'YUVRAJ', '9876543278', 'RAVANGLA', 'YALAMBAR'),
(6, 'ABC', '9898765432', 'NAMCHI', 'SIMA HOTEL'),
(7, 'ACD', '9867654329', 'NAMCHI', 'ANAND SWEET'),
(8, 'ADF', '9876543289', 'NAMCHI', 'FOOD PLAZA'),
(9, 'AARUSH', '8976884445', 'NAMCHI', 'APD'),
(10, 'ARUP', '9876543218', 'RAVANGLA', 'RAVANGLA-STAR'),
(11, 'JAI', '8976987598', 'RAVANGLA', 'TASTE OF SIKKIM'),
(12, 'AAKASH', '8876543299', 'RAVANGLA', 'CHULIYANG'),
(13, 'FARHAN', '9878967554', 'SINGHTAM', 'ANAND SWEET'),
(14, 'CHARLIE', '9879879875', 'SINGHTAM', 'APD'),
(15, 'CHIRAG', '8796756451', 'SINGHTAM', 'FOOD PLAZA'),
(16, 'CHINKY', '7865678579', 'SINGHTAM', 'SIMA HOTEL');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`userId` int(11) NOT NULL,
  `userName` varchar(30) NOT NULL,
  `userEmail` varchar(60) NOT NULL,
  `userPass` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order`
--
ALTER TABLE `order`
 ADD PRIMARY KEY (`order-id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
 ADD PRIMARY KEY (`restaurant-id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
 ADD PRIMARY KEY (`staff-id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`userId`), ADD UNIQUE KEY `userEmail` (`userEmail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
MODIFY `order-id` int(30) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
MODIFY `id` int(14) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
MODIFY `id` int(14) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
MODIFY `restaurant-id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
MODIFY `staff-id` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
