-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2019 at 10:00 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(100) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `place_name` varchar(100) NOT NULL,
  `hotel_name` varchar(100) NOT NULL,
  `need_trans_seat` int(100) NOT NULL,
  `need_room` int(100) NOT NULL,
  `trans_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `cust_id`, `place_name`, `hotel_name`, `need_trans_seat`, `need_room`, `trans_name`) VALUES
(22, 18, 'coxsbazar', 'hotel coxsbazar 1', 2, 2, 'bus 1'),
(23, 1, 'rangamati', 'hotel rangamati 1', 2, 3, 'plane 1');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_name` varchar(100) NOT NULL,
  `cust_password` varchar(100) NOT NULL,
  `cust_address` varchar(100) NOT NULL,
  `cust_mail` varchar(1000) NOT NULL,
  `cust_phone` varchar(11) NOT NULL,
  `cust_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_name`, `cust_password`, `cust_address`, `cust_mail`, `cust_phone`, `cust_id`) VALUES
('fahim', '2468', 'dhaka', 'fahim@gmail.com', '01869520885', 1),
('hridoy', '1234', 'barisal', 'hridoy@gmail', '014778474', 2),
('sakib', '657', 'chadpur', 'sakib@gmail', '0987745684', 3),
('ssakib', '134', 'cadpur', 'sakib@gmail', '134567', 14),
('jugal', '12', 'habiganj', 'jugal@gmail', '1111', 18),
('suvo', '1444', 'ramganj', 'suvo@mail', '2222', 19),
('hamza', '1', 'habiganj', 'hamza@mail', '1111', 20),
('zahin', '999', 'lak', 'zahin@gmail', '999', 21),
('nahin', 'nahin', 'laks', 'nahin@mail', '9999', 22);

-- --------------------------------------------------------

--
-- Table structure for table `customer_bill`
--

CREATE TABLE `customer_bill` (
  `cust_id` int(100) NOT NULL,
  `tot_room_cost` int(100) NOT NULL,
  `need_room` int(100) NOT NULL,
  `need_trans_seat` int(100) NOT NULL,
  `tot_trans_fare` int(100) NOT NULL,
  `tot_bill` int(100) NOT NULL,
  `index` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_bill`
--

INSERT INTO `customer_bill` (`cust_id`, `tot_room_cost`, `need_room`, `need_trans_seat`, `tot_trans_fare`, `tot_bill`, `index`) VALUES
(18, 200, 2, 2, 200, 400, 1),
(1, 300, 3, 2, 1000, 1300, 2);

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `hotel_id` int(100) NOT NULL,
  `place_name` varchar(100) NOT NULL,
  `room_cost` int(100) NOT NULL,
  `tot_room` int(100) NOT NULL,
  `avl_room` int(100) NOT NULL,
  `hotel_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`hotel_id`, `place_name`, `room_cost`, `tot_room`, `avl_room`, `hotel_name`) VALUES
(5, 'coxsbazar', 100, 5, 3, 'hotel coxsbazar 1'),
(6, 'coxsbazar', 100, 5, 5, 'hotel coxsbazar 2'),
(7, 'bandarban', 100, 5, 5, 'hotel bandarban 1'),
(8, 'bandarban', 100, 5, 5, 'hotel bandarban 2'),
(9, 'rangamati', 100, 5, 2, 'hotel rangamati 1'),
(10, 'rangamati', 100, 5, 5, 'hotel rangamati 2'),
(11, 'sajek', 100, 5, 5, 'hotel sajek 1'),
(12, 'sajek', 100, 5, 5, 'hotel sajek 2');

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

CREATE TABLE `place` (
  `place_id` int(100) NOT NULL,
  `place_name` varchar(1000) NOT NULL,
  `place_img` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `place`
--

INSERT INTO `place` (`place_id`, `place_name`, `place_img`) VALUES
(2, 'coxsbazar', 'coxsbazar.jpg'),
(3, 'rangamati', 'rangamati.jpg'),
(4, 'bandarban', 'bandarban.jpg'),
(5, 'sajek', 'sajek.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE `transport` (
  `trans_id` int(100) NOT NULL,
  `trans_type` varchar(100) NOT NULL,
  `tot_seat` int(10) NOT NULL,
  `trans_fare` int(100) NOT NULL,
  `trans_name` varchar(100) NOT NULL,
  `avl_seat` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transport`
--

INSERT INTO `transport` (`trans_id`, `trans_type`, `tot_seat`, `trans_fare`, `trans_name`, `avl_seat`) VALUES
(10, 'plane', 10, 500, 'plane 1', 8),
(11, 'bus', 10, 100, 'bus 1', 8),
(13, 'bus', 15, 90, 'bus 2', 15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `customer_bill`
--
ALTER TABLE `customer_bill`
  ADD PRIMARY KEY (`index`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`hotel_id`);

--
-- Indexes for table `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`place_id`);

--
-- Indexes for table `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`trans_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `customer_bill`
--
ALTER TABLE `customer_bill`
  MODIFY `index` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `hotel_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `place`
--
ALTER TABLE `place`
  MODIFY `place_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transport`
--
ALTER TABLE `transport`
  MODIFY `trans_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
