-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2023 at 12:55 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assesment`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_holder`
--

CREATE TABLE `account_holder` (
  `account_no` varchar(100) NOT NULL,
  `account_holder_name` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `contact` int(11) DEFAULT NULL,
  `date_of_account_created` varchar(100) DEFAULT NULL,
  `account_status` varchar(100) DEFAULT NULL,
  `account_type` varchar(100) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `account_holderid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account_holder`
--

INSERT INTO `account_holder` (`account_no`, `account_holder_name`, `city`, `contact`, `date_of_account_created`, `account_status`, `account_type`, `balance`, `account_holderid`) VALUES
('2044871', 'vipul sapra', 'mumbai', 2147483647, '24/8/21', 'active', 'current account', 1800000, 45726),
('2459788', 'kashyap patel', 'surat', 2147483647, '20/1/20', 'active', 'current account', 1500000, 2451),
('2647701', 'harish chauhan', 'mumbai', 2147483647, '01/3/21', 'active', 'saving account', 500000, 32401),
('3014780', 'himesh rana', 'mumbai', 2147483647, '15/2/19', 'active', 'saving account', 700000, 14870),
('5214000', 'harsh patel', 'surat', 2147483647, '02/8/22', 'active', 'current account', 2500000, 20004);

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `branch_id` int(11) NOT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `branch_city` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`branch_id`, `branch_name`, `branch_city`) VALUES
(850, 'HDFC thane', 'mumbai'),
(1024, 'bank of baroda adajan', 'surat'),
(1080, 'bank of baroda piplod', 'surat'),
(2450, 'yes bank borivalli', 'mumbai');

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `loan_no` int(11) DEFAULT NULL,
  `account_holderid` int(11) NOT NULL,
  `loan_amount` int(11) DEFAULT NULL,
  `loan_type` varchar(100) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`loan_no`, `account_holderid`, `loan_amount`, `loan_type`, `branch_id`) VALUES
(124221, 2451, 100000, 'study loan', 1024),
(245011, 14870, 2500000, 'home loan', 1080),
(421547, 20004, 5000000, 'personal loan', 1080),
(264012, 24770, 7500000, 'business loan', 850),
(147589, 32401, 1500000, 'home loan', 850),
(124587, 45726, 150000, 'study loan', 1024);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_holder`
--
ALTER TABLE `account_holder`
  ADD PRIMARY KEY (`account_no`),
  ADD KEY `account_holderid` (`account_holderid`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`account_holderid`),
  ADD KEY `branch_id` (`branch_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_holder`
--
ALTER TABLE `account_holder`
  ADD CONSTRAINT `account_holder_ibfk_1` FOREIGN KEY (`account_holderid`) REFERENCES `loan` (`account_holderid`);

--
-- Constraints for table `loan`
--
ALTER TABLE `loan`
  ADD CONSTRAINT `loan_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `bank` (`branch_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
