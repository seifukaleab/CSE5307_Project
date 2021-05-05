-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2021 at 01:14 PM
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
-- Database: `lottery`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`Username`, `Password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `availableloto`
--

CREATE TABLE `availableloto` (
  `LotoNumber` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `availableloto`
--

INSERT INTO `availableloto` (`LotoNumber`) VALUES
('15197'),
('3591'),
('83203'),
('22940'),
('4958'),
('55554'),
('53944'),
('54160'),
('95236'),
('40879'),
('56774'),
('40749'),
('35475'),
('85384'),
('29637'),
('45750'),
('33064'),
('80464'),
('58959'),
('22966'),
('99204'),
('29085'),
('48496'),
('46320'),
('86388');

-- --------------------------------------------------------

--
-- Table structure for table `prizes`
--

CREATE TABLE `prizes` (
  `Id` int(100) NOT NULL,
  `Rank` varchar(100) NOT NULL,
  `Type` varchar(100) NOT NULL,
  `Amount` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prizes`
--

INSERT INTO `prizes` (`Id`, `Rank`, `Type`, `Amount`) VALUES
(7, '1', 'Apartment', '1');

-- --------------------------------------------------------

--
-- Table structure for table `soldloto`
--

CREATE TABLE `soldloto` (
  `sold` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soldloto`
--

INSERT INTO `soldloto` (`sold`) VALUES
('54140'),
('36852'),
('49415'),
('50686'),
('15567'),
('61452'),
('40069'),
('17381'),
('90696'),
('55035'),
('42339'),
('77375'),
('80038'),
('36436');

-- --------------------------------------------------------

--
-- Table structure for table `winners`
--

CREATE TABLE `winners` (
  `winnerLoto` varchar(255) NOT NULL,
  `Type` varchar(100) NOT NULL,
  `Rank` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `winners`
--

INSERT INTO `winners` (`winnerLoto`, `Type`, `Rank`) VALUES
('8817', 'Car', '1'),
('62506', 'car', '2'),
('32400', 'car ', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `prizes`
--
ALTER TABLE `prizes`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `prizes`
--
ALTER TABLE `prizes`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
