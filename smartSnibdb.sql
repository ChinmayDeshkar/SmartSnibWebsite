-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 02, 2022 at 07:17 AM
-- Server version: 10.5.12-MariaDB
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id17317334_smartsnib`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_id`
--

CREATE TABLE `access_id` (
  `Access_ID` varchar(100) NOT NULL,
  `User_Name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `access_id`
--

INSERT INTO `access_id` (`Access_ID`, `User_Name`) VALUES
('ae001', 'Priyal'),
('ae003', 'Anaya'),
('ae002', 'Chinmay'),
('ae004', 'Viplav');

-- --------------------------------------------------------

--
-- Table structure for table `casualty`
--

CREATE TABLE `casualty` (
  `sr` int(11) NOT NULL,
  `lock_id` varchar(100) NOT NULL,
  `issue` varchar(275) NOT NULL,
  `timestamp` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `solved` int(5) NOT NULL,
  `flag` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `casualty`
--

INSERT INTO `casualty` (`sr`, `lock_id`, `issue`, `timestamp`, `solved`, `flag`) VALUES
(1, 'L1A42', '100', '2021-12-15 05:47:12.098755', 1, 1),
(2, 'L2A13', '300', '2021-12-15 05:47:23.088590', 0, 1),
(3, 'L3A42', '400', '2021-12-15 05:47:31.896251', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `connect_status`
--

CREATE TABLE `connect_status` (
  `connectStatus` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `connect_status`
--

INSERT INTO `connect_status` (`connectStatus`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `l1a42`
--

CREATE TABLE `l1a42` (
  `Sr` bigint(255) NOT NULL,
  `Temperature` varchar(100) DEFAULT NULL,
  `Humidity` varchar(100) DEFAULT NULL,
  `Vibration` varchar(255) DEFAULT NULL,
  `TimeStamp` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `l2a13`
--

CREATE TABLE `l2a13` (
  `Sr` bigint(255) NOT NULL,
  `Temperature` varchar(100) DEFAULT NULL,
  `Humidity` varchar(100) DEFAULT NULL,
  `Vibration` varchar(255) DEFAULT NULL,
  `TimeStamp` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `l2a13`
--

INSERT INTO `l2a13` (`Sr`, `Temperature`, `Humidity`, `Vibration`, `TimeStamp`) VALUES
(1, '26', '72', '0', '2021-12-14 18:49:43.154879'),
(2, '28.60', '56.00', '0', '2021-12-14 18:59:17.289331'),
(3, '28.70', '56.00', '0', '2021-12-14 18:59:38.753527'),
(4, '28.80', '56.00', '0', '2021-12-14 18:59:59.261696'),
(5, '28.90', '56.00', '0', '2021-12-14 19:00:19.763149'),
(6, '29.20', '57.00', '0', '2021-12-14 19:01:17.830550'),
(7, '29.30', '56.00', '0', '2021-12-14 19:01:48.431176'),
(8, '29.40', '56.00', '2498', '2021-12-14 19:02:18.104405'),
(9, '29.50', '55.00', '0', '2021-12-14 19:02:38.709072'),
(10, '29.60', '55.00', '0', '2021-12-14 19:03:02.266706'),
(11, '29.70', '55.00', '0', '2021-12-14 19:03:12.563947'),
(12, '29.80', '55.00', '0', '2021-12-14 19:03:32.986751'),
(13, '29.90', '54.00', '0', '2021-12-14 19:04:05.295241'),
(14, '30.00', '54.00', '0', '2021-12-14 19:04:15.672748'),
(15, '30.10', '53.00', '0', '2021-12-14 19:04:35.828207'),
(16, '30.20', '53.00', '0', '2021-12-14 19:05:26.845866'),
(17, '30.30', '52.00', '0', '2021-12-14 19:05:58.772951'),
(18, '30.40', '51.00', '0', '2021-12-14 19:07:21.033062'),
(19, '30.50', '50.00', '0', '2021-12-14 19:08:13.685598'),
(20, '30.60', '50.00', '0', '2021-12-14 19:09:58.466498'),
(21, '25.70', '63.00', '0', '2021-12-15 05:43:34.151727'),
(22, '24.40', '64.00', '9', '2021-12-15 07:13:13.621239'),
(23, '27.10', '58.00', '0', '2021-12-15 07:13:24.858160'),
(24, '27.20', '58.00', '0', '2021-12-15 07:14:19.323869'),
(25, '27.40', '57.00', '0', '2021-12-15 07:16:22.214918'),
(26, '27.70', '57.00', '0', '2021-12-15 07:16:33.018897'),
(27, '27.80', '56.00', '0', '2021-12-15 07:17:11.259478'),
(28, '28.00', '57.00', '0', '2021-12-15 07:18:07.288679'),
(29, '28.10', '56.00', '0', '2021-12-15 07:18:49.436234'),
(30, '28.20', '56.00', '0', '2021-12-15 07:19:31.691852'),
(31, '28.30', '56.00', '0', '2021-12-15 07:19:52.307713'),
(32, '28.40', '56.00', '0', '2021-12-15 07:20:44.812831'),
(33, '28.50', '55.00', '0', '2021-12-15 07:21:37.979498'),
(34, '29.00', '55.00', '0', '2021-12-15 07:26:03.463578'),
(35, '29.10', '54.00', '0', '2021-12-15 07:26:37.812487'),
(36, '30.70', '54.00', '0', '2021-12-15 07:30:42.326962'),
(37, '30.80', '54.00', '0', '2021-12-15 07:30:53.197910'),
(38, '31.00', '54.00', '0', '2021-12-15 07:31:24.234844'),
(39, '31.10', '54.00', '0', '2021-12-15 07:31:34.724374'),
(40, '31.20', '53.00', '0', '2021-12-15 07:32:05.727893'),
(41, '31.30', '53.00', '0', '2021-12-15 07:32:17.070644'),
(42, '31.40', '53.00', '0', '2021-12-15 07:32:38.195210'),
(43, '31.50', '52.00', '0', '2021-12-15 07:32:51.831915'),
(44, '31.60', '52.00', '0', '2021-12-15 07:33:02.743744'),
(45, '31.70', '51.00', '0', '2021-12-15 07:33:34.022393'),
(46, '31.80', '51.00', '0', '2021-12-15 07:33:56.077699'),
(47, '31.90', '49.00', '0', '2021-12-15 07:35:03.574696'),
(48, '32.10', '49.00', '0', '2021-12-15 07:35:24.593326'),
(49, '32.00', '48.00', '0', '2021-12-15 07:37:24.276095');

-- --------------------------------------------------------

--
-- Table structure for table `l3a47`
--

CREATE TABLE `l3a47` (
  `Sr` int(255) NOT NULL,
  `Temperature` varchar(100) DEFAULT NULL,
  `Humidity` varchar(100) DEFAULT NULL,
  `Vibration` varchar(255) DEFAULT NULL,
  `TimeStamp` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `l3a47`
--

INSERT INTO `l3a47` (`Sr`, `Temperature`, `Humidity`, `Vibration`, `TimeStamp`) VALUES
(1, '26', '72', '25000', '2021-12-14 10:37:43.985673'),
(2, '27.60', '61.00', '0', '2021-12-14 18:28:41.327235'),
(3, '27.40', '61.00', '0', '2021-12-14 18:28:51.471005'),
(4, '27.70', '59.00', '0', '2021-12-14 18:52:54.965251');

-- --------------------------------------------------------

--
-- Table structure for table `lock_access_relation`
--

CREATE TABLE `lock_access_relation` (
  `Lock_ID` varchar(100) NOT NULL,
  `Access_ID` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lock_access_relation`
--

INSERT INTO `lock_access_relation` (`Lock_ID`, `Access_ID`) VALUES
('L2A13', 'ae001'),
('L1A42', 'ae002'),
('L3A47', 'ae003');

-- --------------------------------------------------------

--
-- Table structure for table `lock_info`
--

CREATE TABLE `lock_info` (
  `Sr` int(255) NOT NULL,
  `Lock_ID` varchar(40) NOT NULL,
  `Area` varchar(100) NOT NULL,
  `contact` bigint(15) DEFAULT NULL,
  `o_fname` varchar(20) NOT NULL,
  `o_lname` varchar(20) NOT NULL,
  `postalCode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lock_info`
--

INSERT INTO `lock_info` (`Sr`, `Lock_ID`, `Area`, `contact`, `o_fname`, `o_lname`, `postalCode`) VALUES
(1, 'L14A2', 'Shivaji Complex, Pune', 7898097879, 'Pranjali', 'Amalkar', '442579'),
(2, 'L2A13', 'Ram Nagar, Wardha', 8858564216, 'Viplav', 'Khode', '442121'),
(3, 'L3A47', 'V.P Estate, Pune', 9898654111, 'Neha', 'Amalkar', '442103'),
(4, 'L4A12', 'Anand Sagar, Shegaon', 7845983745, 'Pranoti', 'Gaigol', '444203');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `lock_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Date` date DEFAULT NULL,
  `Time` time DEFAULT NULL,
  `accessby` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TimeStamp` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `access_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`lock_id`, `Date`, `Time`, `accessby`, `TimeStamp`, `access_id`) VALUES
('L4A12', '2021-07-15', '13:33:35', 'Pranoti', '2021-08-31 12:09:04', 'ae004'),
('L4A12', '2021-07-15', '13:34:08', 'Pranoti', '2021-08-31 12:09:04', 'ae004'),
('L4A12', '2021-07-15', '13:34:48', 'Pranoti', '2021-08-31 12:09:04', 'ae004'),
('L4A12', '2021-07-15', '13:35:18', 'Pranoti', '2021-08-31 12:09:04', 'ae004'),
('L4A12', '2021-07-15', '13:37:44', 'Pranoti', '2021-08-31 12:09:04', 'ae004'),
('L4A12', '2021-07-15', '13:38:04', 'Pranoti', '2021-08-31 12:09:04', 'ae004'),
('L4A12', '2021-07-15', '13:39:14', 'Pranoti', '2021-08-31 12:09:04', 'ae004'),
('L4A12', '2021-07-15', '13:40:39', 'Pranoti', '2021-08-31 12:09:04', 'ae004'),
('L1A42', '2021-07-15', '13:33:15', 'Viplav', '2021-08-31 12:09:04', 'ae001'),
('L1A42', '2021-07-15', '13:33:52', 'Viplav', '2021-08-31 12:09:04', 'ae001'),
('L1A42', '2021-07-15', '13:34:18', 'Viplav', '2021-08-31 12:09:04', 'ae001'),
('L1A42', '2021-07-15', '13:34:28', 'Viplav', '2021-08-31 12:09:04', 'ae001'),
('L1A42', '2021-07-15', '13:37:25', 'Viplav', '2021-08-31 12:09:04', 'ae001'),
('L1A42', '2021-07-15', '13:37:31', 'Viplav', '2021-08-31 12:09:04', 'ae001'),
('L1A42', '2021-07-15', '13:38:24', 'Viplav', '2021-08-31 12:09:04', 'ae001'),
('L1A42', '2021-07-15', '13:40:44', 'Viplav', '2021-08-31 12:09:04', 'ae001'),
('L3A47', '2021-07-15', '13:33:40', 'Pranjali', '2021-08-31 12:09:04', 'ae003'),
('L3A47', '2021-07-15', '13:33:58', 'Pranjali', '2021-08-31 12:09:04', 'ae003'),
('L3A47', '2021-07-15', '13:35:03', 'Pranjali', '2021-08-31 12:09:04', 'ae003'),
('L3A47', '2021-07-15', '13:35:13', 'Pranjali', '2021-08-31 12:09:04', 'ae003'),
('L3A47', '2021-07-15', '13:37:54', 'Pranjali', '2021-08-31 12:09:04', 'ae003'),
('L3A47', '2021-07-15', '13:38:44', 'Pranjali', '2021-08-31 12:09:04', 'ae003'),
('L3A47', '2021-07-15', '13:39:04', 'Pranjali', '2021-08-31 12:09:04', 'ae003'),
('L2A13', '2021-07-15', '13:33:25', 'Chinmay', '2021-08-31 12:09:04', 'ae002'),
('L2A13', '2021-07-15', '13:33:45', 'Chinmay', '2021-08-31 12:09:04', 'ae002'),
('L2A13', '2021-07-15', '13:34:38', 'Chinmay', '2021-08-31 12:09:04', 'ae002'),
('L2A13', '2021-07-15', '13:34:58', 'Chinmay', '2021-08-31 12:09:04', 'ae002'),
('L2A13', '2021-07-15', '13:37:36', 'Chinmay', '2021-08-31 12:09:04', 'ae002'),
('L2A13', '2021-07-15', '13:38:14', 'Chinmay', '2021-08-31 12:09:04', 'ae002'),
('L2A13', '2021-07-15', '13:38:34', 'Chinmay', '2021-08-31 12:09:04', 'ae002'),
('L2A13', '2021-07-15', '13:38:54', 'Chinmay', '2021-08-31 12:09:04', 'ae002'),
('L2A13', '2021-07-15', '13:40:19', 'Chinmay', '2021-08-31 12:09:04', 'ae002'),
('L2A13', '2021-07-15', '13:40:50', 'Chinmay', '2021-08-31 12:09:04', 'ae002'),
('L1A42', '2021-08-26', '07:30:58', 'Viplav', '2021-08-31 12:09:04', 'ae001'),
('L2A13', '2021-08-09', '09:30:29', 'Viplav', '2021-08-31 12:09:04', 'ae001'),
('L3A47', '2021-08-10', '15:28:20', 'Viplav', '2021-08-31 12:09:04', 'ae001');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `status` int(2) NOT NULL,
  `L2_status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`status`, `L2_status`) VALUES
(0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `id` bigint(255) NOT NULL,
  `userID` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `mobno` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`id`, `userID`, `password`, `mobno`) VALUES
(1, 'Viplavk', 'abc', 878811514),
(2, 'Viplav4506', 'vip', 7066883294),
(3, 'Pranjali123', '1234', 9359636480);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `casualty`
--
ALTER TABLE `casualty`
  ADD PRIMARY KEY (`sr`);

--
-- Indexes for table `l1a42`
--
ALTER TABLE `l1a42`
  ADD PRIMARY KEY (`Sr`);

--
-- Indexes for table `l2a13`
--
ALTER TABLE `l2a13`
  ADD PRIMARY KEY (`Sr`);

--
-- Indexes for table `l3a47`
--
ALTER TABLE `l3a47`
  ADD PRIMARY KEY (`Sr`);

--
-- Indexes for table `lock_info`
--
ALTER TABLE `lock_info`
  ADD PRIMARY KEY (`Sr`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `casualty`
--
ALTER TABLE `casualty`
  MODIFY `sr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `l1a42`
--
ALTER TABLE `l1a42`
  MODIFY `Sr` bigint(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `l2a13`
--
ALTER TABLE `l2a13`
  MODIFY `Sr` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `l3a47`
--
ALTER TABLE `l3a47`
  MODIFY `Sr` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lock_info`
--
ALTER TABLE `lock_info`
  MODIFY `Sr` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
