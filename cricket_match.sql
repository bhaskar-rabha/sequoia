-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2019 at 11:44 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.0.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cricket_match`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `updated_at`, `created_at`) VALUES
(1, 'India', '2019-02-24 08:20:55', '2019-02-24 08:20:05'),
(2, 'Pakistan', '2019-02-24 08:21:04', '2019-02-24 08:20:05'),
(3, 'Turkey', '2019-02-24 08:20:42', '2019-02-24 08:20:42'),
(4, 'China', '2019-02-24 08:20:42', '2019-02-24 08:20:42');

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` int(11) NOT NULL,
  `match_name` varchar(40) DEFAULT NULL,
  `country_id1` int(11) DEFAULT NULL,
  `country_id2` int(11) DEFAULT NULL,
  `match_date` date DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `match_name`, `country_id1`, `country_id2`, `match_date`, `updated_at`, `created_at`) VALUES
(3, 'IPL', 1, 2, '2019-02-26', '2019-02-24 04:02:39', '2019-02-24 04:02:39');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `country` varchar(40) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `country`, `updated_at`, `created_at`) VALUES
(1, 'A', 'india', '2019-02-24 08:33:56', '2019-02-24 02:29:11'),
(2, 'B', 'india', '2019-02-24 08:33:58', '2019-02-24 02:30:15'),
(3, 'C', 'india', '2019-02-24 08:34:03', '2019-02-24 02:31:32'),
(4, 'D', 'india', '2019-02-24 03:04:20', '2019-02-24 03:04:20'),
(5, 'E', 'pakistan', '2019-02-24 03:04:32', '2019-02-24 03:04:32'),
(6, 'F', 'pakistan', '2019-02-24 03:04:47', '2019-02-24 03:04:47'),
(7, 'G', 'pakistan', '2019-02-24 03:04:58', '2019-02-24 03:04:58'),
(8, 'H', 'pakistan', '2019-02-24 03:05:08', '2019-02-24 03:05:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
