-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2021 at 05:27 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql_car`
--

-- --------------------------------------------------------

--
-- Table structure for table `sm1`
--

CREATE TABLE `sm1` (
  `date` date NOT NULL,
  `u1` varchar(255) DEFAULT NULL,
  `u2` varchar(255) DEFAULT NULL,
  `u3` varchar(255) DEFAULT NULL,
  `u4` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sm1`
--

INSERT INTO `sm1` (`date`, `u1`, `u2`, `u3`, `u4`) VALUES
('2021-04-07', 'nazmursakib30@gmail.com', '0', '0', '0'),
('2021-05-07', 'nazmursakib30@gmail.com', 'nazmursakib31@gmail.com', 'nazmursakib31@gmail.com', '0'),
('2021-05-11', 'nazmursakib31@gmail.com', '', 'nazmursakib31@gmail.com', ''),
('2021-05-12', '0', '0', '0', '0'),
('2021-05-13', 'nazmursakib30@gmail.com', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sm2`
--

CREATE TABLE `sm2` (
  `date` date NOT NULL,
  `u1` varchar(255) DEFAULT NULL,
  `u2` varchar(255) DEFAULT NULL,
  `u3` varchar(255) DEFAULT NULL,
  `u4` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sm2`
--

INSERT INTO `sm2` (`date`, `u1`, `u2`, `u3`, `u4`) VALUES
('2021-04-07', '0', '0', '0', '0'),
('2021-05-07', '0', '0', '0', '0'),
('2021-05-11', '', '', '', ''),
('2021-05-12', '0', '0', '0', '0'),
('2021-05-13', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sm3`
--

CREATE TABLE `sm3` (
  `date` date NOT NULL,
  `u1` varchar(255) DEFAULT NULL,
  `u2` varchar(255) DEFAULT NULL,
  `u3` varchar(255) DEFAULT NULL,
  `u4` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sm3`
--

INSERT INTO `sm3` (`date`, `u1`, `u2`, `u3`, `u4`) VALUES
('2021-04-07', '0', '0', '0', '0'),
('2021-05-07', '0', '0', '0', '0'),
('2021-05-11', '', '', '', ''),
('2021-05-12', '0', '0', '0', '0'),
('2021-05-13', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sm4`
--

CREATE TABLE `sm4` (
  `date` date NOT NULL,
  `u1` varchar(255) DEFAULT NULL,
  `u2` varchar(255) DEFAULT NULL,
  `u3` varchar(255) DEFAULT NULL,
  `u4` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sm4`
--

INSERT INTO `sm4` (`date`, `u1`, `u2`, `u3`, `u4`) VALUES
('2021-04-07', '0', '0', '0', '0'),
('2021-05-07', '0', '0', '0', '0'),
('2021-05-11', '', '', '', ''),
('2021-05-12', '0', '0', '0', '0'),
('2021-05-13', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sm5`
--

CREATE TABLE `sm5` (
  `date` date NOT NULL,
  `u1` varchar(255) DEFAULT NULL,
  `u2` varchar(255) DEFAULT NULL,
  `u3` varchar(255) DEFAULT NULL,
  `u4` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sm5`
--

INSERT INTO `sm5` (`date`, `u1`, `u2`, `u3`, `u4`) VALUES
('2021-04-07', '0', '0', '0', '0'),
('2021-05-07', '0', 'nazmursakib31@gmail.com', '0', '0'),
('2021-05-11', '', '', '', ''),
('2021-05-12', '0', '0', '0', '0'),
('2021-05-13', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `linum` varchar(200) NOT NULL,
  `engnum` varchar(200) NOT NULL,
  `pass` varchar(200) NOT NULL,
  `type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `address`, `phone`, `linum`, `engnum`, `pass`, `type`) VALUES
(25, 'Admin Sakib', 'nazmursakib30@gmail.com', '187/2 gp cha ,mohakhali,dhaka', '0181 111 8288', 'd', 'd', 'c4936bd2eef05c76bf6bde3b50ec366c660be5f4', 1),
(26, 'Nazmur Sakib', 'nazmursakib31@gmail.com', '187/2 gp cha ,mohakhali,dhaka', '0181 111 8288', 'sd', 'sd', 'c4936bd2eef05c76bf6bde3b50ec366c660be5f4', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sm1`
--
ALTER TABLE `sm1`
  ADD PRIMARY KEY (`date`);

--
-- Indexes for table `sm2`
--
ALTER TABLE `sm2`
  ADD PRIMARY KEY (`date`);

--
-- Indexes for table `sm3`
--
ALTER TABLE `sm3`
  ADD PRIMARY KEY (`date`);

--
-- Indexes for table `sm4`
--
ALTER TABLE `sm4`
  ADD PRIMARY KEY (`date`);

--
-- Indexes for table `sm5`
--
ALTER TABLE `sm5`
  ADD PRIMARY KEY (`date`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
