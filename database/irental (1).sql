-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2022 at 12:10 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `irental`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `car_id` int(20) NOT NULL,
  `car_name` varchar(50) NOT NULL,
  `car_nameplate` varchar(50) NOT NULL,
  `car_img` varchar(50) DEFAULT 'NA',
  `ac_price` float NOT NULL,
  `non_ac_price` float NOT NULL,
  `ac_price_per_day` float NOT NULL,
  `non_ac_price_per_day` float NOT NULL,
  `car_availability` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`car_id`, `car_name`, `car_nameplate`, `car_img`, `ac_price`, `non_ac_price`, `ac_price_per_day`, `non_ac_price_per_day`, `car_availability`) VALUES
(1, 'Bmw', 'KA19MG9910', 'assets/img/cars/bmw.png', 10, 8, 2000, 1600, 'no'),
(2, 'mercdse Gle', 'MH20GH9452', 'assets/img/cars/marc.png', 9, 7, 1800, 1400, 'yes'),
(3, 'mustang gt', 'GA16NM9125', 'assets/img/cars/mus.png', 13, 11, 2600, 2200, 'yes'),
(4, 'Ford Figo', 'GJ17HZ4001', 'assets/img/cars/figo.png', 11, 9, 2200, 1800, 'yes'),
(6, 'Jeep wrangler', 'KL18MJ8472', 'assets/img/cars/jeep.jpg', 15, 13, 3000, 2600, 'yes'),
(7, 'Honda Amaze', 'PJ16YX8820', 'assets/img/cars/amaze.png', 14, 12, 2800, 2400, 'no'),
(8, 'Toyota Camery ', 'WB15EX5005', 'assets/img/cars/camry.png', 12, 10, 2400, 2000, 'yes'),
(9, 'Hyundai sonata ', 'BR01HX8001', 'assets/img/cars/sonata.png', 10, 8, 2000, 1600, 'yes'),
(10, 'Rolls Royse ', 'TN17MS1997', 'assets/img/cars/rols.png', 120, 70, 2400, 2000, 'yes'),
(11, 'Ferrari ', 'KA12EX1883', 'assets/img/cars/fer.png', 15, 13, 3000, 2600, 'yes'),
(12, 'Toyota Fortuner', 'GA08MX1997', 'assets/img/cars/Fortuner.png', 16, 14, 3200, 2800, 'yes'),
(13, 'Bentley ', 'MH02DC1997', 'assets/img/cars/ben.png', 14, 12, 2800, 2400, 'yes'),
(14, 'Aston martin ', 'XQKU3454', 'assets/img/cars/ast.png', 100, 70, 1900, 1700, 'no');

-- --------------------------------------------------------

--
-- Table structure for table `clientcars`
--

CREATE TABLE `clientcars` (
  `car_id` int(20) NOT NULL,
  `client_username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clientcars`
--

INSERT INTO `clientcars` (`car_id`, `client_username`) VALUES
(2, 'ali'),
(4, 'hemn'),
(6, 'lare'),
(3, 'mzhda'),
(7, 'nwa'),
(8, 'shene');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `client_username` varchar(50) NOT NULL,
  `client_name` varchar(50) NOT NULL,
  `client_phone` varchar(15) NOT NULL,
  `client_email` varchar(25) NOT NULL,
  `client_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_estonian_ci NOT NULL,
  `client_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`client_username`, `client_name`, `client_phone`, `client_email`, `client_address`, `client_password`) VALUES
('ali', 'Ali Abbas', '07704627575', 'maqu180110@uniq.edu.iq', '3alwaka', 'ali'),
('The classicBOY', 'rahand abbas suhbat ', '07704627575', 'rahandrap0987@gmail.com', '3alwaka', 'oasman45');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_username` varchar(50) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `customer_phone` varchar(15) NOT NULL,
  `customer_email` varchar(25) NOT NULL,
  `customer_address` varchar(50) NOT NULL,
  `lng` varchar(11) NOT NULL,
  `lat` varchar(11) NOT NULL,
  `customer_password` varchar(20) NOT NULL,
  `lnk` varchar(30) NOT NULL,
  `type` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_username`, `customer_name`, `customer_phone`, `customer_email`, `customer_address`, `lng`, `lat`, `customer_password`, `lnk`, `type`) VALUES
('ali', 'ali', '009647715648047', 'aaqu180087@uniq.edu.iq', 'baxyare', '	45.433333', '	35.550000', 'ali', '', 'R'),
('NwaHamid', 'Nwa Hamid', '009647719700955', 'nwna.nh@gmail.com', 'sulaimaniyah ', '0', '0', 'Nwananana', '', ''),
('The classicBOY', 'cars', '009647715648047', 'maqu180110@uniq.edu.iq', 'baxyare', '0', '0', 'oasman45', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `driver_id` int(20) NOT NULL,
  `driver_name` varchar(50) NOT NULL,
  `dl_number` varchar(50) NOT NULL,
  `driver_phone` varchar(15) NOT NULL,
  `driver_address` varchar(50) NOT NULL,
  `driver_gender` varchar(10) NOT NULL,
  `client_username` varchar(50) NOT NULL,
  `driver_availability` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`driver_id`, `driver_name`, `dl_number`, `driver_phone`, `driver_address`, `driver_gender`, `client_username`, `driver_availability`) VALUES
