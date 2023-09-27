-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2023 at 04:36 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `music_festival`
--

-- --------------------------------------------------------

--
-- Table structure for table `lineup`
--

CREATE TABLE `lineup` (
  `ID` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `date` varchar(225) NOT NULL,
  `time` varchar(225) NOT NULL,
  `venue` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lineup`
--

INSERT INTO `lineup` (`ID`, `name`, `date`, `time`, `venue`) VALUES
(1, 'Taylor Swift', '1st October', '19.00 - Finish', 'Harmony Park'),
(2, 'Coldplay', '5th October', '19.00 - Finish', 'Starlight Stadium'),
(3, 'Kendrick Lamar', '7th October', '14.30 - Finish', 'Sunset Beach'),
(4, 'Billie Eilish', '10th October', '19.00 - Finish', 'Moonlit Grove'),
(5, 'Ed Sheeran', '12th October', '19.00 - Finish', 'Urban Beats Warehouse');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lineup`
--
ALTER TABLE `lineup`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lineup`
--
ALTER TABLE `lineup`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
