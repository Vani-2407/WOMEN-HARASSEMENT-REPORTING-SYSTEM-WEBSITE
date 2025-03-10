-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2025 at 03:00 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `women`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AID` int(10) NOT NULL,
  `EMAIL` varchar(120) NOT NULL,
  `APASS` varchar(130) NOT NULL,
  `AKEY` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AID`, `EMAIL`, `APASS`, `AKEY`) VALUES
(1, '123@gmail.com', 'vani', 12345);

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `CID` int(10) NOT NULL,
  `NAME` varchar(120) NOT NULL,
  `AGE` int(3) NOT NULL,
  `DIS` varchar(120) NOT NULL,
  `FILE` varchar(120) NOT NULL,
  `CDIS` varchar(120) NOT NULL,
  `CAREA` varchar(120) NOT NULL,
  `PROBLEM` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`CID`, `NAME`, `AGE`, `DIS`, `FILE`, `CDIS`, `CAREA`, `PROBLEM`) VALUES
(1, 'asifa', 45, 'Chennai', 'proof/menus.png', 'Chennai', 'unwelcome territory', 'Physical Harassment'),
(2, 'maya', 45, 'Chennai', 'proof/menus.png', 'Chennai', 'unwelcome territory', 'Physical Harassment'),
(3, 'vino', 45, 'Chennai', 'proof/menus.png', 'Chennai', 'unwelcome territory', 'Physical Harassment'),
(4, 'alia', 31, 'Erode', 'proof/about.png', 'Nagapattinam', 'unsafe space', 'Verbal Harassment'),
(5, 'Tara', 20, 'Chennai', 'proof/proof.png', 'Chennai', 'Area with limited surveillance', 'Physical Harassment');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `FID` int(10) NOT NULL,
  `FNAME` varchar(120) NOT NULL,
  `FEED` varchar(120) NOT NULL,
  `LOG` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`FID`, `FNAME`, `FEED`, `LOG`) VALUES
(1, '', 'good', '2025-01-16'),
(2, '', 'good', '2025-01-16'),
(3, '', 'good', '2025-01-19'),
(4, '', 'Good', '2025-02-01');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `RID` int(10) NOT NULL,
  `RPHO` int(12) NOT NULL,
  `RPASS` varchar(120) NOT NULL,
  `CPASS` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`RID`, `RPHO`, `RPASS`, `CPASS`) VALUES
(1, 2147483647, 'asifa', '12345'),
(2, 2147020460, 'maya', 'maya'),
(3, 2030156457, 'vino', 'vinovino'),
(4, 1111111111, 'alia', 'alia'),
(5, 1234567890, 'tara', 'tara34');

-- --------------------------------------------------------

--
-- Table structure for table `sign`
--

CREATE TABLE `sign` (
  `SID` int(10) NOT NULL,
  `SPHO` varchar(120) NOT NULL,
  `SPASS` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`AID`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`CID`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`FID`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`RID`);

--
-- Indexes for table `sign`
--
ALTER TABLE `sign`
  ADD PRIMARY KEY (`SID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `AID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `CID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `FID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `RID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sign`
--
ALTER TABLE `sign`
  MODIFY `SID` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