(1, 'nveen abbas', 'IQ_LSC8445', '00967715648047', 'sulaymani', 'female', 'nveen ', 'no'),
(2, 'karzan', 'IQ_LSC8456', '9147523684', 'chamchmal', 'male', 'karzan', 'yes'),
(3, 'adil', 'IQ_LSC8451', '00967715648047', 'hawler', 'Male', 'adil', 'no'),
(4, 'Sonia', 'IQ_MND8451', '00967715648047', 'karkuk', 'Female', 'sonia', 'yes'),
(5, 'mzhda', 'IQ_RTH45654', '07700405454', 'halabja', 'Female', 'mzhda', 'yes'),
(8, 'Ali', '123455644434', '07701347431', 'Suli', 'Male', 'ali', 'no'),
(9, 'Nwa', 'A82736282', '07719700955', 'Suli', 'Female', 'ali', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `name` varchar(20) NOT NULL,
  `e_mail` varchar(30) NOT NULL,
  `message` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`name`, `e_mail`, `message`) VALUES
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('rahand', 'aaqu180087@uniq.edu.iq', 'sb');

-- --------------------------------------------------------

--
-- Table structure for table `location_tab`
--

CREATE TABLE `location_tab` (
  `locationLatitude` varchar(50) NOT NULL,
  `locationLongitude` varchar(50) NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location_tab`
--

INSERT INTO `location_tab` (`locationLatitude`, `locationLongitude`, `ID`) VALUES
('45.433333', '35.60072755271524', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rentedcars`
--

CREATE TABLE `rentedcars` (
  `id` int(100) NOT NULL,
  `customer_username` varchar(50) NOT NULL,
  `car_id` int(20) NOT NULL,
  `driver_id` int(20) NOT NULL,
  `booking_date` date NOT NULL,
  `rent_start_date` date NOT NULL,
  `rent_end_date` date NOT NULL,
  `car_return_date` date DEFAULT NULL,
  `fare` double NOT NULL,
  `charge_type` varchar(25) NOT NULL DEFAULT 'days',
  `distance` double DEFAULT NULL,
  `no_of_days` int(50) DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `return_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rentedcars`
--

INSERT INTO `rentedcars` (`id`, `customer_username`, `car_id`, `driver_id`, `booking_date`, `rent_start_date`, `rent_end_date`, `car_return_date`, `fare`, `charge_type`, `distance`, `no_of_days`, `total_amount`, `return_status`) VALUES
(574681247, 'hawkar', 3, 1, '2021-04-18', '2021-04-19', '2021-04-20', '2021-04-20', 13, 'km', 421, 3, 5473, 'R'),
(574681252, 'reben', 11, 2, '2021-04-20', '2021-04-22', '2021-05-01', '2021-05-01', 13, 'km', 200, 0, 2600, 'R'),
(574681253, 'chawan', 6, 7, '2021-05-10', '2021-05-11', '2021-05-26', '2021-05-26', 2600, 'days', NULL, 11, 28600, 'R'),
(574681258, 'ali', 6, 3, '2021-06-06', '2021-06-06', '2021-06-23', NULL, 3000, 'days', NULL, NULL, NULL, 'NR'),
(574681268, 'ali', 14, 1, '2021-06-06', '2021-06-16', '2021-06-17', NULL, 0, '', NULL, NULL, NULL, 'NR'),
(574681269, 'The classicBOY', 4, 2, '2021-06-06', '2021-06-09', '2021-06-15', NULL, 0, '', NULL, NULL, NULL, 'NR'),
(574681270, 'The classicBOY', 4, 2, '2021-06-06', '2021-06-09', '2021-06-15', NULL, 0, '', NULL, NULL, NULL, 'NR'),
(574681271, 'The classicBOY', 2, 0, '2021-06-07', '2021-06-09', '2021-06-10', NULL, 0, '', NULL, NULL, NULL, 'NR'),
(574681272, 'The classicBOY', 0, 0, '2021-06-07', '1970-01-01', '1970-01-01', NULL, 0, '', NULL, NULL, NULL, 'NR'),
(574681273, 'ali', 8, 0, '2021-06-08', '2021-06-16', '2021-06-16', NULL, 2400, 'days', NULL, NULL, NULL, 'NR'),
(574681274, 'ali', 1, 8, '2021-06-08', '2021-06-08', '2021-06-23', NULL, 10, 'km', NULL, NULL, NULL, 'NR'),
(574681275, 'ali', 1, 1, '2021-06-09', '2021-06-11', '2021-06-18', NULL, 10, 'km', NULL, NULL, NULL, 'NR'),
(574681276, 'ali', 1, 8, '2021-06-09', '2021-06-11', '2021-06-18', NULL, 10, 'km', NULL, NULL, NULL, 'NR');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`car_id`),
  ADD UNIQUE KEY `car_nameplate` (`car_nameplate`);

--
-- Indexes for table `clientcars`
--
ALTER TABLE `clientcars`
  ADD PRIMARY KEY (`car_id`),
  ADD KEY `client_username` (`client_username`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_username`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_username`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`driver_id`),
  ADD UNIQUE KEY `dl_number` (`dl_number`),
  ADD KEY `client_username` (`client_username`);

--
-- Indexes for table `location_tab`
--
ALTER TABLE `location_tab`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `rentedcars`
--
ALTER TABLE `rentedcars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_username` (`customer_username`),
  ADD KEY `car_id` (`car_id`),
  ADD KEY `driver_id` (`driver_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `car_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `driver_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `location_tab`
--
ALTER TABLE `location_tab`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rentedcars`
--
ALTER TABLE `rentedcars`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=574681284;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
