-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2023 at 05:56 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance_record`
--

CREATE TABLE `attendance_record` (
  `id` int(255) NOT NULL,
  `date_attend` date NOT NULL,
  `status` varchar(255) NOT NULL,
  `empno` int(255) NOT NULL,
  `time_in` time(6) NOT NULL,
  `time_out` time(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance_record`
--

INSERT INTO `attendance_record` (`id`, `date_attend`, `status`, `empno`, `time_in`, `time_out`) VALUES
(8, '2023-04-24', 'present', 3, '00:00:00.000000', '19:30:00.0000'),
(9, '2023-04-24', 'present', 2, '00:00:00.000000', '07:30:00.0000'),
(10, '2023-04-24', 'present', 1, '00:00:00.000000', '15:16:00.0000'),
(11, '2023-04-24', 'present', 4, '00:00:00.000000', '15:17:00.0000'),
(12, '2023-04-24', 'present', 5, '00:00:00.000000', '15:35:00.0000'),
(13, '2023-04-24', 'present', 2, '00:00:00.000000', '00:00:00.0000'),
(14, '2023-04-25', 'present', 4, '00:00:00.000000', '15:17:00.0000'),
(15, '2023-04-24', 'present', 5, '00:00:00.000000', '15:35:00.0000'),
(16, '0000-00-00', 'absent', 5, '00:00:00.000000', '00:00:00.0000'),
(17, '2023-04-24', 'present', 5, '00:00:00.000000', '00:00:00.0000'),
(18, '2023-04-24', 'present', 5, '00:00:00.000000', '00:00:00.0000'),
(19, '2023-04-24', 'absent', 5, '00:00:00.000000', '00:00:00.0000'),
(20, '2023-04-24', 'present', 6, '00:00:00.000000', '00:00:00.0000'),
(23, '2023-04-25', 'present', 7, '18:48:00.000000', '00:00:00.0000'),
(24, '2023-05-08', 'present', 7, '06:58:51.000000', '00:00:00.0000');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `empno` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` int(255) NOT NULL,
  `phone` int(255) NOT NULL,
  `dname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`empno`, `fname`, `lname`, `gender`, `address`, `email`, `phone`, `dname`) VALUES
(1, ' Emmanuel Sahr', 'Dauda', ' MALE', ' Allen Town', 0, 74380058, 'SYSTEM DEVELOPMENT TEAM'),
(2, ' Maada', 'Mansaray', ' MALE', ' Allen Town', 0, 74380058, 'SYSTEM DEVELOPMENT TEAM'),
(3, ' Emmanuel Sahr', 'Dauda', ' MALE', ' Allen Town', 0, 74380058, 'SYSTEM DEVELOPMENT TEAM'),
(4, ' Emmanuella Sia', 'Dauda', ' FEMALE', ' Allen Town', 0, 74380058, 'ROKUPA FACILITY'),
(5, ' Emmanuel Sahr', 'Dauda', ' MALE', ' Allen Town', 0, 74380058, 'SYSTEM DEVELOPMENT TEAM'),
(6, ' Wenday', 'Kallon', ' FEMALE', ' Allen Town', 0, 74380058, '34 Government Hospital'),
(7, ' test', 'test', ' MALE', ' test drive', 0, 0, '34 Government Hospital'),
(8, ' test', 'test', ' MALE', ' Allen Town', 0, 74380058, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `staff_login`
--

CREATE TABLE `staff_login` (
  `id` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `staffpassword` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff_login`
--

INSERT INTO `staff_login` (`id`, `email`, `staffpassword`, `role`, `username`) VALUES
(1, 'emmanuelsahrdauda17@gmail.com', 'dauda1234', 'Admin', 'Emmanuel'),
(2, 'john@gmail.com', 'john3:16', 'User', 'John');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance_record`
--
ALTER TABLE `attendance_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendance_record` (`empno`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`empno`),
  ADD KEY `empno` (`empno`),
  ADD KEY `empno_2` (`empno`);

--
-- Indexes for table `staff_login`
--
ALTER TABLE `staff_login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance_record`
--
ALTER TABLE `attendance_record`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `empno` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `staff_login`
--
ALTER TABLE `staff_login`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance_record`
--
ALTER TABLE `attendance_record`
  ADD CONSTRAINT `attendance_record` FOREIGN KEY (`empno`) REFERENCES `employee` (`empno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
