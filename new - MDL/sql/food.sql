-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2019 at 11:38 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `price` int(11) NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `price`, `deleted`, `type`) VALUES
(1, 'Samosa', 10, 0, 'snacks'),
(2, 'Gulab jamun', 10, 0, 'sweets'),
(3, 'Fish', 120, 0, 'main course'),
(4, 'Pizza', 375, 0, 'snacks'),
(5, 'Fried Rice', 90, 0, 'main course'),
(6, 'Veg Biryani', 70, 0, 'main course'),
(7, 'Chicken Biryani', 90, 0, 'main course'),
(10, 'chaat', 30, 0, ''),
(11, 'pan pizza', 30, 0, ''),
(12, 'bryani', 90, 0, ''),
(14, 'cakes', 300, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `address` varchar(300) NOT NULL,
  `description` varchar(300) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `payment_type` varchar(16) NOT NULL DEFAULT 'Wallet',
  `total` int(11) NOT NULL,
  `status` varchar(25) NOT NULL DEFAULT 'Yet to be delivered',
  `deleted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `address`, `description`, `date`, `payment_type`, `total`, `status`, `deleted`) VALUES
(1, 2, 'Address 2', 'Sample Description 1', '2017-03-28 17:32:41', 'Wallet', 150, 'Cancelled by Customer', 1),
(2, 2, 'New address 2', '', '2017-03-28 17:43:05', 'Wallet', 130, 'Cancelled by Customer', 1),
(3, 3, 'Address 3', 'Sample Description 2', '2017-03-28 19:49:33', 'Cash On Delivery', 130, 'Yet to be delivered', 0),
(4, 3, 'Address 3', '', '2017-03-28 19:52:01', 'Cash On Delivery', 130, 'Cancelled by Customer', 1),
(5, 3, 'New Address 3', '', '2017-03-28 20:47:28', 'Wallet', 285, 'Paused', 0),
(6, 3, 'New Address 3', '', '2017-03-30 00:43:31', 'Wallet', 325, 'Cancelled by Customer', 1),
(7, 2, 'Address 2', '', '2018-11-24 14:19:26', 'Wallet', 125, 'Cancelled by Customer', 1),
(8, 2, 'Address 2', '', '2018-11-24 14:35:44', 'Wallet', 395, 'Cancelled by Customer', 1),
(9, 2, 'Address 2', '', '2018-11-24 14:54:54', 'Cash On Delivery', 100, 'Paused', 1),
(10, 2, 'Address 2', '', '2018-11-24 15:11:24', 'Cash On Delivery', 0, 'Cancelled by Admin', 0),
(11, 2, 'Address 2', '', '2018-11-24 19:37:54', 'Cash On Delivery', 0, 'Paused', 0),
(12, 2, 'Address 2', '', '2018-11-24 19:38:29', 'Cash On Delivery', 765, 'Cancelled by Customer', 1),
(13, 6, 'Room no. 112, Prefab-1, Boys hostel, NIT Sikkim, Burfung block, Ravangla, South Sikkim - 737139', '', '2018-11-25 14:20:00', 'Wallet', 765, 'Yet to be delivered', 0),
(14, 6, 'Room no. 112, Prefab-1, Boys hostel, NIT Sikkim, Burfung block, Ravangla, South Sikkim - 737139', '', '2018-11-25 14:22:23', 'Cash On Delivery', 90, 'Yet to be delivered', 0),
(15, 6, 'Room no. 112, Prefab-1, Boys hostel, NIT Sikkim, Burfung block, Ravangla, South Sikkim - 737139', '', '2018-11-25 14:22:54', 'Cash On Delivery', 100, 'Yet to be delivered', 0),
(16, 6, 'Room no. 112, Prefab-1, Boys hostel, NIT Sikkim, Burfung block, Ravangla, South Sikkim - 737139', '', '2018-11-25 14:24:05', 'Wallet', 140, 'Delivered', 0),
(17, 2, 'Address 2', '', '2018-11-25 14:52:32', 'Cash On Delivery', 1875, 'Cancelled by Customer', 1),
(18, 2, 'Address 2', '', '2018-11-27 19:27:25', 'Wallet', 360, 'Cancelled by Customer', 1),
(19, 2, 'nit sikkim', '', '2018-11-28 10:51:39', 'Wallet', 2325, 'Yet to be delivered', 0),
(20, 2, 'Address 2', '', '2018-11-28 11:03:08', 'Cash On Delivery', 2325, 'Yet to be delivered', 0),
(21, 2, 'dnskdnc  dcfjsnfc sdc dsjfshc c z\r\nsdjcnsdjcnsc mc', '', '2018-11-29 15:39:14', 'Cash On Delivery', 81, 'Cancelled by Customer', 1),
(22, 2, 'Address 2', '', '2018-12-03 12:36:06', 'Wallet', 90, 'Yet to be delivered', 0),
(23, 2, 'NIT Sikkim, Ravangla ,south sikkim', '', '2018-12-03 12:38:04', 'Wallet', 90, 'Yet to be delivered', 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `item_id`, `quantity`, `price`) VALUES
(1, 1, 2, 2, 90),
(2, 1, 3, 3, 60),
(3, 2, 2, 2, 90),
(4, 2, 3, 2, 40),
(5, 3, 2, 2, 90),
(6, 3, 3, 2, 40),
(7, 4, 2, 2, 90),
(8, 4, 3, 2, 40),
(9, 5, 2, 5, 225),
(10, 5, 3, 2, 40),
(11, 5, 5, 1, 20),
(12, 6, 2, 5, 225),
(13, 6, 3, 3, 60),
(14, 6, 5, 2, 40),
(15, 7, 1, 1, 25),
(16, 7, 2, 1, 45),
(17, 7, 3, 1, 20),
(18, 7, 4, 1, 15),
(19, 7, 5, 1, 20),
(20, 8, 3, 1, 20),
(21, 8, 2, 2, 90),
(22, 8, 4, 4, 60),
(23, 8, 5, 5, 100),
(24, 8, 1, 5, 125),
(25, 9, 3, 5, 100),
(26, 12, 7, 1, 90),
(27, 12, 3, 1, 120),
(28, 12, 5, 1, 90),
(29, 12, 2, 1, 10),
(30, 12, 4, 1, 375),
(31, 12, 1, 1, 10),
(32, 12, 6, 1, 70),
(33, 13, 7, 1, 90),
(34, 13, 3, 1, 120),
(35, 13, 5, 1, 90),
(36, 13, 2, 1, 10),
(37, 13, 4, 1, 375),
(38, 13, 1, 1, 10),
(39, 13, 6, 1, 70),
(40, 14, 7, 1, 90),
(41, 15, 2, 10, 100),
(42, 16, 6, 2, 140),
(43, 17, 4, 5, 1875),
(44, 18, 7, 4, 360),
(45, 19, 7, 5, 450),
(46, 19, 4, 5, 1875),
(47, 20, 7, 5, 450),
(48, 20, 4, 5, 1875),
(49, 21, 7, 1, 81),
(50, 22, 7, 1, 90),
(51, 23, 7, 1, 90);

-- --------------------------------------------------------

--
-- Table structure for table `restaurents`
--

CREATE TABLE `restaurents` (
  `restaurent_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `location` varchar(200) NOT NULL,
  `deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurents`
--

INSERT INTO `restaurents` (`restaurent_id`, `name`, `location`, `deleted`) VALUES
(1, 'Ravngla Star', 'Ravangla', 0),
(2, 'Kha-Cho', 'Ravangla', 0),
(3, 'Taste of Sikkim', 'Ravangla', 0),
(4, 'Kookey', 'Ravangla', 0),
(5, 'Foodies', 'Ravangla', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `poster_id` int(11) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `description` varchar(3000) NOT NULL,
  `status` varchar(8) NOT NULL DEFAULT 'Open',
  `type` varchar(30) NOT NULL DEFAULT 'Others',
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `poster_id`, `subject`, `description`, `status`, `type`, `date`, `deleted`) VALUES
(1, 2, 'Subject 1', 'New Description for Subject 1', 'Answered', 'Support', '2017-03-30 18:08:51', 0),
(2, 2, 'Wallet out of sinc', 'Money displayed by wallet is not right', 'Open', 'Complaint', '2018-11-26 06:47:00', 0),
(3, 6, 'fish was stale', 'smell was coming from fish delivered on 1/12/2018', 'Open', 'Complaint', '2018-12-01 16:14:10', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ticket_details`
--

CREATE TABLE `ticket_details` (
  `id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket_details`
--

INSERT INTO `ticket_details` (`id`, `ticket_id`, `user_id`, `description`, `date`) VALUES
(1, 1, 2, 'New Description for Subject 1', '2017-03-30 18:08:51'),
(2, 1, 2, 'Reply-1 for Subject 1', '2017-03-30 19:59:09'),
(3, 1, 1, 'Reply-2 for Subject 1 from Administrator.', '2017-03-30 20:35:39'),
(4, 1, 1, 'Reply-3 for Subject 1 from Administrator.', '2017-03-30 20:49:35'),
(5, 1, 2, 'gfhklj;', '2018-11-22 20:54:32'),
(6, 1, 2, 'gnhgbnoljmol', '2018-11-22 20:54:52'),
(7, 1, 2, 'khushi sharan\r\n', '2018-11-24 19:35:25'),
(8, 1, 1, 'we will get back to you', '2018-11-25 14:27:03'),
(9, 2, 2, 'Money displayed by wallet is not right', '2018-11-26 06:47:00'),
(10, 2, 2, 'ksadhgjsekadsf;asdk', '2018-11-26 14:00:53'),
(11, 2, 2, 'bdxchjmjhnnkl,mhbvhbgfbv', '2018-11-27 11:09:20'),
(12, 3, 6, 'smell was coming from fish delivered on 1/12/2018', '2018-12-01 16:14:11'),
(13, 3, 6, 'reply fast', '2018-12-01 16:14:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `role` varchar(15) NOT NULL DEFAULT 'Customer',
  `name` varchar(15) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(16) NOT NULL,
  `email` varchar(35) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `contact` bigint(11) NOT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `username`, `password`, `email`, `address`, `contact`, `verified`, `deleted`) VALUES
(1, 'Administrator', 'Admin 1', 'root', 'toor', '', 'Address 1', 9898000000, 1, 0),
(2, 'Customer', 'Deepak Prasad', 'user1', 'pass1', 'mail2@example.com', 'NIT Sikkim, Ravangla ,south sikkim', 9898000001, 1, 0),
(3, 'Customer', 'Customer 2', 'user2', 'pass2', 'mail3@example.com', 'Address 3', 9898000002, 1, 0),
(4, 'Customer', 'Customer 3', 'user3', 'pass3', '', '', 9898000003, 0, 0),
(5, 'Customer', 'Customer 4', 'user4', 'pass4', '', '', 9898000004, 0, 1),
(6, 'Customer', 'Deepak Prasad', 'dprasad', '00000', 'dprasad1243@gmail.com', 'Room no. 112, Prefab-1, Boys hostel, NIT Sikkim, Burfung block, Ravangla, South Sikkim - 737139', 9654917046, 1, 0),
(7, 'Administrator', 'Deepak', 'deepak', '00000', 'dprasad1243@gmail.com', 'NIT Sikkim', 965491746, 1, 0),
(9, 'Customer', 'abcde', 'abcde', '00000', NULL, NULL, 9654855254, 0, 0),
(10, 'Customer', 'abcdefgh', 'abcdefgh', '00000', NULL, NULL, 8956456545, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`id`, `customer_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(9, 9),
(10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `wallet_details`
--

CREATE TABLE `wallet_details` (
  `id` int(11) NOT NULL,
  `wallet_id` int(11) NOT NULL,
  `number` varchar(16) NOT NULL,
  `cvv` int(3) NOT NULL,
  `balance` int(11) NOT NULL DEFAULT '2000'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallet_details`
--

INSERT INTO `wallet_details` (`id`, `wallet_id`, `number`, `cvv`, `balance`) VALUES
(1, 1, '6155247490533921', 983, 3430),
(2, 2, '1887587142382050', 772, 5393),
(3, 3, '4595809639046830', 532, 1585),
(4, 4, '5475856443351234', 521, 2000),
(5, 5, '9076633115663264', 229, 2000),
(6, 6, '9305188565043595', 707, 7095),
(7, 7, '8318624714913166', 290, 10002),
(9, 9, '5441637394889374', 932, 2000),
(10, 10, '97642027352632', 512, 2000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `restaurents`
--
ALTER TABLE `restaurents`
  ADD PRIMARY KEY (`restaurent_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `poster_id` (`poster_id`);

--
-- Indexes for table `ticket_details`
--
ALTER TABLE `ticket_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_id` (`ticket_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_id` (`customer_id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wallet_details`
--
ALTER TABLE `wallet_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wallet_id` (`wallet_id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `restaurents`
--
ALTER TABLE `restaurents`
  MODIFY `restaurent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ticket_details`
--
ALTER TABLE `ticket_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `wallet_details`
--
ALTER TABLE `wallet_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`poster_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `ticket_details`
--
ALTER TABLE `ticket_details`
  ADD CONSTRAINT `ticket_details_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`),
  ADD CONSTRAINT `ticket_details_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `wallet`
--
ALTER TABLE `wallet`
  ADD CONSTRAINT `wallet_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `wallet_details`
--
ALTER TABLE `wallet_details`
  ADD CONSTRAINT `wallet_details_ibfk_1` FOREIGN KEY (`wallet_id`) REFERENCES `wallet` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
