-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2022 at 10:04 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `acholders`
--

-- --------------------------------------------------------

--
-- Table structure for table `info1`
--

CREATE TABLE `info1` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `trans` varchar(50) NOT NULL,
  `bal` int(11) NOT NULL,
  `password` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `info1`
--

INSERT INTO `info1` (`id`, `name`, `trans`, `bal`, `password`) VALUES
('1001', 'umang', 'payment 5000', 1233, 12124),
('1002', 'umang', 'payment 5000', 1233, 12125),
('1003', 'umang', 'payment 5000', 1233, 12122),
('1004', 'umang', 'payment 5000', 1233, 1242242),
('1005', 'umang', 'payment 5000', 1233, 12124434),
('1006', 'umang', 'payment 5000', 1233, 1212453),
('1007', 'umang', 'payment 5000', 1233, 1212243),
('1008', 'umang', 'payment 5000', 1233, 1244272);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `info1`
--
ALTER TABLE `info1`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `password` (`password`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
