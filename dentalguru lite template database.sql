-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 27, 2024 at 05:47 PM
-- Server version: 10.5.25-MariaDB-cll-lve
-- PHP Version: 8.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dilkeris_huzaifdentalclinic`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee_register`
--

CREATE TABLE `employee_register` (
  `sr_id` int(255) NOT NULL,
  `employee_ID` varchar(255) DEFAULT NULL,
  `branch_name` varchar(255) DEFAULT NULL,
  `employee_name` varchar(255) DEFAULT NULL,
  `employee_mobile` varchar(255) DEFAULT NULL,
  `employee_email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `employee_designation` varchar(255) DEFAULT NULL,
  `employee_password` varchar(255) DEFAULT NULL,
  `employee_role` varchar(255) DEFAULT NULL,
  `salary` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `employee_status` varchar(255) DEFAULT NULL,
  `morning_shift_start_time` time(6) DEFAULT NULL,
  `morning_shift_end_time` time(6) DEFAULT NULL,
  `evening_shift_start_time` time(6) DEFAULT NULL,
  `evening_shift_end_time` time(6) DEFAULT NULL,
  `allday_shift_start_time` time(6) DEFAULT NULL,
  `allday_shift_end_time` time(6) DEFAULT NULL,
  `working_days` varchar(255) DEFAULT NULL,
  `availability` varchar(255) DEFAULT NULL,
  `employee_picture` varchar(255) DEFAULT NULL,
  `employee_education` varchar(255) DEFAULT NULL,
  `speciality` varchar(100) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `experience` varchar(100) DEFAULT NULL,
  `type_of` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_register`
--

INSERT INTO `employee_register` (`sr_id`, `employee_ID`, `branch_name`, `employee_name`, `employee_mobile`, `employee_email`, `gender`, `employee_designation`, `employee_password`, `employee_role`, `salary`, `address`, `employee_status`, `morning_shift_start_time`, `morning_shift_end_time`, `evening_shift_start_time`, `evening_shift_end_time`, `allday_shift_start_time`, `allday_shift_end_time`, `working_days`, `availability`, `employee_picture`, `employee_education`, `speciality`, `language`, `experience`, `type_of`) VALUES
(5, 'dg_4', 'Madan Mahal', 'shadab', '8602161019', 'shadab@gmail.com', 'male', 'doctor', '$2b$10$2YcG82plPpSPv81SRIrRieTjV161MNFVdqXtcq2THlrW9ROBqYC1e', 'doctor,receptionist,admin', '50000', 'Jabalpur', 'Approved', '01:00:00.000000', '13:59:00.000000', '14:30:00.000000', '23:33:00.000000', '10:00:00.000000', '19:00:00.000000', 'null', 'yes', 'https://dentalgurusuperadmin.doaguru.com/empProfilePicture/17104102635691709210206279kd.jpg', 'Advanced Orthodontic Training - Institute of Orthodontics  Cityville State, Doctor of Dental Medicine (DMD) - University of Dental Sciences Cityville State', NULL, NULL, NULL, NULL),
(22, 'dg_1', 'Huzaif Dental Clinic', 'Adil Rahmani', '8279332638', 'Huzaifdental@gmail.com', 'male', 'doctor', '$2b$10$2YcG82plPpSPv81SRIrRieTjV161MNFVdqXtcq2THlrW9ROBqYC1e', 'doctor,receptionist,admin', '50000', 'Jabalpur', 'Approved', '09:30:00.807000', '02:30:00.943000', '16:00:00.736000', '20:00:00.755000', '00:00:00.000000', '19:00:00.000000', '7', 'yes', '', '', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee_register`
--
ALTER TABLE `employee_register`
  ADD PRIMARY KEY (`sr_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee_register`
--
ALTER TABLE `employee_register`
  MODIFY `sr_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
