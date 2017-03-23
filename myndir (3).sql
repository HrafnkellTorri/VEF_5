-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 23, 2017 at 02:01 PM
-- Server version: 5.7.17-0ubuntu0.16.04.1
-- PHP Version: 7.0.15-0ubuntu0.16.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Verkefni_5_PDO`
--

-- --------------------------------------------------------

--
-- Table structure for table `myndir`
--

CREATE TABLE `myndir` (
  `id` int(11) NOT NULL,
  `link` varchar(500) NOT NULL,
  `myndheiti` varchar(150) NOT NULL,
  `textalysing` varchar(150) DEFAULT NULL,
  `eigandimyndar_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `myndir`
--

INSERT INTO `myndir` (`id`, `link`, `myndheiti`, `textalysing`, `eigandimyndar_id`) VALUES
(1, 'http://www.rci.com/static/images/content/india/C5/S5/c5-en_IN_all-destinations-Alps.jpg', 'Alparnir', 'Í ölpunum finnuru góð skíðasvæði', 1),
(2, 'https://theaviationist.com/wp-content/uploads/2013/09/PAK-FA-3.jpg', 'Pak-Fa T-50', 'Pak-Fa er nýjasta orustuþota Rússlands og Indlands', 2),
(3, 'http://theglobalstate.com/wp-content/uploads/2015/01/3v5p.jpg', 'Þýska stórveldið', 'Stórveldið 1871-1918', 1),
(4, 'http://ichef-1.bbci.co.uk/news/1024/media/images/83236000/jpg/_83236396_1146899.jpg', 'Breskar Tennur', 'Bretar verða undir miklum steríótýpum um tennur þeirra', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `myndir`
--
ALTER TABLE `myndir`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eigandimyndar_id` (`eigandimyndar_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `myndir`
--
ALTER TABLE `myndir`
  ADD CONSTRAINT `myndir_ibfk_1` FOREIGN KEY (`eigandimyndar_id`) REFERENCES `users` (`user_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
