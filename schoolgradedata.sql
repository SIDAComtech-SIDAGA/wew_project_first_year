-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2024 at 01:01 PM
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
-- Database: `mbugano_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `schoolgradedata`
--

CREATE TABLE `schoolgradedata` (
  `SchoolID` int(11) DEFAULT NULL,
  `Grade` int(11) NOT NULL,
  `Boys` int(11) DEFAULT NULL,
  `Girls` int(11) DEFAULT NULL,
  `StudentsEnrolled` int(11) DEFAULT NULL,
  `class_teacher` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schoolgradedata`
--

INSERT INTO `schoolgradedata` (`SchoolID`, `Grade`, `Boys`, `Girls`, `StudentsEnrolled`, `class_teacher`) VALUES
(6, 1, 12, 30, 42, 'siaga waziri kihongo'),
(8, 2, 6, 6, 12, 'Tutamalizana');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `schoolgradedata`
--
ALTER TABLE `schoolgradedata`
  ADD PRIMARY KEY (`Grade`),
  ADD KEY `schoolgradedata_ibfk_1` (`SchoolID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `schoolgradedata`
--
ALTER TABLE `schoolgradedata`
  ADD CONSTRAINT `schoolgradedata_ibfk_1` FOREIGN KEY (`SchoolID`) REFERENCES `school_info` (`School_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
