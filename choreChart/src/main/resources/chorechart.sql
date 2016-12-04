-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 03, 2016 at 06:29 PM
-- Server version: 5.6.33
-- PHP Version: 5.6.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chorechart`
--

-- --------------------------------------------------------

--
-- Table structure for table `child`
--

CREATE TABLE `child` (
  `childId` int(11) NOT NULL,
  `childName` varchar(50) NOT NULL,
  `childUsername` varchar(50) NOT NULL,
  `birthDate` date NOT NULL,
  `childPassword` varchar(50) NOT NULL,
  `currentBalance` double DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `child`
--

INSERT INTO `child` (`childId`, `childName`, `childUsername`, `birthDate`, `childPassword`, `currentBalance`, `parentId`) VALUES
(1, 'Bobby Doe', 'bboy2', '2010-11-09', '1cur12', 8.75, 1),
(2, 'Sally Doe', 'ddgurl', '2011-12-05', 'brby1', 10.95, 1),
(3, 'Shirly Smith', 'ssrdrgrl', '2006-07-24', 'bdth456', 16.25, 2),
(4, 'Monique Jones', 'mdoll', '2005-04-12', '56fgthgg', 24.5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `chore`
--

CREATE TABLE `chore` (
  `choreId` int(11) NOT NULL,
  `childId` int(11) NOT NULL,
  `choreName` varchar(50) NOT NULL,
  `choreDescription` text NOT NULL,
  `chorePayout` double NOT NULL,
  `dayOfWeek` char(1) NOT NULL,
  `isRecurring` tinyint(1) NOT NULL,
  `isComplete` tinyint(1) NOT NULL,
  `isConfirmedComplete` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chore`
--

INSERT INTO `chore` (`choreId`, `childId`, `choreName`, `choreDescription`, `chorePayout`, `dayOfWeek`, `isRecurring`, `isComplete`, `isConfirmedComplete`) VALUES
(1, 2, 'Wash Dishes', 'Get soap, wash, rinse, dry', 4.5, 'T', 1, 0, 0),
(2, 3, 'Mow Lawn', 'get mower, mow lawn', 15, 's', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
  `parentId` int(11) NOT NULL,
  `parentName` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`parentId`, `parentName`, `email`, `password`) VALUES
(1, 'John Bob Doe', 'jd@email.com', 'hJu7L021'),
(2, 'Jane Smith', 'js@hotmail.com', '754269ot'),
(3, 'Mary Jones', 'mj@outlook.com', 'DYTRF888b');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `child`
--
ALTER TABLE `child`
  ADD PRIMARY KEY (`childId`),
  ADD KEY `parentId` (`parentId`);

--
-- Indexes for table `chore`
--
ALTER TABLE `chore`
  ADD PRIMARY KEY (`choreId`);

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`parentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `child`
--
ALTER TABLE `child`
  MODIFY `childId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `chore`
--
ALTER TABLE `chore`
  MODIFY `choreId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `parent`
--
ALTER TABLE `parent`
  MODIFY `parentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `child`
--
ALTER TABLE `child`
  ADD CONSTRAINT `child_ibfk_1` FOREIGN KEY (`parentId`) REFERENCES `parent` (`parentId`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
