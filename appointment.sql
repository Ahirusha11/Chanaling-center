-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2020 at 11:16 AM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appointment`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointmentc`
--

CREATE TABLE `appointmentc` (
  `appointment_id` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Time` datetime NOT NULL,
  `Preferred Physician` int(11) NOT NULL,
  `describe_ the_reason` text NOT NULL,
  `patient_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient_information`
--

CREATE TABLE `patient_information` (
  `Patient_id` int(11) NOT NULL,
  `First_name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `Initial` varchar(50) NOT NULL,
  `Fixd_Line_Phone` bigint(10) NOT NULL,
  `Mobile_Phone` bigint(10) NOT NULL,
  `Birth_Date` date NOT NULL,
  `Your_first_visit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_information`
--

INSERT INTO `patient_information` (`Patient_id`, `First_name`, `Last_Name`, `Initial`, `Fixd_Line_Phone`, `Mobile_Phone`, `Birth_Date`, `Your_first_visit`) VALUES
(12, 'jvnjdvjv', 'jdjcjdc', 'sanjeewa', 1012225555, 1555, '0555-04-05', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointmentc`
--
ALTER TABLE `appointmentc`
  ADD PRIMARY KEY (`appointment_id`),
  ADD KEY `has` (`patient_id`);

--
-- Indexes for table `patient_information`
--
ALTER TABLE `patient_information`
  ADD PRIMARY KEY (`Patient_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointmentc`
--
ALTER TABLE `appointmentc`
  MODIFY `appointment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patient_information`
--
ALTER TABLE `patient_information`
  MODIFY `Patient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointmentc`
--
ALTER TABLE `appointmentc`
  ADD CONSTRAINT `has` FOREIGN KEY (`patient_id`) REFERENCES `patient_information` (`Patient_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
