-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2024 at 01:40 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `myinfo`
--

CREATE TABLE `myinfo` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `age` int(11) NOT NULL,
  `city` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `myinfo`
--

INSERT INTO `myinfo` (`id`, `name`, `age`, `city`) VALUES
(1, 'salman khan', 62, 'mumbai'),
(3, 'ranbir kapoor', 40, 'lucknow'),
(4, 'varun dhawan', 35, 'mumbai'),
(5, 'sonam kapoor', 25, 'allahabad'),
(6, 'alia bhatt', 24, 'delhi'),
(14, 'Prashant Kumar', 26, 'Delhi'),
(15, 'Sumit Kumar', 36, 'mumbai'),
(19, 'salman khan', 62, 'mumbai'),
(20, 'ranbir kapoor', 40, 'lucknow'),
(21, 'varun dhawan', 35, 'mumbai'),
(22, 'sonam kapoor', 25, 'allahabad'),
(23, 'alia bhatt', 24, 'delhi'),
(24, 'Prashant Kumar', 26, 'Delhi'),
(25, 'Sumit Kumar', 36, 'mumbai');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `myinfo`
--
ALTER TABLE `myinfo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `myinfo`
--
ALTER TABLE `myinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
