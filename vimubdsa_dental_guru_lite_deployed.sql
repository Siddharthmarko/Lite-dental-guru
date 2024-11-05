-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 27, 2024 at 05:12 PM
-- Server version: 10.5.26-MariaDB-cll-lve
-- PHP Version: 8.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vimubdsa_dental_guru_lite`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `appoint_id` int(255) NOT NULL,
  `patient_uhid` varchar(255) DEFAULT NULL,
  `branch_name` varchar(255) DEFAULT NULL,
  `tp_id` int(100) DEFAULT NULL,
  `assigned_doctor_name` varchar(255) DEFAULT NULL,
  `assigned_doctor_id` varchar(50) NOT NULL,
  `appointment_dateTime` varchar(255) NOT NULL,
  `notes` varchar(1000) DEFAULT NULL,
  `cancel_reason` varchar(1000) DEFAULT NULL,
  `treatment_provided` varchar(255) DEFAULT NULL,
  `appointment_created_by` varchar(255) DEFAULT NULL,
  `appointment_created_by_emp_id` varchar(50) DEFAULT NULL,
  `appointment_updated_by` varchar(50) DEFAULT NULL,
  `appointment_updated_by_emp_id` varchar(50) DEFAULT NULL,
  `appointment_status` varchar(255) DEFAULT NULL,
  `opd_amount` varchar(50) DEFAULT NULL,
  `payment_Mode` varchar(50) DEFAULT NULL,
  `transaction_Id` varchar(50) DEFAULT NULL,
  `payment_Status` varchar(50) DEFAULT NULL,
  `refund_date_time` varchar(100) DEFAULT NULL,
  `current_path` varchar(100) DEFAULT NULL,
  `created_at` varchar(100) DEFAULT NULL,
  `updated_at` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`appoint_id`, `patient_uhid`, `branch_name`, `tp_id`, `assigned_doctor_name`, `assigned_doctor_id`, `appointment_dateTime`, `notes`, `cancel_reason`, `treatment_provided`, `appointment_created_by`, `appointment_created_by_emp_id`, `appointment_updated_by`, `appointment_updated_by_emp_id`, `appointment_status`, `opd_amount`, `payment_Mode`, `transaction_Id`, `payment_Status`, `refund_date_time`, `current_path`, `created_at`, `updated_at`) VALUES
(1, 'DH_1', 'Madan Mahal', 1, 'shadab', 'dg_4', '2024-08-12T10:00', 'start with credit', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'in treatment', '500', 'Cash', '', 'paid', NULL, '/treatmentSuggestion/1/1', '2024-08-12 18:52:16', '2024-08-12 21:26:42.939'),
(2, 'DH_2', 'Madan Mahal', NULL, 'shadab', 'dg_4', '2024-08-12T10:20', '2nd General', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Appoint', '500', 'UPI', '4555465444454', 'paid', NULL, NULL, '2024-08-12 18:54:28', '2024-08-16 19:42:26.146'),
(3, 'DH_3', 'Madan Mahal', 2, 'shadab', 'dg_4', '2024-08-12T11:40', '3rd Pen', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'in treatment', '500', 'Card', '1111111111', 'paid', NULL, '/treatmentSuggestion/3/2', '2024-08-12 18:56:26', '2024-08-12 21:26:51.161'),
(4, 'DH_4', 'Madan Mahal', 3, 'shadab', 'dg_4', '2024-08-12T09:50', 'credit', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '500', 'Credit', '', 'Credit', NULL, '/treatmentSuggestion/4/3', '2024-08-12 19:16:45', '2024-08-12 21:51:15.377'),
(5, 'DH_5', 'Madan Mahal', 4, 'shadab', 'dg_4', '2024-08-13T11:30', '', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '500', 'Cash', '', 'paid', NULL, '/SecurityAmount/5/4', '2024-08-13 01:16:23', '2024-08-13 16:10:38.879'),
(6, 'DH_1', 'Madan Mahal', 1, 'shadab', 'dg_4', '2024-08-13T09:00', '', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'in treatment', '500', 'Cash', '', 'paid', NULL, NULL, '2024-08-13 17:32:47', '2024-08-13 20:02:56.368'),
(7, 'DH_1', 'Madan Mahal', 1, 'shadab', 'dg_4', '2024-08-13T09:10', '', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'in treatment', '500', 'Cash', '', 'paid', NULL, NULL, '2024-08-13 17:41:23', '2024-08-13 20:11:33.444'),
(8, 'DH_2', 'Madan Mahal', 5, 'shadab', 'dg_4', '2024-08-13T09:30', '', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'in treatment', '500', 'Cash', '', 'paid', NULL, '/SecurityAmount/8/5', '2024-08-13 17:42:58', '2024-08-13 20:13:07.990'),
(9, 'DH_4', 'Madan Mahal', 3, 'shadab', 'dg_4', '2024-08-15T09:00', 'test', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '500', 'Cash', '', 'paid', NULL, NULL, '2024-08-15 13:56:26', '2024-08-15 16:29:21.580'),
(10, 'DH_2', 'Madan Mahal', 6, 'shadab', 'dg_4', '2024-08-15T09:10', 'test', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '500', 'Cash', '', 'paid', NULL, '/SecurityAmount/10/6', '2024-08-15 14:01:00', '2024-08-15 16:38:05.705'),
(11, 'DH_1', 'Madan Mahal', 1, 'shadab', 'dg_4', '2024-08-15T09:20', 'test', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'in treatment', '500', 'Cash', '', 'paid', NULL, NULL, '2024-08-15 17:29:43', '2024-08-15 21:15:43.251'),
(12, 'DH_5', 'Madan Mahal', 7, 'shadab', 'dg_4', '2024-08-16T09:10', '', NULL, 'Single Implant', 'shadab', 'dg_4', 'shadab', 'dg_4', 'in treatment', '0', '', '', '', NULL, '/treatmentSuggestion/12/7', '2024-08-16 13:31:51', '2024-08-16 16:01:58.633'),
(13, 'DH_1', 'Madan Mahal', 8, 'shadab', 'dg_4', '2024-08-16T09:00', 'test', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '500', 'Cash', '', 'paid', NULL, '/SecurityAmount/13/8', '2024-08-16 16:56:22', '2024-08-16 19:29:12.865'),
(14, 'DH_1', 'Madan Mahal', 9, 'shadab', 'dg_4', '2024-08-16T09:20', '', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '500', 'Cash', '', 'paid', NULL, '/treatmentSuggestion/14/9', '2024-08-16 17:39:35', '2024-08-16 20:09:41.695'),
(15, 'DH_5', 'Madan Mahal', 10, 'shadab', 'dg_4', '2024-08-17T11:30', '', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '500', 'Cash', '', 'paid', NULL, '/SecurityAmount/15/10', '2024-08-17 15:52:54', '2024-08-17 18:23:07.002'),
(16, 'DH_2', 'Madan Mahal', 6, 'shadab', 'dg_4', '2024-08-17T11:10', '', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'in treatment', '500', 'Cash', '', 'paid', NULL, NULL, '2024-08-17 15:55:17', '2024-08-17 18:25:28.646'),
(17, 'DH_6', 'Madan Mahal', 11, 'shadab', 'dg_4', '2024-08-17T09:00', 'ok', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '500', 'Cash', '', 'paid', NULL, '/SecurityAmount/17/11', '2024-08-17 15:59:40', '2024-08-17 18:30:00.441'),
(18, 'DH_5', 'Madan Mahal', 10, 'shadab', 'dg_4', '2024-08-17T09:10', 'test', NULL, 'Teeth Bleaching In Office Whitening', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-17 19:13:33.870', '2024-08-17 19:15:42.788'),
(19, 'DH_5', 'Madan Mahal', 10, 'shadab', 'dg_4', '2024-08-17T09:10', 'test', NULL, 'Teeth Bleaching In Office Whitening', 'shadab', 'dg_4', NULL, NULL, 'Appoint', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-17 19:13:59.617', NULL),
(20, 'DH_5', 'Madan Mahal', 10, 'shadab', 'dg_4', '2024-08-17T09:10', 'test', NULL, 'Teeth Bleaching In Office Whitening', 'shadab', 'dg_4', NULL, NULL, 'Appoint', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-17 19:14:13.744', NULL),
(21, 'DH_5', 'Madan Mahal', 10, 'shadab', 'dg_4', '2024-08-17T09:30', 'test', NULL, 'Teeth Bleaching In Office Whitening', 'shadab', 'dg_4', NULL, NULL, 'Appoint', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-17 19:14:29.768', NULL),
(22, 'DH_5', 'Madan Mahal', 10, 'shadab', 'dg_4', '2024-08-17T09:40', 'test', NULL, 'Teeth Bleaching In Office Whitening', 'shadab', 'dg_4', 'shadab', 'dg_4', 'in treatment', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-17 19:17:07.195', '2024-08-17 19:17:22.197'),
(23, 'DH_5', 'Madan Mahal', 10, 'shadab', 'dg_4', '2024-08-17T09:50', 'test', NULL, 'Third Molar /Impacted Tooth Removal', 'shadab', 'dg_4', 'shadab', 'dg_4', 'in treatment', '0', '', '', '', NULL, NULL, '2024-08-17 16:48:35', '2024-08-17 19:18:40.639'),
(24, 'DH_6', 'Madan Mahal', 11, 'shadab', 'dg_4', '2024-08-17T10:00', 'test', NULL, 'Metal Crowns @ Per Crown', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-17 19:40:58.567', '2024-08-17 19:41:31.242'),
(25, 'DH_6', 'Madan Mahal', 12, 'shadab', 'dg_4', '2024-08-17T10:10', 'test', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '500', 'Cash', '', 'paid', NULL, '/SecurityAmount/25/12', '2024-08-17 17:14:33', '2024-08-17 19:44:47.761'),
(26, 'DH_6', 'Madan Mahal', 12, 'shadab', 'dg_4', '2024-08-17T10:20', 'test', NULL, 'Direct Composite Veneer @ per tooth', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-17 20:20:01.610', '2024-08-17 20:20:18.437'),
(27, 'DH_6', 'Madan Mahal', 12, 'shadab', 'dg_4', '2024-08-17T10:30', 'test', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'in treatment', '500', 'Cash', '', 'paid', NULL, NULL, '2024-08-17 17:58:08', '2024-08-17 20:28:20.077'),
(28, 'DH_6', 'Madan Mahal', 12, 'shadab', 'dg_4', '2024-08-17T10:40', 'test', NULL, 'Direct Composite Veneer @ per tooth', 'shadab', 'dg_4', 'shadab', 'dg_4', 'in treatment', '0', '', '', '', NULL, NULL, '2024-08-17 17:59:33', '2024-08-17 20:30:04.810'),
(29, 'DH_6', 'Madan Mahal', 12, 'shadab', 'dg_4', '2024-08-17T10:50', 'test', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'in treatment', '500', 'Cash', '', 'paid', NULL, NULL, '2024-08-17 18:02:58', '2024-08-17 20:33:33.513'),
(30, 'DH_2', 'Madan Mahal', 6, 'shadab', 'dg_4', '2024-08-21T11:10', '', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'in treatment', '500', 'Cash', '', 'paid', NULL, NULL, '2024-08-21 12:19:30', '2024-08-21 14:49:39.286'),
(31, 'DH_7', 'Madan Mahal', 13, 'shadab', 'dg_4', '2024-08-21T11:30', '', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '500', 'Cash', '', 'paid', NULL, '/SecurityAmount/31/13', '2024-08-21 12:22:19', '2024-08-21 14:52:35.995'),
(32, 'DH_7', 'Madan Mahal', 14, 'shadab', 'dg_4', '2024-08-21T11:50', '', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '500', 'Cash', '', 'paid', NULL, '/treatmentSuggestion/32/14', '2024-08-21 13:16:42', '2024-08-21 15:46:51.584'),
(33, 'DH_7', 'Madan Mahal', 14, 'shadab', 'dg_4', '2024-08-21T09:20', '', NULL, 'Full mouth Implant', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '0', '', '', '', NULL, NULL, '2024-08-21 13:21:13', '2024-08-21 15:51:17.110'),
(34, 'DH_7', 'Madan Mahal', 15, 'shadab', 'dg_4', '2024-08-22T11:20', 'okk', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '500', 'Cash', '', 'paid', NULL, '/SecurityAmount/34/15', '2024-08-22 11:46:53', '2024-08-22 14:17:55.006'),
(35, 'DH_6', 'Madan Mahal', 12, 'shadab', 'dg_4', '2024-08-22T11:50', 'test', 'none', 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Cancel', '500', 'UPI', '4555465444454', 'Refund', '22-08-2024 15:51:45', NULL, '2024-08-22 11:47:35', '2024-08-22 18:21:45.463'),
(36, 'DH_2', 'Madan Mahal', 16, 'shadab', 'dg_4', '2024-08-22T09:20', 'ok', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '500', 'Cash', '', 'paid', NULL, '/SecurityAmount/36/16', '2024-08-22 11:47:48', '2024-08-22 14:17:59.766'),
(37, 'DH_2', 'Madan Mahal', 16, 'shadab', 'dg_4', '2024-08-22T09:40', 'test', NULL, 'Third Molar Impacted Tooth Removal', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '0', '', '', '', NULL, NULL, '2024-08-22 12:04:10', '2024-08-22 14:34:15.682'),
(38, 'DH_7', 'Madan Mahal', 15, 'shadab', 'dg_4', '2024-08-22T11:10', 'ok', NULL, 'Retention plate@ per arch', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '0', '', '', '', NULL, NULL, '2024-08-22 12:10:26', '2024-08-22 18:28:19.019'),
(39, 'DH_8', 'Madan Mahal', NULL, 'shadab', 'dg_4', '2024-08-22T11:30', 'ok', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'in treatment', '500', 'Credit', '', 'Credit', NULL, NULL, '2024-08-22 15:29:46', '2024-08-22 18:00:13.043'),
(40, 'DH_1', 'Madan Mahal', 9, 'shadab', 'dg_4', '2024-08-24T09:00', '', NULL, 'Digital Compuler zcd XRay (R.V.G.)', 'shadab', 'dg_4', 'shadab', 'dg_4', 'in treatment', '0', '', '', '', NULL, NULL, '2024-08-24 20:54:44', '2024-08-24 23:24:51.896'),
(41, 'DH_1', 'Madan Mahal', 17, 'shadab', 'dg_4', '2024-08-24T09:10', 'test', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '500', 'Credit', '', 'paid', NULL, '/treatmentSuggestion/41/17', '2024-08-24 20:56:42', '2024-08-24 23:26:50.311'),
(42, 'DH_1', 'Madan Mahal', 17, 'shadab', 'dg_4', '2024-08-26T09:00', '', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'in treatment', '500', 'Cash', '', 'paid', NULL, NULL, '2024-08-26 12:42:31', '2024-08-26 15:12:44.552'),
(43, 'DH_8', 'Madan Mahal', NULL, 'shubham', 'dg_1', '2024-08-26T11:20', 'ok', NULL, 'OPD', 'shadab', 'dg_4', NULL, NULL, 'Appoint', '350', 'Cash', '', 'paid', NULL, NULL, '2024-08-26 17:54:40', NULL),
(44, 'DH_8', 'Madan Mahal', 18, 'shadab', 'dg_4', '2024-08-27T11:50', 'ok', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '350', 'Cash', '', 'paid', NULL, '/treatmentSuggestion/44/18', '2024-08-27 15:17:30', '2024-08-27 17:47:46.985'),
(45, 'DH_8', 'Madan Mahal', 18, 'shadab', 'dg_4', '2024-08-27T10:50', 'ok', NULL, 'Single Implant', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '0', '', '', '', NULL, NULL, '2024-08-27 15:25:31', '2024-08-27 17:55:39.556'),
(46, 'DH_6', 'Madan Mahal', 19, 'shadab', 'dg_4', '2024-08-27T09:10', 'test', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '350', 'Cash', '', 'paid', NULL, '/treatmentSuggestion/46/19', '2024-08-27 15:38:21', '2024-08-27 18:08:30.107'),
(47, 'DH_5', 'Madan Mahal', 20, 'shadab', 'dg_4', '2024-08-27T09:20', 'test', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'in treatment', '350', 'Cash', '', 'paid', NULL, '/treatmentSuggestion/47/20', '2024-08-27 15:53:02', '2024-08-27 18:23:12.876'),
(48, 'DH_8', 'Madan Mahal', 21, 'shadab', 'dg_4', '2024-08-27T09:40', 'test', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '350', 'Cash', '', 'paid', NULL, '/treatmentSuggestion/48/21', '2024-08-27 15:54:55', '2024-08-27 18:25:41.959'),
(49, 'DH_8', 'Madan Mahal', 22, 'shadab', 'dg_4', '2024-08-27T10:00', 'test', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '350', 'Cash', '', 'paid', NULL, '/treatmentSuggestion/49/22', '2024-08-27 15:59:51', '2024-08-27 18:30:03.081'),
(50, 'DH_8', 'Madan Mahal', 23, 'shadab', 'dg_4', '2024-08-27T10:20', 'test', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '350', 'Cash', '', 'paid', NULL, '/treatmentSuggestion/50/23', '2024-08-27 16:16:14', '2024-08-27 18:46:28.028'),
(51, 'DH_9', 'Madan Mahal', 24, 'shadab', 'dg_4', '2024-08-28T10:00', 'opd', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '350', 'Cash', '', 'paid', NULL, '/treatmentSuggestion/51/24', '2024-08-28 12:05:29', '2024-08-28 14:36:12.337'),
(52, 'DH_7', 'Madan Mahal', 15, 'shadab', 'dg_4', '2024-08-30T09:00', 'test', NULL, 'Retention plate@ per arch', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '0', '', '', '', NULL, NULL, '2024-08-30 12:14:45', '2024-08-30 14:44:49.676'),
(53, 'DH_2', 'Madan Mahal', 25, 'shadab', 'dg_4', '2024-08-30T09:10', 'test', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '350', 'Cash', '', 'paid', NULL, '/treatmentSuggestion/53/25', '2024-08-30 12:17:06', '2024-08-30 14:47:30.072'),
(54, 'DH_2', 'Madan Mahal', 26, 'shadab', 'dg_4', '2024-08-30T09:20', 'test', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '350', 'Cash', '', 'paid', NULL, '/treatmentSuggestion/54/26', '2024-08-30 13:05:38', '2024-08-30 15:35:52.297'),
(55, 'DH_6', 'Madan Mahal', 27, 'shadab', 'dg_4', '2024-08-30T09:30', 'test', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '350', 'Cash', '', 'paid', NULL, '/treatmentSuggestion/55/27', '2024-08-30 15:07:16', '2024-08-30 17:37:36.555'),
(56, 'DH_2', 'Madan Mahal', 28, 'shadab', 'dg_4', '2024-08-30T09:40', 'test', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '350', 'Cash', '', 'paid', NULL, '/treatmentSuggestion/56/28', '2024-08-30 16:24:08', '2024-08-30 18:54:24.550'),
(57, 'DH_2', 'Madan Mahal', 29, 'shadab', 'dg_4', '2024-08-30T10:00', 'test', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '350', 'Cash', '', 'paid', NULL, '/treatmentSuggestion/57/29', '2024-08-30 16:39:40', '2024-08-30 19:10:09.519'),
(58, 'DH_2', 'Madan Mahal', 30, 'shadab', 'dg_4', '2024-08-30T10:20', 'test', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '350', 'Cash', '', 'paid', NULL, '/treatmentSuggestion/58/30', '2024-08-30 16:49:01', '2024-08-30 19:19:07.265'),
(59, 'DH_2', 'Madan Mahal', 31, 'shadab', 'dg_4', '2024-08-30T10:10', 'test', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '350', 'Cash', '', 'paid', NULL, '/treatmentSuggestion/59/31', '2024-08-30 17:04:11', '2024-08-30 19:34:39.179'),
(60, 'DH_2', 'Madan Mahal', 32, 'shadab', 'dg_4', '2024-08-30T10:30', 'test', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '350', 'Cash', '', 'paid', NULL, '/treatmentSuggestion/60/32', '2024-08-30 17:18:54', '2024-08-30 19:49:21.000'),
(61, 'DH_2', 'Madan Mahal', 32, 'shadab', 'dg_4', '2024-08-31Tundefined', 'test', NULL, 'Direct Composite Veneer @ per tooth', 'shadab', 'dg_4', NULL, NULL, 'Appoint', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-30 20:36:33.550', NULL),
(62, 'DH_2', 'Madan Mahal', 32, 'shadab', 'dg_4', '2024-08-31Tundefined', 'test', NULL, 'Direct Composite Veneer @ per tooth', 'shadab', 'dg_4', NULL, NULL, 'Appoint', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-30 20:36:59.756', NULL),
(63, 'DH_2', 'Madan Mahal', 32, 'shadab', 'dg_4', '2024-08-31T09:50', 'test', NULL, 'Direct Composite Veneer @ per tooth', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-30 20:38:07.942', '2024-08-31 14:13:20.865'),
(64, 'DH_2', 'Madan Mahal', 32, 'shadab', 'dg_4', '2024-08-31T09:50', 'test', NULL, 'Direct Composite Veneer @ per tooth', 'shadab', 'dg_4', NULL, NULL, 'Appoint', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-30 20:47:26.059', NULL),
(65, 'DH_2', 'Madan Mahal', 32, 'shadab', 'dg_4', '2024-08-31T09:50', 'test', NULL, 'Direct Composite Veneer @ per tooth', 'shadab', 'dg_4', NULL, NULL, 'Appoint', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-30 21:03:38.909', NULL),
(66, 'DH_2', 'Madan Mahal', 32, 'shadab', 'dg_4', '2024-08-31T09:50', 'test', NULL, 'Direct Composite Veneer @ per tooth', 'shadab', 'dg_4', NULL, NULL, 'Appoint', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-30 21:04:07.438', NULL),
(67, 'DH_2', 'Madan Mahal', 32, 'shadab', 'dg_4', '2024-08-31T09:50', 'test', NULL, 'Direct Composite Veneer @ per tooth', 'shadab', 'dg_4', NULL, NULL, 'Appoint', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-30 21:15:05.255', NULL),
(68, 'DH_2', 'Madan Mahal', 32, 'shadab', 'dg_4', '2024-08-31T09:50', 'test', NULL, 'Direct Composite Veneer @ per tooth', 'shadab', 'dg_4', NULL, NULL, 'Appoint', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-30 21:15:57.102', NULL),
(69, 'DH_2', 'Madan Mahal', 32, 'shadab', 'dg_4', '2024-08-31Tundefined', 'test', NULL, 'Direct Composite Veneer @ per tooth', 'shadab', 'dg_4', NULL, NULL, 'Appoint', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-30 21:16:31.676', NULL),
(70, 'DH_2', 'Madan Mahal', 32, 'shadab', 'dg_4', '2024-08-31Tundefined', 'test', NULL, 'Direct Composite Veneer @ per tooth', 'shadab', 'dg_4', NULL, NULL, 'Appoint', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-30 21:17:15.747', NULL),
(71, 'DH_2', 'Madan Mahal', 32, 'shadab', 'dg_4', '2024-08-31Tundefined', 'test', NULL, 'Direct Composite Veneer @ per tooth', 'shadab', 'dg_4', NULL, NULL, 'Appoint', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-30 21:18:48.744', NULL),
(72, 'DH_2', 'Madan Mahal', 32, 'shadab', 'dg_4', '2024-08-31T09:50', 'test', NULL, 'Direct Composite Veneer @ per tooth', 'shadab', 'dg_4', NULL, NULL, 'Appoint', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-30 21:19:48.181', NULL),
(73, 'DH_2', 'Madan Mahal', 32, 'shadab', 'dg_4', '2024-08-31T09:50', 'test', NULL, 'Direct Composite Veneer @ per tooth', 'shadab', 'dg_4', NULL, NULL, 'Appoint', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-30 21:23:08.022', NULL),
(74, 'DH_2', 'Madan Mahal', 32, 'shadab', 'dg_4', '2024-08-31T09:50', 'test', NULL, 'Direct Composite Veneer @ per tooth', 'shadab', 'dg_4', NULL, NULL, 'Appoint', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-30 21:33:20.689', NULL),
(75, 'DH_2', 'Madan Mahal', 32, 'shadab', 'dg_4', '2024-08-31T09:50', 'test', NULL, 'Direct Composite Veneer @ per tooth', 'shadab', 'dg_4', NULL, NULL, 'Appoint', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-30 21:37:33.386', NULL),
(76, 'DH_2', 'Madan Mahal', 32, 'shadab', 'dg_4', '2024-08-31T09:50', 'test', NULL, 'Direct Composite Veneer @ per tooth', 'shadab', 'dg_4', NULL, NULL, 'Appoint', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-30 21:40:54.559', NULL),
(77, 'DH_2', 'Madan Mahal', 32, 'shadab', 'dg_4', '2024-08-31Tundefined', 'test', NULL, 'Direct Composite Veneer @ per tooth', 'shadab', 'dg_4', NULL, NULL, 'Appoint', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-30 21:41:04.343', NULL),
(78, 'DH_10', 'Madan Mahal', 42, 'shadab', 'dg_4', '2024-09-02T10:50', 'fsfss', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '800', 'Cash', '', 'paid', NULL, '/treatmentSuggestion/78/42', '2024-09-02 12:39:33', '2024-09-02 15:16:11.830'),
(79, 'DH_11', 'Madan Mahal', 33, 'shadab', 'dg_4', '2024-09-02T11:50', '', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '350', 'Cash', '', 'paid', NULL, '/SecurityAmount/79/33', '2024-09-02 12:43:45', '2024-09-02 15:15:10.692'),
(80, 'DH_12', 'Madan Mahal', NULL, 'shadab', 'dg_4', '2023-08-02T11:00', 'update', NULL, 'OPD', 'shadab', 'dg_4', NULL, NULL, 'Appoint', '700', 'Credit', '', 'paid', NULL, NULL, '2024-09-02 12:46:02', NULL),
(81, 'DH_13', 'Madan Mahal', 36, 'shadab', 'dg_4', '2024-09-02T11:00', 'done', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '350', 'Credit', '', 'paid', NULL, '/treatmentSuggestion/81/36', '2024-09-02 12:48:29', '2024-09-02 15:20:30.116'),
(82, 'DH_7', 'Madan Mahal', 15, 'shadab', 'dg_4', '2024-09-02T11:20', 'check kro jaldi or jane do ', NULL, 'Metal Crowns @ Per Crown', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '0', '', '', '', NULL, NULL, '2024-09-02 12:55:40', '2024-09-02 15:25:57.993'),
(83, 'DH_13', 'Madan Mahal', 36, 'shadab', 'dg_4', '2024-09-02T10:10', '2nd sitting', NULL, 'Re-Root Canal Treatlment @ per tooth', 'shadab', 'dg_4', 'shadab', 'dg_4', 'in treatment', NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-02 15:28:17.152', '2024-09-02 16:33:18.894'),
(84, 'DH_3', 'Madan Mahal', 2, 'shadab', 'dg_4', '2024-09-02T11:40', 'qe', NULL, 'Pulpectomy (Child) @ per tooth', 'shadab', 'dg_4', 'shadab', 'dg_4', 'in treatment', '0', '', '', '', NULL, NULL, '2024-09-02 14:04:02', '2024-09-02 16:34:05.389'),
(85, 'DH_2', 'Madan Mahal', 32, 'shadab', 'dg_4', '2024-09-02T09:50', 'dfg', NULL, 'Direct Composite Veneer @ per tooth', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Check-In', '0', '', '', '', NULL, NULL, '2024-09-02 14:04:45', '2024-09-02 16:36:19.133'),
(86, 'DH_14', 'Madan Mahal', 38, 'shadab', 'dg_4', '2024-09-02T09:30', 'ds', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '350', 'UPI', 'sdfsdfsd', 'paid', NULL, '/treatmentSuggestion/86/38', '2024-09-02 14:06:14', '2024-09-02 16:36:21.311'),
(87, 'DH_14', 'Madan Mahal', 38, 'shadab', 'dg_4', '2024-09-02T11:30', '2nd sitting', NULL, 'Metal Free Crown Ziconia Crowns @ per Crown', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-02 16:43:28.315', '2024-09-02 16:44:21.362'),
(88, 'DH_15', 'Madan Mahal', 39, 'shadab', 'dg_4', '2024-09-02T09:00', 'sf', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '500000', 'UPI', '54564654sd654ds65465', 'paid', NULL, '/treatmentSuggestion/88/39', '2024-09-02 14:15:43', '2024-09-02 16:54:45.282'),
(89, 'DH_16', 'Madan Mahal', 40, 'shadab', 'dg_4', '2024-09-02T10:00', 'sadwe', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '6554654654', 'Credit', '', 'paid', NULL, '/treatmentSuggestion/89/40', '2024-09-02 14:24:12', '2024-09-02 17:19:29.950'),
(90, 'DH_17', 'Madan Mahal', 43, 'shadab', 'dg_4', '2024-09-02T14:40', 'df', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'in treatment', '350', 'UPI', 'saafsdfrwefsdfgedf', 'paid', NULL, '/treatmentSuggestion/90/43', '2024-09-02 14:37:29', '2024-09-02 17:29:16.438'),
(91, 'DH_15', 'Madan Mahal', 39, 'shadab', 'dg_4', '2024-09-02T14:40', '', NULL, 'Re-Root Canal Treatlment @ per tooth', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Check-In', NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-02 17:15:29.042', '2024-09-02 17:29:31.437'),
(92, 'DH_18', 'Madan Mahal', 41, 'shadab', 'dg_4', '2024-09-02T09:10', 'sawerfesdf', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '10000000000', 'UPI', 'sadwefewf', 'paid', NULL, '/treatmentSuggestion/92/41', '2024-09-02 14:55:07', '2024-09-02 17:25:22.875'),
(93, 'DH_18', 'Madan Mahal', 41, 'shadab', 'dg_4', '2024-09-02T14:20', '', NULL, 'Laminates and Veneers@ per tooth', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-02 17:27:37.700', '2024-09-02 17:29:25.012'),
(94, 'DH_19', 'Madan Mahal', NULL, 'shadab', 'dg_4', '2024-09-02T10:30', 'saf', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Check-In', '350', 'Cash', '', 'paid', NULL, NULL, '2024-09-02 15:51:47', '2024-09-02 18:22:18.728'),
(95, 'DH_10', 'Madan Mahal', 42, 'shadab', 'dg_4', '2024-09-02T09:20', 'test', NULL, 'Laminates and Veneers@ per tooth', 'shadab', 'dg_4', NULL, NULL, 'Appoint', NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-02 19:23:50.022', NULL),
(96, 'DH_10', 'Madan Mahal', 42, 'shadab', 'dg_4', '2024-09-02T09:40', 'test', NULL, 'Laminates and Veneers@ per tooth', 'shadab', 'dg_4', NULL, NULL, 'Appoint', NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-02 19:47:44.462', NULL),
(97, 'DH_8', 'Madan Mahal', 23, 'shadab', 'dg_4', '2024-09-03T11:50', 'ok', NULL, 'OPD', 'shadab', 'dg_4', NULL, NULL, 'Appoint', '350', 'Credit', '', 'paid', NULL, NULL, '2024-09-03 11:02:38', NULL),
(98, 'DH_20', 'Madan Mahal', NULL, 'shadab', 'dg_4', '2024-09-03T09:20', '', NULL, 'OPD', 'shadab', 'dg_4', NULL, NULL, 'Appoint', '350', 'Cash', '', 'paid', NULL, NULL, '2024-09-03 11:46:11', NULL),
(99, 'DH_14', 'Madan Mahal', 38, 'shadab', 'dg_4', '2024-09-04T09:00', 'test', NULL, 'OPD', 'shadab', 'dg_4', NULL, NULL, 'Appoint', '350', 'Credit', '', 'Credit', NULL, NULL, '2024-09-03 14:16:22', NULL),
(100, 'DH_8', 'Madan Mahal', 23, 'shadab', 'dg_4', '2024-09-03T09:50', 'adsad', NULL, 'Digital Compuler zcd XRay (R.V.G.)', 'shadab', 'dg_4', NULL, NULL, 'Appoint', '0', '', '', '', NULL, NULL, '2024-09-03 18:29:22', NULL),
(101, 'DH_8', 'Madan Mahal', 23, 'shadab', 'dg_4', '2024-09-03T09:30', 'c vcxv', NULL, 'Digital Compuler zcd XRay (R.V.G.)', 'shadab', 'dg_4', NULL, NULL, 'Appoint', '0', '', '', '', NULL, NULL, '2024-09-03 18:31:24', NULL),
(102, 'DH_21', 'Madan Mahal', 49, 'shadab', 'dg_4', '2024-09-06T10:10', '324trhgfdsxc', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '350', 'Cash', '', 'paid', NULL, '/treatmentSuggestion/102/49', '2024-09-06 12:02:38', '2024-09-06 14:32:57.424'),
(103, 'DH_20', 'Madan Mahal', 47, 'shadab', 'dg_4', '2024-09-06T09:00', 'test', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'in treatment', '350', 'Cash', '', 'paid', NULL, '/ExaminationDashBoardPediatric/103/Pediatric/47', '2024-09-06 12:47:52', '2024-09-06 15:18:01.147'),
(104, 'DH_22', 'Madan Mahal', 46, 'shadab', 'dg_4', '2024-09-06T17:00', 'paid', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '350', 'Cash', '', 'paid', NULL, '/treatmentSuggestion/104/46', '2024-09-06 15:36:33', '2024-09-06 18:15:27.350'),
(105, 'DH_23', 'Madan Mahal', NULL, 'shadab', 'dg_4', '2024-09-12T11:00', 'done', NULL, 'OPD', 'DEMO', 'dg_19', 'DEMO', 'dg_19', 'Check-In', '350', 'Cash', '', 'paid', NULL, NULL, '2024-09-12 12:56:39', '2024-09-12 15:28:07.822'),
(106, 'DH_24', 'Madan Mahal', 52, 'DEMO', 'dg_19', '2024-09-12T09:30', 'done', NULL, 'OPD', 'DEMO', 'dg_19', 'DEMO', 'dg_19', 'Complete', '350', 'Cash', '', 'paid', NULL, '/treatmentSuggestion/106/52', '2024-09-12 13:16:24', '2024-09-12 15:46:33.661'),
(107, 'DH_24', 'Madan Mahal', 52, 'DEMO', 'dg_19', '2024-09-12Tundefined', 'done', NULL, 'Re-Root Canal Treatlment @ per tooth', 'DEMO', 'dg_19', NULL, NULL, 'Appoint', NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-12 16:16:42.064', NULL),
(108, 'DH_11', 'Madan Mahal', 53, 'shadab', 'dg_4', '2024-09-23T09:20', 'i', NULL, 'Digital Compuler zcd XRay (R.V.G.)', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '0', '', '', '', NULL, '/treatmentSuggestion/108/53', '2024-09-23 17:17:09', '2024-09-23 17:23:01.422'),
(109, 'DH_25', 'Madan Mahal', 54, 'shadab', 'dg_4', '2024-09-23T18:20', 'd', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '350', 'Cash', '', 'paid', NULL, '/treatmentSuggestion/109/54', '2024-09-23 17:38:07', '2024-09-23 17:38:17.062'),
(110, 'DH_25', 'Madan Mahal', 54, 'shadab', 'dg_4', '2024-09-23T13:20', 'h', NULL, 'Re-Root Canal Treatlment @ per tooth', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Check-In', NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-23 17:39:42.051', '2024-09-23 17:42:24.628'),
(111, 'DH_25', 'Madan Mahal', 54, 'shadab', 'dg_4', '2024-09-23T09:30', 's', NULL, 'Re-Root Canal Treatlment @ per tooth', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Check-In', NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-23 17:40:44.546', '2024-09-23 17:42:03.622'),
(112, 'DH_26', 'Madan Mahal', 56, 'shadab', 'dg_4', '2024-09-23T10:00', 'd', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '350', 'Cash', '', 'paid', NULL, '/treatmentSuggestion/112/56', '2024-09-23 17:43:31', '2024-09-23 17:43:43.044'),
(113, 'DH_26', 'Madan Mahal', 56, 'shadab', 'dg_4', '2024-09-23T12:20', 's', NULL, 'Digital Compuler zcd XRay (R.V.G.)', 'shadab', 'dg_4', 'shadab', 'dg_4', 'in treatment', NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-23 17:45:51.164', '2024-09-23 17:46:22.949'),
(114, 'DH_27', 'Madan Mahal', 57, 'shadab', 'dg_4', '2024-09-23T16:30', 'g', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'in treatment', '350', 'Cash', '', 'paid', NULL, '/ExaminationDashBoardPatient/114/Dental-X/57', '2024-09-23 17:58:10', '2024-09-23 17:58:19.196'),
(115, 'DH_28', 'Madan Mahal', 58, 'shadab', 'dg_4', '2024-09-23T12:10', 'd', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'in treatment', '350', 'UPI', '2', 'paid', NULL, '/ExaminationDashBoardPatient/115/Dental-X/58', '2024-09-23 18:05:02', '2024-09-23 18:05:17.005'),
(116, 'DH_29', 'Madan Mahal', 60, 'shadab', 'dg_4', '2024-09-23T11:50', 's', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '350', 'Cash', '', 'paid', NULL, '/treatmentSuggestion/116/60', '2024-09-23 18:09:37', '2024-09-23 18:09:45.273'),
(117, 'DH_29', 'Madan Mahal', 60, 'shadab', 'dg_4', '2024-09-23T13:00', 'dfdf', NULL, 'Re-Root Canal Treatlment @ per tooth', 'shadab', 'dg_4', 'shadab', 'dg_4', 'in treatment', NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-23 18:11:35.473', '2024-09-23 18:14:05.522'),
(118, 'DH_28', 'Madan Mahal', 61, 'shadab', 'dg_4', '2024-09-24T17:00', 'f', NULL, 'Digital Compuler zcd XRay (R.V.G.)', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '0', '', '', '', NULL, '/treatmentSuggestion/118/61', '2024-09-24 14:10:05', '2024-09-24 14:10:10.747'),
(119, 'DH_28', 'Madan Mahal', 61, 'shadab', 'dg_4', '2024-09-24T13:00', 'p', NULL, 'Digital Compuler zcd XRay (R.V.G.)', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-24 14:12:23.371', '2024-09-24 14:56:05.425'),
(120, 'DH_28', 'Madan Mahal', 61, 'shadab', 'dg_4', '2024-09-24T10:50', 'd', NULL, 'Digital Compuler zcd XRay (R.V.G.)', 'shadab', 'dg_4', 'shadab', 'dg_4', 'in treatment', '0', '', '', '', NULL, NULL, '2024-09-24 14:47:21', '2024-09-24 14:47:30.862'),
(121, 'DH_25', 'Madan Mahal', 62, 'shadab', 'dg_4', '2024-09-24T10:30', 'd', NULL, 'Digital Compuler zcd XRay (R.V.G.)', 'shadab', 'dg_4', 'shadab', 'dg_4', 'in treatment', '0', '', '', '', NULL, '/treatmentSuggestion/121/62', '2024-09-24 14:49:27', '2024-09-24 14:49:45.904'),
(122, 'DH_28', 'Madan Mahal', 61, 'shadab', 'dg_4', '2024-10-01T12:20', 'meri marji', NULL, 'Digital Compuler zcd XRay (R.V.G.)', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Check-In', NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-24 14:57:37.950', '2024-09-24 20:16:36.937'),
(123, 'DH_30', 'Madan Mahal', 63, 'shadab', 'dg_4', '2024-10-04T09:40', '', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '350', 'Cash', '', 'paid', NULL, '/treatmentSuggestion/123/63', '2024-10-04 13:19:47', '2024-10-04 15:50:28.261'),
(124, 'DH_31', 'Madan Mahal', 64, 'shadab', 'dg_4', '2024-10-04T09:00', '', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '350', 'Cash', '', 'paid', NULL, '/treatmentSuggestion/124/64', '2024-10-04 15:53:23', '2024-10-04 18:23:59.463'),
(125, 'DH_32', 'Madan Mahal', NULL, 'shubham', 'dg_1', '2024-10-04T17:10', '', NULL, 'OPD', 'DEMO', 'dg_19', NULL, NULL, 'Appoint', '350', 'Cash', '', 'paid', NULL, NULL, '2024-10-04 17:06:40', NULL),
(126, 'DH_32', 'Madan Mahal', NULL, 'DEMO', 'dg_19', '2024-10-04T17:20', '', NULL, 'Root Canal Treatment @ per tooth', 'DEMO', 'dg_19', 'DEMO', 'dg_19', 'Check-In', '0', '', '', '', NULL, NULL, '2024-10-04 17:11:43', '2024-10-04 19:44:48.098'),
(127, 'DH_33', 'Madan Mahal', 66, 'shadab', 'dg_4', '2024-10-05T09:00', '', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '350', 'Cash', '', 'paid', NULL, '/treatmentSuggestion/127/66', '2024-10-05 17:23:51', '2024-10-05 19:54:00.428'),
(128, 'DH_33', 'Madan Mahal', 67, 'shadab', 'dg_4', '2024-10-05T10:00', 'ghar', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '350', 'Cash', '', 'paid', NULL, '/treatmentSuggestion/128/67', '2024-10-05 17:27:21', '2024-10-05 19:57:30.222'),
(129, 'DH_34', 'Madan Mahal', 68, 'DEMO', 'dg_19', '2024-10-05T17:50', 'okay', NULL, 'OPD', 'DEMO', 'dg_19', 'DEMO', 'dg_19', 'Complete', '350', 'Cash', '', 'paid', NULL, '/treatmentSuggestion/129/68', '2024-10-05 17:47:41', '2024-10-05 20:19:02.087'),
(130, 'DH_35', 'Madan Mahal', NULL, 'shadab', 'dg_4', '2024-10-05T09:50', '', NULL, 'OPD', 'shadab', 'dg_4', NULL, NULL, 'Appoint', '350', 'Cash', '', 'paid', NULL, NULL, '2024-10-05 19:05:58', NULL),
(131, 'DH_36', 'Madan Mahal', 69, 'shadab', 'dg_4', '2024-10-07T10:40', 'opd', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '350', 'Cash', '', 'paid', NULL, '/treatmentSuggestion/131/69', '2024-10-07 11:36:21', '2024-10-07 14:06:42.567'),
(132, 'DH_36', 'Madan Mahal', 69, 'shadab', 'dg_4', '2024-10-17T09:30', '7gu', NULL, 'Laminates and Veneers@ per tooth', 'shadab', 'dg_4', NULL, NULL, 'Appoint', NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-07 14:12:36.932', NULL),
(133, 'DH_36', 'Madan Mahal', 69, 'shadab', 'dg_4', '2024-10-17T09:30', '7gu', NULL, 'Laminates and Veneers@ per tooth', 'shadab', 'dg_4', NULL, NULL, 'Appoint', NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-07 14:12:37.087', NULL),
(134, 'DH_37', 'Madan Mahal', 70, 'shadab', 'dg_4', '2024-10-07T11:40', '75824010', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '350', 'Cash', '', 'paid', NULL, '/treatmentSuggestion/134/70', '2024-10-07 11:46:18', '2024-10-07 14:16:27.004'),
(135, 'DH_37', 'Madan Mahal', 70, 'shadab', 'dg_4', '2024-11-02Tundefined', '35', NULL, 'Third Molar Impacted Tooth Removal', 'shadab', 'dg_4', NULL, NULL, 'Appoint', NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-07 14:20:09.863', NULL),
(136, 'DH_38', 'Madan Mahal', 71, 'DEMO', 'dg_19', '2024-10-07T17:30', 'hgj', NULL, 'OPD', 'DEMO', 'dg_19', 'DEMO', 'dg_19', 'Check-In', '350', 'Cash', '', 'paid', NULL, '/ExaminationDashBoardPediatric/136/Pediatric/71', '2024-10-07 17:20:05', '2024-10-25 20:14:39.738'),
(137, 'DH_1', 'Madan Mahal', 72, 'shadab', 'dg_4', '2024-10-08T09:50', '', NULL, 'Root Canal Treatment @ per tooth', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '0', '', '', '', NULL, '/treatmentSuggestion/137/72', '2024-10-08 16:26:05', '2024-10-08 18:56:23.860'),
(138, 'DH_33', 'Madan Mahal', 67, 'shadab', 'dg_4', '2024-10-09T11:40', '', NULL, 'Digital Compuler zcd XRay (R.V.G.)', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Check-In', '0', '', '', '', NULL, NULL, '2024-10-09 17:00:08', '2024-10-09 19:30:18.182'),
(139, 'DH_39', 'Madan Mahal', NULL, 'shadab', 'dg_4', '2024-10-09T09:00', '', NULL, 'OPD', 'shadab', 'dg_4', NULL, NULL, 'Appoint', '350', 'Cash', '', 'paid', NULL, NULL, '2024-10-09 17:05:11', NULL),
(140, 'DH_12', 'Madan Mahal', NULL, 'shadab', 'dg_4', '2024-10-11T09:10', '', NULL, 'Root Canal Treatment @ per tooth', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Check-In', '0', '', '', '', NULL, NULL, '2024-10-11 13:19:54', '2024-10-11 15:50:05.564'),
(141, 'DH_33', 'Madan Mahal', 67, 'shadab', 'dg_4', '2024-10-11T09:00', '', NULL, 'Digital Compuler zcd XRay (R.V.G.)', 'shadab', 'dg_4', NULL, NULL, 'Appoint', '0', '', '', '', NULL, NULL, '2024-10-11 18:40:18', NULL),
(142, 'DH_32', 'Madan Mahal', 73, 'DEMO', 'dg_19', '2024-10-21T19:00', '', NULL, 'Post and core @ per tooth', 'DEMO', 'dg_19', 'DEMO', 'dg_19', 'Complete', '0', '', '', '', NULL, '/treatmentSuggestion/142/73', '2024-10-21 18:51:25', '2024-10-21 21:21:35.832'),
(143, 'DH_40', 'Madan Mahal', 74, 'DEMO', 'dg_19', '2024-10-26T13:30', 'dgthrdt', NULL, 'OPD', 'DEMO', 'dg_19', 'DEMO', 'dg_19', 'Complete', '300', 'Cash', '', 'paid', NULL, '/treatmentSuggestion/143/74', '2024-10-26 13:20:29', '2024-10-26 15:52:20.889'),
(144, 'DH_41', 'Madan Mahal', 75, 'DEMO', 'dg_19', '2024-10-26T12:20', 'okay', NULL, 'OPD', 'DEMO', 'dg_19', 'DEMO', 'dg_19', 'Complete', '300', 'Cash', '', 'paid', NULL, '/treatmentSuggestion/144/75', '2024-10-26 14:00:46', '2024-10-26 16:31:57.597'),
(145, 'DH_42', 'Madan Mahal', 76, 'DEMO', 'dg_19', '2024-10-26T16:30', '', NULL, 'OPD', 'DEMO', 'dg_19', 'DEMO', 'dg_19', 'Complete', '300', 'Cash', '', 'paid', NULL, '/treatmentSuggestion/145/76', '2024-10-26 15:52:06', '2024-10-26 19:15:39.155'),
(146, 'DH_29', 'Madan Mahal', 60, 'shadab', 'dg_4', '2024-10-26T11:20', 'fd', NULL, 'Re-Root Canal Treatlment @ per tooth', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Check-In', '0', '', '', '', NULL, NULL, '2024-10-26 18:11:55', '2024-10-26 20:42:00.593');

-- --------------------------------------------------------

--
-- Table structure for table `appointment_notification`
--

CREATE TABLE `appointment_notification` (
  `notify_id` int(100) NOT NULL,
  `notification_tag` varchar(100) DEFAULT NULL,
  `notification_msg` varchar(100) DEFAULT NULL,
  `sms` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `whatsapp` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `branch_id` int(255) NOT NULL,
  `branch_name` varchar(255) DEFAULT NULL,
  `branch_email` varchar(100) DEFAULT NULL,
  `hospital_name` varchar(255) DEFAULT NULL,
  `hospital_id` varchar(255) DEFAULT NULL,
  `branch_address` varchar(255) DEFAULT NULL,
  `branch_contact` varchar(255) DEFAULT NULL,
  `open_time` time(6) DEFAULT NULL,
  `close_time` time(6) DEFAULT NULL,
  `appoint_slot_duration` varchar(100) DEFAULT NULL,
  `week_off` varchar(100) DEFAULT NULL,
  `head_img` varchar(255) DEFAULT NULL,
  `foot_img` varchar(255) DEFAULT NULL,
  `account_number` int(100) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `upi_id` varchar(100) DEFAULT NULL,
  `ifsc_code` varchar(100) DEFAULT NULL,
  `doctor_payment` varchar(100) DEFAULT NULL,
  `allow_insurance` varchar(100) DEFAULT NULL,
  `sharemail` varchar(100) DEFAULT NULL,
  `sharewhatsapp` varchar(100) DEFAULT NULL,
  `sharesms` varchar(100) DEFAULT NULL,
  `hospital_category` varchar(100) DEFAULT NULL,
  `branch_currency` varchar(100) DEFAULT NULL,
  `currency_symbol` varchar(100) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`branch_id`, `branch_name`, `branch_email`, `hospital_name`, `hospital_id`, `branch_address`, `branch_contact`, `open_time`, `close_time`, `appoint_slot_duration`, `week_off`, `head_img`, `foot_img`, `account_number`, `bank_name`, `upi_id`, `ifsc_code`, `doctor_payment`, `allow_insurance`, `sharemail`, `sharewhatsapp`, `sharesms`, `hospital_category`, `branch_currency`, `currency_symbol`, `timezone`) VALUES
(1, 'Madan Mahal', 'siddhartha.marko.3@gmail.com', 'dental square', 'hos_1', 'Madan Mahal', '8602161019', '09:00:00.000000', '23:00:00.000000', '10 min', 'sunday', 'http://localhost:8888/branchHeadFootImg/17280458019621728022622310header (2).png', 'http://localhost:8888/branchHeadFootImg/1728022622320footer.png', 2147483647, 'doaguru@bank', 'doaguruUPI', 'DoaguruIFSC234', 'Yes', 'Yes', 'Yes', 'No', 'No', 'Nabh', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chief_complain_list`
--

CREATE TABLE `chief_complain_list` (
  `chief_id` int(100) NOT NULL,
  `chief_complain` varchar(100) DEFAULT NULL,
  `created_time` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chief_complain_list`
--

INSERT INTO `chief_complain_list` (`chief_id`, `chief_complain`, `created_time`) VALUES
(1, 'Toothache', '2024-07-18 14:36:38'),
(2, 'Swollen gums', '2024-07-18 14:36:38'),
(3, 'Bleeding gums', '18-07-2024 17:22:10'),
(4, 'Sensitivity to hot or cold', '18-07-2024 17:31:19'),
(5, 'bad teeth', '10-08-2024 12:46:43'),
(6, 'caries', '16-08-2024 13:33:47');

-- --------------------------------------------------------

--
-- Table structure for table `clinic_prescription`
--

CREATE TABLE `clinic_prescription` (
  `pr_id` int(100) NOT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `medicine_name` varchar(100) DEFAULT NULL,
  `dosage` varchar(100) DEFAULT NULL,
  `frequency` varchar(100) DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL,
  `notes` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencydetails`
--

CREATE TABLE `currencydetails` (
  `cr_id` int(100) NOT NULL,
  `country_name` varchar(100) DEFAULT NULL,
  `timezone` varchar(100) DEFAULT NULL,
  `currency_name` varchar(100) DEFAULT NULL,
  `currency_symbol` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `currencydetails`
--

INSERT INTO `currencydetails` (`cr_id`, `country_name`, `timezone`, `currency_name`, `currency_symbol`) VALUES
(1, 'United States of America', 'America/New_York', 'US Dollar', '$'),
(2, 'Canada', 'America/Toronto', 'Canadian Dollar', '$'),
(3, 'Spain', 'Europe/Madrid', 'Euro', '€'),
(4, 'United Arab Emirates', 'Asia/Dubai', 'United Arab Emirates Dirham', 'د.إ.'),
(5, 'Afghanistan', 'Asia/Kabul', 'Afghan Afghani', '؋'),
(6, 'India', 'Asia/Kolkata', 'Indian Rupee', '₹');

-- --------------------------------------------------------

--
-- Table structure for table `dental_examination`
--

CREATE TABLE `dental_examination` (
  `exm_id` int(11) NOT NULL,
  `tp_id` int(100) DEFAULT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `appointment_id` int(11) NOT NULL,
  `patient_uhid` varchar(50) DEFAULT NULL,
  `selected_teeth` varchar(255) DEFAULT NULL,
  `disease` varchar(255) DEFAULT NULL,
  `chief_complain` varchar(255) DEFAULT NULL,
  `advice` varchar(255) DEFAULT NULL,
  `on_examination` varchar(255) DEFAULT NULL,
  `diagnosis_category` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dental_examination`
--

INSERT INTO `dental_examination` (`exm_id`, `tp_id`, `branch_name`, `appointment_id`, `patient_uhid`, `selected_teeth`, `disease`, `chief_complain`, `advice`, `on_examination`, `diagnosis_category`, `date`) VALUES
(1, 1, 'Madan Mahal', 1, 'DH_1', '18, 17', 'Caries', 'bad teeth', 'test', 'test', 'Dental-X', '12-08-2024 18:57:30'),
(2, 2, 'Madan Mahal', 3, 'DH_3', '18, 17', 'Caries', 'Bleeding gums', 'test', 'test', 'Dental-X', '12-08-2024 19:12:02'),
(3, 2, 'Madan Mahal', 3, 'DH_3', '16, 15', 'Fracture', 'Swollen gums', 'tetst', 'ytest', 'Dental-X', '12-08-2024 19:12:13'),
(4, 3, 'Madan Mahal', 4, 'DH_4', '18, 17', 'Caries', 'Toothache', 'test', 'test', 'Dental-X', '12-08-2024 19:21:41'),
(5, 4, 'Madan Mahal', 5, 'DH_5', '18, 17', 'Caries', 'Swollen gums', 'test', 'test', 'Dental-X', '13-08-2024 13:41:24'),
(6, 5, 'Madan Mahal', 8, 'DH_2', '18, 17', 'Caries', 'Swollen gums', 'tetst', 'test', 'Dental-X', '13-08-2024 17:43:47'),
(7, 6, 'Madan Mahal', 10, 'DH_2', '18, 17', 'Caries', 'Swollen gums', 'teszrt', 'trest', 'Dental-X', '15-08-2024 14:27:06'),
(8, 6, 'Madan Mahal', 10, 'DH_2', '16, 15', 'Fracture', 'Bleeding gums', 'tetst', 'trest', 'Dental-X', '15-08-2024 14:27:24'),
(9, 7, 'Madan Mahal', 12, 'DH_5', '44', 'Caries', 'caries', 'take a water', 'start', 'Dental-X', '16-08-2024 13:33:47'),
(10, 8, 'Madan Mahal', 13, 'DH_1', '18, 17', 'Caries', 'Bleeding gums', 'teszrt', 'trest', 'Dental-X', '16-08-2024 18:14:34'),
(11, 8, 'Madan Mahal', 13, 'DH_1', '16, 15', 'Fracture', 'bad teeth', 'tetst', 'test', 'Dental-X', '16-08-2024 18:14:54'),
(12, 8, 'Madan Mahal', 13, 'DH_1', '14, 13', 'Impacted', 'Toothache', 'teszrt', 'trest', 'Dental-X', '16-08-2024 18:16:17'),
(13, 9, 'Madan Mahal', 14, 'DH_1', '55, 54', 'Caries', 'Swollen gums', 'terst', 'twetst', 'Pediatric', '16-08-2024 19:17:30'),
(14, 9, 'Madan Mahal', 14, 'DH_1', '53, 52', 'Fracture', 'Sensitivity to hot or cold', 'tetst', 'test', 'Pediatric', '16-08-2024 19:17:41'),
(15, 10, 'Madan Mahal', 15, 'DH_5', '18, 17', 'Caries', 'Swollen gums', 'ts', 'testt', 'Dental-X', '17-08-2024 16:38:36'),
(16, 11, 'Madan Mahal', 17, 'DH_6', '18, 17', 'Fracture', 'Bleeding gums', 'teszrt', 'trest', 'Dental-X', '17-08-2024 17:00:37'),
(17, 12, 'Madan Mahal', 25, 'DH_6', '18, 17', 'Caries', 'Swollen gums', 'tetst', 'test', 'Dental-X', '17-08-2024 17:36:30'),
(18, 13, 'Madan Mahal', 31, 'DH_7', '18, 17', 'Caries', 'Swollen gums', 'test', 'test', 'Dental-X', '21-08-2024 12:22:57'),
(19, 14, 'Madan Mahal', 32, 'DH_7', '18, 17', 'Caries', 'Swollen gums', 'tttt', 'ttttt', 'Dental-X', '21-08-2024 13:17:18'),
(20, 15, 'Madan Mahal', 34, 'DH_7', '18, 17', 'Fracture', 'Swollen gums', 'test', 'test', 'Dental-X', '22-08-2024 11:50:02'),
(21, 16, 'Madan Mahal', 36, 'DH_2', '18, 17', 'Caries', 'Bleeding gums', 'terst', 'testt', 'Dental-X', '22-08-2024 12:01:33'),
(22, 16, 'Madan Mahal', 36, 'DH_2', '16, 15', 'Fracture', 'Sensitivity to hot or cold', 'test', 'testt', 'Dental-X', '22-08-2024 12:01:47'),
(23, 17, 'Madan Mahal', 41, 'DH_1', '18, 17', 'Caries', 'Swollen gums', 'terst', 'test', 'Dental-X', '24-08-2024 21:11:23'),
(24, 17, 'Madan Mahal', 41, 'DH_1', '16, 15', 'Fracture', 'Sensitivity to hot or cold', 'teszrt', 'trest', 'Dental-X', '24-08-2024 21:11:38'),
(25, 18, 'Madan Mahal', 44, 'DH_8', '18, 17', 'Caries', 'Toothache', 'test', 'test', 'Dental-X', '27-08-2024 15:19:12'),
(26, 19, 'Madan Mahal', 46, 'DH_6', '18, 17', 'Caries', 'Bleeding gums', 'tetst', 'test', 'Dental-X', '27-08-2024 15:39:04'),
(27, 19, 'Madan Mahal', 46, 'DH_6', '16, 15', 'Fracture', 'Sensitivity to hot or cold', 'terst', 'trest', 'Dental-X', '27-08-2024 15:39:15'),
(28, 20, 'Madan Mahal', 47, 'DH_5', '18, 17', 'Caries', 'Swollen gums', 'terst', 'ytest', 'Dental-X', '27-08-2024 15:53:37'),
(29, 21, 'Madan Mahal', 48, 'DH_8', '18, 17', 'Fracture', 'Swollen gums', 'terst', 'test', 'Dental-X', '27-08-2024 15:56:00'),
(30, 22, 'Madan Mahal', 49, 'DH_8', '18, 17, 16, 15, 14', 'Caries', 'Swollen gums', 'test', 'test', 'Dental-X', '27-08-2024 16:00:34'),
(31, 23, 'Madan Mahal', 50, 'DH_8', '18, 17, 16, 15, 14', 'Caries', 'Toothache', 'test', 'trest', 'Dental-X', '27-08-2024 16:17:09'),
(32, 24, 'Madan Mahal', 51, 'DH_9', '18', 'Caries', 'Toothache', 'don\'t take hot water', 'Caries', 'Dental-X', '28-08-2024 12:10:35'),
(33, 25, 'Madan Mahal', 53, 'DH_2', '18, 17', 'Caries', 'Bleeding gums', 'tetst', 'test', 'Dental-X', '30-08-2024 12:18:01'),
(34, 26, 'Madan Mahal', 54, 'DH_2', '18, 17', 'Caries', 'Swollen gums', 'tetst', 'test', 'Dental-X', '30-08-2024 13:06:13'),
(35, 27, 'Madan Mahal', 55, 'DH_6', '18, 17', 'Fracture', 'Swollen gums', 'tetst', 'test', 'Dental-X', '30-08-2024 15:08:43'),
(36, 28, 'Madan Mahal', 56, 'DH_2', '18, 17', 'Caries', 'Swollen gums', 'tetst', 'test', 'Dental-X', '30-08-2024 16:25:08'),
(37, 29, 'Madan Mahal', 57, 'DH_2', '18, 17', 'Caries', 'Sensitivity to hot or cold', 'tetst', 'test', 'Dental-X', '30-08-2024 16:40:56'),
(38, 30, 'Madan Mahal', 58, 'DH_2', '18, 17', 'Caries', 'Toothache', 'tetst', 'test', 'Dental-X', '30-08-2024 16:49:30'),
(39, 31, 'Madan Mahal', 59, 'DH_2', '18, 17', 'Caries', 'Swollen gums', 'tetst', 'test', 'Dental-X', '30-08-2024 17:08:29'),
(40, 32, 'Madan Mahal', 60, 'DH_2', '18, 17', 'Caries', 'Bleeding gums', 'tetst', 'test', 'Dental-X', '30-08-2024 17:25:10'),
(41, 33, 'Madan Mahal', 79, 'DH_11', '31', 'Mobility', 'bad teeth', 'do not take cold drink', 'operation', 'Dental-X', '02-09-2024 12:48:02'),
(42, 34, 'Madan Mahal', 78, 'DH_10', '18', 'Caries', 'Toothache', 'dont eat sweets', 'Caries', 'Dental-X', '02-09-2024 12:48:08'),
(43, 35, 'Madan Mahal', 78, 'DH_10', '75', 'Missing Tooth', 'Bleeding gums', 'do not take cold drink', 'operation', 'Pediatric', '02-09-2024 12:53:19'),
(44, 36, 'Madan Mahal', 81, 'DH_13', '18', 'Caries', 'Swollen gums', 'Impacted', 'Impacted', 'Dental-X', '02-09-2024 12:56:16'),
(45, 38, 'Madan Mahal', 86, 'DH_14', '18', 'Caries', 'Toothache', 'dont eat sweets', 'Impacted', 'Dental-X', '02-09-2024 14:07:00'),
(46, 39, 'Madan Mahal', 88, 'DH_15', '18', 'Missing Tooth', 'Toothache', 'dont eat sweets', 'qew', 'Dental-X', '02-09-2024 14:26:04'),
(47, 40, 'Madan Mahal', 89, 'DH_16', '18', 'Caries', 'Toothache', 'dont eat sweets', 'Caries', 'Dental-X', '02-09-2024 14:49:50'),
(48, 41, 'Madan Mahal', 92, 'DH_18', '17', 'Fracture', 'Bleeding gums', 'dont eat sweets', 'fEWF', 'Dental-X', '02-09-2024 14:56:27'),
(49, 42, 'Madan Mahal', 78, 'DH_10', '18, 17', 'Fracture', 'Swollen gums', 'tetst', 'test', 'Dental-X', '02-09-2024 16:44:18'),
(50, 43, 'Madan Mahal', 90, 'DH_17', '18, 17', 'Caries', 'Swollen gums', 'teszrt', 'test', 'Dental-X', '02-09-2024 17:20:09'),
(51, 46, 'Madan Mahal', 104, 'DH_22', '18', 'Caries', 'Swollen gums', 'dsfj', 'ekfhjij', 'Dental-X', '06-09-2024 15:49:40'),
(52, 47, 'Madan Mahal', 103, 'DH_20', '55, 54', 'Caries', 'caries', 'sf', 'dfg', 'Pediatric', '06-09-2024 16:18:16'),
(53, 49, 'Madan Mahal', 102, 'DH_21', '55, 54', 'Caries', 'caries', 'hj', 'tyui', 'Pediatric', '06-09-2024 17:54:46'),
(54, 50, 'Madan Mahal', 106, 'DH_24', '46', '50% good', 'Sensitivity to hot or cold', 'drink normal water', 'NA', 'Dental-X', '12-09-2024 13:20:29'),
(55, 52, 'Madan Mahal', 106, 'DH_24', '42', 'Caries', 'Toothache', 'drink normal water', 'NA', 'Dental-X', '12-09-2024 13:44:50'),
(56, 53, 'Madan Mahal', 108, 'DH_11', '18, 17, 16, 15, 14, 13, 12, 11, 21, 22, 23, 24, 25, 26, 27, 28, 48, 47, 46, 45, 44, 43, 42, 41, 31, 32, 33, 34, 35, 36, 37, 38', 'dfdf', 'Toothache', 'ji', 'j', 'Dental-X', '23-09-2024 17:23:51'),
(57, 54, 'Madan Mahal', 109, 'DH_25', '18, 17, 16, 15, 14, 13, 12, 11, 21, 22, 23, 24, 25, 26, 27, 28, 48, 47, 46, 45, 44, 43, 42, 41, 31, 32, 33, 34, 35, 36, 37, 38', 's', 'Swollen gums', 'd', 'd', 'Dental-X', '23-09-2024 17:38:32'),
(59, 56, 'Madan Mahal', 112, 'DH_26', '18, 17, 16, 15, 14, 13, 12, 11, 21, 22, 23, 24, 25, 26, 27, 28, 48, 47, 46, 45, 44, 43, 42, 41, 31, 32, 33, 34, 35, 36, 37, 38', 'Caries', 'Toothache', 'ji', 'j', 'Dental-X', '23-09-2024 17:44:36'),
(61, 57, 'Madan Mahal', 114, 'DH_27', '18, 17, 16, 15, 14, 13, 12, 11, 21, 22, 23, 24, 25, 26, 27, 28, 48, 47, 46, 45, 44, 43, 42, 41, 31, 32, 33, 34, 35, 36, 37, 38', 'Caries', 'Swollen gums', 'hg', 'fd', 'Dental-X', '23-09-2024 17:59:39'),
(62, 58, 'Madan Mahal', 115, 'DH_28', '18, 17, 16, 15, 14, 13, 12, 11, 21, 22, 23, 24, 25, 26, 27, 28, 48, 47, 46, 45, 44, 43, 42, 41, 31, 32, 33, 34, 35, 36, 37, 38', 'Caries', 'Sensitivity to hot or cold', 'd', 'd', 'Dental-X', '23-09-2024 18:05:34'),
(63, 60, 'Madan Mahal', 116, 'DH_29', '18, 17, 16, 15, 14, 13, 12, 11, 21, 22, 23, 24, 25, 26, 27, 28, 48, 47, 46, 45, 44, 43, 42, 41, 31, 32, 33, 34, 35, 36, 37, 38', 'Caries', 'Bleeding gums', 'f', 'f', 'Dental-X', '23-09-2024 18:10:01'),
(64, 61, 'Madan Mahal', 118, 'DH_28', '18, 17, 16, 15, 14, 13, 12, 11, 21, 22, 23, 24, 25, 26, 27, 28, 48, 47, 46, 45, 44, 43, 42, 41, 31, 32, 33, 34, 35, 36, 37, 38', 'Caries', 'Swollen gums', 'g', 'g', 'Dental-X', '24-09-2024 14:10:23'),
(65, 62, 'Madan Mahal', 121, 'DH_25', '18, 17, 16, 15, 14, 13, 12, 11, 21, 22, 23, 24, 25, 26, 27, 28, 48, 47, 46, 45, 44, 43, 42, 41, 31, 32, 33, 34, 35, 36, 37, 38', 'Caries', 'Swollen gums', 's', 's', 'Dental-X', '24-09-2024 19:00:58'),
(66, 63, 'Madan Mahal', 123, 'DH_30', '18', 'Caries', 'Toothache', 'Caries', 'Caries', 'Dental-X', '04-10-2024 13:21:03'),
(67, 64, 'Madan Mahal', 124, 'DH_31', '18', 'Caries', 'Toothache', 'Fracture', 'Caries', 'Dental-X', '04-10-2024 15:54:22'),
(68, 66, 'Madan Mahal', 127, 'DH_33', '18, 17, 16, 15, 14, 13, 12, 11, 21, 22, 23, 24, 25, 26, 27, 28, 48, 47, 46, 45, 44, 43, 42, 41, 31, 32, 33, 34, 35, 36, 37, 38', 'Caries', 'Toothache', 'adddEXAA', 'EXX', 'Dental-X', '05-10-2024 17:24:32'),
(69, 67, 'Madan Mahal', 128, 'DH_33', '18, 17, 16, 15, 14, 13, 12, 11, 21, 22, 23, 24, 25, 26, 27, 28, 48, 47, 46, 45, 44, 43, 42, 41, 31, 32, 33, 34, 35, 36, 37, 38', 'Caries', 'Sensitivity to hot or cold', 'add', 'ex', 'Dental-X', '05-10-2024 17:27:44'),
(70, 68, 'Madan Mahal', 129, 'DH_34', '55', 'Caries', 'Toothache', 'bg', 'tyr', 'Pediatric', '05-10-2024 17:51:04'),
(71, 69, 'Madan Mahal', 131, 'DH_36', '18', 'Caries', 'Caries', 'dont eat sweets', 'Caries', 'Dental-X', '07-10-2024 11:40:06'),
(72, 70, 'Madan Mahal', 134, 'DH_37', '18', 'Missing Tooth', 'Toothache', 'c', 'Impacted', 'Dental-X', '07-10-2024 11:47:47'),
(73, 71, 'Madan Mahal', 136, 'DH_38', '55, 61', 'Caries', 'Swollen gums', 'okay', 'oaky', 'Pediatric', '07-10-2024 17:46:18'),
(74, 72, 'Madan Mahal', 137, 'DH_1', '18, 17, 16, 15, 14, 13, 12, 11, 21, 22, 23, 24, 25, 26, 27, 28, 48, 47, 46, 45, 44, 43, 42, 41, 31, 32, 33, 34, 35, 36, 37, 38', 'Caries', 'Toothache', 'f', 'f', 'Dental-X', '08-10-2024 16:26:39'),
(75, 73, 'Madan Mahal', 142, 'DH_32', '17', 'Fracture', 'Bleeding gums', 'take care', 'xyz', 'Dental-X', '21-10-2024 18:52:35'),
(76, 74, 'Madan Mahal', 143, 'DH_40', '14', 'Caries', 'bad teeth', 'bad teeth', 'bad teeth', 'Dental-X', '26-10-2024 13:24:05'),
(77, 75, 'Madan Mahal', 144, 'DH_41', '14', 'Caries', 'bad teeth', 'take water', 'abc', 'Dental-X', '26-10-2024 14:03:54'),
(78, 76, 'Madan Mahal', 145, 'DH_42', '43', 'Impacted', 'bad teeth', 'take water', 'abc', 'Dental-X', '26-10-2024 15:55:03');

-- --------------------------------------------------------

--
-- Table structure for table `dental_prescription`
--

CREATE TABLE `dental_prescription` (
  `id` int(11) NOT NULL,
  `appoint_id` int(11) NOT NULL,
  `tp_id` int(100) DEFAULT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `patient_uhid` varchar(50) NOT NULL,
  `desease` varchar(100) DEFAULT NULL,
  `treatment` varchar(100) DEFAULT NULL,
  `sitting_number` int(100) DEFAULT NULL,
  `medicine_name` varchar(255) NOT NULL,
  `dosage` varchar(255) NOT NULL,
  `frequency` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL,
  `date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dental_prescription`
--

INSERT INTO `dental_prescription` (`id`, `appoint_id`, `tp_id`, `branch_name`, `patient_uhid`, `desease`, `treatment`, `sitting_number`, `medicine_name`, `dosage`, `frequency`, `duration`, `note`, `date`) VALUES
(1, 0, 1, 'Madan Mahal', 'DH_1', 'Caries', 'Laminates and Veneers@ per tooth', NULL, 'Disprin 350 tablet', '200mg', '1-1-0(BD)', '2 weeks', 'test', '12-08-2024 18:58:15'),
(2, 0, 2, 'Madan Mahal', 'DH_3', 'Caries', 'Pulpectomy (Child) @ per tooth', NULL, 'Disprin 500 tablet', '223', '1-1-0(BD)', '1 week', 'test', '12-08-2024 19:12:44'),
(3, 0, 2, 'Madan Mahal', 'DH_3', 'Fracture', 'Removable Partial Dentures @ per tooth', NULL, 'Disprin 400 tablet', '223', '1-1-0(BD)', '6 days', 'test', '12-08-2024 19:12:54'),
(4, 0, 3, 'Madan Mahal', 'DH_4', 'Caries', 'Pulpectomy (Child) @ per tooth', NULL, 'Disprin 400 tablet', '200mg', '1-1-1(TDS)', '6 days', '', '12-08-2024 19:22:16'),
(5, 0, 4, 'Madan Mahal', 'DH_5', 'Caries', 'Single Implant', NULL, 'Disprin 400 tablet', '200mg', '1-0-1(BD)', '2 weeks', '', '13-08-2024 13:42:08'),
(6, 0, 5, 'Madan Mahal', 'DH_2', 'Caries', 'GIC Restoration @ per tooth', NULL, 'Disprin 325 tablet', 'test', '0-1-1(BD)', '2 days', 'test', '13-08-2024 17:44:13'),
(7, 0, 6, 'Madan Mahal', 'DH_2', 'Caries', 'Root Canal Treatment @ per tooth', NULL, 'Disprin 500 tablet', '223', '1-0-1(BD)', '2 weeks', 'test', '15-08-2024 14:28:25'),
(8, 0, 6, 'Madan Mahal', 'DH_2', 'Fracture', 'Teeth Bleaching at Home Whitening', NULL, 'Disprin 400 tablet', '103', '1-0-1(BD)', '1 week', 'test', '15-08-2024 14:28:41'),
(9, 0, 8, 'Madan Mahal', 'DH_1', 'Caries', 'Re-Root Canal Treatlment @ per tooth', NULL, 'Disprin 325 tablet', 'test', '1-1-0(BD)', '1 week', 'test', '16-08-2024 18:20:37'),
(10, 0, 8, 'Madan Mahal', 'DH_1', 'Fracture', 'Metal Braces', NULL, 'Disprin 400 tablet', 'test', '1-1-1(TDS)', '2 weeks', 'test', '16-08-2024 18:20:55'),
(11, 0, 8, 'Madan Mahal', 'DH_1', 'Impacted', 'Porcelain Fused to Metal @ per Crown', NULL, 'Disprin 325 tablet', 'test', '1-1-0(BD)', '2 weeks', 'test', '16-08-2024 18:21:06'),
(12, 0, 9, 'Madan Mahal', 'DH_1', 'Caries', 'Amalgam Restoration@ per tooth', NULL, 'Disprin 325 tablet', '223', '1-1-1(TDS)', '2 days', 'test', '16-08-2024 19:19:39'),
(13, 0, 9, 'Madan Mahal', 'DH_1', 'Fracture', 'Ceramic Braces', NULL, 'Disprin 350 tablet', '223', '1-1-0(BD)', '2 days', 'trest', '16-08-2024 19:19:55'),
(14, 0, 10, 'Madan Mahal', 'DH_5', 'Caries', 'Teeth Bleaching In Office Whitening', NULL, 'Disprin 500 tablet', '223', '1-1-0(BD)', '5 days', 'test', '17-08-2024 16:40:07'),
(15, 0, 11, 'Madan Mahal', 'DH_6', 'Fracture', 'Metal Crowns @ Per Crown', NULL, 'Disprin 325 tablet', '34', '1-1-0(BD)', '1 day', 'test', '17-08-2024 17:01:04'),
(16, 0, 12, 'Madan Mahal', 'DH_6', 'Caries', 'Direct Composite Veneer @ per tooth', NULL, 'Disprin 350 tablet', 'test', '1-1-0(BD)', '1 day', 'test', '17-08-2024 17:38:24'),
(17, 0, 13, 'Madan Mahal', 'DH_7', 'Caries', 'Indirect Pulp Capping with MTA @ per tooth', NULL, 'Disprin 400 tablet', 's', '0-0-1(HS)', '2 weeks', '', '21-08-2024 12:23:45'),
(18, 0, 15, 'Madan Mahal', 'DH_7', 'Fracture', 'Retention plate@ per arch', NULL, 'Disprin 400 tablet', '200mg', '1-1-1(TDS)', '1 week', '', '22-08-2024 11:52:34'),
(19, 0, 16, 'Madan Mahal', 'DH_2', 'Caries', 'Root Canal Treatment @ per tooth', NULL, 'Disprin 400 tablet', '34', '0-1-0(OD)', '5 days', '', '22-08-2024 12:02:27'),
(20, 0, 16, 'Madan Mahal', 'DH_2', 'Fracture', 'Third Molar /Impacted Tooth Removal', NULL, 'Disprin 400 tablet', 'test', '1-1-0(BD)', '3 days', 'test', '22-08-2024 12:02:40'),
(21, 0, 17, 'Madan Mahal', 'DH_1', 'Caries', 'Root Canal Treatment @ per tooth', NULL, 'Disprin 325 tablet', '223', '1-1-1(TDS)', '2 days', 'test', '26-08-2024 12:34:02'),
(22, 0, 17, 'Madan Mahal', 'DH_1', 'Fracture', 'Teeth Bleaching at Home Whitening', NULL, 'Disprin 350 tablet', '223', '1-1-1(TDS)', '1 day', 'test', '26-08-2024 12:34:19'),
(23, 0, 19, 'Madan Mahal', 'DH_6', 'Caries', 'Pulpectomy (Child) @ per tooth', NULL, 'Disprin 400 tablet', 'test', '1-1-1(TDS)', '6 days', 'test', '27-08-2024 15:44:44'),
(24, 0, 19, 'Madan Mahal', 'DH_6', 'Fracture', 'Re-Root Canal Treatlment @ per tooth', NULL, 'Disprin 500 tablet', '103', '1-1-0(BD)', '4 days', 'test', '27-08-2024 15:45:01'),
(25, 0, 20, 'Madan Mahal', 'DH_5', 'Caries', 'Laminates and Veneers@ per tooth', NULL, 'Disprin 400 tablet', '103', '1-1-0(BD)', '6 days', 'test', '27-08-2024 15:54:09'),
(26, 0, 21, 'Madan Mahal', 'DH_8', 'Fracture', 'Teeth Bleaching at Home Whitening', NULL, 'Disprin 400 tablet', '103', '1-0-1(BD)', '1 week', 'test', '27-08-2024 15:56:47'),
(27, 0, 22, 'Madan Mahal', 'DH_8', 'Caries', 'Teeth Bleaching In Office Whitening', NULL, 'Disprin 400 tablet', '223', '1-1-0(BD)', '2 days', 'test', '27-08-2024 16:01:04'),
(28, 0, 23, 'Madan Mahal', 'DH_8', 'Caries', 'Re-Root Canal Treatlment @ per tooth', NULL, 'Disprin 325 tablet', '223', '1-1-1(TDS)', '4 days', 'test', '27-08-2024 16:17:44'),
(29, 0, 24, 'Madan Mahal', 'DH_9', 'Caries', 'Root Canal Treatment @ per tooth', NULL, 'Disprin 325 tablet', '500 mg', '1-0-1(BD)', '2 days', '', '28-08-2024 12:11:51'),
(30, 0, 25, 'Madan Mahal', 'DH_2', 'Caries', 'GIC Restoration @ per tooth', NULL, 'Disprin 400 tablet', '223', '1-0-1(BD)', '2 days', 'test', '30-08-2024 12:18:32'),
(31, 0, 26, 'Madan Mahal', 'DH_2', 'Caries', 'Ceramic Braces', NULL, 'Disprin 400 tablet', '23', '1-1-0(BD)', '6 days', 'test', '30-08-2024 13:07:19'),
(32, 0, 27, 'Madan Mahal', 'DH_6', 'Fracture', 'Porcelain Fused to Metal @ per Crown', NULL, 'Disprin 400 tablet', '103', '1-1-1(TDS)', '5 days', 'test', '30-08-2024 15:09:36'),
(33, 0, 28, 'Madan Mahal', 'DH_2', 'Caries', 'Dental Jewellery (Skyce Crystal)', NULL, 'Disprin 325 tablet', '23', '1-1-1(TDS)', '1 day', 'test', '30-08-2024 16:25:42'),
(34, 0, 29, 'Madan Mahal', 'DH_2', 'Caries', 'Teeth Bleaching In Office Whitening', NULL, 'Disprin 325 tablet', '103', '1-1-0(BD)', '2 days', 'test', '30-08-2024 16:41:33'),
(35, 0, 30, 'Madan Mahal', 'DH_2', 'Caries', 'Teeth Bleaching In Office Whitening', NULL, 'Disprin 325 tablet', '23', '1-0-1(BD)', '2 days', 'test', '30-08-2024 16:49:56'),
(36, 0, 31, 'Madan Mahal', 'DH_2', 'Caries', 'lnvisalign (clear or invisible braces)', NULL, 'Disprin 400 tablet', '23', '1-1-1(TDS)', '3 days', 'test', '30-08-2024 17:09:01'),
(37, 0, 32, 'Madan Mahal', 'DH_2', 'Caries', 'Direct Composite Veneer @ per tooth', NULL, 'Disprin 325 tablet', '103', '1-1-0(BD)', '2 days', 'test', '30-08-2024 17:27:02'),
(38, 0, 33, 'Madan Mahal', 'DH_11', 'Mobility', 'Single Implant', NULL, 'Disprin 400 tablet', '1', '1-1-1(TDS)', '3 days', 'with water', '02-09-2024 12:49:19'),
(39, 0, 34, 'Madan Mahal', 'DH_10', 'Caries', 'Re-Root Canal Treatlment @ per tooth', NULL, 'Disprin 325 tablet', '500 mg', '1-1-0(BD)', '1 day', '', '02-09-2024 12:50:06'),
(40, 0, 35, 'Madan Mahal', 'DH_10', 'Missing Tooth', 'Removable Partial Dentures @ per tooth', NULL, 'Disprin 325 tablet', '1', '0-1-0(OD)', '2 days', '', '02-09-2024 12:54:01'),
(41, 0, 36, 'Madan Mahal', 'DH_13', 'Caries', 'Re-Root Canal Treatlment @ per tooth', NULL, 'Disprin 325 tablet', '500 mg', '1-1-1(TDS)', '2 days', '', '02-09-2024 12:56:56'),
(42, 0, 38, 'Madan Mahal', 'DH_14', 'Caries', 'Metal Free Crown Ziconia Crowns @ per Crown', NULL, 'Disprin 325 tablet', '500 mg', '1-1-1(TDS)', '1 day', '', '02-09-2024 14:12:11'),
(43, 0, 39, 'Madan Mahal', 'DH_15', 'Missing Tooth', 'Re-Root Canal Treatlment @ per tooth', NULL, 'Disprin 350 tablet', '500 mg', '1-1-1(TDS)', '3 days', '', '02-09-2024 14:26:34'),
(44, 0, 40, 'Madan Mahal', 'DH_16', 'Caries', 'Composite Restoration @ per tooth', NULL, 'Disprin 325 tablet', '500 mg', '1-0-0(BM)', '1 day', '', '02-09-2024 14:50:15'),
(45, 0, 41, 'Madan Mahal', 'DH_18', 'Fracture', 'Laminates and Veneers@ per tooth', NULL, 'Disprin 400 tablet', '500 mg', '1-1-1(TDS)', '4 days', '', '02-09-2024 14:57:01'),
(46, 0, 42, 'Madan Mahal', 'DH_10', 'Fracture', 'Laminates and Veneers@ per tooth', NULL, 'Disprin 325 tablet', '23', '1-1-1(TDS)', '4 days', 'test', '02-09-2024 16:45:24'),
(47, 0, 43, 'Madan Mahal', 'DH_17', 'Caries', 'Root Canal Treatment @ per tooth', NULL, 'Disprin 400 tablet', '223', '1-0-1(BD)', '6 days', 'test', '02-09-2024 17:21:59'),
(48, 0, 46, 'Madan Mahal', 'DH_22', 'Caries', 'Laminates and Veneers@ per tooth', NULL, 'Disprin 500 tablet', '500mg', '1-1-1(TDS)', '2 days', 'srhd', '06-09-2024 15:51:31'),
(49, 0, 50, 'Madan Mahal', 'DH_24', '50% good', 'Digital Compuler zcd XRay (R.V.G.)', NULL, 'Disprin 325 tablet', '5', '1-1-1(TDS)', '3 days', 'Take Care', '12-09-2024 13:27:32'),
(50, 0, 52, 'Madan Mahal', 'DH_24', 'Caries', 'Re-Root Canal Treatlment @ per tooth', NULL, 'Disprin 400 tablet', '5', '0-1-1(BD)', '1 week', '5', '12-09-2024 13:45:36'),
(51, 0, 53, 'Madan Mahal', 'DH_11', 'dfdf', 'Re-Root Canal Treatlment @ per tooth', NULL, 'Disprin 325 tablet', 'gf', '1-1-0(BD)', '2 days', 'ftgrf', '23-09-2024 17:27:05'),
(52, 0, 54, 'Madan Mahal', 'DH_25', 's', 'Re-Root Canal Treatlment @ per tooth', NULL, 'Disprin 400 tablet', '2', '0-0-1(HS)', '4 days', 'ddfdf', '23-09-2024 17:38:59'),
(53, 0, 56, 'Madan Mahal', 'DH_26', 'Caries', 'Digital Compuler zcd XRay (R.V.G.)', NULL, 'Disprin 400 tablet', '1', '1-1-0(BD)', '1 week', 'ws', '23-09-2024 17:45:11'),
(54, 0, 60, 'Madan Mahal', 'DH_29', 'Caries', 'Re-Root Canal Treatlment @ per tooth', NULL, 'Disprin 400 tablet', '2', '1-1-0(BD)', '1 week', 'dfs', '23-09-2024 18:11:09'),
(55, 0, 61, 'Madan Mahal', 'DH_28', 'Caries', 'Digital Compuler zcd XRay (R.V.G.)', NULL, 'Disprin 400 tablet', '1', '1-0-1(BD)', '2 weeks', 'kl', '24-09-2024 14:11:54'),
(56, 0, 62, 'Madan Mahal', 'DH_25', 'Caries', 'Re-Root Canal Treatlment @ per tooth', NULL, 'Disprin 500 tablet', '1', '1-1-0(BD)', '3 days', '3', '24-09-2024 19:01:26'),
(57, 0, 63, 'Madan Mahal', 'DH_30', 'Caries', 'Root Canal Treatment @ per tooth', NULL, 'Disprin 400 tablet', '500mg', '1-1-1(TDS)', '2 days', '', '04-10-2024 13:22:29'),
(58, 0, 64, 'Madan Mahal', 'DH_31', 'Caries', 'Root Canal Treatment @ per tooth', NULL, 'Disprin 400 tablet', '500mg', '1-0-0(BM)', '3 weeks', '', '04-10-2024 15:54:47'),
(59, 0, 66, 'Madan Mahal', 'DH_33', 'Caries', 'Digital Compuler zcd XRay (R.V.G.)', NULL, 'Disprin 400 tablet', '2', '1-0-0(BM)', '2 weeks', 'd', '05-10-2024 17:24:58'),
(60, 0, 68, 'Madan Mahal', 'DH_34', 'Caries', 'Amalgam Restoration@ per tooth', NULL, 'Disprin 325 tablet', '500mg', '1-1-1(TDS)', '1 day', 'take water', '05-10-2024 17:52:29'),
(61, 0, 69, 'Madan Mahal', 'DH_36', 'Caries', 'Laminates and Veneers@ per tooth', NULL, 'Disprin 400 tablet', '500 mg', '0-0-1(HS)', '3 weeks', 'weff', '07-10-2024 11:41:01'),
(63, 0, 74, 'Madan Mahal', 'DH_40', 'Caries', 'GIC Restoration @ per tooth', NULL, 'Disprin 325 tablet', '200mg', '1-1-1(TDS)', '1 day', 'jgfghfv', '26-10-2024 13:25:54'),
(64, 0, 75, 'Madan Mahal', 'DH_41', 'Caries', 'Re-Root Canal Treatlment @ per tooth', NULL, 'Disprin 325 tablet', '200mg', '1-1-1(TDS)', '1 day', 'okay', '26-10-2024 14:05:52');

-- --------------------------------------------------------

--
-- Table structure for table `dental_treatment`
--

CREATE TABLE `dental_treatment` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `tp_id` int(100) DEFAULT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `appointment_id` int(11) NOT NULL,
  `sitting_number` int(100) DEFAULT NULL,
  `patient_uhid` varchar(50) NOT NULL,
  `dental_treatment` varchar(500) NOT NULL,
  `no_teeth` varchar(255) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `cost_amt` varchar(255) NOT NULL,
  `original_cost_amt` varchar(255) NOT NULL,
  `disc_amt` varchar(255) NOT NULL,
  `total_amt` varchar(255) NOT NULL,
  `net_amount` int(100) DEFAULT NULL,
  `paid_amount` int(100) DEFAULT NULL,
  `pending_amount` int(100) DEFAULT NULL,
  `dir_rec_amt` int(100) DEFAULT NULL,
  `sec_rec_amt` int(100) DEFAULT NULL,
  `dir_rec_doctor_id` varchar(100) DEFAULT NULL,
  `sitting_payment_status` varchar(100) DEFAULT NULL,
  `note` varchar(1000) NOT NULL,
  `date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dental_treatment`
--

INSERT INTO `dental_treatment` (`id`, `exam_id`, `tp_id`, `branch_name`, `appointment_id`, `sitting_number`, `patient_uhid`, `dental_treatment`, `no_teeth`, `qty`, `cost_amt`, `original_cost_amt`, `disc_amt`, `total_amt`, `net_amount`, `paid_amount`, `pending_amount`, `dir_rec_amt`, `sec_rec_amt`, `dir_rec_doctor_id`, `sitting_payment_status`, `note`, `date`) VALUES
(1, 1, 1, 'Madan Mahal', 1, 1, 'DH_1', 'Laminates and Veneers@ per tooth', '18, 17', '2', '10000', '', '10', '20000', 18000, 10000, 8000, 10000, 0, 'dg_4', 'Received', '', '12-08-2024 19:01:00'),
(2, 1, 1, 'Madan Mahal', 1, 1, 'DH_1', 'Laminates and Veneers@ per tooth', '18, 17', '2', '10000', '', '1', '20000', 8000, 8000, 11800, 8000, 0, 'dg_4', 'Received', '', '12-08-2024 19:10:48'),
(3, 4, 3, 'Madan Mahal', 4, 1, 'DH_4', 'Pulpectomy (Child) @ per tooth', '18, 17', '2', '2800', '', '10', '5600', 5040, 1000, 4040, 1000, 0, 'dg_4', 'Received', 'test', '12-08-2024 19:25:10'),
(4, 4, 3, 'Madan Mahal', 4, 1, 'DH_4', 'Pulpectomy (Child) @ per tooth', '18, 17', '2', '2800', '', '10', '5600', 5040, 2000, 3040, 2000, 0, 'dg_4', 'Received', '', '12-08-2024 19:26:47'),
(5, 4, 3, 'Madan Mahal', 0, 2, 'DH_4', 'Pulpectomy (Child) @ per tooth', '18, 17', '2', '2800', '', '10', '5600', 3040, 1000, 2040, 1000, 0, 'dg_4', 'Received', 'tewsat to', '12-08-2024 19:29:04'),
(6, 4, 3, 'Madan Mahal', 0, 3, 'DH_4', 'Pulpectomy (Child) @ per tooth', '18, 17', '2', '2800', '', '10', '5600', 2040, 1000, 1040, 1000, 0, 'dg_4', 'Received', 'test four', '12-08-2024 19:46:09'),
(7, 5, 4, 'Madan Mahal', 5, 1, 'DH_5', 'Single Implant', '18, 17', '2', '25000', '', '0', '50000', 50000, 20000, 30000, 0, 20000, 'dg_4', 'Recieved', '', '13-08-2024 13:45:30'),
(8, 5, 4, 'Madan Mahal', 5, 1, 'DH_5', 'Single Implant', '18, 17', '2', '25000', '', '0', '50000', 30000, 5000, 45000, 0, 5000, 'dg_4', 'Received', '', '13-08-2024 13:51:14'),
(9, 7, 6, 'Madan Mahal', 10, 1, 'DH_2', 'Root Canal Treatment @ per tooth', '18, 17', '2', '3000', '', '10', '6000', 5400, 5400, 0, 0, 5400, 'dg_4', 'paid', 'test', '15-08-2024 15:13:16'),
(10, 7, 6, 'Madan Mahal', 0, 2, 'DH_2', 'Root Canal Treatment @ per tooth', '18, 17', '2', '3000', '', '10', '6000', 0, 0, 0, 0, 0, 'dg_4', 'Pending', '', '15-08-2024 16:31:00'),
(11, 8, 6, 'Madan Mahal', 0, 1, 'DH_2', 'Teeth Bleaching at Home Whitening', '16, 15', '2', '5000', '', '10', '10000', 9000, 2600, 6400, 0, 2600, 'dg_4', 'paid', 'tedst', '15-08-2024 16:47:22'),
(12, 8, 6, 'Madan Mahal', 0, 2, 'DH_2', 'Teeth Bleaching at Home Whitening', '16, 15', '2', '5000', '', '10', '10000', 6400, 1000, 5400, 1000, 0, 'dg_4', 'paid', 'test', '15-08-2024 16:51:46'),
(13, 8, 6, 'Madan Mahal', 0, 3, 'DH_2', 'Teeth Bleaching at Home Whitening', '16, 15', '2', '5000', '', '10', '10000', 5400, 5400, 0, 5400, 0, 'dg_4', 'paid', 'test', '15-08-2024 16:53:19'),
(14, 4, 3, 'Madan Mahal', 9, 4, 'DH_4', 'Pulpectomy (Child) @ per tooth', '18, 17', '2', '2800', '', '10', '5600', 1040, 1040, 0, 1040, 0, 'dg_4', 'paid', '', '15-08-2024 17:01:58'),
(15, 9, 8, 'Madan Mahal', 13, 1, 'DH_1', 'Re-Root Canal Treatlment @ per tooth', '18, 17', '2', '4000', '', '10', '8000', 7200, 7200, 0, 0, 7200, 'dg_4', 'paid', 'test', '16-08-2024 18:44:04'),
(16, 9, 8, 'Madan Mahal', 0, 2, 'DH_1', 'Re-Root Canal Treatlment @ per tooth', '18, 17', '2', '4000', '', '10', '8000', 0, 0, 0, 0, 0, 'dg_4', 'Pending', 'test', '16-08-2024 18:45:29'),
(17, 10, 8, 'Madan Mahal', 0, 1, 'DH_1', 'Metal Braces', '16, 15', '2', '30000', '', '10', '60000', 54000, 22800, 31200, 0, 22800, 'dg_4', 'paid', 'test', '16-08-2024 19:01:58'),
(18, 10, 8, 'Madan Mahal', 0, 2, 'DH_1', 'Metal Braces', '16, 15', '2', '30000', '', '10', '60000', 31200, 31200, 0, 31200, 0, 'dg_4', 'paid', 'test', '16-08-2024 19:09:17'),
(19, 11, 8, 'Madan Mahal', 0, 1, 'DH_1', 'Porcelain Fused to Metal @ per Crown', '14, 13', '2', '3000', '', '10', '6000', 5400, 5400, 0, 5400, 0, 'dg_4', 'paid', 'test', '16-08-2024 19:09:51'),
(20, 12, 9, 'Madan Mahal', 14, 1, 'DH_1', 'Amalgam Restoration@ per tooth', '55, 54', '2', '800', '', '10', '1600', 1440, 1440, 0, 1440, 0, 'dg_4', 'paid', 'test', '16-08-2024 19:21:10'),
(21, 13, 9, 'Madan Mahal', 0, 1, 'DH_1', 'Ceramic Braces', '53, 52', '2', '45000', '', '10', '90000', 81000, 81000, 0, 81000, 0, 'dg_4', 'paid', 'test', '16-08-2024 19:21:42'),
(22, 14, 10, 'Madan Mahal', 15, 1, 'DH_5', 'Teeth Bleaching In Office Whitening', '18, 17', '2', '8000', '', '10', '16000', 14400, 8000, 6400, 0, 8000, 'dg_4', 'paid', 'test', '17-08-2024 16:45:00'),
(23, 14, 10, 'Madan Mahal', 18, 2, 'DH_5', 'Teeth Bleaching In Office Whitening', '18, 17', '2', '8000', '', '10', '16000', 6400, 3000, 3400, 0, 3000, 'dg_4', 'paid', 'test', '17-08-2024 16:46:34'),
(24, 14, 10, 'Madan Mahal', 0, 3, 'DH_5', 'Teeth Bleaching In Office Whitening', '18, 17', '2', '8000', '', '10', '16000', 3400, 3400, 0, 3400, 0, 'dg_4', 'paid', 'test', '17-08-2024 16:47:31'),
(25, 16, 11, 'Madan Mahal', 17, 1, 'DH_6', 'Metal Crowns @ Per Crown', '18, 17', '2', '1500', '', '10', '3000', 2700, 1000, 1700, 0, 1000, 'dg_4', 'paid', 'test', '17-08-2024 17:10:58'),
(26, 16, 11, 'Madan Mahal', 24, 2, 'DH_6', 'Metal Crowns @ Per Crown', '18, 17', '2', '1500', '', '10', '3000', 1700, 1700, 0, 1700, 0, 'dg_4', 'paid', 'test', '17-08-2024 17:12:06'),
(27, 17, 12, 'Madan Mahal', 25, 1, 'DH_6', 'Direct Composite Veneer @ per tooth', '18, 17', '2', '2500', '', '10', '5000', 4500, 4500, 0, 0, 4500, 'dg_4', 'paid', 'tesdt', '17-08-2024 17:50:02'),
(28, 18, 12, 'Madan Mahal', 26, 1, 'DH_6', 'Ceramic Braces', '18, 17', '2', '45000', '', '10', '90000', 81000, 35500, 45500, 0, 35500, 'dg_4', 'paid', 'tsest', '17-08-2024 17:53:37'),
(29, 18, 12, 'Madan Mahal', 0, 2, 'DH_6', 'Ceramic Braces', '18, 17', '2', '45000', '', '10', '90000', 45500, 45500, 0, 45500, 0, 'dg_4', 'paid', 'test', '17-08-2024 17:53:59'),
(30, 19, 13, 'Madan Mahal', 31, 1, 'DH_7', 'Indirect Pulp Capping with MTA @ per tooth', '18, 17', '2', '2000', '', '0', '4000', 4000, 1500, 2500, 0, 1500, 'dg_4', 'paid', '', '21-08-2024 12:25:48'),
(31, 20, 14, 'Madan Mahal', 32, 1, 'DH_7', 'Full mouth Implant', '18, 17', '2', '250000', '', '0', '500000', 500000, 100000, 400000, 100000, 0, 'dg_4', 'paid', '', '21-08-2024 13:18:50'),
(32, 20, 14, 'Madan Mahal', 33, 2, 'DH_7', 'Full mouth Implant', '18, 17', '2', '250000', '', '0', '500000', 400000, 400000, 0, 400000, 0, 'dg_4', 'paid', '', '21-08-2024 13:22:27'),
(33, 21, 15, 'Madan Mahal', 34, 1, 'DH_7', 'Retention plate@ per arch', '18, 17', '2', '2000', '', '0', '4000', 4000, 4000, 0, 0, 4000, 'dg_4', 'paid', '', '22-08-2024 11:57:13'),
(34, 22, 16, 'Madan Mahal', 36, 1, 'DH_2', 'Root Canal Treatment @ per tooth', '18, 17', '2', '3000', '', '10', '6000', 5400, 5400, 0, 0, 5400, 'dg_4', 'paid', 'test', '22-08-2024 12:03:34'),
(35, 23, 16, 'Madan Mahal', 37, 1, 'DH_2', 'Third Molar Impacted Tooth Removal', '16, 15', '2', '3000', '', '10', '6000', 5400, 5400, 0, 5400, 0, 'dg_4', 'paid', 'test', '22-08-2024 12:08:22'),
(36, 24, 17, 'Madan Mahal', 41, 1, 'DH_1', 'Root Canal Treatment @ per tooth', '18, 17', '2', '575', '', '0', '1150', 1150, 1150, 0, 1150, 0, 'dg_4', 'paid', '', '26-08-2024 12:35:28'),
(37, 25, 17, 'Madan Mahal', 0, 1, 'DH_1', 'Teeth Bleaching at Home Whitening', '16, 15', '2', '5000', '', '0', '10000', 10000, 10000, 0, 10000, 0, 'dg_4', 'paid', 'done', '26-08-2024 12:35:58'),
(38, 26, 18, 'Madan Mahal', 44, 1, 'DH_8', 'Single Implant', '18, 17', '2', '25000', '', '0', '50000', 50000, 25000, 25000, 25000, 0, 'dg_4', 'paid', '', '27-08-2024 15:20:52'),
(39, 26, 18, 'Madan Mahal', 45, 2, 'DH_8', 'Single Implant', '18, 17', '2', '25000', '', '0', '50000', 25000, 10000, 15000, 10000, 0, 'dg_4', 'paid', '', '27-08-2024 15:27:15'),
(40, 27, 19, 'Madan Mahal', 46, 1, 'DH_6', 'Pulpectomy (Child) @ per tooth', '18, 17', '2', '2800', '', '10', '5600', 5040, 2000, 3040, 2000, 0, 'dg_4', 'paid', 'test', '27-08-2024 15:46:08'),
(41, 27, 19, 'Madan Mahal', 0, 2, 'DH_6', 'Pulpectomy (Child) @ per tooth', '18, 17', '2', '2800', '', '10', '5600', 3040, 3040, 0, 3040, 0, 'dg_4', 'paid', 'test', '27-08-2024 15:46:44'),
(42, 28, 19, 'Madan Mahal', 0, 1, 'DH_6', 'Re-Root Canal Treatlment @ per tooth', '16, 15', '2', '4000', '', '10', '8000', 7200, 2000, 5200, 2000, 0, 'dg_4', 'paid', 'test', '27-08-2024 15:49:09'),
(43, 28, 19, 'Madan Mahal', 0, 2, 'DH_6', 'Re-Root Canal Treatlment @ per tooth', '16, 15', '2', '4000', '', '10', '8000', 5200, 3000, 2200, 3000, 0, 'dg_4', 'paid', 'test', '27-08-2024 15:49:40'),
(44, 28, 19, 'Madan Mahal', 0, 3, 'DH_6', 'Re-Root Canal Treatlment @ per tooth', '16, 15', '2', '4000', '', '10', '8000', 2200, 1000, 1200, 1000, 0, 'dg_4', 'paid', 'test', '27-08-2024 15:50:51'),
(45, 28, 19, 'Madan Mahal', 0, 4, 'DH_6', 'Re-Root Canal Treatlment @ per tooth', '16, 15', '2', '4000', '', '10', '8000', 1200, 1200, 0, 1200, 0, 'dg_4', 'paid', 'test', '27-08-2024 15:51:34'),
(46, 30, 21, 'Madan Mahal', 48, 1, 'DH_8', 'Teeth Bleaching at Home Whitening', '18, 17', '2', '5000', '', '0', '10000', 10000, 5000, 5000, 5000, 0, 'dg_4', 'paid', 'test', '27-08-2024 15:57:18'),
(47, 30, 21, 'Madan Mahal', 0, 2, 'DH_8', 'Teeth Bleaching at Home Whitening', '18, 17', '2', '5000', '', '0', '10000', 5000, 5000, 0, 5000, 0, 'dg_4', 'paid', 'test', '27-08-2024 15:58:08'),
(48, 31, 22, 'Madan Mahal', 49, 1, 'DH_8', 'Teeth Bleaching In Office Whitening', '18, 17, 16, 15, 14', '5', '8000', '', '0', '40000', 40000, 10000, 30000, 10000, 0, 'dg_4', 'paid', 'test', '27-08-2024 16:01:51'),
(49, 31, 22, 'Madan Mahal', 0, 2, 'DH_8', 'Teeth Bleaching In Office Whitening', '18, 17, 16, 15, 14', '5', '8000', '', '0', '40000', 30000, 10000, 20000, 10000, 0, 'dg_4', 'paid', 'test', '27-08-2024 16:02:47'),
(50, 31, 22, 'Madan Mahal', 0, 3, 'DH_8', 'Teeth Bleaching In Office Whitening', '18, 17, 16, 15, 14', '5', '8000', '', '0', '40000', 20000, 1000, 19000, 1000, 0, 'dg_4', 'paid', 'test', '27-08-2024 16:04:15'),
(51, 32, 23, 'Madan Mahal', 50, 1, 'DH_8', 'Re-Root Canal Treatlment @ per tooth', '18, 17, 16, 15, 14', '5', '4000', '', '0', '20000', 20000, 5000, 15000, 5000, 0, 'dg_4', 'paid', 'test', '27-08-2024 16:18:25'),
(52, 32, 23, 'Madan Mahal', 0, 2, 'DH_8', 'Re-Root Canal Treatlment @ per tooth', '18, 17, 16, 15, 14', '5', '4000', '', '0', '20000', 15000, 5000, 10000, 5000, 0, 'dg_4', 'paid', 'test', '27-08-2024 16:22:38'),
(53, 32, 23, 'Madan Mahal', 0, 3, 'DH_8', 'Re-Root Canal Treatlment @ per tooth', '18, 17, 16, 15, 14', '5', '4000', '', '0', '20000', 10000, 10000, 0, 10000, 0, 'dg_4', 'paid', 'test', '27-08-2024 16:23:04'),
(54, 33, 24, 'Madan Mahal', 51, 1, 'DH_9', 'Root Canal Treatment @ per tooth', '18', '1', '500', '', '2', '500', 490, 200, 290, 0, 0, 'dg_4', '', 'not now', '28-08-2024 12:35:33'),
(55, 33, 24, 'Madan Mahal', 0, 2, 'DH_9', 'Root Canal Treatment @ per tooth', '18', '1', '500', '', '2', '500', 290, 290, 0, 290, 0, 'dg_4', 'paid', '', '28-08-2024 12:40:49'),
(56, 21, 15, 'Madan Mahal', 52, 2, 'DH_7', 'Retention plate@ per arch', '18, 17', '2', '2000', '', '0', '4000', 0, 0, 0, 0, 0, 'dg_4', 'Pending', 'test', '30-08-2024 12:15:34'),
(57, 34, 25, 'Madan Mahal', 53, 1, 'DH_2', 'GIC Restoration @ per tooth', '18, 17', '2', '600', '', '10', '1200', 1080, 1080, 0, 0, 0, 'dg_4', 'pending', 'test', '30-08-2024 12:21:46'),
(58, 35, 26, 'Madan Mahal', 54, 1, 'DH_2', 'Ceramic Braces', '18, 17', '2', '45000', '', '10', '90000', 81000, 81000, 0, 81000, 0, 'dg_4', 'paid', 'test', '30-08-2024 13:07:47'),
(59, 36, 27, 'Madan Mahal', 55, 1, 'DH_6', 'Porcelain Fused to Metal @ per Crown', '18, 17', '2', '3000', '', '10', '6000', 5400, 2000, 3400, 0, 0, 'dg_4', 'pending', 'test', '30-08-2024 15:11:50'),
(60, 37, 28, 'Madan Mahal', 56, 1, 'DH_2', 'Dental Jewellery (Skyce Crystal)', '18, 17', '2', '2000', '', '10', '4000', 3600, 2000, 1600, 0, 0, 'dg_4', 'pending', '', '30-08-2024 16:35:29'),
(61, 37, 28, 'Madan Mahal', 56, 1, 'DH_2', 'Dental Jewellery (Skyce Crystal)', '18, 17', '2', '2000', '', '', '4000', 1600, 1000, 3000, 1000, 0, 'dg_4', 'paid', '', '30-08-2024 16:36:37'),
(62, 37, 28, 'Madan Mahal', 0, 2, 'DH_2', 'Dental Jewellery (Skyce Crystal)', '18, 17', '2', '2000', '', '0', '4000', 3000, 3000, 0, 3000, 0, 'dg_4', 'paid', '', '30-08-2024 16:37:22'),
(63, 38, 29, 'Madan Mahal', 57, 1, 'DH_2', 'Teeth Bleaching In Office Whitening', '18, 17', '2', '8000', '', '10', '16000', 14400, 4000, 10400, 4000, 0, 'dg_4', 'paid', 'tedt', '30-08-2024 16:42:11'),
(64, 39, 30, 'Madan Mahal', 58, 1, 'DH_2', 'Teeth Bleaching In Office Whitening', '18, 17', '2', '8000', '', '10', '16000', 14400, 5000, 9400, 5000, 0, 'dg_4', 'paid', 'test', '30-08-2024 16:50:38'),
(65, 40, 31, 'Madan Mahal', 59, 1, 'DH_2', 'lnvisalign (clear or invisible braces)', '18, 17', '2', '80000', '', '10', '160000', 144000, 25000, 119000, 25000, 0, 'dg_4', 'paid', 'test', '30-08-2024 17:09:29'),
(66, 40, 31, 'Madan Mahal', 0, 2, 'DH_2', 'lnvisalign (clear or invisible braces)', '18, 17', '2', '80000', '', '10', '160000', 119000, 25000, 94000, 25000, 0, 'dg_4', 'paid', 'test', '30-08-2024 17:10:01'),
(67, 40, 31, 'Madan Mahal', 0, 3, 'DH_2', 'lnvisalign (clear or invisible braces)', '18, 17', '2', '80000', '', '10', '160000', 94000, 25000, 69000, 25000, 0, 'dg_4', 'paid', '', '30-08-2024 17:10:21'),
(68, 41, 32, 'Madan Mahal', 60, 1, 'DH_2', 'Direct Composite Veneer @ per tooth', '18, 17', '2', '2500', '', '10', '5000', 4500, 2000, 2500, 2000, 0, 'dg_4', 'paid', 'test', '30-08-2024 19:11:06'),
(69, 41, 32, 'Madan Mahal', 60, 1, 'DH_2', 'Direct Composite Veneer @ per tooth', '18, 17', '2', '2500', '', '', '5000', 2500, 1000, 4000, 1000, 0, 'dg_4', 'paid', '', '30-08-2024 20:27:28'),
(70, 41, 32, 'Madan Mahal', 63, 2, 'DH_2', 'Direct Composite Veneer @ per tooth', '18, 17', '2', '2500', '', '0', '5000', 4000, 100, 3900, 100, 0, 'dg_4', 'paid', 'test', '31-08-2024 11:44:24'),
(71, 43, 33, 'Madan Mahal', 79, 1, 'DH_11', 'Single Implant', '31', '1', '25000', '', '5', '25000', 23750, 15000, 8750, 15000, 0, 'dg_4', 'paid', '', '02-09-2024 12:52:10'),
(72, 47, 36, 'Madan Mahal', 81, 1, 'DH_13', 'Re-Root Canal Treatlment @ per tooth', '18', '1', '4000', '', '5', '4000', 3800, 0, 3800, 0, 0, 'dg_4', 'Pending', '', '02-09-2024 12:58:26'),
(73, 47, 36, 'Madan Mahal', 0, 2, 'DH_13', 'Re-Root Canal Treatlment @ per tooth', '18', '1', '4000', '', '5', '4000', 4000, 0, 3800, 0, 0, 'dg_4', 'Pending', '', '02-09-2024 13:47:55'),
(74, 49, 38, 'Madan Mahal', 86, 1, 'DH_14', 'Metal Free Crown Ziconia Crowns @ per Crown', '18', '1', '8000', '', '4', '8000', 7680, 1000, 6680, 1000, 0, 'dg_4', 'paid', '', '02-09-2024 14:13:30'),
(75, 49, 38, 'Madan Mahal', 87, 2, 'DH_14', 'Metal Free Crown Ziconia Crowns @ per Crown', '18', '1', '8000', '', '4', '8000', 6680, 0, 6680, 0, 0, 'dg_4', 'Pending', '', '02-09-2024 14:14:58'),
(76, 50, 39, 'Madan Mahal', 88, 1, 'DH_15', 'Re-Root Canal Treatlment @ per tooth', '18', '1', '4000', '', '10', '4000', 3600, 600, 3000, 600, 0, 'dg_4', 'paid', '', '02-09-2024 14:45:31'),
(77, 51, 40, 'Madan Mahal', 89, 1, 'DH_16', 'Composite Restoration @ per tooth', '18', '1', '225', '', '0', '225', 225, 225, 0, 225, 0, 'dg_4', 'paid', '', '02-09-2024 14:50:43'),
(78, 52, 41, 'Madan Mahal', 92, 1, 'DH_18', 'Laminates and Veneers@ per tooth', '17', '1', '10000', '', '10', '10000', 9000, 2000, 7000, 2000, 0, 'dg_4', 'paid', '', '02-09-2024 14:57:38'),
(79, 52, 41, 'Madan Mahal', 93, 2, 'DH_18', 'Laminates and Veneers@ per tooth', '17', '1', '10000', '', '10', '10000', 7000, 1000, 6000, 1000, 0, 'dg_4', 'paid', '', '02-09-2024 15:00:07'),
(80, 53, 42, 'Madan Mahal', 78, 1, 'DH_10', 'Laminates and Veneers@ per tooth', '18, 17', '2', '10000', '', '10', '20000', 18000, 5000, 13000, 5000, 0, 'dg_4', 'paid', 'test', '02-09-2024 16:53:53'),
(81, 53, 42, 'Madan Mahal', 0, 2, 'DH_10', 'Laminates and Veneers@ per tooth', '18, 17', '2', '10000', '', '10', '20000', 13000, 2000, 11000, 2000, 0, 'dg_4', 'paid', 'test', '02-09-2024 17:11:06'),
(82, 53, 42, 'Madan Mahal', 0, 3, 'DH_10', 'Laminates and Veneers@ per tooth', '18, 17', '2', '10000', '', '10', '20000', 11000, 100, 10900, 100, 0, 'dg_4', 'paid', 'test', '02-09-2024 17:14:22'),
(83, 53, 42, 'Madan Mahal', 0, 4, 'DH_10', 'Laminates and Veneers@ per tooth', '18, 17', '2', '10000', '', '10', '20000', 10900, 900, 10000, 900, 0, 'dg_4', 'paid', 'test', '02-09-2024 17:17:44'),
(84, 53, 42, 'Madan Mahal', 0, 5, 'DH_10', 'Laminates and Veneers@ per tooth', '18, 17', '2', '10000', '', '10', '20000', 10000, 10000, 0, 10000, 0, 'dg_4', 'paid', 'test', '02-09-2024 17:18:25'),
(85, 56, 46, 'Madan Mahal', 104, 1, 'DH_22', 'Laminates and Veneers@ per tooth', '18', '1', '10000', '', '20', '10000', 8000, 8000, 0, 8000, 0, 'dg_4', 'paid', '', '06-09-2024 15:52:38'),
(86, 57, 49, 'Madan Mahal', 102, 1, 'DH_21', 'Oral Prophylaxis (Scaling)', '55, 54', '2', '1500', '', '12', '3000', 2640, 2640, 0, 2640, 0, 'dg_4', 'paid', '', '06-09-2024 17:58:08'),
(87, 59, 52, 'Madan Mahal', 106, 1, 'DH_24', 'Re-Root Canal Treatlment @ per tooth', '42', '1', '4000', '', '1', '4000', 3960, 0, 3960, 0, 0, 'dg_19', 'Pending', '', '12-09-2024 13:46:42'),
(88, 60, 53, 'Madan Mahal', 108, 1, 'DH_11', 'Re-Root Canal Treatlment @ per tooth', '18, 17, 16, 15, 14, 13, 12, 11, 21, 22, 23, 24, 25, 26, 27, 28, 48, 47, 46, 45, 44, 43, 42, 41, 31, 32, 33, 34, 35, 36, 37, 38', '32', '4000', '', '5', '128000', 121600, 0, 121600, 0, 0, 'dg_4', 'Pending', '', '23-09-2024 17:29:14'),
(89, 61, 54, 'Madan Mahal', 109, 1, 'DH_25', 'Re-Root Canal Treatlment @ per tooth', '18, 17, 16, 15, 14, 13, 12, 11, 21, 22, 23, 24, 25, 26, 27, 28, 48, 47, 46, 45, 44, 43, 42, 41, 31, 32, 33, 34, 35, 36, 37, 38', '32', '4000', '', '1', '128000', 126720, 0, 126720, 0, 0, 'dg_4', 'Pending', 'hg', '23-09-2024 17:39:42'),
(90, 61, 54, 'Madan Mahal', 109, 1, 'DH_25', 'Re-Root Canal Treatlment @ per tooth', '18, 17, 16, 15, 14, 13, 12, 11, 21, 22, 23, 24, 25, 26, 27, 28, 48, 47, 46, 45, 44, 43, 42, 41, 31, 32, 33, 34, 35, 36, 37, 38', '32', '4000', '', '', '128000', 128000, 0, 128000, 0, 0, 'dg_4', 'Pending', '', '23-09-2024 17:40:44'),
(91, 62, 56, 'Madan Mahal', 112, 1, 'DH_26', 'Digital Compuler zcd XRay (R.V.G.)', '18, 17, 16, 15, 14, 13, 12, 11, 21, 22, 23, 24, 25, 26, 27, 28, 48, 47, 46, 45, 44, 43, 42, 41, 31, 32, 33, 34, 35, 36, 37, 38', '32', '50', '', '1', '1600', 1584, 0, 1584, 0, 0, 'dg_4', 'Pending', 'tr', '23-09-2024 17:45:51'),
(92, 63, 60, 'Madan Mahal', 116, 1, 'DH_29', 'Re-Root Canal Treatlment @ per tooth', '18, 17, 16, 15, 14, 13, 12, 11, 21, 22, 23, 24, 25, 26, 27, 28, 48, 47, 46, 45, 44, 43, 42, 41, 31, 32, 33, 34, 35, 36, 37, 38', '32', '4000', '', '1', '128000', 126720, 0, 126720, 0, 0, 'dg_4', 'Pending', 'nhhbv', '23-09-2024 18:11:35'),
(93, 64, 61, 'Madan Mahal', 118, 1, 'DH_28', 'Digital Compuler zcd XRay (R.V.G.)', '18, 17, 16, 15, 14, 13, 12, 11, 21, 22, 23, 24, 25, 26, 27, 28, 48, 47, 46, 45, 44, 43, 42, 41, 31, 32, 33, 34, 35, 36, 37, 38', '32', '50', '', '1', '1600', 1584, 0, 1584, 0, 0, 'dg_4', 'Pending', 'o', '24-09-2024 14:12:23'),
(94, 64, 61, 'Madan Mahal', 119, 2, 'DH_28', 'Digital Compuler zcd XRay (R.V.G.)', '18, 17, 16, 15, 14, 13, 12, 11, 21, 22, 23, 24, 25, 26, 27, 28, 48, 47, 46, 45, 44, 43, 42, 41, 31, 32, 33, 34, 35, 36, 37, 38', '32', '50', '', '1', '1600', 1600, 0, 1584, 0, 0, 'dg_4', 'Pending', 'd', '24-09-2024 14:57:38'),
(95, 66, 63, 'Madan Mahal', 123, 1, 'DH_30', 'Root Canal Treatment @ per tooth', '18', '1', '500', '', '0', '500', 500, 0, 500, 0, 0, 'dg_4', 'Pending', '', '04-10-2024 13:44:06'),
(96, 67, 64, 'Madan Mahal', 124, 1, 'DH_31', 'Root Canal Treatment @ per tooth', '18', '1', '500', '', '0', '500', 500, 0, 500, 0, 0, 'dg_4', 'Pending', '', '04-10-2024 15:55:13'),
(97, 68, 66, 'Madan Mahal', 127, 1, 'DH_33', 'Digital Compuler zcd XRay (R.V.G.)', '18, 17, 16, 15, 14, 13, 12, 11, 21, 22, 23, 24, 25, 26, 27, 28, 48, 47, 46, 45, 44, 43, 42, 41, 31, 32, 33, 34, 35, 36, 37, 38', '32', '50', '', '1', '1600', 1584, 32, 1552, 32, 0, 'dg_4', 'paid', 'sd', '05-10-2024 17:25:21'),
(98, 69, 67, 'Madan Mahal', 128, 1, 'DH_33', 'Re-Root Canal Treatlment @ per tooth', '18, 17, 16, 15, 14, 13, 12, 11, 21, 22, 23, 24, 25, 26, 27, 28, 48, 47, 46, 45, 44, 43, 42, 41, 31, 32, 33, 34, 35, 36, 37, 38', '32', '4000', '', '1', '128000', 126720, 22, 126698, 22, 0, 'dg_4', 'paid', '', '05-10-2024 17:28:17'),
(99, 70, 68, 'Madan Mahal', 129, 1, 'DH_34', 'Amalgam Restoration@ per tooth', '55', '1', '200', '', '10', '200', 180, 180, 0, 180, 0, 'dg_19', 'paid', 'okay', '05-10-2024 17:53:50'),
(100, 71, 69, 'Madan Mahal', 131, 1, 'DH_36', 'Laminates and Veneers@ per tooth', '18', '1', '10000', '', '10', '10000', 9000, 0, 9000, 0, 0, 'dg_4', 'Pending', '', '07-10-2024 11:42:37'),
(101, 71, 69, 'Madan Mahal', 131, 1, 'DH_36', 'Laminates and Veneers@ per tooth', '18', '1', '10000', '', '10', '10000', 9000, 0, 9000, 0, 0, 'dg_4', 'Pending', '', '07-10-2024 11:42:37'),
(102, 72, 70, 'Madan Mahal', 134, 1, 'DH_37', 'Third Molar Impacted Tooth Removal', '18', '1', '3000', '', '10', '3000', 2700, 2400, 300, 2400, 0, 'dg_4', 'paid', '', '07-10-2024 11:50:10'),
(103, 73, 72, 'Madan Mahal', 137, 1, 'DH_1', 'Digital Compuler zcd XRay (R.V.G.)', '18, 17, 16, 15, 14, 13, 12, 11, 21, 22, 23, 24, 25, 26, 27, 28, 48, 47, 46, 45, 44, 43, 42, 41, 31, 32, 33, 34, 35, 36, 37, 38', '32', '58', '', '0', '1856', 1856, 2, 1854, 2, 0, 'dg_4', 'paid', '', '08-10-2024 16:27:12'),
(104, 73, 72, 'Madan Mahal', 137, 1, 'DH_1', 'Digital Compuler zcd XRay (R.V.G.)', '18, 17, 16, 15, 14, 13, 12, 11, 21, 22, 23, 24, 25, 26, 27, 28, 48, 47, 46, 45, 44, 43, 42, 41, 31, 32, 33, 34, 35, 36, 37, 38', '32', '58', '', '0', '1856', 1854, 1, 1855, 1, 0, 'dg_4', 'paid', '', '08-10-2024 16:28:55'),
(105, 73, 72, 'Madan Mahal', 137, 1, 'DH_1', 'Digital Compuler zcd XRay (R.V.G.)', '18, 17, 16, 15, 14, 13, 12, 11, 21, 22, 23, 24, 25, 26, 27, 28, 48, 47, 46, 45, 44, 43, 42, 41, 31, 32, 33, 34, 35, 36, 37, 38', '32', '58', '', '0', '1856', 1855, 1, 1855, 1, 0, 'dg_4', 'paid', '', '08-10-2024 16:42:37'),
(106, 74, 73, 'Madan Mahal', 142, 1, 'DH_32', 'Amalgam Restoration@ per tooth', '17', '1', '230', '', '5', '230', 219, 100, 119, 100, 0, 'dg_19', 'paid', '', '21-10-2024 18:54:46'),
(107, 75, 74, 'Madan Mahal', 143, 1, 'DH_40', 'GIC Restoration @ per tooth', '14', '1', '600', '', '2', '600', 588, 588, 0, 588, 0, 'dg_19', 'paid', 'hgfgyfy', '26-10-2024 13:27:05'),
(108, 76, 75, 'Madan Mahal', 144, 1, 'DH_41', 'Re-Root Canal Treatlment @ per tooth', '14', '1', '4000', '', '2', '4000', 3920, 3920, 0, 3920, 0, 'dg_19', 'paid', 'okay', '26-10-2024 14:07:42'),
(109, 77, 76, 'Madan Mahal', 145, 1, 'DH_42', 'Retention plate@ per arch', '43', '1', '2000', '', '5', '2000', 1900, 1900, 0, 1900, 0, 'dg_19', 'paid', 'gy', '26-10-2024 16:51:19');

-- --------------------------------------------------------

--
-- Table structure for table `drugs`
--

CREATE TABLE `drugs` (
  `drug_id` int(100) NOT NULL,
  `HSN_code` varchar(100) DEFAULT NULL,
  `item_code` varchar(100) DEFAULT NULL,
  `drug_name` varchar(100) DEFAULT NULL,
  `drug_strength` varchar(100) DEFAULT NULL,
  `instruction` varchar(100) DEFAULT NULL,
  `branch_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `drugs`
--

INSERT INTO `drugs` (`drug_id`, `HSN_code`, `item_code`, `drug_name`, `drug_strength`, `instruction`, `branch_name`) VALUES
(7, '1240', '25', 'PARA', '250mg', 'tds', 'Madan Mahal'),
(8, '123sd', 'xwx3', 'smd', '500mg', 'bd', 'Madan Mahal');

-- --------------------------------------------------------

--
-- Table structure for table `employee_attendance`
--

CREATE TABLE `employee_attendance` (
  `attendance_id` int(255) NOT NULL,
  `employee_ID` varchar(255) DEFAULT NULL,
  `emp_name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `employee_designation` varchar(255) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `morning_shift_login_time` time(6) DEFAULT NULL,
  `morning_shift_logout_time` time(6) DEFAULT NULL,
  `evening_shift_login_time` time(6) DEFAULT NULL,
  `evening_shift_logout_time` time(6) DEFAULT NULL,
  `allday_shift_login_time` time(6) DEFAULT NULL,
  `allday_shift_logout_time` time(6) DEFAULT NULL,
  `availability` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_attendance`
--

INSERT INTO `employee_attendance` (`attendance_id`, `employee_ID`, `emp_name`, `branch`, `employee_designation`, `date`, `morning_shift_login_time`, `morning_shift_logout_time`, `evening_shift_login_time`, `evening_shift_logout_time`, `allday_shift_login_time`, `allday_shift_logout_time`, `availability`) VALUES
(1, 'dg_4', 'shadab', 'Madan Mahal', 'doctor', '2024-08-12', NULL, NULL, NULL, NULL, '18:57:10.000000', NULL, NULL),
(2, 'dg_4', 'shadab', 'Madan Mahal', 'doctor', '2024-08-13', NULL, NULL, NULL, NULL, '13:38:21.000000', NULL, NULL),
(3, 'dg_4', 'shadab', 'Madan Mahal', 'doctor', '2024-08-15', NULL, NULL, NULL, NULL, '13:57:13.000000', NULL, NULL),
(7, 'dg_4', 'shadab', 'Madan Mahal', 'doctor', '2024-08-16', NULL, NULL, NULL, NULL, '20:05:26.000000', NULL, NULL),
(8, 'dg_4', 'shadab', 'Madan Mahal', 'doctor', '2024-08-17', NULL, NULL, NULL, NULL, '15:52:13.000000', NULL, NULL),
(9, 'dg_4', 'shadab', 'Madan Mahal', 'doctor', '2024-08-21', NULL, NULL, NULL, NULL, '12:18:53.000000', NULL, NULL),
(10, 'dg_4', 'shadab', 'Madan Mahal', 'doctor', '2024-08-22', NULL, NULL, NULL, NULL, '11:45:59.000000', '15:27:15.000000', NULL),
(11, 'dg_4', 'shadab', 'Madan Mahal', 'doctor', '2024-08-24', NULL, NULL, NULL, NULL, '18:04:09.000000', NULL, NULL),
(12, 'dg_4', 'shadab', 'Madan Mahal', 'doctor', '2024-08-26', NULL, NULL, NULL, NULL, '12:22:53.000000', NULL, NULL),
(13, 'dg_4', 'shadab', 'Madan Mahal', 'doctor', '2024-08-27', NULL, NULL, NULL, NULL, '15:16:49.000000', NULL, NULL),
(14, 'dg_4', 'shadab', 'Madan Mahal', 'doctor', '2024-08-28', NULL, NULL, NULL, NULL, '12:01:32.000000', NULL, NULL),
(17, 'dg_4', 'shadab', 'Madan Mahal', 'doctor', '2024-08-30', NULL, NULL, NULL, NULL, '13:27:53.000000', NULL, 'yes'),
(18, 'dg_5', 'vijendra', 'Madan Mahal', 'consultant', '2024-08-30', NULL, NULL, NULL, NULL, '15:02:52.000000', NULL, 'yes'),
(19, 'dg_4', 'shadab', 'Madan Mahal', 'doctor', '2024-08-31', NULL, NULL, NULL, NULL, '11:29:05.000000', NULL, 'yes'),
(20, 'dg_4', 'shadab', 'Madan Mahal', 'doctor', '2024-09-02', NULL, NULL, NULL, NULL, '12:22:58.000000', '15:44:21.000000', 'yes'),
(21, 'dg_5', 'vijendra', 'Madan Mahal', 'consultant', '2024-09-02', NULL, NULL, NULL, NULL, '14:06:30.000000', '14:06:39.000000', 'no'),
(22, 'dg_4', 'shadab', 'Madan Mahal', 'doctor', '2024-09-06', NULL, NULL, NULL, NULL, '11:46:07.000000', '15:38:09.000000', 'yes'),
(23, 'dg_19', 'DEMO', 'Madan Mahal', 'doctor', '2024-09-12', NULL, NULL, NULL, NULL, '13:18:31.000000', NULL, 'yes'),
(24, 'dg_4', 'shadab', 'Madan Mahal', 'doctor', '2024-09-23', NULL, NULL, NULL, NULL, '17:25:35.000000', NULL, NULL),
(25, 'dg_4', 'shadab', 'Madan Mahal', 'doctor', '2024-09-24', NULL, NULL, NULL, NULL, '14:08:24.000000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_complaints`
--

CREATE TABLE `employee_complaints` (
  `complain_id` int(255) NOT NULL,
  `emp_id` varchar(255) DEFAULT NULL,
  `employee_name` varchar(255) DEFAULT NULL,
  `branch_name` varchar(255) DEFAULT NULL,
  `complain` varchar(255) DEFAULT NULL,
  `rec_on` datetime(6) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `solved_on` datetime(6) DEFAULT NULL,
  `pending_since` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_leave`
--

CREATE TABLE `employee_leave` (
  `id` int(11) NOT NULL,
  `branch_name` varchar(50) DEFAULT NULL,
  `employee_ID` varchar(11) NOT NULL,
  `employee_name` varchar(50) DEFAULT NULL,
  `leave_dates` varchar(1000) NOT NULL,
  `leave_reason` varchar(1000) DEFAULT NULL,
  `leave_status` varchar(50) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_leave`
--

INSERT INTO `employee_leave` (`id`, `branch_name`, `employee_ID`, `employee_name`, `leave_dates`, `leave_reason`, `leave_status`, `created_at`) VALUES
(1, 'Madan Mahal', 'dg_4', 'shadab', '2024-08-23', 'okk', 'pending', '2024-08-22 07:25:31.594780'),
(2, 'Madan Mahal', 'dg_5', 'vijendra', '2024-09-18', 'lknbv', 'pending', '2024-09-02 09:22:23.637623');

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
(1, 'dg_1', 'Madan Mahal', 'shubham', '8602161019', 'umer@gmail.com', 'male', 'doctor', '$2b$10$7oAX2F11um8RtXe4dwHHDu4WYSxg1RgrnqVqFG9zPLpXD0Tm2cM1O', 'doctor, admin', '30000', 'Ranjhi, Jabalpur', 'Approved', '10:00:00.000000', '14:00:00.000000', '16:00:00.000000', '20:00:00.000000', '10:30:00.000000', '19:00:00.000000', 'mon-fri', 'yes', 'http://localhost:8888/empProfilePicture/17165535296014904301-RavindraTomar.png', 'null', 'null', 'null', 'null', 'null'),
(2, 'dg_2', 'Madan Mahal', 'shubham', '8602161019', 'vikram@gmail.com', 'male', 'doctor', '$2b$10$pyFDTpDQf7WWxs8FIE0YLuBT6n0ZzBBeLFPohm3qwEvbTRV2rUvgG', 'admin,receptionist', '50000', 'Madan Mahal, Jabalpur', 'Approved', '10:00:00.000000', '14:00:00.000000', '16:00:00.000000', '20:00:00.000000', '10:30:41.769000', '19:00:41.118000', 'mon-fri', 'yes', 'https://dentalgurusuperadmin.doaguru.com/empProfilePicture/1709303771914bb3.png', 'Advanced Orthodontic Training - Institute of Orthodontics  Cityville State, Doctor of Dental Medicine (DMD) - University of Dental Sciences Cityville State', 'Orthodontics, Endodontics', 'English, Hindi', '15 years', 'Full Time'),
(4, 'dg_3', 'Madan Mahal', 'Vinay singh', '8602161019', 'vinay@gmail.com', 'Male', 'doctor', 'vinay', 'doctor', '50000', 'jabalpur', 'Approved', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', NULL, 'yes', 'https://dentalgurusuperadmin.doaguru.com/empProfilePicture/1709278594627chaitanya img.jpg', NULL, NULL, NULL, NULL, NULL),
(5, 'dg_4', 'Madan Mahal', 'shadab', '8602161019', 'shadab@gmail.com', 'male', 'doctor', '$2b$10$2YcG82plPpSPv81SRIrRieTjV161MNFVdqXtcq2THlrW9ROBqYC1e', 'doctor,receptionist,admin', '50000', 'Jabalpur', 'Approved', '01:00:00.000000', '13:59:00.000000', '14:30:00.000000', '23:33:00.000000', '10:00:00.000000', '19:00:00.000000', 'null', 'yes', 'https://dentalgurusuperadmin.doaguru.com/empProfilePicture/17104102635691709210206279kd.jpg', 'Advanced Orthodontic Training - Institute of Orthodontics  Cityville State, Doctor of Dental Medicine (DMD) - University of Dental Sciences Cityville State', NULL, NULL, NULL, NULL),
(6, 'dg_5', 'Madan Mahal', 'vijendra', '8602161019', 'kuldeepdoauruinfosystems@gmail.com', 'male', 'consultant', '$2a$10$Kn0JcU4EWchBxSjpPnxGkOnZDQQrfPlUAgEJaxldYL5rz0LAlLwx2', 'admin,lab attendant, accountant', '60000', 'Jabalpur', 'Approved', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '10:00:00.000000', '19:00:00.000000', 'mon-fri', 'yes', 'https://dentalgurusuperadmin.doaguru.com/empProfilePicture/1709629184551bear.jpg', NULL, NULL, NULL, NULL, NULL),
(7, 'dg_6', 'Madan Mahal', 'anas', '8602161020', 'umerqureshidoaguru@gmail.com', 'male', 'lab attendant', '$2b$10$2YcG82plPpSPv81SRIrRieTjV161MNFVdqXtcq2THlrW9ROBqYC1e', 'lab attendant', '50000', 'Jabalpur', 'Approved', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '10:00:00.000000', '19:00:00.000000', 'mon-fri', 'yes', 'https://dentalguru-superadmin.vimubds5.a2hosted.com/empProfilePicture/1722960591950test-bag.jpg', NULL, NULL, NULL, NULL, NULL),
(8, 'dg_7', 'Madan Mahal', 'subham soni', '7068272208', 'soni@gmail.com', 'female', 'receptionist', 'soni', 'receptionist', '15000', '420, Gwarighat, Jabalpur', 'Approved', '10:00:00.000000', '14:00:00.000000', '16:00:00.000000', '20:00:00.000000', '10:00:00.000000', '20:00:00.000000', '7', '', 'https://dentalgurusuperadmin.doaguru.com/empProfilePicture/1710224578687lifesupport.png', 'null', 'null', 'null', 'null', 'half time'),
(9, 'dg_8', 'Madan Mahal', 'test', 'test', 'test@gmail.com', 'male', 'doctor', '$2a$10$.mNbmBgXX5s/xLbEm2lUOO0YIUcj4Gn6ruU8xZB3Mkq9jC5his/k6', 'doctor', '50000', 'Jabalpur', 'Approved', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', 'mon-fri', '', 'https://dentalgurusuperadmin.doaguru.com/empProfilePicture/17104102635691709210206279kd.jpg', NULL, NULL, NULL, NULL, NULL),
(10, 'dg_9', 'Madan Mahal', 'subham soni', '72584975663', 'cygf@gmail.com', 'female', 'receptionist', '$2a$10$esmo5GbU9vjc51uFkAz5ceIrUx7EwjkiENIv3R9CoqC3RWJ9kYbI2', 'receptionist', '150', '420, Gwarighat, Jabalpur', 'Approved', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '08:00:00.000000', '16:00:00.000000', '7', '', 'https://dentalgurusuperadmin.doaguru.com/empProfilePicture/1710412310938Disabletest.png', NULL, NULL, NULL, NULL, NULL),
(11, 'dg_10', 'Madan Mahal', 'damodar ', '8602161019', 'damodar@gmail.com', 'male', 'doctor', '$2a$10$iLz4HcHB3rkQBj5PGSA19O4sG6MFpnaXzBzkUSq8l03qnYAkCnvke', 'doctor', '50000', 'Madan Mahal, Jabalpur', 'Approved', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '10:00:00.000000', '19:00:00.000000', 'Mon-Fri', '', 'https://dentalguruadmin.doaguru.com/empProfilePicture/1714651870468pexels-george-dsilva-3254563.jpg', 'Test', 'test', 'English, Hindi', '10 Years', 'full time'),
(12, 'dg_11', 'Madan Mahal', 'mohit', '1236878487465312013', 'mohitsahu1993@gmail.com', 'male', 'doctor', '$2a$10$jgkLC6MEC/HnnGpjqjM0fO6VSgP86DEC86yECdrU9aYCTm2StesYS', 'doctor', '50000', 'jabalpur', 'Approved', '10:00:00.000000', '14:00:00.000000', '18:00:00.000000', '22:00:00.000000', '00:00:00.000000', '00:00:00.000000', '6', '', 'https://dentalguruadmin.doaguru.com/empProfilePicture/1715595590387lari dr.png', 'b.tech', 'MD ', 'english', '500yr', NULL),
(13, 'dg_12', 'Madan Mahal', 'keshav', '1111111111', 'aaa@gmail.com', 'male', 'admin', '$2b$10$vYVZV6R.JqUWhIW8np3uFeXDPboAqA.RgKyO5lGC/bcejs2Azb70C', 'receptionist', '', 'dss', 'Approved', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '19:04:00.000000', '22:04:00.000000', '', '', '8888/empProfilePicture/17164714704654261702-KC_Tomar.png', NULL, NULL, NULL, NULL, NULL),
(14, 'dg_13', 'Madan Mahal', 'raj', '1111111111', 'mohit@gmail.com', 'male', 'admin', '$2b$10$gbcakUH0SJPEOkya1ypUbu5fk9mpCSH35KDc087jSJAdE2/alRIMW', 'admin', '50000', 'Jabalpur', 'Approved', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '', '', '8888/empProfilePicture/17164734932984261702-KC_Tomar.png', NULL, NULL, NULL, NULL, 'full-time'),
(15, 'dg_14', 'Madan Mahal', 'anas soni', '1234', 'test1@gmail.com', 'male', 'lab', '$2b$10$2YcG82plPpSPv81SRIrRieTjV161MNFVdqXtcq2THlrW9ROBqYC1e', 'lab-attendant', '50000', 'Jabalpur', 'Approved', '21:04:00.000000', '21:04:00.000000', '20:05:00.000000', '20:04:00.000000', '00:00:00.000000', '00:00:00.000000', 'mon-fri', '', 'http://localhost:8888/empProfilePicture/17165444895374261702-KC_Tomar.png', 'bbbb', 'bbbb', 'aaaaaa', '1', 'half time'),
(16, 'dg_15', 'Madan Mahal', 'mohit', '8602161019', 'mohitsahu@gmail.com', 'male', 'lab attendant', '$2b$10$uFl15sKzHtrf1dC4i00whORkeEPZ61NhafR/yvivOydvLcNp1th1K', 'admin,receptionist,consultant', '12345', 'Jabalpur', 'Approved', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '16:57:00.000000', '20:57:00.000000', 'mon-fri', '', '8888/empProfilePicture/17165464921064904301-RavindraTomar.png', '', '', '', '', 'full time'),
(17, 'dg_16', 'Madan Mahal', 'shadab', '8602161019', 'test3@gmail.com', 'male', 'admin', '$2b$10$mmmzMxyNKdC.O8jU0PmXO.jPtjuQJ31nys9sc2.qEoDFNrU88f5GG', 'admin', '50000', 'Jabalpur', 'Approved', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '18:11:00.000000', '17:11:00.000000', 'mon-fri', '', '8888/empProfilePicture/17165473208254261702-KC_Tomar.png', '', '', '', '', 'full time'),
(18, 'dg_17', 'Madan Mahal', 'umer', '8602161019', 'mohitsahu1993@gmail.com', 'male', 'admin', '$2a$10$jgkLC6MEC/HnnGpjqjM0fO6VSgP86DEC86yECdrU9aYCTm2StesYS', 'admin', '50000', 'Jabalpur', 'Approved', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '16:49:00.000000', '18:47:00.000000', 'mon-fri', '', '8888/empProfilePicture/17165494698734904301-RavindraTomar.png', '', '', '', '', 'full time'),
(19, 'dg_18', 'Madan Mahal', 'huyah', '8602161019', 'huyah@gmail.com', 'male', 'receptionist', '$2b$10$3M1Z48GpvByPDcZYl5u6AeGBrTYy1r6NqAE6xRLrujnKeCyWGdPx2', 'receptionist', '50000', 'Jabalpur', 'Approved', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '10:00:00.000000', '20:00:00.000000', 'mon-fri', '', 'http://localhost:https://dentalguru-superadmin.vimubds5.a2hosted.com/empProfilePicture/1722960046708test-bag.jpg', NULL, NULL, NULL, NULL, NULL),
(20, 'dg_19', 'Madan Mahal', 'DEMO', '7047485555', 'demo@gmail.com', 'male', 'doctor', '$2b$10$7cnqkHC7yXF5dYKOUUJ9S.4FQgvRvCT0IbK8B1gLtUlFatFONB1pu', 'admin,receptionist,consultant,accountant,lab attendant,doctor', '50000', 'Jabalpur', 'Approved', '01:00:00.000000', '13:59:00.000000', '14:30:00.000000', '23:33:00.000000', '09:00:00.000000', '18:30:00.000000', '7', '', 'https://dentalguru-superadmin.vimubds5.a2hosted.com/empProfilePicture/1726125133293Add a heading.jpg', NULL, NULL, NULL, NULL, NULL),
(21, 'dg_21', 'Madan Mahal', 'Siddharth', '8602161019', 'siddhartha.marko.3@gmail.com', 'male', 'doctor', '$2b$10$sAv4MPzsvhR8LEmyE/4eWeH0QcFPwSWKLbl0TAjW1/N.VoDF/Vagy', 'doctor,receptionist,admin', '50000', 'Jabalpur', 'Approved', '01:00:00.000000', '13:59:00.000000', '14:30:00.000000', '23:33:00.000000', '10:00:00.000000', '19:00:00.000000', 'null', 'yes', 'https://dentalgurusuperadmin.doaguru.com/empProfilePicture/17104102635691709210206279kd.jpg', 'Advanced Orthodontic Training - Institute of Orthodontics  Cityville State, Doctor of Dental Medicine (DMD) - University of Dental Sciences Cityville State', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_timeline`
--

CREATE TABLE `employee_timeline` (
  `event_id` int(100) NOT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `event_msg` varchar(100) DEFAULT NULL,
  `open` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_timeline`
--

INSERT INTO `employee_timeline` (`event_id`, `branch_name`, `title`, `event_msg`, `open`, `status`, `time`) VALUES
(1, 'Madan Mahal', 'new employee registered', 'please approve so that they can start work please approve so that they can start work', '/manage-staff', 'read', '2024-03-07 19:51:38.925099'),
(2, 'Madan Mahal', 'new employee registered', 'please approve so that they can start work', '/manage-staff', 'read', '2024-03-07 19:51:38.925099'),
(3, 'Madan Mahal', 'new employee registered', 'please approve so that they can start work please approve so that they can start work', '/manage-staff', 'read', '2024-03-07 19:51:38.925099'),
(4, 'Madan Mahal', 'new employee registered', 'please approve so that they can start work please approve so that they can start work', '/manage-staff', 'read', '2024-03-07 19:51:38.925099'),
(5, 'Madan Mahal', 'new employee registered', 'please approve so that they can start work', '/manage-staff', 'read', '2024-03-11 14:59:11.564259'),
(6, 'Madan Mahal', 'test', 'please approve so that they can start work', '/manage-staff', 'read', '2024-03-11 14:59:46.517579'),
(7, NULL, 'New Employee Registered', 'Please Check Manage Staff List huyah', '/manage-staff', 'read', NULL),
(8, NULL, 'New Employee Registered', 'Please Check Manage Staff List DEMO', '/manage-staff', 'read', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `examin_details`
--

CREATE TABLE `examin_details` (
  `examin_id` int(255) NOT NULL,
  `uhid` varchar(255) DEFAULT NULL,
  `branch_name` varchar(255) DEFAULT NULL,
  `examin_date` datetime(6) DEFAULT NULL,
  `examin_issue` varchar(255) DEFAULT NULL,
  `examin_investigation` varchar(255) DEFAULT NULL,
  `tooth` varchar(255) DEFAULT NULL,
  `diagnosis` varchar(255) DEFAULT NULL,
  `doctor_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_voucher`
--

CREATE TABLE `expense_voucher` (
  `voucher_id` int(100) NOT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `for_name` varchar(100) DEFAULT NULL,
  `for_use` varchar(100) DEFAULT NULL,
  `voucher_amount` int(100) DEFAULT NULL,
  `voucher_date` varchar(100) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `holiday_id` int(100) NOT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `holiday_name` varchar(255) DEFAULT NULL,
  `holiday_date` date DEFAULT NULL,
  `holiday_start_time` time(6) DEFAULT NULL,
  `holiday_end_time` time(6) DEFAULT NULL,
  `notes` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `holidays`
--

INSERT INTO `holidays` (`holiday_id`, `branch_name`, `holiday_name`, `holiday_date`, `holiday_start_time`, `holiday_end_time`, `notes`) VALUES
(1, 'Madan Mahal', 'mer a holiday ', '0011-11-11', '11:01:00.000000', '15:05:00.000000', '5');

-- --------------------------------------------------------

--
-- Table structure for table `inquiries`
--

CREATE TABLE `inquiries` (
  `id` int(11) NOT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `patient_name` varchar(255) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `age` varchar(10) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `notes` varchar(1000) DEFAULT NULL,
  `doctorId` varchar(11) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `insurance_company`
--

CREATE TABLE `insurance_company` (
  `ins_id` int(100) NOT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `companyname` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `added_date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `insurance_company`
--

INSERT INTO `insurance_company` (`ins_id`, `branch_name`, `companyname`, `category`, `status`, `added_date`) VALUES
(1, 'Madan Mahal', 'CGHS(Serving)', 'Goverment', 'Active', NULL),
(2, 'Madan Mahal', 'CGHS(Pensioner)', 'Goverment', 'Active', NULL),
(3, 'Madan Mahal', 'CSMA', 'Goverment', 'Inactive', NULL),
(4, 'Madan Mahal', 'HDFC Insurance', 'Active', 'Active', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lab_details`
--

CREATE TABLE `lab_details` (
  `lab_id` int(255) NOT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `lab_name` varchar(255) DEFAULT NULL,
  `lab_type` varchar(255) DEFAULT NULL,
  `lab_contact` varchar(255) DEFAULT NULL,
  `lab_email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lab_details`
--

INSERT INTO `lab_details` (`lab_id`, `branch_name`, `lab_name`, `lab_type`, `lab_contact`, `lab_email`, `address`, `status`) VALUES
(1, 'Madan Mahal', 'blood', 'internal', '8602161019', 'mahesh@gmail.com', 'Madan Mahal', 'active'),
(2, 'Madan Mahal', 'radiology', 'internal', '8602161019', 'maheshtest@gmail.com', 'Madan Mahal, Jabalpur', 'active'),
(3, 'Madan Mahal', 'oral', 'internal', '8602161019', 'testthree@gmail.com', 'Madan Mahal, Jabalpur', 'active'),
(10, 'Vijay Nagar', 'crash course', 'internal', '1225487465', 'asdf@gmail.com', 'garha fatak', 'approved'),
(11, 'Madan Mahal', 'SAAS', 'internal', 'SAS', 'ASAS@GAMAIL', 'ASASA ', 'pending'),
(12, 'Madan Mahal', 'sd', 'external', '4544', 'devansh@gmail.com', 'New Address', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `lab_tests`
--

CREATE TABLE `lab_tests` (
  `lab_tid` int(100) NOT NULL,
  `test_name` varchar(100) DEFAULT NULL,
  `test_code` varchar(100) DEFAULT NULL,
  `waiting_days` varchar(100) DEFAULT NULL,
  `default_lab` varchar(100) DEFAULT NULL,
  `test_date` date DEFAULT NULL,
  `test_cost` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lab_tests`
--

INSERT INTO `lab_tests` (`lab_tid`, `test_name`, `test_code`, `waiting_days`, `default_lab`, `test_date`, `test_cost`) VALUES
(1, 'Language Proficiency Tests', '00001', '2', 'oral', '2024-05-07', 2000),
(2, 'Interviews', '00002', '2', 'oral', '0000-00-00', 1000),
(3, 'Oral Presentations', '00003', '2', 'oral', '0000-00-00', 50000),
(4, 'Viva Voce Exams', '00004', '2', 'oral', '0000-00-00', 1000),
(6, 'Role-Playing Exercises', '00006', '2', 'oral', '0000-00-00', 1000),
(7, 'Debates', '00007', '2', 'oral', '0000-00-00', 1000),
(8, 'Oral Examinations in Professional Certifications', '00008', '2', 'oral', '0000-00-00', 1000),
(9, 'Complete Blood Count (CBC)', '00009', '2', 'blood', '0000-00-00', 1000),
(10, 'Basic Metabolic Panel (BMP)', '00010', '2', 'blood', '0000-00-00', 1000),
(11, 'Comprehensive Metabolic Panel (CMP)', '00011', '2', 'blood', '0000-00-00', 1000),
(12, 'Lipid Panel', '00012', '2', 'blood', '0000-00-00', 1000),
(13, 'Thyroid Function Tests', '00013', '2', 'blood', '0000-00-00', 1000),
(14, 'Coagulation Tests', '00014', '2', 'blood', '0000-00-00', 1000),
(15, 'Blood Type and Rh Factor', '00015', '2', 'blood', '0000-00-00', 1000),
(16, 'Blood Chemistry Tests', '00016', '2', 'blood', '0000-00-00', 1000),
(17, 'Inflammatory Marker Tests', '00017', '2', 'blood', '0000-00-00', 1000),
(18, 'Viral and Bacterial Infection Tests', '00018', '2', 'blood', '0000-00-00', 1000),
(19, 'X-rays (Radiography)', '00019', '2', 'radiology', '0000-00-00', 1000),
(20, 'Computed Tomography (CT) Scan', '00020', '2', 'radiology', '0000-00-00', 1000),
(21, 'Magnetic Resonance Imaging (MRI)', '00021', '2', 'radiology', '0000-00-00', 1000),
(22, 'Ultrasound', '00022', '2', 'radiology', '0000-00-00', 1000),
(23, 'Fluoroscopy', '00023', '2', 'radiology', '0000-00-00', 1000),
(24, 'Positron Emission Tomography (PET) Scan', '00024', '2', 'radiology', '0000-00-00', 1000),
(25, 'Bone Densitometry (DEXA Scan)', '00025', '2', 'radiology', '0000-00-00', 1000),
(26, 'Mammography', '00026', '2', 'radiology', '0000-00-00', 1000),
(27, 'Nuclear Medicine Imaging', '00027', '2', 'radiology', '0000-00-00', 1000),
(28, 'Interventional Radiology Procedures', '00028', '2', 'radiology', '0000-00-00', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `otpcollections`
--

CREATE TABLE `otpcollections` (
  `otp_id` int(100) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `code` int(10) DEFAULT NULL,
  `expiresIn` int(20) DEFAULT NULL,
  `createdAt` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `otpcollections`
--

INSERT INTO `otpcollections` (`otp_id`, `email`, `code`, `expiresIn`, `createdAt`) VALUES
(1, 'kuldeepdoauruinfosystems@gmail.com', 851181, NULL, '2024-08-13 06:59:36.777227'),
(2, 'mohitsahu1993@gmail.com', 254910, NULL, '2024-08-22 07:31:13.481316'),
(3, 'shadab@gmail.com', 522293, NULL, '2024-09-02 07:06:14.109336'),
(4, 'siddhartha.marko.3@gmail.com', 507465, NULL, '2024-10-04 08:00:51.430232');

-- --------------------------------------------------------

--
-- Table structure for table `patient_bills`
--

CREATE TABLE `patient_bills` (
  `bill_id` int(255) NOT NULL,
  `bill_date` varchar(100) DEFAULT NULL,
  `uhid` varchar(255) DEFAULT NULL,
  `tp_id` int(11) DEFAULT NULL,
  `branch_name` varchar(255) DEFAULT NULL,
  `patient_name` varchar(255) DEFAULT NULL,
  `patient_mobile` varchar(255) DEFAULT NULL,
  `patient_email` varchar(255) DEFAULT NULL,
  `patient_type` varchar(100) DEFAULT NULL,
  `assigned_doctor_name` varchar(255) DEFAULT NULL,
  `total_amount` int(255) DEFAULT NULL,
  `paid_amount` int(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `payment_date_time` varchar(100) DEFAULT NULL,
  `receiver_name` varchar(100) DEFAULT NULL,
  `receiver_emp_id` varchar(100) DEFAULT NULL,
  `payment_mode` varchar(255) DEFAULT NULL,
  `transaction_Id` varchar(255) DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `pay_by_sec_amt` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_bills`
--

INSERT INTO `patient_bills` (`bill_id`, `bill_date`, `uhid`, `tp_id`, `branch_name`, `patient_name`, `patient_mobile`, `patient_email`, `patient_type`, `assigned_doctor_name`, `total_amount`, `paid_amount`, `payment_status`, `payment_date_time`, `receiver_name`, `receiver_emp_id`, `payment_mode`, `transaction_Id`, `note`, `pay_by_sec_amt`) VALUES
(1, '15-08-2024 16:53:57', 'DH_2', 6, 'Madan Mahal', 'Ayushi Singh', '7974507514', 'devdeveloper998@gmail.com', NULL, 'shadab', 14400, 6400, 'paid', '2024-08-15', 'shadab', 'dg_4', 'cash', NULL, 'ok', 8000),
(2, '15-08-2024 17:02:07', 'DH_4', 3, 'Madan Mahal', 'Abhishek Dubey', '9806324244', 'mohitsahu1993@gmail.com', NULL, 'shadab', 10080, 10080, 'paid', '2024-08-15', 'shadab', 'dg_4', 'Credit', NULL, NULL, 0),
(3, '15-08-2024 18:50:50', 'DH_1', 1, 'Madan Mahal', 'Raju Pandey', '9399044850', 'doaguruinfosystems@gmail.com', NULL, 'shadab', 26000, 26000, 'paid', '2024-08-15', 'shadab', 'dg_4', 'cash', NULL, 'test', 0),
(4, '16-08-2024 19:10:02', 'DH_1', 8, 'Madan Mahal', 'Raju Pandey', '9399044850', 'doaguruinfosystems@gmail.com', NULL, 'shadab', 66600, 36600, 'paid', '2024-08-16', 'shadab', 'dg_4', 'cash', NULL, 'tesrt', 30000),
(5, '16-08-2024 19:21:54', 'DH_1', 9, 'Madan Mahal', 'Raju Pandey', '9399044850', 'doaguruinfosystems@gmail.com', NULL, 'shadab', 82440, 82440, 'paid', '2024-08-16', 'shadab', 'dg_4', 'Credit', NULL, 'test', 0),
(6, '17-08-2024 17:12:12', 'DH_6', 11, 'Madan Mahal', 'mohit', '8989898989', '', NULL, 'shadab', 2700, 1700, 'Paid', '2024-08-17', 'shadab', 'dg_4', 'cash', NULL, 'test', 1000),
(7, '17-08-2024 18:01:36', 'DH_6', 12, 'Madan Mahal', 'mohit', '8989898989', '', NULL, 'shadab', 85500, 45500, 'Paid', '2024-08-17', 'shadab', 'dg_4', 'cash', NULL, 'test', 40000),
(8, '21-08-2024 13:23:21', 'DH_7', 14, 'Madan Mahal', 'rahul', '7877878787', '', NULL, 'shadab', 500000, 500000, 'Paid', '2024-08-21', 'shadab', 'dg_4', 'cash', NULL, NULL, 0),
(9, '22-08-2024 12:08:28', 'DH_2', 16, 'Madan Mahal', 'Ayushi Singh', '7974507514', 'devdeveloper998@gmail.com', NULL, 'shadab', 10800, 5400, 'Paid', '2024-08-22', 'shadab', 'dg_4', 'cash', NULL, 'test', 5400),
(10, '26-08-2024 12:36:05', 'DH_1', 17, 'Madan Mahal', 'Raju Pandey', '8602161019', 'kuldeepdoauruinfosystems@gmail.com', NULL, 'shadab', 11150, 11150, 'paid', '2024-08-26', 'shadab', 'dg_4', 'Credit', NULL, 'test', 0),
(11, '27-08-2024 15:31:02', 'DH_8', 18, 'Madan Mahal', 'dev ansh', '8989898989', '', NULL, 'shadab', 50000, 50000, 'Credit', '27-08-2024 15:34:28', 'shadab', 'dg_4', 'Credit', NULL, 'okkk', 0),
(12, '27-08-2024 15:52:08', 'DH_6', 19, 'Madan Mahal', 'mohit', '8989898989', '', NULL, 'shadab', 12240, 12240, 'Paid', '2024-08-27', 'shadab', 'dg_4', 'cash', NULL, 'test', 0),
(13, '27-08-2024 15:58:24', 'DH_8', 21, 'Madan Mahal', 'dev ansh', '8989898989', '', NULL, 'shadab', 10000, 10000, 'Credit', '2024-08-27', 'shadab', 'dg_4', 'Credit', NULL, 'test', 0),
(14, '27-08-2024 16:04:23', 'DH_8', 22, 'Madan Mahal', 'dev ansh', '8989898989', '', NULL, 'shadab', 40000, 40000, 'Credit', '2024-08-27', 'shadab', 'dg_4', 'Credit', NULL, 'test', 0),
(15, '27-08-2024 16:23:19', 'DH_8', 23, 'Madan Mahal', 'dev ansh', '8989898989', '', NULL, 'shadab', 20000, 20000, 'Credit', '2024-08-27', 'shadab', 'dg_4', 'Credit', NULL, NULL, 0),
(16, '28-08-2024 12:41:13', 'DH_9', 24, 'Madan Mahal', 'subham soni', '5489164946', 'stylishvin16@gmail.com', NULL, 'shadab', 490, 490, 'paid', '28-08-2024 17:18:55', 'shadab', 'dg_4', 'Cash', NULL, NULL, 0),
(17, '30-08-2024 12:15:41', 'DH_7', 15, 'Madan Mahal', 'rahul', '7877878787', '', NULL, 'shadab', 4000, 0, 'Paid', '2024-08-30', 'shadab', 'dg_4', 'cash', NULL, 'test', 4000),
(18, '30-08-2024 12:22:07', 'DH_2', 25, 'Madan Mahal', 'Ayushi Singh', '7974507514', 'devdeveloper998@gmail.com', NULL, 'shadab', 1080, 1080, 'paid', '30-08-2024 12:46:10', 'shadab', 'dg_4', 'Cash', NULL, NULL, 0),
(19, '30-08-2024 13:07:54', 'DH_2', 26, 'Madan Mahal', 'Ayushi Singh', '7974507514', 'devdeveloper998@gmail.com', NULL, 'shadab', 81000, 81000, 'Paid', '30-08-2024 13:08:04', 'shadab', 'dg_4', 'cash', NULL, 'test', 0),
(20, '30-08-2024 15:31:11', 'DH_6', 27, 'Madan Mahal', 'mohit', '8989898989', '', NULL, 'shadab', 5400, 2000, 'Paid', '23-10-2024 19:04:31', 'shadab', 'dg_4', 'cash', NULL, 'test', 0),
(21, '30-08-2024 16:37:59', 'DH_2', 28, 'Madan Mahal', 'Ayushi Singh', '7974507514', 'devdeveloper998@gmail.com', NULL, 'shadab', 5200, 6000, 'Paid', '02-09-2024 13:13:51', 'shadab', 'dg_4', 'cash', NULL, NULL, 0),
(22, '30-08-2024 16:42:25', 'DH_2', 29, 'Madan Mahal', 'Ayushi Singh', '7974507514', 'devdeveloper998@gmail.com', NULL, 'shadab', 14400, 14400, 'Paid', '30-08-2024 16:42:47', 'shadab', 'dg_4', 'cash', NULL, 'test', 0),
(23, '30-08-2024 16:51:04', 'DH_2', 30, 'Madan Mahal', 'Ayushi Singh', '7974507514', 'devdeveloper998@gmail.com', NULL, 'shadab', 14400, 14400, 'Paid', '30-08-2024 16:57:07', 'shadab', 'dg_4', 'cash', NULL, 'test', 0),
(24, '30-08-2024 17:10:28', 'DH_2', 31, 'Madan Mahal', 'Ayushi Singh', '7974507514', 'devdeveloper998@gmail.com', NULL, 'shadab', 144000, 144000, 'Paid', '30-08-2024 17:16:12', 'shadab', 'dg_4', 'cash', NULL, NULL, 0),
(25, '02-09-2024 12:52:33', 'DH_11', 33, 'Madan Mahal', 'soumya tiwari', '8319955741', 'soumya@gmail.com', NULL, 'shadab', 23750, 15000, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(26, '02-09-2024 13:51:53', 'DH_13', 36, 'Madan Mahal', 'Kamla Devi', '6546545645', 'g@gmail.com', NULL, 'shadab', 3800, 0, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(27, '02-09-2024 14:15:23', 'DH_14', 38, 'Madan Mahal', 'teen chapak dum dum', '6554656544', '6@g.com', NULL, 'shadab', 7680, 1000, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(28, '02-09-2024 14:51:06', 'DH_16', 40, 'Madan Mahal', 'Kubul he', '6656565654', 'g@d.com', NULL, 'shadab', 225, 225, 'Credit', '02-09-2024 14:52:13', 'shadab', 'dg_4', 'Credit', NULL, 'done by online', 0),
(29, '02-09-2024 15:00:29', 'DH_18', 41, 'Madan Mahal', 'Morgan lalui', '3554564564', '65456545654@f.com', NULL, 'shadab', 9000, 9000, 'Credit', '02-09-2024 15:00:57', 'shadab', 'dg_4', 'Credit', NULL, 'for testing ', 0),
(30, '02-09-2024 17:18:33', 'DH_10', 42, 'Madan Mahal', 'lalui yadab', '4654564564', 'kuldeepdoauruinfosystems@gmail.com', NULL, 'shadab', 18000, 18000, 'Credit', '02-09-2024 17:18:50', 'shadab', 'dg_4', 'Credit', NULL, 'test', 0),
(31, '06-09-2024 18:00:24', 'DH_21', 49, 'Madan Mahal', 'fvnbm', '7432325653', 'h@gmail.com', NULL, 'shadab', 2640, 2640, 'Paid', '2024-10-09', 'shadab', 'dg_4', 'cash', NULL, NULL, 0),
(32, '23-09-2024 17:29:25', 'DH_11', 53, 'Madan Mahal', 'soumya tiwari', '8319955741', 'soumya@gmail.com', NULL, 'shadab', 121600, 0, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(33, '04-10-2024 15:33:00', 'DH_30', 63, 'Madan Mahal', 'subham soni', '9198900449', 'vinaydhariya21@gmail.com', NULL, 'shadab', 500, 500, 'paid', '2024-10-04', 'shadab', 'dg_4', 'Credit', NULL, NULL, 0),
(34, '04-10-2024 15:56:07', 'DH_31', 64, 'Madan Mahal', 'm ni btaunga', '9198900449', 'vinaydhariya21@gmail.com', NULL, 'shadab', 500, 0, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(35, '05-10-2024 17:25:31', 'DH_33', 66, 'Madan Mahal', 'Siddharth', '5252222222', '', NULL, 'shadab', 1584, 32, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(36, '05-10-2024 17:28:33', 'DH_33', 67, 'Madan Mahal', 'Siddharth', '5252222222', '', NULL, 'shadab', 126720, 22, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(37, '07-10-2024 11:43:49', 'DH_36', 69, 'Madan Mahal', 'Shubhanshu Jaiswal ', '9632578125', 'shubhsoni1996th@gmail.com', NULL, 'shadab', 18000, 0, 'pending', '23-10-2024 19:02:31', 'shadab', 'dg_4', NULL, NULL, NULL, 0),
(38, '07-10-2024 11:51:03', 'DH_37', 70, 'Madan Mahal', 'Shrikant Dubey ', '9836521787', 'shubhsoni1996th@gmail.com', NULL, 'shadab', 2700, 2700, 'Paid', '2024-10-22', 'shadab', 'dg_4', 'cash', NULL, 'nothing', 0),
(39, '26-10-2024 13:27:44', 'DH_40', 74, 'Madan Mahal', 'akshat jha', '8552147963', 'jha@jha.com', NULL, 'DEMO', 588, 588, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(40, '26-10-2024 14:07:57', 'DH_41', 75, 'Madan Mahal', 'dev ', '0987654321', 'dev@gmail.com', NULL, 'DEMO', 3920, 3920, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(41, '26-10-2024 16:52:04', 'DH_42', 76, 'Madan Mahal', 'mayur pillai', '7000102121', 'doagurumd@gmail.com', NULL, 'DEMO', 1900, 1900, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `patient_details`
--

CREATE TABLE `patient_details` (
  `uhid` varchar(100) NOT NULL,
  `branch_name` varchar(255) DEFAULT NULL,
  `initialid` varchar(100) DEFAULT NULL,
  `patient_name` varchar(255) NOT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `age` varchar(11) NOT NULL,
  `weight` varchar(11) DEFAULT NULL,
  `gender` varchar(100) NOT NULL,
  `maritalstatus` varchar(100) DEFAULT NULL,
  `bloodgroup` varchar(100) DEFAULT NULL,
  `mobileno` varchar(100) NOT NULL,
  `alternatecontactno` varchar(100) DEFAULT NULL,
  `emailid` varchar(100) DEFAULT NULL,
  `contact_person` varchar(255) DEFAULT NULL,
  `contact_person_name` varchar(255) DEFAULT NULL,
  `allergy` varchar(255) DEFAULT NULL,
  `disease` varchar(1000) DEFAULT NULL,
  `isstaff` varchar(100) DEFAULT NULL,
  `staffempid` varchar(100) DEFAULT NULL,
  `staffrelationid` varchar(100) DEFAULT NULL,
  `isforeign` varchar(100) DEFAULT NULL,
  `isvip` varchar(100) DEFAULT NULL,
  `fathername` varchar(100) DEFAULT NULL,
  `husbandname` varchar(100) DEFAULT NULL,
  `mothername` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `pincode` varchar(100) DEFAULT NULL,
  `patient_type` varchar(255) DEFAULT NULL,
  `credit_By` varchar(100) DEFAULT NULL,
  `beneficiary_Id` varchar(255) DEFAULT NULL,
  `aadhaar_no` varchar(100) DEFAULT NULL,
  `patient_added_by` varchar(50) DEFAULT NULL,
  `patient_updated_by` varchar(50) DEFAULT NULL,
  `patient_added_by_emp_id` varchar(50) DEFAULT NULL,
  `patient_updated_by_emp_id` varchar(50) DEFAULT NULL,
  `created_at` varchar(100) DEFAULT NULL,
  `updated_at` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_details`
--

INSERT INTO `patient_details` (`uhid`, `branch_name`, `initialid`, `patient_name`, `dob`, `age`, `weight`, `gender`, `maritalstatus`, `bloodgroup`, `mobileno`, `alternatecontactno`, `emailid`, `contact_person`, `contact_person_name`, `allergy`, `disease`, `isstaff`, `staffempid`, `staffrelationid`, `isforeign`, `isvip`, `fathername`, `husbandname`, `mothername`, `address`, `pincode`, `patient_type`, `credit_By`, `beneficiary_Id`, `aadhaar_no`, `patient_added_by`, `patient_updated_by`, `patient_added_by_emp_id`, `patient_updated_by_emp_id`, `created_at`, `updated_at`) VALUES
('DH_1', 'Madan Mahal', NULL, 'Raju Pandey', '', '50', '85', 'Male', NULL, 'O+', '8602161019', NULL, 'siddhartha.marko.3@gmail.com', 'Self', 'Abhinav Pandey', 'No', 'No Disease', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Wright Town', NULL, 'Credit', 'CGHS(Serving)', '123456123', '', 'shadab', NULL, 'dg_4', NULL, '2024-08-12 18:52:16', NULL),
('DH_10', 'Madan Mahal', NULL, 'lalui yadab', '2024-01-01', '450', '500', 'Other', NULL, 'A-', '4654564564', NULL, 'kuldeepdoauruinfosystems@gmail.com', 'Other', 'rani ji', 'no', 'Diabetes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rani kamlpapati', NULL, 'Credit', 'CGHS(Serving)', 'KAMKA0101', '366152154545', 'shadab', 'shadab', 'dg_4', 'dg_4', '2024-09-02 12:39:33', '2024-09-02 15:12:30.368'),
('DH_11', 'Madan Mahal', NULL, 'soumya tiwari', '1994-02-06', '30', '65', 'Female', NULL, 'A+', '8319955741', NULL, 'soumya@gmail.com', 'Self', '', 'no', 'Heart', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'bhopal', NULL, 'General', '', '', '123456789654', 'shadab', NULL, 'dg_4', NULL, '2024-09-02 12:43:45', NULL),
('DH_12', 'Madan Mahal', NULL, 'kamla bai', '1500-01-01', '524', '800', 'Female', NULL, 'O+', '6687445631', NULL, 'kam@gmail.com', 'Self', '', 'no', 'Asthma,No Disease,Diabetes,Heart', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'm ram gad swarg gali ', NULL, 'Credit', 'CGHS(Pensioner)', 'PMKY0102542', '655458647864', 'shadab', NULL, 'dg_4', NULL, '2024-09-02 12:46:02', NULL),
('DH_13', 'Madan Mahal', NULL, 'Kamla Devi', '1500-01-01', '524', '800', 'Female', NULL, 'O+', '6546545645', NULL, 'g@gmail.com', 'Self', '', 'no', 'No Disease', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '234kj si hdkjash asdkjhashd as;kljh ;lklhsddf ;slkhffkl sehflisdh fkjhsdf skjhfkjsdh ffkj;sdhf ;kjsh', NULL, 'Credit', 'CGHS(Pensioner)', 'KMKAYlkahui', '355466467465', 'shadab', NULL, 'dg_4', NULL, '2024-09-02 12:48:29', NULL),
('DH_14', 'Madan Mahal', NULL, 'teen chapak dum dum', '1988-01-01', '36', '70', 'Other', NULL, 'A+', '6554656544', NULL, '6@g.com', 'Self', '', 'no', 'No Disease,Diabetes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '66626 6as5f6s5 6s5f65s 56sd5f65sd6f', NULL, 'Credit', 'HDFC Insurance', 'teen chapak dum dum', '654564564546', 'shadab', NULL, 'dg_4', NULL, '2024-09-02 14:06:14', NULL),
('DH_15', 'Madan Mahal', NULL, 'Ye Raju ', '1100-01-01', '924', '150', 'Male', NULL, 'B+', '6544564654', NULL, 'g@g.com', 'Self', '', 'no', 'No Disease', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sfs6f 5wf56fwefsd6f6sdf ', NULL, 'Credit', 'HDFC Insurance', 'safsd sfsd fds', '656565654654', 'shadab', NULL, 'dg_4', NULL, '2024-09-02 14:15:43', NULL),
('DH_16', 'Madan Mahal', NULL, 'Kubul he', '1500-12-31', '523', '565', 'Other', NULL, 'A+', '6656565654', NULL, 'g@d.com', 'Self', '', 'no', 'No Disease', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '364s6fv5sd654f6s54d65sd4f65sd4f65s', NULL, 'Credit', 'CGHS(Serving)', 'kjshfcfcjklsdhjksgh jflhs', '654114564564', 'shadab', NULL, 'dg_4', NULL, '2024-09-02 14:24:12', NULL),
('DH_17', 'Madan Mahal', NULL, 'Kallo Ki Bai', '1500-12-31', '523', '654', 'Other', NULL, 'A+', '3514545456', NULL, 'g@j.com', 'Self', '', 'no', 'No Disease,Diabetes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '65ds4f56sd4f65sd4f56sd4f56sd4f56sd4f65', NULL, 'Credit', 'CGHS(Pensioner)', 'hsgdgdag', '566545645646', 'shadab', NULL, 'dg_4', NULL, '2024-09-02 14:37:29', NULL),
('DH_18', 'Madan Mahal', NULL, 'Morgan lalui', '0010-12-31', '2013', '800', 'Other', NULL, 'A+', '3554564564', NULL, '65456545654@f.com', 'Self', '', 'no', 'No Disease,Diabetes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'd353f44sd54rd we654we654 r65we4rw', NULL, 'Credit', 'CGHS(Pensioner)', 'sakjdgsah', '655465465465', 'shadab', NULL, 'dg_4', NULL, '2024-09-02 14:55:07', NULL),
('DH_19', 'Madan Mahal', NULL, 'jine laga hu ', '1500-12-31', '523', '654', 'Female', NULL, 'A+', '5341555454', NULL, 'gf@h.com', 'Self', '', '5sf5sa64f5ew44f', 'sd5d4fsd54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sdf54sa56f4sd65f465se41f65sd4f65we4f5we4r56we4f655ew4f564we6', NULL, 'General', '', '', '654654654654', 'shadab', NULL, 'dg_4', NULL, '2024-09-02 15:51:47', NULL),
('DH_2', 'Madan Mahal', NULL, 'Ayushi Singh', '', '35', '70', 'Female', NULL, 'O+', '7974507514', NULL, 'devdeveloper998@gmail.com', 'Self', '', 'No', 'Diabetes,Cardiovascular', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ranital', NULL, 'General', '', '', '', 'shadab', NULL, 'dg_4', NULL, '2024-08-12 18:54:28', NULL),
('DH_20', 'Madan Mahal', NULL, 'fffff', '', '122', '', 'Male', NULL, 'B+', '8989898989', NULL, 'dsdfsdf@gg.com', 'Self', '', '', 'No Disease', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dfv', NULL, 'General', '', '', '', 'shadab', 'shadab', 'dg_4', 'dg_4', '2024-09-03 11:46:11', '2024-09-03 14:22:38.196'),
('DH_21', 'Madan Mahal', NULL, 'fvnbm', '', '78', '85', 'Male', NULL, 'A+', '7432325653', NULL, 'h@gmail.com', 'Self', '', '98', 'Heart', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '.12vdfv', NULL, 'General', '', '', '', 'shadab', NULL, 'dg_4', NULL, '2024-09-06 12:02:38', NULL),
('DH_22', 'Madan Mahal', NULL, 'Hariom ', '2024-09-06', '20', '52', 'Male', NULL, 'A+', '7489004965', NULL, 'shivharehariom366@gmail.com', 'Self', '', 'no', 'No Disease', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'madan mahal', NULL, 'General', '', '', '', 'shadab', NULL, 'dg_4', NULL, '2024-09-06 15:36:33', NULL),
('DH_23', 'Madan Mahal', NULL, 'Demo', '2024-01-01', '24', '70', 'Male', NULL, 'A+', '4654654656', NULL, 'demo@gmail.com', 'Self', '', 'no', 'No Disease', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'okay jabalpur', NULL, 'General', '', '', '355466467465', 'DEMO', NULL, 'dg_19', NULL, '2024-09-12 12:56:39', NULL),
('DH_24', 'Madan Mahal', NULL, 'DEMO', '2024-01-01', '24', '70', 'Male', NULL, 'A+', '6545646546', NULL, 'demo@gmail.com', 'Self', '', '', 'No Disease', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'INDIA', NULL, 'General', '', '', '123456789101', 'DEMO', NULL, 'dg_19', NULL, '2024-09-12 13:16:24', NULL),
('DH_25', 'Madan Mahal', NULL, 'complwete', '2024-06-06', '3', '', 'Male', NULL, '', '7477777777', NULL, 'comple@gmail.com', 'Self', '', '', 'No Disease', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ghar', NULL, 'General', '', '', '', 'shadab', NULL, 'dg_4', NULL, '2024-09-23 17:38:07', NULL),
('DH_26', 'Madan Mahal', NULL, 'negenral', '2000-05-02', '24', '', 'Male', NULL, '', '5555555555', NULL, '', 'Self', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ghar', NULL, 'General', '', '', '', 'shadab', NULL, 'dg_4', NULL, '2024-09-23 17:43:31', NULL),
('DH_27', 'Madan Mahal', NULL, 'patient hai', '2000-11-01', '23', '', 'Male', NULL, '', '1111111111', NULL, '', 'Self', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ghar', NULL, 'General', '', '', '', 'shadab', NULL, 'dg_4', NULL, '2024-09-23 17:58:10', NULL),
('DH_28', 'Madan Mahal', NULL, 'nonemore', '', '20', '', 'Male', NULL, '', '2411111111', NULL, 'kuldeepdoauruinfosystems@gmail.com\n', 'Self', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ghar', NULL, 'General', '', '', '', 'shadab', NULL, 'dg_4', NULL, '2024-09-23 18:05:02', NULL),
('DH_29', 'Madan Mahal', NULL, 'twomore', '', '10', '', 'Male', NULL, '', '1441111111', NULL, '', 'Self', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'gfhar', NULL, 'General', '', '', '', 'shadab', NULL, 'dg_4', NULL, '2024-09-23 18:09:37', NULL),
('DH_3', 'Madan Mahal', NULL, 'Aditya Rao', '', '21', '55', 'Male', NULL, 'A-', '7000102121', NULL, 'doaguruinfosystems@gmail.com', 'Self', '', 'No', 'Heart,Diabetes,Cancer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Wright Town', NULL, 'Credit', 'CGHS(Pensioner)', '7412587465689', '', 'shadab', NULL, 'dg_4', NULL, '2024-08-12 18:56:26', NULL),
('DH_30', 'Madan Mahal', NULL, 'subham soni', '', '26', '', 'Male', NULL, '', '9198900449', NULL, 'vinaydhariya21@gmail.com', 'Self', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'gupta colony', NULL, 'Credit', 'CGHS(Pensioner)', '3454324', '', 'shadab', NULL, 'dg_4', NULL, '2024-10-04 13:19:47', NULL),
('DH_31', 'Madan Mahal', NULL, 'm ni btaunga', '', '27', '', 'Male', NULL, '', '9198900449', NULL, 'vinaydhariya21@gmail.com', 'Self', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'gupta colony', NULL, 'Credit', 'CGHS(Serving)', 'dhggf', '', 'shadab', NULL, 'dg_4', NULL, '2024-10-04 15:53:23', NULL),
('DH_32', 'Madan Mahal', NULL, 'Akshat', '', '20', '', 'Male', NULL, 'AB+', '8641046668', NULL, '', 'Self', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'shobhapur', NULL, 'General', '', '', '', 'DEMO', NULL, 'dg_19', NULL, '2024-10-04 17:06:40', NULL),
('DH_33', 'Madan Mahal', NULL, 'Siddharth', '', '56', '', 'Male', NULL, '', '5252222222', NULL, '', 'Self', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ghar', NULL, 'General', '', '', '', 'shadab', NULL, 'dg_4', NULL, '2024-10-05 17:23:51', NULL),
('DH_34', 'Madan Mahal', NULL, 'dev', '2005-06-05', '19', '', 'Male', NULL, '', '1234567890', NULL, 'dev@gmail.com', 'Self', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'jabalpur', NULL, 'General', '', '', '', 'DEMO', NULL, 'dg_19', NULL, '2024-10-05 17:47:41', NULL),
('DH_35', 'Madan Mahal', NULL, 'vinay', '', '27', '', 'Male', NULL, '', '8989894562', NULL, '', 'Self', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'gupta colony', NULL, 'General', '', '', '', 'shadab', NULL, 'dg_4', NULL, '2024-10-05 19:05:58', NULL),
('DH_36', 'Madan Mahal', NULL, 'Shubhanshu Jaiswal ', '1972-04-01', '52', '78', 'Male', NULL, 'A+', '9632578125', NULL, 'shubhsoni1996th@gmail.com', 'Father', 'Shashi Dubey ', 'Dhoop', 'Diabetes,Heart,Kidney', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9631521465', NULL, 'General', '', '', '981123544565', 'shadab', NULL, 'dg_4', NULL, '2024-10-07 11:36:21', NULL),
('DH_37', 'Madan Mahal', NULL, 'Shrikant Dubey ', '1900-01-19', '124', '572', 'Male', NULL, 'B+', '9836521787', NULL, 'shubhsoni1996th@gmail.com', 'Self', '', '8532', '854', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '857342108', NULL, 'General', '', '', '857240105327', 'shadab', NULL, 'dg_4', NULL, '2024-10-07 11:46:18', NULL),
('DH_38', 'Madan Mahal', NULL, 'hariom shivhare', '2005-02-02', '19', '48', 'Male', NULL, 'O+', '9201717067', NULL, 'shivharehariom366@gmail.com', 'Self', '', 'no', 'No Disease', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'madan mahal jabalpur ', NULL, 'General', '', '', '', 'DEMO', NULL, 'dg_19', NULL, '2024-10-07 17:20:05', NULL),
('DH_39', 'Madan Mahal', NULL, 'foropd', '', '31', '', 'Male', NULL, '', '4444444444', NULL, '', 'Self', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ghar', NULL, 'General', '', '', '', 'shadab', NULL, 'dg_4', NULL, '2024-10-09 17:05:11', NULL),
('DH_4', 'Madan Mahal', NULL, 'Abhishek Dubey', '', '30', '70', 'Male', NULL, 'O+', '9806324244', NULL, 'mohitsahu1993@gmail.com', 'Self', '', 'No', 'Cancer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Wright Town', NULL, 'Credit', 'HDFC Insurance', '45625258741', '', 'shadab', NULL, 'dg_4', NULL, '2024-08-12 19:16:45', NULL),
('DH_40', 'Madan Mahal', NULL, 'akshat jha', '2004-08-11', '20', '', 'Male', NULL, 'AB+', '8552147963', NULL, 'jha@jha.com', 'Self', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '123', NULL, 'General', '', '', '123456789012', 'DEMO', NULL, 'dg_19', NULL, '2024-10-26 13:20:29', NULL),
('DH_41', 'Madan Mahal', NULL, 'dev ', '2006-06-13', '18', '', 'Male', NULL, 'O+', '0987654321', NULL, 'dev@gmail.com', 'Self', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'wright town', NULL, 'General', '', '', '', 'DEMO', NULL, 'dg_19', NULL, '2024-10-26 14:00:46', NULL),
('DH_42', 'Madan Mahal', NULL, 'mayur pillai', '2004-08-11', '20', '85', 'Male', NULL, '', '7000102121', NULL, 'doagurumd@gmail.com', 'Self', 'abhinav pandey', '', 'Arthritis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '644, Nove Adaresh Colony Yadav Colony, Jabalpur Madhya Pradesh', NULL, 'General', '', '', '', 'DEMO', NULL, 'dg_19', NULL, '2024-10-26 15:52:06', NULL),
('DH_5', 'Madan Mahal', NULL, 'Aman', '', '83', '', 'Male', NULL, 'A-', '8602161019', NULL, 'kuldeepdoauruinfosystems@gmail.com\n', 'Self', 'Mohit Sahu', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jabalpur', NULL, 'General', '', '', '', 'shadab', 'shadab', 'dg_4', 'dg_4', '2024-08-13 01:16:23', '2024-08-17 18:32:26.719'),
('DH_6', 'Madan Mahal', NULL, 'mohit', '', '56', '', 'Male', NULL, '', '8989898989', NULL, '', 'Self', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'jbp', NULL, 'General', '', '', '', 'shadab', NULL, 'dg_4', NULL, '2024-08-17 15:59:40', NULL),
('DH_7', 'Madan Mahal', NULL, 'rahul', '', '89', '', 'Male', NULL, 'A+', '7877878787', NULL, '', 'Self', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'jbp', NULL, 'General', '', '', '', 'shadab', NULL, 'dg_4', NULL, '2024-08-21 12:22:19', NULL),
('DH_8', 'Madan Mahal', NULL, 'dev ansh', '', '26', '', 'Male', NULL, '', '8989898989', NULL, '', 'Self', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'jbp', NULL, 'Credit', 'CGHS(Serving)', '123456', '', 'shadab', NULL, 'dg_4', NULL, '2024-08-22 15:29:46', NULL),
('DH_9', 'Madan Mahal', NULL, 'subham soni', '1998-04-21', '26', '65', 'Male', NULL, 'AB+', '5489164946', NULL, 'stylishvin16@gmail.com', 'Self', '', 'no', 'No Disease', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'gupta colony', NULL, 'Credit', 'CGHS(Serving)', '3216541324', '214547861548', 'shadab', NULL, 'dg_4', NULL, '2024-08-28 12:05:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `patient_disease`
--

CREATE TABLE `patient_disease` (
  `id` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_disease`
--

INSERT INTO `patient_disease` (`id`, `value`, `label`) VALUES
(1, 'No Disease', 'No Disease'),
(2, 'Diabetes', 'Diabetes'),
(3, 'Heart', 'Heart'),
(4, 'Cardiovascular', 'Cardiovascular'),
(5, 'Asthma', 'Asthma'),
(6, 'Arthritis', 'Arthritis'),
(7, 'Osteoporosis', 'Osteoporosis'),
(8, 'Thyroid', 'Thyroid'),
(9, 'Kidney', 'Kidney'),
(10, 'Liver', 'Liver'),
(11, 'Gastrointestinal', 'Gastrointestinal'),
(12, 'Cancer', 'Cancer'),
(13, 'Depression', 'Depression'),
(14, 'Anxiety', 'Anxiety'),
(15, 'Alzheimer\'s', 'Alzheimer\'s'),
(16, 'HIV', 'HIV'),
(17, 'Hepatitis', 'Hepatitis');

-- --------------------------------------------------------

--
-- Table structure for table `patient_lab_details`
--

CREATE TABLE `patient_lab_details` (
  `testid` int(11) NOT NULL,
  `tpid` int(11) DEFAULT NULL,
  `patient_uhid` varchar(11) NOT NULL,
  `patient_name` varchar(255) NOT NULL,
  `branch_name` varchar(255) NOT NULL,
  `assigned_doctor_name` varchar(255) NOT NULL,
  `lab_name` varchar(255) NOT NULL,
  `test` varchar(255) NOT NULL,
  `test_status` varchar(255) NOT NULL DEFAULT 'pending',
  `created_date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_lab_details`
--

INSERT INTO `patient_lab_details` (`testid`, `tpid`, `patient_uhid`, `patient_name`, `branch_name`, `assigned_doctor_name`, `lab_name`, `test`, `test_status`, `created_date`) VALUES
(1, 1, 'DH_1', 'Raju Pandey', 'Madan Mahal', 'shadab', 'oral', 'Viva Voce Exams', 'pending', '12-08-2024 18:57:54'),
(2, 3, 'DH_4', 'Abhishek Dubey', 'Madan Mahal', 'shadab', 'oral', 'Role-Playing Exercises', 'pending', '12-08-2024 19:22:00'),
(3, 4, 'DH_5', 'Aman', 'Madan Mahal', 'shadab', 'oral', 'Role-Playing Exercises', 'done', '13-08-2024 13:41:48'),
(4, 6, 'DH_2', 'Ayushi Singh', 'Madan Mahal', 'shadab', 'radiology', 'Magnetic Resonance Imaging (MRI)', 'done', '15-08-2024 14:28:01'),
(5, 7, 'DH_5', 'Aman', 'Madan Mahal', 'shadab', 'radiology', 'Magnetic Resonance Imaging (MRI)', 'done', '16-08-2024 13:34:02'),
(6, 8, 'DH_1', 'Raju Pandey', 'Madan Mahal', 'shadab', 'oral', 'Interviews', 'pending', '16-08-2024 18:20:16'),
(7, 8, 'DH_1', 'Raju Pandey', 'Madan Mahal', 'shadab', 'radiology', 'Magnetic Resonance Imaging (MRI)', 'pending', '16-08-2024 18:22:02'),
(8, 9, 'DH_1', 'Raju Pandey', 'Madan Mahal', 'shadab', 'oral', 'Language Proficiency Tests', 'pending', '16-08-2024 19:18:40'),
(9, 9, 'DH_1', 'Raju Pandey', 'Madan Mahal', 'shadab', 'radiology', 'Magnetic Resonance Imaging (MRI)', 'pending', '16-08-2024 19:18:45'),
(10, 10, 'DH_5', 'Aman', 'Madan Mahal', 'shadab', 'radiology', 'Computed Tomography (CT) Scan', 'pending', '17-08-2024 16:39:54'),
(11, 11, 'DH_6', 'mohit', 'Madan Mahal', 'shadab', 'radiology', 'X-rays (Radiography)', 'pending', '17-08-2024 17:00:54'),
(12, 15, 'DH_7', 'rahul', 'Madan Mahal', 'shadab', 'radiology', 'Fluoroscopy', 'done', '22-08-2024 11:50:29'),
(13, 16, 'DH_2', 'Ayushi Singh', 'Madan Mahal', 'shadab', 'radiology', 'X-rays (Radiography)', 'pending', '22-08-2024 12:02:15'),
(14, 17, 'DH_1', 'Raju Pandey', 'Madan Mahal', 'shadab', 'radiology', 'Computed Tomography (CT) Scan', 'pending', '26-08-2024 12:33:48'),
(15, 18, 'DH_8', 'dev ansh', 'Madan Mahal', 'shadab', 'blood', 'Comprehensive Metabolic Panel (CMP)', 'pending', '27-08-2024 15:19:53'),
(16, 19, 'DH_6', 'mohit', 'Madan Mahal', 'shadab', 'blood', 'Comprehensive Metabolic Panel (CMP)', 'pending', '27-08-2024 15:44:28'),
(17, 20, 'DH_5', 'Aman', 'Madan Mahal', 'shadab', 'radiology', 'Computed Tomography (CT) Scan', 'pending', '27-08-2024 15:53:56'),
(18, 24, 'DH_9', 'subham soni', 'Madan Mahal', 'shadab', 'radiology', 'X-rays (Radiography)', 'done', '28-08-2024 12:11:23'),
(19, 32, 'DH_2', 'Ayushi Singh', 'Madan Mahal', 'shadab', 'oral', 'Viva Voce Exams', 'done', '30-08-2024 17:26:23'),
(20, 33, 'DH_11', 'soumya tiwari', 'Madan Mahal', 'shadab', 'radiology', 'Computed Tomography (CT) Scan', 'pending', '02-09-2024 12:48:52'),
(21, 34, 'DH_10', 'lalui yadab', 'Madan Mahal', 'shadab', 'blood', 'Complete Blood Count (CBC)', 'done', '02-09-2024 12:49:46'),
(22, 35, 'DH_10', 'lalui yadab', 'Madan Mahal', 'shadab', 'oral', 'Interviews', 'done', '02-09-2024 12:53:44'),
(24, 50, 'DH_24', 'DEMO', 'Madan Mahal', 'DEMO', 'oral', 'Viva Voce Exams', 'done', '12-09-2024 13:27:12'),
(25, 53, 'DH_11', 'soumya tiwari', 'Madan Mahal', 'shadab', 'radiology', 'Ultrasound', 'pending', '23-09-2024 17:26:48'),
(26, 54, 'DH_25', 'complwete', 'Madan Mahal', 'shadab', 'radiology', 'Computed Tomography (CT) Scan', 'pending', '23-09-2024 17:38:48');

-- --------------------------------------------------------

--
-- Table structure for table `patient_lab_test_details`
--

CREATE TABLE `patient_lab_test_details` (
  `id` int(11) NOT NULL,
  `testid` int(11) NOT NULL,
  `patient_uhid` varchar(255) NOT NULL,
  `patient_name` varchar(255) NOT NULL,
  `test` varchar(255) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `cost` varchar(255) DEFAULT NULL,
  `collection_date` varchar(100) DEFAULT NULL,
  `authenticate_date` varchar(100) DEFAULT NULL,
  `payment` decimal(10,0) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `lab_type` varchar(255) DEFAULT NULL,
  `created_date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_lab_test_details`
--

INSERT INTO `patient_lab_test_details` (`id`, `testid`, `patient_uhid`, `patient_name`, `test`, `result`, `unit`, `cost`, `collection_date`, `authenticate_date`, `payment`, `payment_status`, `lab_type`, `created_date`) VALUES
(1, 3, 'DH_5', 'Aman', 'Role-Playing Exercises', 'good', '50', '1000', '2024-08-10', '2024-08-13', 1000, 'done', NULL, '2024-08-13 16:50:06'),
(2, 4, 'DH_2', 'Ayushi Singh', 'Magnetic Resonance Imaging (MRI)', 'good', '50', '1000', '2024-08-15', '2024-08-15', 1000, 'done', NULL, '2024-08-16 15:25:01'),
(3, 5, 'DH_5', 'Aman', 'Magnetic Resonance Imaging (MRI)', 'good', '50', '1000', '2024-08-16', '2024-08-16', 1000, 'done', NULL, '2024-08-16 15:42:42'),
(4, 12, 'DH_7', 'rahul', 'Fluoroscopy', 'testwd', '120', '1000', '2024-08-22', '2024-08-22', 1000, 'done', NULL, '2024-08-22 11:51:23'),
(5, 18, 'DH_9', 'subham soni', 'X-rays (Radiography)', 'minor broken', '56', '1000', '2024-08-28', '2024-08-28', 1000, 'done', NULL, '2024-08-28 12:15:28'),
(6, 19, 'DH_2', 'Ayushi Singh', 'Viva Voce Exams', 'good', '12', '1000', '2024-08-30', '2024-08-30', 1000, 'done', NULL, '2024-08-30 17:39:28'),
(7, 21, 'DH_10', 'lalui yadab', 'Complete Blood Count (CBC)', 'Positive', '24', '1000', '2024-09-02', '2024-09-02', 1000, 'done', NULL, '2024-09-02 13:58:40'),
(8, 22, 'DH_10', 'lalui yadab', 'Interviews', 'good', '50', '1000', '2023-12-31', '2023-10-30', 1000, 'Paid', NULL, '2024-09-03 10:59:30'),
(9, 22, '', '', 'Interviews', 'good', '50', '1000', '2023-12-31', '2023-10-30', 0, 'Paid', NULL, '2024-09-03 11:37:58'),
(10, 24, 'DH_24', 'DEMO', 'Viva Voce Exams', 'Pass', '05', '1000', '2024-01-01', '2024-01-01', 1000, 'Paid', NULL, '2024-09-12 13:31:49');

-- --------------------------------------------------------

--
-- Table structure for table `patient_lab_test_reports`
--

CREATE TABLE `patient_lab_test_reports` (
  `id` int(11) NOT NULL,
  `testid` int(11) NOT NULL,
  `file_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patient_lab_test_reports`
--

INSERT INTO `patient_lab_test_reports` (`id`, `testid`, `file_path`) VALUES
(1, 3, 'https://dentalguru-lab.vimubds5.a2hosted.com/uploads/files-1723548227867.png'),
(2, 4, 'https://dentalguru-lab.vimubds5.a2hosted.com/uploads/files-1723802126890.pdf'),
(3, 5, 'https://dentalguru-lab.vimubds5.a2hosted.com/uploads/files-1723803194519.png'),
(4, 12, 'https://dentalguru-lab.vimubds5.a2hosted.com/uploads/files-1724307723589.pdf'),
(5, 18, 'https://dentalguru-lab.vimubds5.a2hosted.com/uploads/files-1724827935610.jpg'),
(6, 19, 'https://dentalguru-lab.vimubds5.a2hosted.com/uploads/files-1725019806463.jpg'),
(7, 21, 'https://dentalguru-lab.vimubds5.a2hosted.com/uploads/files-1725265745708.jpg'),
(8, 22, 'https://dentalguru-lab.vimubds5.a2hosted.com/uploads/files-1725347902899.pdf'),
(9, 22, 'https://dentalguru-lab.vimubds5.a2hosted.com/uploads/files-1725347902902.pdf'),
(10, 24, 'https://dentalguru-lab.vimubds5.a2hosted.com/uploads/files-1726128499348.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `patient_test_notes`
--

CREATE TABLE `patient_test_notes` (
  `id` int(11) NOT NULL,
  `note_text` varchar(255) NOT NULL,
  `testid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_test_notes`
--

INSERT INTO `patient_test_notes` (`id`, `note_text`, `testid`) VALUES
(1, 'sdfgjfdg', 18);

-- --------------------------------------------------------

--
-- Table structure for table `patient_timeline`
--

CREATE TABLE `patient_timeline` (
  `event_id` int(100) NOT NULL,
  `event_date` varchar(100) DEFAULT NULL,
  `event_time` varchar(100) DEFAULT NULL,
  `event_type` varchar(100) DEFAULT NULL,
  `event_description` varchar(100) DEFAULT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `uhid` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_timeline`
--

INSERT INTO `patient_timeline` (`event_id`, `event_date`, `event_time`, `event_type`, `event_description`, `branch_name`, `uhid`) VALUES
(1, '12-08-2024', '18:52:17', 'Add Patient', 'Add Patient and Appointment scheduled', 'Madan Mahal', 'DH_1'),
(2, '12-08-2024', '18:54:28', 'Add Patient', 'Add Patient and Appointment scheduled', 'Madan Mahal', 'DH_2'),
(3, '12-08-2024', '18:56:26', 'Add Patient', 'Add Patient and Appointment scheduled', 'Madan Mahal', 'DH_3'),
(4, '12-08-2024', '18:56:39', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_2'),
(5, '12-08-2024', '18:56:43', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_1'),
(6, '12-08-2024', '18:56:51', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_3'),
(7, '12-08-2024', '06:57 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(8, '12-08-2024', '06:57 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_1'),
(9, '12-08-2024', '06:57 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_1'),
(10, '12-08-2024', '06:57 PM', 'Treatment Suggest', 'Select Treatment : Laminates and Veneers@ per tooth for disease : Caries', 'Madan Mahal', 'DH_1'),
(11, '12-08-2024', '07:00 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_1'),
(12, '12-08-2024', '07:01 PM', 'Treatment Procedure', 'Sitting Done, TPID : 1', 'Madan Mahal', 'DH_1'),
(13, '12-08-2024', '07:10 PM', 'Treatment Procedure', 'Laminates and Veneers@ per tooth Treatment Done, TPID : 1', 'Madan Mahal', 'DH_1'),
(14, '12-08-2024', '07:11 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_3'),
(15, '12-08-2024', '07:11 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_3'),
(16, '12-08-2024', '07:12 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_3'),
(17, '12-08-2024', '07:12 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_3'),
(18, '12-08-2024', '07:12 PM', 'Treatment Suggest', 'Select Treatment : Pulpectomy (Child) @ per tooth for disease : Caries', 'Madan Mahal', 'DH_3'),
(19, '12-08-2024', '07:12 PM', 'Treatment Suggest', 'Select Treatment : Removable Partial Dentures @ per tooth for disease : Fracture', 'Madan Mahal', 'DH_3'),
(20, '12-08-2024', '19:16:46', 'Add Patient', 'Add Patient and Appointment scheduled', 'Madan Mahal', 'DH_4'),
(21, '12-08-2024', '19:21:15', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_4'),
(22, '12-08-2024', '07:21 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_4'),
(23, '12-08-2024', '07:21 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_4'),
(24, '12-08-2024', '07:21 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_4'),
(25, '12-08-2024', '07:21 PM', 'Treatment Suggest', 'Select Treatment : Pulpectomy (Child) @ per tooth for disease : Caries', 'Madan Mahal', 'DH_4'),
(26, '12-08-2024', '07:24 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_4'),
(27, '12-08-2024', '07:24 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_4'),
(28, '12-08-2024', '07:25 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_4'),
(29, '12-08-2024', '07:25 PM', 'Treatment Procedure', 'Sitting Done, TPID : 3', 'Madan Mahal', 'DH_4'),
(30, '12-08-2024', '07:26 PM', 'Treatment Procedure', 'Sitting Done, TPID : 3', 'Madan Mahal', 'DH_4'),
(31, '12-08-2024', '07:27 PM', 'Sitting Considered', '2 Sitting Started', 'Madan Mahal', 'DH_4'),
(32, '12-08-2024', '07:29 PM', 'Treatment Procedure', 'Sitting Done, TPID : 3', 'Madan Mahal', 'DH_4'),
(33, '12-08-2024', '07:45 PM', 'Sitting Considered', '3 Sitting Started', 'Madan Mahal', 'DH_4'),
(34, '12-08-2024', '07:46 PM', 'Treatment Procedure', 'Sitting Done, TPID : 3', 'Madan Mahal', 'DH_4'),
(35, '13-08-2024', '01:16:23', 'Add Patient', 'Add Patient and Appointment scheduled', 'Madan Mahal', 'DH_5'),
(36, '13-08-2024', '13:37:22', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_5'),
(37, '13-08-2024', '13:40:18', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_5'),
(38, '13-08-2024', '13:40:29', 'Edit Appointment', 'Edit Appointment', 'Madan Mahal', 'DH_5'),
(39, '13-08-2024', '13:40:39', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_5'),
(40, '13-08-2024', '01:40 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_5'),
(41, '13-08-2024', '01:40 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_5'),
(42, '13-08-2024', '01:41 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_5'),
(43, '13-08-2024', '01:41 PM', 'Treatment Suggest', 'Select Treatment : Single Implant for disease : Caries', 'Madan Mahal', 'DH_5'),
(44, '13-08-2024', '01:42 PM', 'Secuirty Amount', '25000 Secuirty Amount Added', 'Madan Mahal', 'DH_5'),
(45, '13-08-2024', '01:43 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_5'),
(46, '13-08-2024', '01:44 PM', 'Security Amount Used', '20000 security amount used', 'Madan Mahal', 'DH_5'),
(47, '13-08-2024', '01:45 PM', 'Treatment Procedure', 'Sitting Done, TPID : 4', 'Madan Mahal', 'DH_5'),
(48, '13-08-2024', '01:51 PM', 'Security Amount Used', '5000 security amount used', 'Madan Mahal', 'DH_5'),
(49, '13-08-2024', '01:51 PM', 'Treatment Procedure', 'Sitting Done, TPID : 4', 'Madan Mahal', 'DH_5'),
(50, '13-08-2024', '17:32:47', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_1'),
(51, '13-08-2024', '17:32:56', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_1'),
(52, '13-08-2024', '05:33 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(53, '13-08-2024', '05:33 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(54, '13-08-2024', '05:33 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(55, '13-08-2024', '05:33 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(56, '13-08-2024', '05:33 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(57, '13-08-2024', '05:33 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(58, '13-08-2024', '05:33 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(59, '13-08-2024', '17:41:23', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_1'),
(60, '13-08-2024', '17:41:33', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_1'),
(61, '13-08-2024', '05:41 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(62, '13-08-2024', '05:41 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(63, '13-08-2024', '17:42:58', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_2'),
(64, '13-08-2024', '17:43:08', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_2'),
(65, '13-08-2024', '05:43 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(66, '13-08-2024', '05:43 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_2'),
(67, '13-08-2024', '05:43 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_2'),
(68, '13-08-2024', '05:43 PM', 'Treatment Suggest', 'Select Treatment : GIC Restoration @ per tooth for disease : Caries', 'Madan Mahal', 'DH_2'),
(69, '13-08-2024', '05:44 PM', 'Secuirty Amount', '600 Secuirty Amount Added', 'Madan Mahal', 'DH_2'),
(70, '15-08-2024', '13:56:27', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_4'),
(71, '15-08-2024', '13:59:21', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_4'),
(72, '15-08-2024', '01:59 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_4'),
(73, '15-08-2024', '01:59 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_4'),
(74, '15-08-2024', '01:59 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_4'),
(75, '15-08-2024', '14:01:00', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_2'),
(76, '15-08-2024', '02:03 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_4'),
(77, '15-08-2024', '14:08:06', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_2'),
(78, '15-08-2024', '02:18 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(79, '15-08-2024', '02:21 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(80, '15-08-2024', '02:22 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(81, '15-08-2024', '02:26 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_4'),
(82, '15-08-2024', '02:26 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_2'),
(83, '15-08-2024', '02:27 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_2'),
(84, '15-08-2024', '02:27 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_2'),
(85, '15-08-2024', '02:27 PM', 'Treatment Suggest', 'Select Treatment : Root Canal Treatment @ per tooth for disease : Caries', 'Madan Mahal', 'DH_2'),
(86, '15-08-2024', '02:27 PM', 'Treatment Suggest', 'Select Treatment : Teeth Bleaching at Home Whitening for disease : Fracture', 'Madan Mahal', 'DH_2'),
(87, '15-08-2024', '02:30 PM', 'Secuirty Amount', '8000 Secuirty Amount Added', 'Madan Mahal', 'DH_2'),
(88, '15-08-2024', '02:42 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_2'),
(89, '15-08-2024', '02:44 PM', 'Security Amount Used', '5400 security amount used', 'Madan Mahal', 'DH_2'),
(90, '15-08-2024', '03:04 PM', 'Security Amount Used', '5400 security amount used', 'Madan Mahal', 'DH_2'),
(91, '15-08-2024', '03:12 PM', 'Security Amount Used', '5400 security amount used', 'Madan Mahal', 'DH_2'),
(92, '15-08-2024', '03:13 PM', 'Treatment Procedure', 'Sitting Done, TPID : 6', 'Madan Mahal', 'DH_2'),
(93, '15-08-2024', '03:38 PM', 'Sitting Considered', '2 Sitting Started', 'Madan Mahal', 'DH_2'),
(94, '15-08-2024', '04:31 PM', 'Treatment Procedure', 'Root Canal Treatment @ per tooth Treatment Done, TPID : 6', 'Madan Mahal', 'DH_2'),
(95, '15-08-2024', '04:32 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_2'),
(96, '15-08-2024', '04:39 PM', 'Security Amount Used', '2600 security amount used', 'Madan Mahal', 'DH_2'),
(97, '15-08-2024', '04:47 PM', 'Security Amount Used', '2600 security amount used', 'Madan Mahal', 'DH_2'),
(98, '15-08-2024', '04:47 PM', 'Treatment Procedure', 'Sitting Done, TPID : 6', 'Madan Mahal', 'DH_2'),
(99, '15-08-2024', '04:48 PM', 'Sitting Considered', '2 Sitting Started', 'Madan Mahal', 'DH_2'),
(100, '15-08-2024', '04:51 PM', 'Treatment Procedure', 'Sitting Done, TPID : 6', 'Madan Mahal', 'DH_2'),
(101, '15-08-2024', '04:53 PM', 'Sitting Considered', '3 Sitting Started', 'Madan Mahal', 'DH_2'),
(102, '15-08-2024', '04:53 PM', 'Treatment Procedure', 'Teeth Bleaching at Home Whitening Treatment Done, TPID : 6', 'Madan Mahal', 'DH_2'),
(103, '15-08-2024', '04:53 PM', 'Final Bill Generation', 'Final Bill Generated for TPID : 6', 'Madan Mahal', 'DH_2'),
(104, '15-08-2024', '04:57 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_4'),
(105, '15-08-2024', '05:01 PM', 'Sitting Considered', '4 Sitting Started', 'Madan Mahal', 'DH_4'),
(106, '15-08-2024', '05:02 PM', 'Treatment Procedure', 'Pulpectomy (Child) @ per tooth Treatment Done, TPID : 3', 'Madan Mahal', 'DH_4'),
(107, '15-08-2024', '05:02 PM', 'Final Bill Generation', 'Final Bill Generated for TPID : 3', 'Madan Mahal', 'DH_4'),
(108, '15-08-2024', '17:29:43', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_1'),
(109, '15-08-2024', '18:45:43', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_1'),
(110, '15-08-2024', '06:50 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(111, '15-08-2024', '06:50 PM', 'Final Bill Generation', 'Final Bill Generated for TPID : 1', 'Madan Mahal', 'DH_1'),
(112, '16-08-2024', '13:31:51', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_5'),
(113, '16-08-2024', '13:31:58', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_5'),
(114, '16-08-2024', '01:33 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_5'),
(115, '16-08-2024', '01:33 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_5'),
(116, '16-08-2024', '01:33 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_5'),
(117, '16-08-2024', '16:56:22', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_1'),
(118, '16-08-2024', '16:59:12', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_1'),
(119, '16-08-2024', '17:12:26', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_2'),
(120, '16-08-2024', '05:32 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(121, '16-08-2024', '05:33 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(122, '16-08-2024', '17:39:36', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_1'),
(123, '16-08-2024', '17:39:41', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_1'),
(124, '16-08-2024', '05:40 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(125, '16-08-2024', '05:44 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(126, '16-08-2024', '05:44 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(127, '16-08-2024', '05:47 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(128, '16-08-2024', '05:47 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(129, '16-08-2024', '05:47 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(130, '16-08-2024', '05:48 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(131, '16-08-2024', '05:50 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(132, '16-08-2024', '05:50 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(133, '16-08-2024', '05:50 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(134, '16-08-2024', '06:09 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(135, '16-08-2024', '06:12 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(136, '16-08-2024', '06:14 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(137, '16-08-2024', '06:14 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_1'),
(138, '16-08-2024', '06:14 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_1'),
(139, '16-08-2024', '06:14 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_1'),
(140, '16-08-2024', '06:16 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_1'),
(141, '16-08-2024', '06:19 PM', 'Treatment Suggest', 'Select Treatment : Re-Root Canal Treatlment @ per tooth for disease : Caries', 'Madan Mahal', 'DH_1'),
(142, '16-08-2024', '06:19 PM', 'Treatment Suggest', 'Select Treatment : Metal Braces for disease : Fracture', 'Madan Mahal', 'DH_1'),
(143, '16-08-2024', '06:20 PM', 'Treatment Suggest', 'Select Treatment : Porcelain Fused to Metal @ per Crown for disease : Impacted', 'Madan Mahal', 'DH_1'),
(144, '16-08-2024', '06:22 PM', 'Secuirty Amount', '30000 Secuirty Amount Added', 'Madan Mahal', 'DH_1'),
(145, '16-08-2024', '06:43 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_1'),
(146, '16-08-2024', '06:43 PM', 'Security Amount Used', '7200 security amount used', 'Madan Mahal', 'DH_1'),
(147, '16-08-2024', '06:44 PM', 'Treatment Procedure', 'Sitting Done, TPID : 8', 'Madan Mahal', 'DH_1'),
(148, '16-08-2024', '06:44 PM', 'Sitting Considered', '2 Sitting Started', 'Madan Mahal', 'DH_1'),
(149, '16-08-2024', '06:45 PM', 'Treatment Procedure', 'Re-Root Canal Treatlment @ per tooth Treatment Done, TPID : 8', 'Madan Mahal', 'DH_1'),
(150, '16-08-2024', '06:45 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_1'),
(151, '16-08-2024', '07:01 PM', 'Security Amount Used', '22800 security amount used', 'Madan Mahal', 'DH_1'),
(152, '16-08-2024', '07:01 PM', 'Treatment Procedure', 'Sitting Done, TPID : 8', 'Madan Mahal', 'DH_1'),
(153, '16-08-2024', '07:08 PM', 'Sitting Considered', '2 Sitting Started', 'Madan Mahal', 'DH_1'),
(154, '16-08-2024', '07:09 PM', 'Treatment Procedure', 'Metal Braces Treatment Done, TPID : 8', 'Madan Mahal', 'DH_1'),
(155, '16-08-2024', '07:09 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_1'),
(156, '16-08-2024', '07:09 PM', 'Treatment Procedure', 'Porcelain Fused to Metal @ per Crown Treatment Done, TPID : 8', 'Madan Mahal', 'DH_1'),
(157, '16-08-2024', '07:10 PM', 'Final Bill Generation', 'Final Bill Generated for TPID : 8', 'Madan Mahal', 'DH_1'),
(158, '16-08-2024', '07:16 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(159, '16-08-2024', '07:17 PM', 'Examination', 'Selected Category Pediatric', 'Madan Mahal', 'DH_1'),
(160, '16-08-2024', '07:17 PM', 'Examination', 'Add Teeth Pediatric DentalX', 'Madan Mahal', 'DH_1'),
(161, '16-08-2024', '07:17 PM', 'Examination', 'Add Teeth Pediatric DentalX', 'Madan Mahal', 'DH_1'),
(162, '16-08-2024', '07:18 PM', 'Treatment Suggest', 'Select Treatment : Amalgam Restoration@ per tooth for disease : Caries', 'Madan Mahal', 'DH_1'),
(163, '16-08-2024', '07:18 PM', 'Treatment Suggest', 'Select Treatment : Ceramic Braces for disease : Fracture', 'Madan Mahal', 'DH_1'),
(164, '16-08-2024', '07:20 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_1'),
(165, '16-08-2024', '07:21 PM', 'Treatment Procedure', 'Amalgam Restoration@ per tooth Treatment Done, TPID : 9', 'Madan Mahal', 'DH_1'),
(166, '16-08-2024', '07:21 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_1'),
(167, '16-08-2024', '07:21 PM', 'Treatment Procedure', 'Ceramic Braces Treatment Done, TPID : 9', 'Madan Mahal', 'DH_1'),
(168, '16-08-2024', '07:21 PM', 'Final Bill Generation', 'Final Bill Generated for TPID : 9', 'Madan Mahal', 'DH_1'),
(169, '17-08-2024', '15:52:54', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_5'),
(170, '17-08-2024', '15:53:07', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_5'),
(171, '17-08-2024', '03:53 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_5'),
(172, '17-08-2024', '03:53 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_5'),
(173, '17-08-2024', '15:55:17', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_2'),
(174, '17-08-2024', '15:55:28', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_2'),
(175, '17-08-2024', '03:55 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(176, '17-08-2024', '03:57 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_5'),
(177, '17-08-2024', '15:59:40', 'Add Patient', 'Add Patient and Appointment scheduled', 'Madan Mahal', 'DH_6'),
(178, '17-08-2024', '16:00:00', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_6'),
(179, '17-08-2024', '04:00 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(180, '17-08-2024', '04:00 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(181, '17-08-2024', '16:02:26', 'Patient Profile', 'Patient Profile Updated', 'Madan Mahal', 'DH_5'),
(182, '17-08-2024', '04:16 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_5'),
(183, '17-08-2024', '04:19 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_5'),
(184, '17-08-2024', '04:19 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_5'),
(185, '17-08-2024', '04:20 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_5'),
(186, '17-08-2024', '04:20 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_5'),
(187, '17-08-2024', '04:20 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_5'),
(188, '17-08-2024', '04:22 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_5'),
(189, '17-08-2024', '04:26 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_5'),
(190, '17-08-2024', '04:26 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_5'),
(191, '17-08-2024', '04:27 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_5'),
(192, '17-08-2024', '04:28 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_5'),
(193, '17-08-2024', '04:28 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_5'),
(194, '17-08-2024', '04:28 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(195, '17-08-2024', '04:29 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(196, '17-08-2024', '04:30 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(197, '17-08-2024', '04:30 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(198, '17-08-2024', '04:30 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(199, '17-08-2024', '04:31 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(200, '17-08-2024', '04:31 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(201, '17-08-2024', '04:31 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(202, '17-08-2024', '04:35 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(203, '17-08-2024', '04:37 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(204, '17-08-2024', '04:37 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(205, '17-08-2024', '04:37 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(206, '17-08-2024', '04:37 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(207, '17-08-2024', '04:38 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_5'),
(208, '17-08-2024', '04:38 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_5'),
(209, '17-08-2024', '04:38 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_5'),
(210, '17-08-2024', '04:39 PM', 'Treatment Suggest', 'Select Treatment : Teeth Bleaching In Office Whitening for disease : Caries', 'Madan Mahal', 'DH_5'),
(211, '17-08-2024', '04:39 PM', 'Treatment Suggest', 'Select Treatment : Third Molar /Impacted Tooth Removal for disease : Caries', 'Madan Mahal', 'DH_5'),
(212, '17-08-2024', '04:42 PM', 'Secuirty Amount', '11000 Secuirty Amount Added', 'Madan Mahal', 'DH_5'),
(213, '17-08-2024', '04:42 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_5'),
(214, '17-08-2024', '04:43 PM', 'Security Amount Used', '8000 security amount used', 'Madan Mahal', 'DH_5'),
(215, '17-08-2024', '04:45 PM', 'Treatment Procedure', 'Sitting Done, TPID : 10', 'Madan Mahal', 'DH_5'),
(216, '17-08-2024', '16:45:42', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_5'),
(217, '17-08-2024', '04:46 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_5'),
(218, '17-08-2024', '04:46 PM', 'Sitting Considered', '2 Sitting Started', 'Madan Mahal', 'DH_5'),
(219, '17-08-2024', '04:46 PM', 'Security Amount Used', '3000 security amount used', 'Madan Mahal', 'DH_5'),
(220, '17-08-2024', '04:46 PM', 'Treatment Procedure', 'Sitting Done, TPID : 10', 'Madan Mahal', 'DH_5'),
(221, '17-08-2024', '04:46 PM', 'Sitting Considered', '3 Sitting Started', 'Madan Mahal', 'DH_5'),
(222, '17-08-2024', '16:47:22', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_5'),
(223, '17-08-2024', '04:47 PM', 'Treatment Procedure', 'Teeth Bleaching In Office Whitening Treatment Done, TPID : 10', 'Madan Mahal', 'DH_5'),
(224, '17-08-2024', '04:47 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_5'),
(225, '17-08-2024', '16:48:35', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_5'),
(226, '17-08-2024', '16:48:40', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_5'),
(227, '17-08-2024', '04:48 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_5'),
(228, '17-08-2024', '04:49 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_5'),
(229, '17-08-2024', '04:49 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_5'),
(230, '17-08-2024', '04:49 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_5'),
(231, '17-08-2024', '04:50 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_5'),
(232, '17-08-2024', '04:51 PM', 'Sitting Considered', '2 Sitting Started', 'Madan Mahal', 'DH_5'),
(233, '17-08-2024', '04:56 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_5'),
(234, '17-08-2024', '04:58 PM', 'Sitting Considered', '2 Sitting Started', 'Madan Mahal', 'DH_5'),
(235, '17-08-2024', '04:58 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_5'),
(236, '17-08-2024', '04:59 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_5'),
(237, '17-08-2024', '05:00 PM', 'Sitting Considered', '2 Sitting Started', 'Madan Mahal', 'DH_5'),
(238, '17-08-2024', '05:00 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(239, '17-08-2024', '05:00 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_6'),
(240, '17-08-2024', '05:00 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_6'),
(241, '17-08-2024', '05:00 PM', 'Treatment Suggest', 'Select Treatment : Metal Crowns @ Per Crown for disease : Fracture', 'Madan Mahal', 'DH_6'),
(242, '17-08-2024', '05:01 PM', 'Secuirty Amount', '1000 Secuirty Amount Added', 'Madan Mahal', 'DH_6'),
(243, '17-08-2024', '05:01 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_6'),
(244, '17-08-2024', '05:03 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_5'),
(245, '17-08-2024', '05:05 PM', 'Sitting Considered', '2 Sitting Started', 'Madan Mahal', 'DH_5'),
(246, '17-08-2024', '05:07 PM', 'Security Amount Used', '1000 security amount used', 'Madan Mahal', 'DH_6'),
(247, '17-08-2024', '05:10 PM', 'Book Sitting Appointment', 'Book Sitting Appointment', 'Madan Mahal', 'DH_6'),
(248, '17-08-2024', '05:10 PM', 'Treatment Procedure', 'Sitting Done, TPID : 11', 'Madan Mahal', 'DH_6'),
(249, '17-08-2024', '17:11:31', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_6'),
(250, '17-08-2024', '05:11 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(251, '17-08-2024', '05:11 PM', 'Sitting Considered', '2 Sitting Started', 'Madan Mahal', 'DH_6'),
(252, '17-08-2024', '05:12 PM', 'Treatment Procedure', 'Metal Crowns @ Per Crown Treatment Done, TPID : 11', 'Madan Mahal', 'DH_6'),
(253, '17-08-2024', '05:12 PM', 'Final Bill Generation', 'Final Bill Generated for TPID : 11', 'Madan Mahal', 'DH_6'),
(254, '17-08-2024', '17:14:33', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_6'),
(255, '17-08-2024', '17:14:47', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_6'),
(256, '17-08-2024', '05:15 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(257, '17-08-2024', '05:25 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(258, '17-08-2024', '05:34 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(259, '17-08-2024', '05:35 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(260, '17-08-2024', '05:35 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(261, '17-08-2024', '05:35 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(262, '17-08-2024', '05:36 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_6'),
(263, '17-08-2024', '05:36 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_6'),
(264, '17-08-2024', '05:37 PM', 'Treatment Suggest', 'Select Treatment : Direct Composite Veneer @ per tooth for disease : Caries', 'Madan Mahal', 'DH_6'),
(265, '17-08-2024', '05:37 PM', 'Treatment Suggest', 'Select Treatment : Ceramic Braces for disease : Caries', 'Madan Mahal', 'DH_6'),
(266, '17-08-2024', '05:38 PM', 'Secuirty Amount', '40000 Secuirty Amount Added', 'Madan Mahal', 'DH_6'),
(267, '17-08-2024', '05:39 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_6'),
(268, '17-08-2024', '05:40 PM', 'Security Amount Used', '4500 security amount used', 'Madan Mahal', 'DH_6'),
(269, '17-08-2024', '05:50 PM', 'Book Sitting Appointment', 'Book Sitting Appointment', 'Madan Mahal', 'DH_6'),
(270, '17-08-2024', '05:50 PM', 'Treatment Procedure', 'Direct Composite Veneer @ per tooth Treatment Done, TPID : 12', 'Madan Mahal', 'DH_6'),
(271, '17-08-2024', '17:50:18', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_6'),
(272, '17-08-2024', '05:52 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(273, '17-08-2024', '05:52 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(274, '17-08-2024', '05:53 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(275, '17-08-2024', '05:53 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_6'),
(276, '17-08-2024', '05:53 PM', 'Security Amount Used', '35500 security amount used', 'Madan Mahal', 'DH_6'),
(277, '17-08-2024', '05:53 PM', 'Treatment Procedure', 'Sitting Done, TPID : 12', 'Madan Mahal', 'DH_6'),
(278, '17-08-2024', '05:53 PM', 'Sitting Considered', '2 Sitting Started', 'Madan Mahal', 'DH_6'),
(279, '17-08-2024', '05:54 PM', 'Treatment Procedure', 'Ceramic Braces Treatment Done, TPID : 12', 'Madan Mahal', 'DH_6'),
(280, '17-08-2024', '17:58:08', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_6'),
(281, '17-08-2024', '17:58:20', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_6'),
(282, '17-08-2024', '05:58 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(283, '17-08-2024', '17:59:33', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_6'),
(284, '17-08-2024', '18:00:05', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_6'),
(285, '17-08-2024', '06:00 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(286, '17-08-2024', '06:01 PM', 'Final Bill Generation', 'Final Bill Generated for TPID : 12', 'Madan Mahal', 'DH_6'),
(287, '17-08-2024', '18:02:58', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_6'),
(288, '17-08-2024', '18:03:33', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_6'),
(289, '17-08-2024', '06:06 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(290, '17-08-2024', '07:01 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(291, '17-08-2024', '07:02 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(292, '21-08-2024', '12:19:31', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_2'),
(293, '21-08-2024', '12:19:39', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_2'),
(294, '21-08-2024', '12:19 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(295, '21-08-2024', '12:20 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(296, '21-08-2024', '12:22:19', 'Add Patient', 'Add Patient and Appointment scheduled', 'Madan Mahal', 'DH_7'),
(297, '21-08-2024', '12:22:36', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_7'),
(298, '21-08-2024', '12:22 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_7'),
(299, '21-08-2024', '12:22 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_7'),
(300, '21-08-2024', '12:22 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_7'),
(301, '21-08-2024', '12:23 PM', 'Treatment Suggest', 'Select Treatment : Indirect Pulp Capping with MTA @ per tooth for disease : Caries', 'Madan Mahal', 'DH_7'),
(302, '21-08-2024', '12:24 PM', 'Secuirty Amount', '2000 Secuirty Amount Added', 'Madan Mahal', 'DH_7'),
(303, '21-08-2024', '12:24 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_7'),
(304, '21-08-2024', '12:25 PM', 'Security Amount Used', '1500 security amount used', 'Madan Mahal', 'DH_7'),
(305, '21-08-2024', '12:25 PM', 'Treatment Procedure', 'Indirect Pulp Capping with MTA @ per tooth Treatment Done, TPID : 13', 'Madan Mahal', 'DH_7'),
(306, '21-08-2024', '13:16:43', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_7'),
(307, '21-08-2024', '13:16:51', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_7'),
(308, '21-08-2024', '01:17 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_7'),
(309, '21-08-2024', '01:17 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_7'),
(310, '21-08-2024', '01:17 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_7'),
(311, '21-08-2024', '01:17 PM', 'Treatment Suggest', 'Select Treatment : Full mouth Implant for disease : Caries', 'Madan Mahal', 'DH_7'),
(312, '21-08-2024', '01:18 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_7'),
(313, '21-08-2024', '01:18 PM', 'Treatment Procedure', 'Sitting Done, TPID : 14', 'Madan Mahal', 'DH_7'),
(314, '21-08-2024', '13:21:13', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_7'),
(315, '21-08-2024', '13:21:17', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_7'),
(316, '21-08-2024', '01:21 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_7'),
(317, '21-08-2024', '01:21 PM', 'Sitting Considered', '2 Sitting Started', 'Madan Mahal', 'DH_7'),
(318, '21-08-2024', '01:22 PM', 'Treatment Procedure', 'Full mouth Implant Treatment Done, TPID : 14', 'Madan Mahal', 'DH_7'),
(319, '21-08-2024', '01:23 PM', 'Final Bill Generation', 'Final Bill Generated for TPID : 14', 'Madan Mahal', 'DH_7'),
(320, '22-08-2024', '11:46:53', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_7'),
(321, '22-08-2024', '11:47:09', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_7'),
(322, '22-08-2024', '11:47 AM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_7'),
(323, '22-08-2024', '11:47:35', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_6'),
(324, '22-08-2024', '11:47:48', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_2'),
(325, '22-08-2024', '11:47:55', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_7'),
(326, '22-08-2024', '11:47:59', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_2'),
(327, '22-08-2024', '11:48:01', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_6'),
(328, '22-08-2024', '11:48 AM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(329, '22-08-2024', '11:49 AM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_7'),
(330, '22-08-2024', '11:49 AM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_7'),
(331, '22-08-2024', '11:49 AM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(332, '22-08-2024', '11:49 AM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_7'),
(333, '22-08-2024', '11:49 AM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_7'),
(334, '22-08-2024', '11:49 AM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_7'),
(335, '22-08-2024', '11:50 AM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_7'),
(336, '22-08-2024', '11:50 AM', 'Treatment Suggest', 'Select Treatment : Retention plate@ per arch for disease : Fracture', 'Madan Mahal', 'DH_7'),
(337, '22-08-2024', '11:52 AM', 'Secuirty Amount', '10000 Secuirty Amount Added', 'Madan Mahal', 'DH_7'),
(338, '22-08-2024', '11:53 AM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(339, '22-08-2024', '11:53 AM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(340, '22-08-2024', '11:54 AM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_7'),
(341, '22-08-2024', '11:54 AM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(342, '22-08-2024', '11:55 AM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(343, '22-08-2024', '11:56 AM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(344, '22-08-2024', '11:56 AM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_7'),
(345, '22-08-2024', '11:56 AM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(346, '22-08-2024', '11:57 AM', 'Security Amount Used', '4000 security amount used', 'Madan Mahal', 'DH_7'),
(347, '22-08-2024', '11:57 AM', 'Treatment Procedure', 'Sitting Done, TPID : 15', 'Madan Mahal', 'DH_7'),
(348, '22-08-2024', '11:57 AM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(349, '22-08-2024', '11:59 AM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(350, '22-08-2024', '12:00 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(351, '22-08-2024', '12:00 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(352, '22-08-2024', '12:00 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(353, '22-08-2024', '12:00 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(354, '22-08-2024', '12:01 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(355, '22-08-2024', '12:01 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_2'),
(356, '22-08-2024', '12:01 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_2'),
(357, '22-08-2024', '12:01 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_2'),
(358, '22-08-2024', '12:02 PM', 'Treatment Suggest', 'Select Treatment : Root Canal Treatment @ per tooth for disease : Caries', 'Madan Mahal', 'DH_2'),
(359, '22-08-2024', '12:02 PM', 'Treatment Suggest', 'Select Treatment : Third Molar /Impacted Tooth Removal for disease : Fracture', 'Madan Mahal', 'DH_2'),
(360, '22-08-2024', '12:02 PM', 'Secuirty Amount', '6000 Secuirty Amount Added', 'Madan Mahal', 'DH_2'),
(361, '22-08-2024', '12:03 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_2'),
(362, '22-08-2024', '12:03 PM', 'Security Amount Used', '5400 security amount used', 'Madan Mahal', 'DH_2'),
(363, '22-08-2024', '12:03 PM', 'Treatment Procedure', 'Root Canal Treatment @ per tooth Treatment Done, TPID : 16', 'Madan Mahal', 'DH_2'),
(364, '22-08-2024', '12:04:10', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_2'),
(365, '22-08-2024', '12:04:15', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_2'),
(366, '22-08-2024', '12:04 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(367, '22-08-2024', '12:05 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(368, '22-08-2024', '12:05 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(369, '22-08-2024', '12:05 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_2'),
(370, '22-08-2024', '12:08 PM', 'Treatment Procedure', 'Third Molar Impacted Tooth Removal Treatment Done, TPID : 16', 'Madan Mahal', 'DH_2'),
(371, '22-08-2024', '12:08 PM', 'Final Bill Generation', 'Final Bill Generated for TPID : 16', 'Madan Mahal', 'DH_2'),
(372, '22-08-2024', '12:10:27', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_7'),
(373, '22-08-2024', '12:10:32', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_7'),
(374, '22-08-2024', '12:14 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_7'),
(375, '22-08-2024', '15:29:47', 'Add Patient', 'Add Patient and Appointment scheduled', 'Madan Mahal', 'DH_8'),
(376, '22-08-2024', '15:30:13', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_8'),
(377, '22-08-2024', '03:36 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_8'),
(378, '22-08-2024', '03:37 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_8'),
(379, '22-08-2024', '03:38 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_8'),
(380, '22-08-2024', '03:38 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_8'),
(381, '22-08-2024', '03:39 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_8'),
(382, '22-08-2024', '03:40 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_8'),
(383, '22-08-2024', '03:41 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_8'),
(384, '22-08-2024', '03:41 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_8'),
(385, '22-08-2024', '03:42 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_8'),
(386, '22-08-2024', '03:42 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(387, '22-08-2024', '15:51:45', 'Cancel Appointment', 'Cancel Appointment', 'Madan Mahal', 'DH_6'),
(388, '22-08-2024', '15:55:03', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_7'),
(389, '22-08-2024', '15:58:19', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_7'),
(390, '24-08-2024', '20:54:44', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_1'),
(391, '24-08-2024', '20:54:52', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_1'),
(392, '24-08-2024', '08:55 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(393, '24-08-2024', '20:56:42', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_1'),
(394, '24-08-2024', '20:56:50', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_1'),
(395, '24-08-2024', '08:57 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(396, '24-08-2024', '08:58 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_1'),
(397, '24-08-2024', '09:11 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_1'),
(398, '24-08-2024', '09:11 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_1'),
(399, '24-08-2024', '09:15 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(400, '24-08-2024', '09:23 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(401, '24-08-2024', '09:23 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(402, '24-08-2024', '09:24 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(403, '24-08-2024', '09:26 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(404, '24-08-2024', '09:32 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(405, '26-08-2024', '12:23 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(406, '26-08-2024', '12:33 PM', 'Treatment Suggest', 'Select Treatment : Root Canal Treatment @ per tooth for disease : Caries', 'Madan Mahal', 'DH_1'),
(407, '26-08-2024', '12:33 PM', 'Treatment Suggest', 'Select Treatment : Teeth Bleaching at Home Whitening for disease : Fracture', 'Madan Mahal', 'DH_1'),
(408, '26-08-2024', '12:35 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_1'),
(409, '26-08-2024', '12:35 PM', 'Treatment Procedure', 'Root Canal Treatment @ per tooth Treatment Done, TPID : 17', 'Madan Mahal', 'DH_1'),
(410, '26-08-2024', '12:35 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_1'),
(411, '26-08-2024', '12:35 PM', 'Treatment Procedure', 'Teeth Bleaching at Home Whitening Treatment Done, TPID : 17', 'Madan Mahal', 'DH_1'),
(412, '26-08-2024', '12:36 PM', 'Final Bill Generation', 'Final Bill Generated for TPID : 17', 'Madan Mahal', 'DH_1'),
(413, '26-08-2024', '12:42:31', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_1'),
(414, '26-08-2024', '12:42:44', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_1'),
(415, '26-08-2024', '12:42 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(416, '26-08-2024', '12:42 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(417, '26-08-2024', '12:46 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(418, '26-08-2024', '12:46 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(419, '26-08-2024', '12:47 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(420, '26-08-2024', '12:47 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(421, '26-08-2024', '12:47 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(422, '26-08-2024', '12:49 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(423, '26-08-2024', '12:49 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(424, '26-08-2024', '12:49 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(425, '26-08-2024', '12:50 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(426, '26-08-2024', '17:54:41', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_8'),
(427, '27-08-2024', '15:17:31', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_8'),
(428, '27-08-2024', '15:17:47', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_8'),
(429, '27-08-2024', '03:18 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_8'),
(430, '27-08-2024', '03:18 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_8'),
(431, '27-08-2024', '03:19 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_8'),
(432, '27-08-2024', '03:19 PM', 'Treatment Suggest', 'Select Treatment : Single Implant for disease : Caries', 'Madan Mahal', 'DH_8'),
(433, '27-08-2024', '03:20 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_8'),
(434, '27-08-2024', '03:20 PM', 'Treatment Procedure', 'Sitting Done, TPID : 18', 'Madan Mahal', 'DH_8'),
(435, '27-08-2024', '15:25:31', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_8'),
(436, '27-08-2024', '15:25:40', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_8'),
(437, '27-08-2024', '03:25 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_8'),
(438, '27-08-2024', '03:26 PM', 'Sitting Considered', '2 Sitting Started', 'Madan Mahal', 'DH_8'),
(439, '27-08-2024', '03:27 PM', 'Treatment Procedure', 'Single Implant Treatment Done, TPID : 18', 'Madan Mahal', 'DH_8'),
(440, '27-08-2024', '03:31 PM', 'Final Bill Generation', 'Final Bill Generated for TPID : 18', 'Madan Mahal', 'DH_8'),
(441, '27-08-2024', '15:38:22', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_6'),
(442, '27-08-2024', '15:38:30', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_6'),
(443, '27-08-2024', '03:38 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(444, '27-08-2024', '03:38 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_6'),
(445, '27-08-2024', '03:39 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_6'),
(446, '27-08-2024', '03:39 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_6'),
(447, '27-08-2024', '03:44 PM', 'Treatment Suggest', 'Select Treatment : Pulpectomy (Child) @ per tooth for disease : Caries', 'Madan Mahal', 'DH_6'),
(448, '27-08-2024', '03:44 PM', 'Treatment Suggest', 'Select Treatment : Re-Root Canal Treatlment @ per tooth for disease : Fracture', 'Madan Mahal', 'DH_6'),
(449, '27-08-2024', '03:45 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_6'),
(450, '27-08-2024', '03:46 PM', 'Treatment Procedure', 'Sitting Done, TPID : 19', 'Madan Mahal', 'DH_6'),
(451, '27-08-2024', '03:46 PM', 'Sitting Considered', '2 Sitting Started', 'Madan Mahal', 'DH_6'),
(452, '27-08-2024', '03:46 PM', 'Treatment Procedure', 'Pulpectomy (Child) @ per tooth Treatment Done, TPID : 19', 'Madan Mahal', 'DH_6'),
(453, '27-08-2024', '03:47 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_6'),
(454, '27-08-2024', '03:49 PM', 'Treatment Procedure', 'Sitting Done, TPID : 19', 'Madan Mahal', 'DH_6'),
(455, '27-08-2024', '03:49 PM', 'Sitting Considered', '2 Sitting Started', 'Madan Mahal', 'DH_6'),
(456, '27-08-2024', '03:49 PM', 'Treatment Procedure', 'Sitting Done, TPID : 19', 'Madan Mahal', 'DH_6'),
(457, '27-08-2024', '03:50 PM', 'Sitting Considered', '3 Sitting Started', 'Madan Mahal', 'DH_6'),
(458, '27-08-2024', '03:50 PM', 'Treatment Procedure', 'Sitting Done, TPID : 19', 'Madan Mahal', 'DH_6'),
(459, '27-08-2024', '03:51 PM', 'Sitting Considered', '4 Sitting Started', 'Madan Mahal', 'DH_6'),
(460, '27-08-2024', '03:51 PM', 'Treatment Procedure', 'Re-Root Canal Treatlment @ per tooth Treatment Done, TPID : 19', 'Madan Mahal', 'DH_6'),
(461, '27-08-2024', '03:52 PM', 'Final Bill Generation', 'Final Bill Generated for TPID : 19', 'Madan Mahal', 'DH_6'),
(462, '27-08-2024', '15:53:02', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_5'),
(463, '27-08-2024', '15:53:12', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_5'),
(464, '27-08-2024', '03:53 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_5'),
(465, '27-08-2024', '03:53 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_5'),
(466, '27-08-2024', '03:53 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_5'),
(467, '27-08-2024', '03:53 PM', 'Treatment Suggest', 'Select Treatment : Laminates and Veneers@ per tooth for disease : Caries', 'Madan Mahal', 'DH_5'),
(468, '27-08-2024', '15:54:56', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_8'),
(469, '27-08-2024', '15:55:42', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_8'),
(470, '27-08-2024', '03:55 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_8'),
(471, '27-08-2024', '03:55 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_8'),
(472, '27-08-2024', '03:56 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_8'),
(473, '27-08-2024', '03:56 PM', 'Treatment Suggest', 'Select Treatment : Teeth Bleaching at Home Whitening for disease : Fracture', 'Madan Mahal', 'DH_8'),
(474, '27-08-2024', '03:57 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_8'),
(475, '27-08-2024', '03:57 PM', 'Treatment Procedure', 'Sitting Done, TPID : 21', 'Madan Mahal', 'DH_8'),
(476, '27-08-2024', '03:57 PM', 'Sitting Considered', '2 Sitting Started', 'Madan Mahal', 'DH_8'),
(477, '27-08-2024', '03:58 PM', 'Treatment Procedure', 'Teeth Bleaching at Home Whitening Treatment Done, TPID : 21', 'Madan Mahal', 'DH_8'),
(478, '27-08-2024', '03:58 PM', 'Final Bill Generation', 'Final Bill Generated for TPID : 21', 'Madan Mahal', 'DH_8'),
(479, '27-08-2024', '15:59:51', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_8'),
(480, '27-08-2024', '16:00:03', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_8'),
(481, '27-08-2024', '04:00 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_8'),
(482, '27-08-2024', '04:00 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_8'),
(483, '27-08-2024', '04:00 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_8'),
(484, '27-08-2024', '04:00 PM', 'Treatment Suggest', 'Select Treatment : Teeth Bleaching In Office Whitening for disease : Caries', 'Madan Mahal', 'DH_8'),
(485, '27-08-2024', '04:01 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_8'),
(486, '27-08-2024', '04:01 PM', 'Treatment Procedure', 'Sitting Done, TPID : 22', 'Madan Mahal', 'DH_8'),
(487, '27-08-2024', '04:02 PM', 'Sitting Considered', '2 Sitting Started', 'Madan Mahal', 'DH_8'),
(488, '27-08-2024', '04:02 PM', 'Treatment Procedure', 'Sitting Done, TPID : 22', 'Madan Mahal', 'DH_8'),
(489, '27-08-2024', '04:03 PM', 'Sitting Considered', '3 Sitting Started', 'Madan Mahal', 'DH_8'),
(490, '27-08-2024', '04:04 PM', 'Treatment Procedure', 'Teeth Bleaching In Office Whitening Treatment Done, TPID : 22', 'Madan Mahal', 'DH_8'),
(491, '27-08-2024', '04:04 PM', 'Final Bill Generation', 'Final Bill Generated for TPID : 22', 'Madan Mahal', 'DH_8'),
(492, '27-08-2024', '16:16:14', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_8'),
(493, '27-08-2024', '16:16:28', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_8'),
(494, '27-08-2024', '04:16 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_8'),
(495, '27-08-2024', '04:16 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_8'),
(496, '27-08-2024', '04:17 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_8'),
(497, '27-08-2024', '04:17 PM', 'Treatment Suggest', 'Select Treatment : Re-Root Canal Treatlment @ per tooth for disease : Caries', 'Madan Mahal', 'DH_8'),
(498, '27-08-2024', '04:18 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_8'),
(499, '27-08-2024', '04:18 PM', 'Treatment Procedure', 'Sitting Done, TPID : 23', 'Madan Mahal', 'DH_8'),
(500, '27-08-2024', '04:22 PM', 'Sitting Considered', '2 Sitting Started', 'Madan Mahal', 'DH_8');
INSERT INTO `patient_timeline` (`event_id`, `event_date`, `event_time`, `event_type`, `event_description`, `branch_name`, `uhid`) VALUES
(501, '27-08-2024', '04:22 PM', 'Treatment Procedure', 'Sitting Done, TPID : 23', 'Madan Mahal', 'DH_8'),
(502, '27-08-2024', '04:22 PM', 'Sitting Considered', '3 Sitting Started', 'Madan Mahal', 'DH_8'),
(503, '27-08-2024', '04:23 PM', 'Treatment Procedure', 'Re-Root Canal Treatlment @ per tooth Treatment Done, TPID : 23', 'Madan Mahal', 'DH_8'),
(504, '27-08-2024', '04:23 PM', 'Final Bill Generation', 'Final Bill Generated for TPID : 23', 'Madan Mahal', 'DH_8'),
(505, '28-08-2024', '12:05:30', 'Add Patient', 'Add Patient and Appointment scheduled', 'Madan Mahal', 'DH_9'),
(506, '28-08-2024', '12:06:12', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_9'),
(507, '28-08-2024', '12:06 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_9'),
(508, '28-08-2024', '12:06 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_9'),
(509, '28-08-2024', '12:10 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_9'),
(510, '28-08-2024', '12:11 PM', 'Treatment Suggest', 'Select Treatment : Root Canal Treatment @ per tooth for disease : Caries', 'Madan Mahal', 'DH_9'),
(511, '28-08-2024', '12:29 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_9'),
(512, '28-08-2024', '12:35 PM', 'Treatment Procedure', 'Sitting Done, TPID : 24', 'Madan Mahal', 'DH_9'),
(513, '28-08-2024', '12:39 PM', 'Sitting Considered', '2 Sitting Started', 'Madan Mahal', 'DH_9'),
(514, '28-08-2024', '12:40 PM', 'Treatment Procedure', 'Root Canal Treatment @ per tooth Treatment Done, TPID : 24', 'Madan Mahal', 'DH_9'),
(515, '28-08-2024', '12:41 PM', 'Final Bill Generation', 'Final Bill Generated for TPID : 24', 'Madan Mahal', 'DH_9'),
(516, '30-08-2024', '12:14:46', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_7'),
(517, '30-08-2024', '12:14:49', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_7'),
(518, '30-08-2024', '12:15 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_7'),
(519, '30-08-2024', '12:15 PM', 'Sitting Considered', '2 Sitting Started', 'Madan Mahal', 'DH_7'),
(520, '30-08-2024', '12:15 PM', 'Treatment Procedure', 'Retention plate@ per arch Treatment Done, TPID : 15', 'Madan Mahal', 'DH_7'),
(521, '30-08-2024', '12:15 PM', 'Final Bill Generation', 'Final Bill Generated for TPID : 15', 'Madan Mahal', 'DH_7'),
(522, '30-08-2024', '12:17:07', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_2'),
(523, '30-08-2024', '12:17:30', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_2'),
(524, '30-08-2024', '12:17 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(525, '30-08-2024', '12:17 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_2'),
(526, '30-08-2024', '12:18 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_2'),
(527, '30-08-2024', '12:18 PM', 'Treatment Suggest', 'Select Treatment : GIC Restoration @ per tooth for disease : Caries', 'Madan Mahal', 'DH_2'),
(528, '30-08-2024', '12:21 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_2'),
(529, '30-08-2024', '12:21 PM', 'Treatment Procedure', 'GIC Restoration @ per tooth Treatment Done, TPID : 25', 'Madan Mahal', 'DH_2'),
(530, '30-08-2024', '12:22 PM', 'Final Bill Generation', 'Final Bill Generated for TPID : 25', 'Madan Mahal', 'DH_2'),
(531, '30-08-2024', '13:05:39', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_2'),
(532, '30-08-2024', '13:05:52', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_2'),
(533, '30-08-2024', '01:06 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(534, '30-08-2024', '01:06 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_2'),
(535, '30-08-2024', '01:06 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_2'),
(536, '30-08-2024', '01:07 PM', 'Treatment Suggest', 'Select Treatment : Ceramic Braces for disease : Caries', 'Madan Mahal', 'DH_2'),
(537, '30-08-2024', '01:07 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_2'),
(538, '30-08-2024', '01:07 PM', 'Treatment Procedure', 'Ceramic Braces Treatment Done, TPID : 26', 'Madan Mahal', 'DH_2'),
(539, '30-08-2024', '01:07 PM', 'Final Bill Generation', 'Final Bill Generated for TPID : 26', 'Madan Mahal', 'DH_2'),
(540, '30-08-2024', '15:07:16', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_6'),
(541, '30-08-2024', '15:07:36', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_6'),
(542, '30-08-2024', '03:08 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(543, '30-08-2024', '03:08 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_6'),
(544, '30-08-2024', '03:08 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_6'),
(545, '30-08-2024', '03:09 PM', 'Treatment Suggest', 'Select Treatment : Porcelain Fused to Metal @ per Crown for disease : Fracture', 'Madan Mahal', 'DH_6'),
(546, '30-08-2024', '03:10 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_6'),
(547, '30-08-2024', '03:11 PM', 'Treatment Procedure', 'Porcelain Fused to Metal @ per Crown Treatment Done, TPID : 27', 'Madan Mahal', 'DH_6'),
(548, '30-08-2024', '03:31 PM', 'Final Bill Generation', 'Final Bill Generated for TPID : 27', 'Madan Mahal', 'DH_6'),
(549, '30-08-2024', '16:24:08', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_2'),
(550, '30-08-2024', '16:24:24', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_2'),
(551, '30-08-2024', '04:24 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(552, '30-08-2024', '04:24 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_2'),
(553, '30-08-2024', '04:25 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_2'),
(554, '30-08-2024', '04:25 PM', 'Treatment Suggest', 'Select Treatment : Dental Jewellery (Skyce Crystal) for disease : Caries', 'Madan Mahal', 'DH_2'),
(555, '30-08-2024', '04:26 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_2'),
(556, '30-08-2024', '04:35 PM', 'Treatment Procedure', 'Sitting Done, TPID : 28', 'Madan Mahal', 'DH_2'),
(557, '30-08-2024', '04:36 PM', 'Treatment Procedure', 'Sitting Done, TPID : 28', 'Madan Mahal', 'DH_2'),
(558, '30-08-2024', '04:36 PM', 'Sitting Considered', '2 Sitting Started', 'Madan Mahal', 'DH_2'),
(559, '30-08-2024', '04:37 PM', 'Treatment Procedure', 'Dental Jewellery (Skyce Crystal) Treatment Done, TPID : 28', 'Madan Mahal', 'DH_2'),
(560, '30-08-2024', '04:38 PM', 'Final Bill Generation', 'Final Bill Generated for TPID : 28', 'Madan Mahal', 'DH_2'),
(561, '30-08-2024', '16:39:41', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_2'),
(562, '30-08-2024', '16:40:09', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_2'),
(563, '30-08-2024', '04:40 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(564, '30-08-2024', '04:40 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_2'),
(565, '30-08-2024', '04:40 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_2'),
(566, '30-08-2024', '04:41 PM', 'Treatment Suggest', 'Select Treatment : Teeth Bleaching In Office Whitening for disease : Caries', 'Madan Mahal', 'DH_2'),
(567, '30-08-2024', '04:41 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_2'),
(568, '30-08-2024', '04:42 PM', 'Treatment Procedure', 'Teeth Bleaching In Office Whitening Treatment Done, TPID : 29', 'Madan Mahal', 'DH_2'),
(569, '30-08-2024', '04:42 PM', 'Final Bill Generation', 'Final Bill Generated for TPID : 29', 'Madan Mahal', 'DH_2'),
(570, '30-08-2024', '16:49:01', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_2'),
(571, '30-08-2024', '16:49:07', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_2'),
(572, '30-08-2024', '04:49 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(573, '30-08-2024', '04:49 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_2'),
(574, '30-08-2024', '04:49 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_2'),
(575, '30-08-2024', '04:49 PM', 'Treatment Suggest', 'Select Treatment : Teeth Bleaching In Office Whitening for disease : Caries', 'Madan Mahal', 'DH_2'),
(576, '30-08-2024', '04:50 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_2'),
(577, '30-08-2024', '04:50 PM', 'Treatment Procedure', 'Teeth Bleaching In Office Whitening Treatment Done, TPID : 30', 'Madan Mahal', 'DH_2'),
(578, '30-08-2024', '04:51 PM', 'Final Bill Generation', 'Final Bill Generated for TPID : 30', 'Madan Mahal', 'DH_2'),
(579, '30-08-2024', '17:04:12', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_2'),
(580, '30-08-2024', '17:04:39', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_2'),
(581, '30-08-2024', '05:04 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(582, '30-08-2024', '05:04 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_2'),
(583, '30-08-2024', '05:08 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_2'),
(584, '30-08-2024', '05:08 PM', 'Treatment Suggest', 'Select Treatment : lnvisalign (clear or invisible braces) for disease : Caries', 'Madan Mahal', 'DH_2'),
(585, '30-08-2024', '05:09 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_2'),
(586, '30-08-2024', '05:09 PM', 'Treatment Procedure', 'Sitting Done, TPID : 31', 'Madan Mahal', 'DH_2'),
(587, '30-08-2024', '05:09 PM', 'Sitting Considered', '2 Sitting Started', 'Madan Mahal', 'DH_2'),
(588, '30-08-2024', '05:10 PM', 'Treatment Procedure', 'Sitting Done, TPID : 31', 'Madan Mahal', 'DH_2'),
(589, '30-08-2024', '05:10 PM', 'Sitting Considered', '3 Sitting Started', 'Madan Mahal', 'DH_2'),
(590, '30-08-2024', '05:10 PM', 'Treatment Procedure', 'lnvisalign (clear or invisible braces) Treatment Done, TPID : 31', 'Madan Mahal', 'DH_2'),
(591, '30-08-2024', '05:10 PM', 'Final Bill Generation', 'Final Bill Generated for TPID : 31', 'Madan Mahal', 'DH_2'),
(592, '30-08-2024', '17:18:54', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_2'),
(593, '30-08-2024', '17:19:21', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_2'),
(594, '30-08-2024', '05:19 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(595, '30-08-2024', '05:20 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_2'),
(596, '30-08-2024', '05:25 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_2'),
(597, '30-08-2024', '05:26 PM', 'Treatment Suggest', 'Select Treatment : Direct Composite Veneer @ per tooth for disease : Caries', 'Madan Mahal', 'DH_2'),
(598, '30-08-2024', '05:49 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_2'),
(599, '30-08-2024', '07:11 PM', 'Book Sitting Appointment', 'Book Sitting Appointment', 'Madan Mahal', 'DH_2'),
(600, '30-08-2024', '07:11 PM', 'Treatment Procedure', 'Sitting Done, TPID : 32', 'Madan Mahal', 'DH_2'),
(601, '30-08-2024', '08:27 PM', 'Treatment Procedure', 'Sitting Done, TPID : 32', 'Madan Mahal', 'DH_2'),
(602, '31-08-2024', '11:43:21', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_2'),
(603, '31-08-2024', '11:43 AM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(604, '31-08-2024', '11:44 AM', 'Sitting Considered', '2 Sitting Started', 'Madan Mahal', 'DH_2'),
(605, '31-08-2024', '11:44 AM', 'Treatment Procedure', 'Sitting Done, TPID : 32', 'Madan Mahal', 'DH_2'),
(606, '02-09-2024', '12:39:33', 'Add Patient', 'Add Patient and Appointment scheduled', 'Madan Mahal', 'DH_10'),
(607, '02-09-2024', '12:40:59', 'Edit Appointment', 'Edit Appointment', 'Madan Mahal', 'DH_10'),
(608, '02-09-2024', '12:42:30', 'Patient Profile', 'Patient Profile Updated', 'Madan Mahal', 'DH_10'),
(609, '02-09-2024', '12:43:45', 'Add Patient', 'Add Patient and Appointment scheduled', 'Madan Mahal', 'DH_11'),
(610, '02-09-2024', '12:45:10', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_11'),
(611, '02-09-2024', '12:45 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_11'),
(612, '02-09-2024', '12:45 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_11'),
(613, '02-09-2024', '12:46:03', 'Add Patient', 'Add Patient and Appointment scheduled', 'Madan Mahal', 'DH_12'),
(614, '02-09-2024', '12:46:12', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_10'),
(615, '02-09-2024', '12:46 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_10'),
(616, '02-09-2024', '12:46 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_10'),
(617, '02-09-2024', '12:48 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_11'),
(618, '02-09-2024', '12:48 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_10'),
(619, '02-09-2024', '12:48 PM', 'Treatment Suggest', 'Select Treatment : Re-Root Canal Treatlment @ per tooth for disease : Caries', 'Madan Mahal', 'DH_10'),
(620, '02-09-2024', '12:48:29', 'Add Patient', 'Add Patient and Appointment scheduled', 'Madan Mahal', 'DH_13'),
(621, '02-09-2024', '12:48 PM', 'Treatment Suggest', 'Select Treatment : Single Implant for disease : Mobility', 'Madan Mahal', 'DH_11'),
(622, '02-09-2024', '12:48:40', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_13'),
(623, '02-09-2024', '12:48 PM', 'Treatment Suggest', 'Select Treatment : Re-Root Canal Treatlment @ per tooth for disease : Caries', 'Madan Mahal', 'DH_10'),
(624, '02-09-2024', '12:49 PM', 'Treatment Suggest', 'Select Treatment : Root Canal Treatment @ per tooth for disease : Caries', 'Madan Mahal', 'DH_10'),
(625, '02-09-2024', '12:49 PM', 'Secuirty Amount', '15000 Secuirty Amount Added', 'Madan Mahal', 'DH_11'),
(626, '02-09-2024', '12:50:24', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_13'),
(627, '02-09-2024', '12:50:30', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_13'),
(628, '02-09-2024', '12:51 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_11'),
(629, '02-09-2024', '12:52 PM', 'Treatment Procedure', 'Single Implant Treatment Done, TPID : 33', 'Madan Mahal', 'DH_11'),
(630, '02-09-2024', '12:52 PM', 'Final Bill Generation', 'Final Bill Generated for TPID : 33', 'Madan Mahal', 'DH_11'),
(631, '02-09-2024', '12:53 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_10'),
(632, '02-09-2024', '12:53 PM', 'Examination', 'Selected Category Pediatric', 'Madan Mahal', 'DH_10'),
(633, '02-09-2024', '12:53 PM', 'Examination', 'Add Teeth Pediatric DentalX', 'Madan Mahal', 'DH_10'),
(634, '02-09-2024', '12:53 PM', 'Treatment Suggest', 'Select Treatment : Removable Partial Dentures @ per tooth for disease : Missing Tooth', 'Madan Mahal', 'DH_10'),
(635, '02-09-2024', '12:54 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_10'),
(636, '02-09-2024', '12:55:40', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_7'),
(637, '02-09-2024', '12:55:58', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_7'),
(638, '02-09-2024', '12:56 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_13'),
(639, '02-09-2024', '12:56 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_13'),
(640, '02-09-2024', '12:56 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_13'),
(641, '02-09-2024', '12:56 PM', 'Treatment Suggest', 'Select Treatment : Re-Root Canal Treatlment @ per tooth for disease : Caries', 'Madan Mahal', 'DH_13'),
(642, '02-09-2024', '12:57 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_13'),
(643, '02-09-2024', '12:58 PM', 'Book Sitting Appointment', 'Book Sitting Appointment', 'Madan Mahal', 'DH_13'),
(644, '02-09-2024', '12:58 PM', 'Treatment Procedure', 'Sitting Done, TPID : 36', 'Madan Mahal', 'DH_13'),
(645, '02-09-2024', '01:47 PM', 'Sitting Considered', '2 Sitting Started', 'Madan Mahal', 'DH_13'),
(646, '02-09-2024', '01:47 PM', 'Treatment Procedure', 'Re-Root Canal Treatlment @ per tooth Treatment Done, TPID : 36', 'Madan Mahal', 'DH_13'),
(647, '02-09-2024', '01:51 PM', 'Final Bill Generation', 'Final Bill Generated for TPID : 36', 'Madan Mahal', 'DH_13'),
(648, '02-09-2024', '02:00 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_10'),
(649, '02-09-2024', '02:00 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_10'),
(650, '02-09-2024', '02:02 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_10'),
(651, '02-09-2024', '14:03:19', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_13'),
(652, '02-09-2024', '02:03 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_13'),
(653, '02-09-2024', '14:04:02', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_3'),
(654, '02-09-2024', '14:04:05', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_3'),
(655, '02-09-2024', '02:04 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_3'),
(656, '02-09-2024', '02:04 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_3'),
(657, '02-09-2024', '14:04:45', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_2'),
(658, '02-09-2024', '14:06:14', 'Add Patient', 'Add Patient and Appointment scheduled', 'Madan Mahal', 'DH_14'),
(659, '02-09-2024', '14:06:19', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_2'),
(660, '02-09-2024', '14:06:21', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_14'),
(661, '02-09-2024', '02:06 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_14'),
(662, '02-09-2024', '02:06 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_14'),
(663, '02-09-2024', '02:07 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_14'),
(664, '02-09-2024', '02:07 PM', 'Treatment Suggest', 'Select Treatment : Laminates and Veneers@ per tooth for disease : Caries', 'Madan Mahal', 'DH_14'),
(665, '02-09-2024', '02:11 PM', 'Treatment Suggest', 'Select Treatment : Metal Free Crown Ziconia Crowns @ per Crown for disease : Caries', 'Madan Mahal', 'DH_14'),
(666, '02-09-2024', '02:12 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_14'),
(667, '02-09-2024', '02:13 PM', 'Book Sitting Appointment', 'Book Sitting Appointment', 'Madan Mahal', 'DH_14'),
(668, '02-09-2024', '02:13 PM', 'Treatment Procedure', 'Sitting Done, TPID : 38', 'Madan Mahal', 'DH_14'),
(669, '02-09-2024', '14:14:21', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_14'),
(670, '02-09-2024', '02:14 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_14'),
(671, '02-09-2024', '02:14 PM', 'Sitting Considered', '2 Sitting Started', 'Madan Mahal', 'DH_14'),
(672, '02-09-2024', '02:14 PM', 'Treatment Procedure', 'Metal Free Crown Ziconia Crowns @ per Crown Treatment Done, TPID : 38', 'Madan Mahal', 'DH_14'),
(673, '02-09-2024', '02:15 PM', 'Final Bill Generation', 'Final Bill Generated for TPID : 38', 'Madan Mahal', 'DH_14'),
(674, '02-09-2024', '14:15:43', 'Add Patient', 'Add Patient and Appointment scheduled', 'Madan Mahal', 'DH_15'),
(675, '02-09-2024', '14:24:12', 'Add Patient', 'Add Patient and Appointment scheduled', 'Madan Mahal', 'DH_16'),
(676, '02-09-2024', '14:24:45', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_15'),
(677, '02-09-2024', '02:25 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_15'),
(678, '02-09-2024', '02:25 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_15'),
(679, '02-09-2024', '02:26 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_15'),
(680, '02-09-2024', '02:26 PM', 'Treatment Suggest', 'Select Treatment : Re-Root Canal Treatlment @ per tooth for disease : Missing Tooth', 'Madan Mahal', 'DH_15'),
(681, '02-09-2024', '14:26:22', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_16'),
(682, '02-09-2024', '02:26 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_15'),
(683, '02-09-2024', '14:37:30', 'Add Patient', 'Add Patient and Appointment scheduled', 'Madan Mahal', 'DH_17'),
(684, '02-09-2024', '02:45 PM', 'Book Sitting Appointment', 'Book Sitting Appointment', 'Madan Mahal', 'DH_15'),
(685, '02-09-2024', '02:45 PM', 'Treatment Procedure', 'Sitting Done, TPID : 39', 'Madan Mahal', 'DH_15'),
(686, '02-09-2024', '14:49:25', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_16'),
(687, '02-09-2024', '14:49:30', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_16'),
(688, '02-09-2024', '02:49 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_16'),
(689, '02-09-2024', '02:49 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_16'),
(690, '02-09-2024', '02:49 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_16'),
(691, '02-09-2024', '02:50 PM', 'Treatment Suggest', 'Select Treatment : Composite Restoration @ per tooth for disease : Caries', 'Madan Mahal', 'DH_16'),
(692, '02-09-2024', '02:50 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_16'),
(693, '02-09-2024', '02:50 PM', 'Treatment Procedure', 'Composite Restoration @ per tooth Treatment Done, TPID : 40', 'Madan Mahal', 'DH_16'),
(694, '02-09-2024', '02:51 PM', 'Final Bill Generation', 'Final Bill Generated for TPID : 40', 'Madan Mahal', 'DH_16'),
(695, '02-09-2024', '14:55:07', 'Add Patient', 'Add Patient and Appointment scheduled', 'Madan Mahal', 'DH_18'),
(696, '02-09-2024', '14:55:22', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_18'),
(697, '02-09-2024', '02:56 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_18'),
(698, '02-09-2024', '02:56 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_18'),
(699, '02-09-2024', '02:56 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_18'),
(700, '02-09-2024', '02:56 PM', 'Treatment Suggest', 'Select Treatment : Laminates and Veneers@ per tooth for disease : Fracture', 'Madan Mahal', 'DH_18'),
(701, '02-09-2024', '02:57 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_18'),
(702, '02-09-2024', '02:57 PM', 'Book Sitting Appointment', 'Book Sitting Appointment', 'Madan Mahal', 'DH_18'),
(703, '02-09-2024', '02:57 PM', 'Treatment Procedure', 'Sitting Done, TPID : 41', 'Madan Mahal', 'DH_18'),
(704, '02-09-2024', '14:59:16', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_17'),
(705, '02-09-2024', '14:59:25', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_18'),
(706, '02-09-2024', '14:59:31', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_15'),
(707, '02-09-2024', '02:59 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_18'),
(708, '02-09-2024', '02:59 PM', 'Sitting Considered', '2 Sitting Started', 'Madan Mahal', 'DH_18'),
(709, '02-09-2024', '03:00 PM', 'Treatment Procedure', 'Laminates and Veneers@ per tooth Treatment Done, TPID : 41', 'Madan Mahal', 'DH_18'),
(710, '02-09-2024', '03:00 PM', 'Final Bill Generation', 'Final Bill Generated for TPID : 41', 'Madan Mahal', 'DH_18'),
(711, '02-09-2024', '15:51:47', 'Add Patient', 'Add Patient and Appointment scheduled', 'Madan Mahal', 'DH_19'),
(712, '02-09-2024', '15:52:18', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_19'),
(713, '02-09-2024', '04:40 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_10'),
(714, '02-09-2024', '04:40 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_10'),
(715, '02-09-2024', '04:44 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_10'),
(716, '02-09-2024', '04:45 PM', 'Treatment Suggest', 'Select Treatment : Laminates and Veneers@ per tooth for disease : Fracture', 'Madan Mahal', 'DH_10'),
(717, '02-09-2024', '04:52 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_10'),
(718, '02-09-2024', '04:53 PM', 'Book Sitting Appointment', 'Book Sitting Appointment', 'Madan Mahal', 'DH_10'),
(719, '02-09-2024', '04:53 PM', 'Treatment Procedure', 'Sitting Done, TPID : 42', 'Madan Mahal', 'DH_10'),
(720, '02-09-2024', '05:10 PM', 'Sitting Considered', '2 Sitting Started', 'Madan Mahal', 'DH_10'),
(721, '02-09-2024', '05:11 PM', 'Treatment Procedure', 'Sitting Done, TPID : 42', 'Madan Mahal', 'DH_10'),
(722, '02-09-2024', '05:13 PM', 'Sitting Considered', '3 Sitting Started', 'Madan Mahal', 'DH_10'),
(723, '02-09-2024', '05:14 PM', 'Treatment Procedure', 'Sitting Done, TPID : 42', 'Madan Mahal', 'DH_10'),
(724, '02-09-2024', '05:17 PM', 'Sitting Considered', '4 Sitting Started', 'Madan Mahal', 'DH_10'),
(725, '02-09-2024', '05:17 PM', 'Book Sitting Appointment', 'Book Sitting Appointment', 'Madan Mahal', 'DH_10'),
(726, '02-09-2024', '05:17 PM', 'Treatment Procedure', 'Sitting Done, TPID : 42', 'Madan Mahal', 'DH_10'),
(727, '02-09-2024', '05:18 PM', 'Sitting Considered', '5 Sitting Started', 'Madan Mahal', 'DH_10'),
(728, '02-09-2024', '05:18 PM', 'Treatment Procedure', 'Laminates and Veneers@ per tooth Treatment Done, TPID : 42', 'Madan Mahal', 'DH_10'),
(729, '02-09-2024', '05:18 PM', 'Final Bill Generation', 'Final Bill Generated for TPID : 42', 'Madan Mahal', 'DH_10'),
(730, '02-09-2024', '05:19 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_13'),
(731, '02-09-2024', '05:19 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_3'),
(732, '02-09-2024', '05:19 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_17'),
(733, '02-09-2024', '05:19 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_17'),
(734, '02-09-2024', '05:20 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_17'),
(735, '02-09-2024', '05:20 PM', 'Treatment Suggest', 'Select Treatment : Root Canal Treatment @ per tooth for disease : Caries', 'Madan Mahal', 'DH_17'),
(736, '02-09-2024', '05:21 PM', 'Treatment Suggest', 'Select Treatment : Re-Root Canal Treatlment @ per tooth for disease : Caries', 'Madan Mahal', 'DH_17'),
(737, '03-09-2024', '11:02:38', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_8'),
(738, '03-09-2024', '11:46:11', 'Add Patient', 'Add Patient and Appointment scheduled', 'Madan Mahal', 'DH_20'),
(739, '03-09-2024', '11:50:58', 'Patient Profile', 'Patient Profile Updated', 'Madan Mahal', 'DH_20'),
(740, '03-09-2024', '11:51:09', 'Patient Profile', 'Patient Profile Updated', 'Madan Mahal', 'DH_20'),
(741, '03-09-2024', '11:51:59', 'Patient Profile', 'Patient Profile Updated', 'Madan Mahal', 'DH_20'),
(742, '03-09-2024', '11:52:09', 'Patient Profile', 'Patient Profile Updated', 'Madan Mahal', 'DH_20'),
(743, '03-09-2024', '11:52:38', 'Patient Profile', 'Patient Profile Updated', 'Madan Mahal', 'DH_20'),
(744, '03-09-2024', '14:16:23', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_14'),
(745, '03-09-2024', '18:29:23', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_8'),
(746, '03-09-2024', '18:31:24', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_8'),
(747, '03-09-2024', '18:33:05', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_13'),
(748, '04-09-2024', '11:24:09', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_11'),
(749, '06-09-2024', '12:02:38', 'Add Patient', 'Add Patient and Appointment scheduled', 'Madan Mahal', 'DH_21'),
(750, '06-09-2024', '12:02:57', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_21'),
(751, '06-09-2024', '12:04 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_21'),
(752, '06-09-2024', '12:04 PM', 'Examination', 'Selected Category Pediatric', 'Madan Mahal', 'DH_21'),
(753, '06-09-2024', '12:05 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_21'),
(754, '06-09-2024', '12:05 PM', 'Examination', 'Selected Category Pediatric', 'Madan Mahal', 'DH_21'),
(755, '06-09-2024', '12:47:52', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_20'),
(756, '06-09-2024', '12:48:01', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_20'),
(757, '06-09-2024', '15:36:33', 'Add Patient', 'Add Patient and Appointment scheduled', 'Madan Mahal', 'DH_22'),
(758, '06-09-2024', '15:39:05', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_22'),
(759, '06-09-2024', '15:44:48', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_22'),
(760, '06-09-2024', '15:45:12', 'Edit Appointment', 'Edit Appointment', 'Madan Mahal', 'DH_22'),
(761, '06-09-2024', '15:45:27', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_22'),
(762, '06-09-2024', '03:48 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_22'),
(763, '06-09-2024', '03:48 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_22'),
(764, '06-09-2024', '03:49 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_22'),
(765, '06-09-2024', '03:50 PM', 'Treatment Suggest', 'Select Treatment : Laminates and Veneers@ per tooth for disease : Caries', 'Madan Mahal', 'DH_22'),
(766, '06-09-2024', '03:51 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_22'),
(767, '06-09-2024', '03:52 PM', 'Treatment Procedure', 'Laminates and Veneers@ per tooth Treatment Done, TPID : 46', 'Madan Mahal', 'DH_22'),
(768, '06-09-2024', '04:17 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_20'),
(769, '06-09-2024', '04:17 PM', 'Examination', 'Selected Category Pediatric', 'Madan Mahal', 'DH_20'),
(770, '06-09-2024', '04:18 PM', 'Examination', 'Add Teeth Pediatric DentalX', 'Madan Mahal', 'DH_20'),
(771, '06-09-2024', '05:45 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_20'),
(772, '06-09-2024', '05:45 PM', 'Examination', 'Selected Category Pediatric', 'Madan Mahal', 'DH_20'),
(773, '06-09-2024', '05:54 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_21'),
(774, '06-09-2024', '05:54 PM', 'Examination', 'Selected Category Pediatric', 'Madan Mahal', 'DH_21'),
(775, '06-09-2024', '05:54 PM', 'Examination', 'Add Teeth Pediatric DentalX', 'Madan Mahal', 'DH_21'),
(776, '06-09-2024', '05:55 PM', 'Treatment Suggest', 'Select Treatment : Oral Prophylaxis (Scaling) for disease : Caries', 'Madan Mahal', 'DH_21'),
(777, '06-09-2024', '05:56 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_21'),
(778, '06-09-2024', '05:58 PM', 'Treatment Procedure', 'Oral Prophylaxis (Scaling) Treatment Done, TPID : 49', 'Madan Mahal', 'DH_21'),
(779, '06-09-2024', '06:00 PM', 'Final Bill Generation', 'Final Bill Generated for TPID : 49', 'Madan Mahal', 'DH_21'),
(780, '12-09-2024', '12:56:39', 'Add Patient', 'Add Patient and Appointment scheduled', 'Madan Mahal', 'DH_23'),
(781, '12-09-2024', '12:58:07', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_23'),
(782, '12-09-2024', '13:16:24', 'Add Patient', 'Add Patient and Appointment scheduled', 'Madan Mahal', 'DH_24'),
(783, '12-09-2024', '13:16:33', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_24'),
(784, '12-09-2024', '01:19 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_24'),
(785, '12-09-2024', '01:19 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_24'),
(786, '12-09-2024', '01:20 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_24'),
(787, '12-09-2024', '01:27 PM', 'Treatment Suggest', 'Select Treatment : Digital Compuler zcd XRay (R.V.G.) for disease : 50% good', 'Madan Mahal', 'DH_24'),
(788, '12-09-2024', '01:27 PM', 'Secuirty Amount', '50 Secuirty Amount Added', 'Madan Mahal', 'DH_24'),
(789, '12-09-2024', '01:44 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_24'),
(790, '12-09-2024', '01:44 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_24'),
(791, '12-09-2024', '01:44 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_24'),
(792, '12-09-2024', '01:44 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_24'),
(793, '12-09-2024', '01:44 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_24'),
(794, '12-09-2024', '01:45 PM', 'Treatment Suggest', 'Select Treatment : Re-Root Canal Treatlment @ per tooth for disease : Caries', 'Madan Mahal', 'DH_24'),
(795, '12-09-2024', '01:45 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_24'),
(796, '12-09-2024', '01:46 PM', 'Book Sitting Appointment', 'Book Sitting Appointment', 'Madan Mahal', 'DH_24'),
(797, '12-09-2024', '01:46 PM', 'Treatment Procedure', 'Re-Root Canal Treatlment @ per tooth Treatment Done, TPID : 52', 'Madan Mahal', 'DH_24'),
(798, '23-09-2024', '17:17:11', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_11'),
(799, '23-09-2024', '17:23:01', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_11'),
(800, NULL, NULL, 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_11'),
(801, NULL, NULL, 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_11'),
(802, NULL, NULL, 'Treatment Suggest', 'Select Treatment : Re-Root Canal Treatlment @ per tooth for disease : dfdf', 'Madan Mahal', 'DH_11'),
(803, NULL, NULL, 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_11'),
(804, NULL, NULL, 'Treatment Procedure', 'Re-Root Canal Treatlment @ per tooth Treatment Done, TPID : 53', 'Madan Mahal', 'DH_11'),
(805, NULL, NULL, 'Final Bill Generation', 'Final Bill Generated for TPID : 53', 'Madan Mahal', 'DH_11'),
(806, '23-09-2024', '17:38:07', 'Add Patient', 'Add Patient and Appointment scheduled', 'Madan Mahal', 'DH_25'),
(807, '23-09-2024', '17:38:17', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_25'),
(808, NULL, NULL, 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_25'),
(809, NULL, NULL, 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_25'),
(810, NULL, NULL, 'Treatment Suggest', 'Select Treatment : Re-Root Canal Treatlment @ per tooth for disease : s', 'Madan Mahal', 'DH_25'),
(811, NULL, NULL, 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_25'),
(812, NULL, NULL, 'Book Sitting Appointment', 'Book Sitting Appointment', 'Madan Mahal', 'DH_25'),
(813, NULL, NULL, 'Treatment Procedure', 'Re-Root Canal Treatlment @ per tooth Treatment Done, TPID : 54', 'Madan Mahal', 'DH_25'),
(814, NULL, NULL, 'Book Sitting Appointment', 'Book Sitting Appointment', 'Madan Mahal', 'DH_25'),
(815, NULL, NULL, 'Treatment Procedure', 'Sitting Done, TPID : 54', 'Madan Mahal', 'DH_25'),
(816, '23-09-2024', '17:42:03', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_25'),
(817, '23-09-2024', '17:42:24', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_25'),
(818, NULL, NULL, 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_25'),
(819, '23-09-2024', '17:43:31', 'Add Patient', 'Add Patient and Appointment scheduled', 'Madan Mahal', 'DH_26'),
(820, '23-09-2024', '17:43:43', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_26'),
(821, NULL, NULL, 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_26'),
(822, NULL, NULL, 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_26'),
(823, NULL, NULL, 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_26'),
(824, NULL, NULL, 'Treatment Suggest', 'Select Treatment : Digital Compuler zcd XRay (R.V.G.) for disease : Caries', 'Madan Mahal', 'DH_26'),
(825, NULL, NULL, 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_26'),
(826, NULL, NULL, 'Book Sitting Appointment', 'Book Sitting Appointment', 'Madan Mahal', 'DH_26'),
(827, NULL, NULL, 'Treatment Procedure', 'Sitting Done, TPID : 56', 'Madan Mahal', 'DH_26'),
(828, '23-09-2024', '17:46:23', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_26'),
(829, '23-09-2024', '17:58:10', 'Add Patient', 'Add Patient and Appointment scheduled', 'Madan Mahal', 'DH_27'),
(830, '23-09-2024', '17:58:19', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_27'),
(831, NULL, NULL, 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_27'),
(832, NULL, NULL, 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_27'),
(833, NULL, NULL, 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_27'),
(834, '23-09-2024', '18:05:02', 'Add Patient', 'Add Patient and Appointment scheduled', 'Madan Mahal', 'DH_28'),
(835, '23-09-2024', '18:05:18', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_28'),
(836, NULL, NULL, 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_28'),
(837, NULL, NULL, 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_28'),
(838, NULL, NULL, 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_28'),
(839, '23-09-2024', '18:09:37', 'Add Patient', 'Add Patient and Appointment scheduled', 'Madan Mahal', 'DH_29'),
(840, '23-09-2024', '18:09:45', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_29'),
(841, NULL, NULL, 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_29'),
(842, NULL, NULL, 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_29'),
(843, NULL, NULL, 'Treatment Suggest', 'Select Treatment : Re-Root Canal Treatlment @ per tooth for disease : Caries', 'Madan Mahal', 'DH_29'),
(844, NULL, NULL, 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_29'),
(845, NULL, NULL, 'Book Sitting Appointment', 'Book Sitting Appointment', 'Madan Mahal', 'DH_29'),
(846, NULL, NULL, 'Treatment Procedure', 'Sitting Done, TPID : 60', 'Madan Mahal', 'DH_29'),
(847, '23-09-2024', '18:14:05', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_29'),
(848, NULL, NULL, 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_29'),
(849, NULL, NULL, 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_28'),
(850, NULL, NULL, 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_27'),
(851, NULL, NULL, 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_26'),
(852, NULL, NULL, 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_27'),
(853, NULL, NULL, 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_26'),
(854, NULL, NULL, 'Examination', 'Start Examintion', 'Madan Mahal', NULL),
(855, NULL, NULL, 'Examination', 'Start Examintion', 'Madan Mahal', NULL),
(856, NULL, NULL, 'Examination', 'Start Examintion', 'Madan Mahal', NULL),
(857, NULL, NULL, 'Examination', 'Start Examintion', 'Madan Mahal', NULL),
(858, NULL, NULL, 'Examination', 'Start Examintion', 'Madan Mahal', NULL),
(859, NULL, NULL, 'Examination', 'Start Examintion', 'Madan Mahal', NULL),
(860, NULL, NULL, 'Examination', 'Start Examintion', 'Madan Mahal', NULL),
(861, NULL, NULL, 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_28'),
(862, '24-09-2024', '14:10:07', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_28'),
(863, '24-09-2024', '14:10:10', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_28'),
(864, NULL, NULL, 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_28'),
(865, NULL, NULL, 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_28'),
(866, NULL, NULL, 'Treatment Suggest', 'Select Treatment : Digital Compuler zcd XRay (R.V.G.) for disease : Caries', 'Madan Mahal', 'DH_28'),
(867, NULL, NULL, 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_28'),
(868, NULL, NULL, 'Book Sitting Appointment', 'Book Sitting Appointment', 'Madan Mahal', 'DH_28'),
(869, NULL, NULL, 'Treatment Procedure', 'Sitting Done, TPID : 61', 'Madan Mahal', 'DH_28'),
(870, '24-09-2024', '14:12:38', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_28'),
(871, '24-09-2024', '14:12:51', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_28'),
(872, '24-09-2024', '14:12:55', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_28'),
(873, NULL, NULL, 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_28'),
(874, '24-09-2024', '14:46:41', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_28'),
(875, '24-09-2024', '14:47:21', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_28'),
(876, '24-09-2024', '14:47:30', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_28'),
(877, '24-09-2024', '14:49:27', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_25'),
(878, '24-09-2024', '14:49:45', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_25'),
(879, NULL, NULL, 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_28'),
(880, '24-09-2024', '14:56:05', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_28'),
(881, NULL, NULL, 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_28'),
(882, NULL, NULL, 'Sitting Considered', '2 Sitting Started', 'Madan Mahal', 'DH_28'),
(883, NULL, NULL, 'Book Sitting Appointment', 'Book Sitting Appointment', 'Madan Mahal', 'DH_28'),
(884, NULL, NULL, 'Treatment Procedure', 'Sitting Done, TPID : 61', 'Madan Mahal', 'DH_28'),
(885, '24-09-2024', '14:58:00', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_28'),
(886, NULL, NULL, 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_28'),
(887, NULL, NULL, 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_25'),
(888, NULL, NULL, 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_25'),
(889, NULL, NULL, 'Treatment Suggest', 'Select Treatment : Re-Root Canal Treatlment @ per tooth for disease : Caries', 'Madan Mahal', 'DH_25'),
(890, '24-09-2024', '20:16:37', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_28'),
(891, NULL, NULL, 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_25'),
(892, NULL, NULL, 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_28'),
(893, '04-10-2024', '13:19:47', 'Add Patient', 'Add Patient and Appointment scheduled', 'Madan Mahal', 'DH_30'),
(894, '04-10-2024', '13:20:28', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_30'),
(895, NULL, NULL, 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_30'),
(896, NULL, NULL, 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_30'),
(897, NULL, NULL, 'Treatment Suggest', 'Select Treatment : Root Canal Treatment @ per tooth for disease : Caries', 'Madan Mahal', 'DH_30'),
(898, NULL, NULL, 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_30'),
(899, NULL, NULL, 'Treatment Procedure', 'Root Canal Treatment @ per tooth Treatment Done, TPID : 63', 'Madan Mahal', 'DH_30'),
(900, NULL, NULL, 'Final Bill Generation', 'Final Bill Generated for TPID : 63', 'Madan Mahal', 'DH_30'),
(901, '04-10-2024', '15:53:23', 'Add Patient', 'Add Patient and Appointment scheduled', 'Madan Mahal', 'DH_31'),
(902, '04-10-2024', '15:53:59', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_31'),
(903, NULL, NULL, 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_31'),
(904, NULL, NULL, 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_31'),
(905, NULL, NULL, 'Treatment Suggest', 'Select Treatment : Root Canal Treatment @ per tooth for disease : Caries', 'Madan Mahal', 'DH_31'),
(906, NULL, NULL, 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_31'),
(907, NULL, NULL, 'Treatment Procedure', 'Root Canal Treatment @ per tooth Treatment Done, TPID : 64', 'Madan Mahal', 'DH_31'),
(908, NULL, NULL, 'Final Bill Generation', 'Final Bill Generated for TPID : 64', 'Madan Mahal', 'DH_31'),
(909, '04-10-2024', '17:06:41', 'Add Patient', 'Add Patient and Appointment scheduled', 'Madan Mahal', 'DH_32'),
(910, '04-10-2024', '17:11:43', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_32'),
(911, '04-10-2024', '17:14:48', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_32'),
(912, NULL, NULL, 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_32'),
(913, '05-10-2024', '17:23:52', 'Add Patient', 'Add Patient and Appointment scheduled', 'Madan Mahal', 'DH_33'),
(914, '05-10-2024', '17:24:01', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_33'),
(915, NULL, NULL, 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_33'),
(916, NULL, NULL, 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_33'),
(917, NULL, NULL, 'Treatment Suggest', 'Select Treatment : Digital Compuler zcd XRay (R.V.G.) for disease : Caries', 'Madan Mahal', 'DH_33'),
(918, NULL, NULL, 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_33'),
(919, NULL, NULL, 'Treatment Procedure', 'Digital Compuler zcd XRay (R.V.G.) Treatment Done, TPID : 66', 'Madan Mahal', 'DH_33'),
(920, NULL, NULL, 'Final Bill Generation', 'Final Bill Generated for TPID : 66', 'Madan Mahal', 'DH_33'),
(921, '05-10-2024', '17:27:21', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_33'),
(922, '05-10-2024', '17:27:30', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_33'),
(923, NULL, NULL, 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_33'),
(924, NULL, NULL, 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_33'),
(925, NULL, NULL, 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_33'),
(926, NULL, NULL, 'Treatment Suggest', 'Select Treatment : Re-Root Canal Treatlment @ per tooth for disease : Caries', 'Madan Mahal', 'DH_33'),
(927, NULL, NULL, 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_33'),
(928, NULL, NULL, 'Treatment Procedure', 'Re-Root Canal Treatlment @ per tooth Treatment Done, TPID : 67', 'Madan Mahal', 'DH_33'),
(929, NULL, NULL, 'Final Bill Generation', 'Final Bill Generated for TPID : 67', 'Madan Mahal', 'DH_33'),
(930, '05-10-2024', '17:47:41', 'Add Patient', 'Add Patient and Appointment scheduled', 'Madan Mahal', 'DH_34'),
(931, '05-10-2024', '17:49:02', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_34'),
(932, NULL, NULL, 'Examination', 'Selected Category Pediatric', 'Madan Mahal', 'DH_34'),
(933, NULL, NULL, 'Examination', 'Add Teeth Pediatric DentalX', 'Madan Mahal', 'DH_34'),
(934, NULL, NULL, 'Treatment Suggest', 'Select Treatment : Amalgam Restoration@ per tooth for disease : Caries', 'Madan Mahal', 'DH_34'),
(935, NULL, NULL, 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_34'),
(936, NULL, NULL, 'Treatment Procedure', 'Amalgam Restoration@ per tooth Treatment Done, TPID : 68', 'Madan Mahal', 'DH_34'),
(937, '05-10-2024', '19:05:58', 'Add Patient', 'Add Patient and Appointment scheduled', 'Madan Mahal', 'DH_35'),
(938, '07-10-2024', '11:36:22', 'Add Patient', 'Add Patient and Appointment scheduled', 'Madan Mahal', 'DH_36'),
(939, '07-10-2024', '11:36:42', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_36'),
(940, NULL, NULL, 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_36'),
(941, NULL, NULL, 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_36'),
(942, NULL, NULL, 'Treatment Suggest', 'Select Treatment : Laminates and Veneers@ per tooth for disease : Caries', 'Madan Mahal', 'DH_36'),
(943, NULL, NULL, 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_36'),
(944, NULL, NULL, 'Book Sitting Appointment', 'Book Sitting Appointment', 'Madan Mahal', 'DH_36'),
(945, NULL, NULL, 'Book Sitting Appointment', 'Book Sitting Appointment', 'Madan Mahal', 'DH_36'),
(946, NULL, NULL, 'Treatment Procedure', 'Laminates and Veneers@ per tooth Treatment Done, TPID : 69', 'Madan Mahal', 'DH_36'),
(947, NULL, NULL, 'Treatment Procedure', 'Laminates and Veneers@ per tooth Treatment Done, TPID : 69', 'Madan Mahal', 'DH_36'),
(948, NULL, NULL, 'Final Bill Generation', 'Final Bill Generated for TPID : 69', 'Madan Mahal', 'DH_36'),
(949, '07-10-2024', '11:46:18', 'Add Patient', 'Add Patient and Appointment scheduled', 'Madan Mahal', 'DH_37'),
(950, '07-10-2024', '11:46:27', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_37'),
(951, NULL, NULL, 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_37'),
(952, NULL, NULL, 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_37'),
(953, NULL, NULL, 'Treatment Suggest', 'Select Treatment : Third Molar Impacted Tooth Removal for disease : Missing Tooth', 'Madan Mahal', 'DH_37'),
(954, NULL, NULL, 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_37'),
(955, NULL, NULL, 'Book Sitting Appointment', 'Book Sitting Appointment', 'Madan Mahal', 'DH_37'),
(956, NULL, NULL, 'Treatment Procedure', 'Third Molar Impacted Tooth Removal Treatment Done, TPID : 70', 'Madan Mahal', 'DH_37'),
(957, NULL, NULL, 'Final Bill Generation', 'Final Bill Generated for TPID : 70', 'Madan Mahal', 'DH_37'),
(958, '07-10-2024', '17:20:05', 'Add Patient', 'Add Patient and Appointment scheduled', 'Madan Mahal', 'DH_38'),
(959, '07-10-2024', '17:20:28', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_38'),
(960, NULL, NULL, 'Examination', 'Selected Category Pediatric', 'Madan Mahal', 'DH_38'),
(961, NULL, NULL, 'Examination', 'Add Teeth Pediatric DentalX', 'Madan Mahal', 'DH_38'),
(962, '08-10-2024', '16:26:05', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_1'),
(963, '08-10-2024', '16:26:24', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_1'),
(964, NULL, NULL, 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_1'),
(965, NULL, NULL, 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_1'),
(966, NULL, NULL, 'Treatment Suggest', 'Select Treatment : Digital Compuler zcd XRay (R.V.G.) for disease : Caries', 'Madan Mahal', 'DH_1'),
(967, NULL, NULL, 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_1'),
(968, NULL, NULL, 'Treatment Procedure', 'Digital Compuler zcd XRay (R.V.G.) Treatment Done, TPID : 72', 'Madan Mahal', 'DH_1'),
(969, NULL, NULL, 'Treatment Procedure', 'Sitting Done, TPID : 72', 'Madan Mahal', 'DH_1'),
(970, NULL, NULL, 'Treatment Procedure', 'Digital Compuler zcd XRay (R.V.G.) Treatment Done, TPID : 72', 'Madan Mahal', 'DH_1'),
(971, '09-10-2024', '17:00:09', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_33'),
(972, '09-10-2024', '17:00:18', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_33'),
(973, '09-10-2024', '17:05:11', 'Add Patient', 'Add Patient and Appointment scheduled', 'Madan Mahal', 'DH_39'),
(974, '11-10-2024', '13:19:54', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_12'),
(975, '11-10-2024', '13:20:06', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_12'),
(976, '11-10-2024', '18:40:18', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_33'),
(977, '21-10-2024', '18:51:25', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_32'),
(978, '21-10-2024', '18:51:36', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_32'),
(979, NULL, NULL, 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_32'),
(980, NULL, NULL, 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_32'),
(981, NULL, NULL, 'Treatment Suggest', 'Select Treatment : Amalgam Restoration@ per tooth for disease : Fracture', 'Madan Mahal', 'DH_32'),
(982, NULL, NULL, 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_32'),
(983, NULL, NULL, 'Treatment Procedure', 'Amalgam Restoration@ per tooth Treatment Done, TPID : 73', 'Madan Mahal', 'DH_32'),
(984, NULL, NULL, 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_38'),
(985, '25-10-2024', '17:44:39', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_38'),
(986, '26-10-2024', '13:20:29', 'Add Patient', 'Add Patient and Appointment scheduled', 'Madan Mahal', 'DH_40'),
(987, '26-10-2024', '13:22:20', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_40'),
(988, NULL, NULL, 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_40'),
(989, NULL, NULL, 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_40'),
(990, NULL, NULL, 'Treatment Suggest', 'Select Treatment : GIC Restoration @ per tooth for disease : Caries', 'Madan Mahal', 'DH_40'),
(991, NULL, NULL, 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_40');
INSERT INTO `patient_timeline` (`event_id`, `event_date`, `event_time`, `event_type`, `event_description`, `branch_name`, `uhid`) VALUES
(992, NULL, NULL, 'Treatment Procedure', 'GIC Restoration @ per tooth Treatment Done, TPID : 74', 'Madan Mahal', 'DH_40'),
(993, NULL, NULL, 'Final Bill Generation', 'Final Bill Generated for TPID : 74', 'Madan Mahal', 'DH_40'),
(994, '26-10-2024', '14:00:47', 'Add Patient', 'Add Patient and Appointment scheduled', 'Madan Mahal', 'DH_41'),
(995, '26-10-2024', '14:02:00', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_41'),
(996, NULL, NULL, 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_41'),
(997, NULL, NULL, 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_41'),
(998, NULL, NULL, 'Treatment Suggest', 'Select Treatment : Re-Root Canal Treatlment @ per tooth for disease : Caries', 'Madan Mahal', 'DH_41'),
(999, NULL, NULL, 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_41'),
(1000, NULL, NULL, 'Treatment Procedure', 'Re-Root Canal Treatlment @ per tooth Treatment Done, TPID : 75', 'Madan Mahal', 'DH_41'),
(1001, NULL, NULL, 'Final Bill Generation', 'Final Bill Generated for TPID : 75', 'Madan Mahal', 'DH_41'),
(1002, '26-10-2024', '15:52:07', 'Add Patient', 'Add Patient and Appointment scheduled', 'Madan Mahal', 'DH_42'),
(1003, '26-10-2024', '15:52:57', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_42'),
(1004, NULL, NULL, 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_42'),
(1005, NULL, NULL, 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_42'),
(1006, NULL, NULL, 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_42'),
(1007, '26-10-2024', '16:43:41', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_42'),
(1008, NULL, NULL, 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_42'),
(1009, '26-10-2024', '16:45:39', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_42'),
(1010, NULL, NULL, 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_42'),
(1011, NULL, NULL, 'Treatment Suggest', 'Select Treatment : Retention plate@ per arch for disease : Impacted', 'Madan Mahal', 'DH_42'),
(1012, NULL, NULL, 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_42'),
(1013, NULL, NULL, 'Treatment Procedure', 'Retention plate@ per arch Treatment Done, TPID : 76', 'Madan Mahal', 'DH_42'),
(1014, NULL, NULL, 'Final Bill Generation', 'Final Bill Generated for TPID : 76', 'Madan Mahal', 'DH_42'),
(1015, '26-10-2024', '18:11:55', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_29'),
(1016, '26-10-2024', '18:12:00', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_29');

-- --------------------------------------------------------

--
-- Table structure for table `payment_details`
--

CREATE TABLE `payment_details` (
  `pay_id` int(100) NOT NULL,
  `bill_id` int(100) DEFAULT NULL,
  `uhid` varchar(100) DEFAULT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `bill_amount` int(100) DEFAULT NULL,
  `paid_amount` int(100) DEFAULT NULL,
  `pending_amount` int(100) DEFAULT NULL,
  `billed_service` varchar(255) DEFAULT NULL,
  `payment_mode` varchar(100) DEFAULT NULL,
  `payment_status` varchar(100) DEFAULT NULL,
  `payment_date` varchar(100) DEFAULT NULL,
  `payment_time` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prescription_details`
--

CREATE TABLE `prescription_details` (
  `prescription_id` int(100) NOT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `uhid` varchar(100) DEFAULT NULL,
  `doctor_id` varchar(100) DEFAULT NULL,
  `doctor_name` varchar(100) DEFAULT NULL,
  `medicine_name` varchar(100) DEFAULT NULL,
  `dosage` varchar(100) DEFAULT NULL,
  `frequency` varchar(100) DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL,
  `note` varchar(100) DEFAULT NULL,
  `prescription_date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_inventory`
--

CREATE TABLE `purchase_inventory` (
  `pur_id` int(255) NOT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_category` varchar(255) DEFAULT NULL,
  `item_mrp` varchar(255) DEFAULT NULL,
  `item_code` varchar(255) DEFAULT NULL,
  `HSN_code` varchar(255) DEFAULT NULL,
  `pur_quantity` int(255) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `total_amount` varchar(255) DEFAULT NULL,
  `branch_name` varchar(255) DEFAULT NULL,
  `available_stock` int(255) DEFAULT NULL,
  `low_stock_threshhold` int(255) DEFAULT NULL,
  `distributor_name` varchar(255) DEFAULT NULL,
  `distributor_number` varchar(255) DEFAULT NULL,
  `bill_receipt_doc` varchar(255) DEFAULT NULL,
  `purchase_date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase_inventory`
--

INSERT INTO `purchase_inventory` (`pur_id`, `item_name`, `item_category`, `item_mrp`, `item_code`, `HSN_code`, `pur_quantity`, `discount`, `total_amount`, `branch_name`, `available_stock`, `low_stock_threshhold`, `distributor_name`, `distributor_number`, `bill_receipt_doc`, `purchase_date`) VALUES
(1, 'Disprin 325 tablet', 'drugs', '200', '3004', '3004', 10, '', '2000', 'Madan Mahal', 50, 20, 'Virumal', '8602161019', 'http://localhost:7777/reciept_doc/1709191637374kd.jpg', '2024-05-02'),
(2, 'Disprin 325 tablet', 'drugs', '200', '3004', '3004', 10, '', '2000', 'Madan Mahal', 50, 10, 'Virumal', '8602161019', NULL, '2024-02-26'),
(3, 'Disprin 325 tablet', 'true', '300', '3005', '3005', 20, '500', '5500', 'Madan Mahal', 20, 10, 'Virumal', '8602161019', 'http://localhost:7777/reciept_doc/1709210553720Bigbulls Course.png', '2024-03-05'),
(4, 'Disprin 350 tablet', 'drugs', '200', '3006', '3006', 20, '200', '3800', 'Madan Mahal', 20, 10, 'virumal', '8602161019', 'http://localhost:7777/reciept_doc/1709191637374kd.jpg', '2024-02-29'),
(8, 'Disprin 500 tablet', 'Drug', '500', '3008', '3008', 28, '500', '14000', 'Madan Mahal', 28, 5, 'virumal', '8602161019', 'http://localhost:7777/reciept_doc/1709355700796kd.jpg', '2024-03-02'),
(10, 'Disprin 400 tablet', 'drug', '200', '3007', '3007', 10, '', '2000', 'Madan Mahal', 50, 10, 'Virumal', '8602161019', 'http://localhost:https://dentalgurusuperadmin.doaguru.com/reciept_doc/1710060533673Bigbulls Course.png', '0000-00-00'),
(11, 'Disprin 400 tablet', 'drug', '200', '3009', '3009', 10, '', '2000', 'Madan Mahal', 50, 10, 'Virumal', '8602161019', 'http://localhost:https://dentalgurusuperadmin.doaguru.com/reciept_doc/1710060654402Bigbulls Course.png', '0000-00-00'),
(12, 'Disprin 400 tablet', 'drug', '200', '3010', '3010', 10, '', '2000', 'Madan Mahal', 50, 10, 'Virumal', '8602161019', 'http://localhost:https://dentalgurusuperadmin.doaguru.com/reciept_doc/1710060711681Bigbulls Course.png', '0000-00-00'),
(13, 'Disprin 400 tablet', 'drug', '200', '3011', '3011', 10, '', '2000', 'Madan Mahal', 50, 10, 'Virumal', '8602161019', 'https://dentalgurusuperadmin.doaguru.com/reciept_doc/1710060776147Bigbulls Course.png', '0000-00-00'),
(14, 'Disprin 400 tablet', 'drug', '200', '3012', '3012', 10, '', '2000', 'Madan Mahal', 50, 10, 'Virumal', '8602161019', 'https://dentalgurusuperadmin.doaguru.com/reciept_doc/1710060815049Bigbulls Course.png', '0000-00-00'),
(21, 'test', 'drug', '200', '3017', '3017', 10, '', '2000', 'Madan Mahal', 50, 10, 'Virumal', '8602161019', 'https://dentalgurusuperadmin.doaguru.com/reciept_doc/17149865245531709210206279kd.jpg', '0000-00-00'),
(22, 'testone', 'drug', '100', '3019', '3019', 10, '0', '1000', 'Madan Mahal', 10, 10, 'testone', '9999999999', 'https://dentalgurusuperadmin.doaguru.com/reciept_doc/17149866959631709210206279kd.jpg', '2024-05-09');

-- --------------------------------------------------------

--
-- Table structure for table `quick_prescription`
--

CREATE TABLE `quick_prescription` (
  `qp_id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `uhid` varchar(250) DEFAULT NULL,
  `appoint_id` varchar(250) DEFAULT NULL,
  `age` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `chief_complain` varchar(250) DEFAULT NULL,
  `medical_histry` varchar(250) DEFAULT NULL,
  `dental_histry` varchar(250) DEFAULT NULL,
  `onexam` varchar(250) DEFAULT NULL,
  `advice` varchar(250) DEFAULT NULL,
  `medicines` varchar(1000) DEFAULT NULL,
  `dosage` varchar(100) DEFAULT NULL,
  `frequency` varchar(100) DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quick_prescription`
--

INSERT INTO `quick_prescription` (`qp_id`, `name`, `branch_name`, `uhid`, `appoint_id`, `age`, `gender`, `date`, `chief_complain`, `medical_histry`, `dental_histry`, `onexam`, `advice`, `medicines`, `dosage`, `frequency`, `duration`, `note`) VALUES
(1, NULL, 'Madan Mahal', 'DH_7', NULL, NULL, NULL, NULL, 'Swollen gums', 'dededf', 'test', 'dede', 'terst', 'deded', NULL, NULL, NULL, ''),
(2, NULL, 'Madan Mahal', 'DH_7', NULL, NULL, NULL, NULL, 'Swollen gums', 'dededf', 'test', 'dede', 'terst', 'deded', NULL, NULL, NULL, ''),
(3, NULL, 'Madan Mahal', 'DH_7', NULL, '89', 'Male', NULL, 'Bleeding gums', NULL, NULL, 'test', 'test', 'test', NULL, NULL, NULL, ''),
(4, NULL, 'Madan Mahal', 'DH_7', NULL, '89', 'Male', NULL, 'Swollen gums', NULL, NULL, 'tets', 'ts', 'vbnvbn', NULL, NULL, NULL, ''),
(5, NULL, 'Madan Mahal', 'DH_7', NULL, '89', 'Male', NULL, 'Swollen gums', NULL, NULL, 'test', 'test', 'vbnvbn', 'test', '34', '3333', ''),
(6, NULL, NULL, NULL, NULL, '89', 'Male', '22-08-2024 17:50:07', 'Swollen gums', NULL, NULL, 'test', 'tetst', 'deded', '223', '1-1-1', '2 minsdsds', 'tesrrssddsdsd'),
(7, NULL, 'Madan Mahal', NULL, '38', '89', 'Male', '22-08-2024 17:57:12', 'Swollen gums', 'test', 'test', 'tets', 'tetst', 'deded', 'test', '34', '3333', 'sddsddsdsds'),
(8, 'rahul', 'Madan Mahal', 'DH_7', '38', '89', 'Male', '22-08-2024 18:14:59', 'Bleeding gums', 'test', 'test', 'tets', 'tetst', 'deded', 'test', '34', '3333', 'hshshhshssssss'),
(9, 'rahul', 'Madan Mahal', 'DH_7', '82', '89', 'Male', '02-09-2024 13:55:26', 'Toothache', 'none', 'none', 'caries', 'dont eat sweets', 'dolo ', '500 mg', '1-1-1', '2 days', ''),
(10, 'complwete', NULL, 'DH_25', '121', '3', 'Male', NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL),
(11, 'Siddharth', NULL, 'DH_33', '138', '56', 'Male', NULL, 'Toothache', 'None', 'your', 'Yes', 'Good', 'goods', NULL, NULL, NULL, NULL),
(12, 'Siddharth', NULL, 'DH_33', '138', '56', 'Male', NULL, 'Toothache', '4135', '43524', '544', '34', '34', NULL, NULL, NULL, NULL),
(13, 'hariom shivhare', NULL, 'DH_38', '136', '19', 'Male', NULL, 'Toothache', 'gsfdg', 'dsfgdg', 'dgd', 'dfgfdg', 'fdgfdg', NULL, NULL, NULL, NULL),
(14, 'twomore', NULL, 'DH_29', '146', '10', 'Male', NULL, 'Bleeding gums', 'None', 'your', 'Yes', 'd', 'goods', NULL, NULL, NULL, NULL),
(15, 'twomore', NULL, 'DH_29', '146', '10', 'Male', NULL, 'Toothache', 'None', 'nbkjhkj', 'hkj', 'hkjh', 'kjh', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `security_amount`
--

CREATE TABLE `security_amount` (
  `sa_id` int(100) NOT NULL,
  `tp_id` varchar(100) DEFAULT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `appointment_id` int(100) DEFAULT NULL,
  `uhid` varchar(100) DEFAULT NULL,
  `patient_name` varchar(100) DEFAULT NULL,
  `patient_number` varchar(100) DEFAULT NULL,
  `treatment` varchar(255) DEFAULT NULL,
  `assigned_doctor` varchar(100) DEFAULT NULL,
  `amount` int(100) DEFAULT NULL,
  `remaining_amount` int(100) DEFAULT NULL,
  `payment_status` varchar(100) DEFAULT NULL,
  `payment_Mode` varchar(50) DEFAULT NULL,
  `transaction_Id` varchar(50) DEFAULT NULL,
  `payment_date` varchar(50) DEFAULT NULL,
  `notes` varchar(1000) DEFAULT NULL,
  `refund_amount` int(100) DEFAULT NULL,
  `refund_date` varchar(50) DEFAULT NULL,
  `received_by` varchar(100) DEFAULT NULL,
  `refund_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `security_amount`
--

INSERT INTO `security_amount` (`sa_id`, `tp_id`, `branch_name`, `date`, `appointment_id`, `uhid`, `patient_name`, `patient_number`, `treatment`, `assigned_doctor`, `amount`, `remaining_amount`, `payment_status`, `payment_Mode`, `transaction_Id`, `payment_date`, `notes`, `refund_amount`, `refund_date`, `received_by`, `refund_by`) VALUES
(1, '4', 'Madan Mahal', '13-08-2024 13:42:46', 5, 'DH_5', 'Aman', '9806324244', '', 'shadab', 25000, 0, 'success', 'Cash', '', '13-08-2024 13:44:22', '', NULL, NULL, 'shadab', NULL),
(2, '5', 'Madan Mahal', '13-08-2024 17:44:29', 8, 'DH_2', 'Ayushi Singh', '7974507514', '', 'shadab', 600, 600, 'success', 'cash', '', '13-08-2024 17:44:29', NULL, NULL, NULL, 'shadab', NULL),
(3, '6', 'Madan Mahal', '15-08-2024 14:30:07', 10, 'DH_2', 'Ayushi Singh', '7974507514', '', 'shadab', 8000, 0, 'success', 'cash', '', '15-08-2024 14:30:07', NULL, NULL, NULL, 'shadab', NULL),
(4, '8', 'Madan Mahal', '16-08-2024 18:22:51', 13, 'DH_1', 'Raju Pandey', '9399044850', '', 'shadab', 30000, 0, 'success', 'cash', '', '16-08-2024 18:22:51', NULL, NULL, NULL, 'shadab', NULL),
(5, '10', 'Madan Mahal', '17-08-2024 16:42:31', 15, 'DH_5', 'Aman', '8602161019', '', 'shadab', 11000, 0, 'success', 'cash', '', '17-08-2024 16:42:31', NULL, NULL, NULL, 'shadab', NULL),
(6, '11', 'Madan Mahal', '17-08-2024 17:01:27', 17, 'DH_6', 'mohit', '8989898989', '', 'shadab', 1000, 0, 'success', 'cash', '', '17-08-2024 17:01:27', NULL, NULL, NULL, 'shadab', NULL),
(7, '12', 'Madan Mahal', '17-08-2024 17:38:48', 25, 'DH_6', 'mohit', '8989898989', '', 'shadab', 40000, 0, 'success', 'cash', '', '17-08-2024 17:38:48', NULL, NULL, NULL, 'shadab', NULL),
(8, '13', 'Madan Mahal', '21-08-2024 12:24:06', 31, 'DH_7', 'rahul', '7877878787', '', 'shadab', 2000, 0, 'Refunded', 'cash', '', '21-08-2024 12:24:06', NULL, 500, '22-08-2024 12:26:49', 'shadab', 'shadab'),
(9, '15', 'Madan Mahal', '22-08-2024 11:52:48', 34, 'DH_7', 'rahul', '7877878787', '', 'shadab', 10000, 0, 'Refunded', 'Card', '788454564564', '02-09-2024 13:06:32', 'done', 10000, '04-09-2024 12:43:04', 'shadab', 'kuldeepdoauruinfosystems@gmail.com'),
(10, '16', 'Madan Mahal', '22-08-2024 12:02:54', 36, 'DH_2', 'Ayushi Singh', '7974507514', '', 'shadab', 6000, 0, 'Refunded', 'cash', '', '22-08-2024 12:02:54', NULL, 600, '04-09-2024 12:42:07', 'shadab', 'kuldeepdoauruinfosystems@gmail.com'),
(11, '33', 'Madan Mahal', '02-09-2024 12:49:43', 79, 'DH_11', 'soumya tiwari', '8319955741', '', 'shadab', 15000, 0, 'Refunded', 'cash', '', '02-09-2024 12:49:43', NULL, 15000, '04-09-2024 12:37:00', 'shadab', 'kuldeepdoauruinfosystems@gmail.com'),
(12, '50', 'Madan Mahal', '12-09-2024 13:27:47', 106, 'DH_24', 'DEMO', '6545646546', '', 'DEMO', 50, 50, 'success', 'cash', '', '12-09-2024 13:27:47', NULL, NULL, NULL, 'DEMO', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sitting_bill`
--

CREATE TABLE `sitting_bill` (
  `sb_id` int(100) NOT NULL,
  `tp_id` int(100) DEFAULT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `sitting_number` int(100) DEFAULT NULL,
  `treatment` varchar(100) DEFAULT NULL,
  `teeth_number` varchar(100) DEFAULT NULL,
  `teeth_qty` int(100) DEFAULT NULL,
  `treatment_cost` int(100) DEFAULT NULL,
  `cost_per_qty` int(100) DEFAULT NULL,
  `discount` int(100) DEFAULT NULL,
  `final_cost` int(100) DEFAULT NULL,
  `sitting_amount` int(100) DEFAULT NULL,
  `paid_amount` int(100) DEFAULT NULL,
  `pending_amount` int(100) DEFAULT NULL,
  `pay_direct` int(100) DEFAULT NULL,
  `pay_security_amount` int(100) DEFAULT NULL,
  `pending_sitting_amount` int(100) DEFAULT NULL,
  `payment_mode` varchar(100) DEFAULT NULL,
  `reference_number` varchar(100) DEFAULT NULL,
  `payment_status` varchar(100) DEFAULT NULL,
  `note` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sitting_bill`
--

INSERT INTO `sitting_bill` (`sb_id`, `tp_id`, `branch_name`, `sitting_number`, `treatment`, `teeth_number`, `teeth_qty`, `treatment_cost`, `cost_per_qty`, `discount`, `final_cost`, `sitting_amount`, `paid_amount`, `pending_amount`, `pay_direct`, `pay_security_amount`, `pending_sitting_amount`, `payment_mode`, `reference_number`, `payment_status`, `note`, `date`) VALUES
(2, 1, 'Madan Mahal', 1, 'Laminates and Veneers@ per tooth', '18, 17', 2, 10000, 20000, 1, 8000, 8000, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'Credit', '', '12-08-2024 19:10:49'),
(3, 3, 'Madan Mahal', 1, 'Pulpectomy (Child) @ per tooth', '18, 17', 2, 2800, 5600, 10, 5040, 1000, NULL, 4040, NULL, NULL, NULL, NULL, NULL, 'Credit', 'test', '12-08-2024 19:25:11'),
(4, 3, 'Madan Mahal', 1, 'Pulpectomy (Child) @ per tooth', '18, 17', 2, 2800, 5600, 10, 5040, 2000, NULL, 3040, NULL, NULL, NULL, NULL, NULL, 'Credit', '', '12-08-2024 19:26:47'),
(5, 3, 'Madan Mahal', 2, 'Pulpectomy (Child) @ per tooth', '18, 17', 2, 2800, 5600, 10, 3040, 1000, NULL, 2040, NULL, NULL, NULL, NULL, NULL, 'Credit', 'tewsat to', '12-08-2024 19:29:05'),
(6, 3, 'Madan Mahal', 3, 'Pulpectomy (Child) @ per tooth', '18, 17', 2, 2800, 5600, 10, 2040, 1000, NULL, 1040, NULL, NULL, NULL, 'Credit', NULL, 'Credit', 'test four', '12-08-2024 19:46:10'),
(7, 4, 'Madan Mahal', 1, 'Single Implant', '18, 17', 2, 25000, 50000, 0, 50000, 20000, 20000, 30000, 20000, NULL, NULL, 'Cash', NULL, 'paid', '', '13-08-2024 13:45:30'),
(8, 4, 'Madan Mahal', 1, 'Single Implant', '18, 17', 2, 25000, 50000, 0, 30000, 5000, NULL, 25000, NULL, NULL, NULL, '', NULL, 'paid', '', '13-08-2024 13:51:14'),
(9, 6, 'Madan Mahal', 1, 'Root Canal Treatment @ per tooth', '18, 17', 2, 3000, 6000, 10, 5400, 5400, 5400, 0, NULL, NULL, NULL, '', NULL, 'paid', 'test', '15-08-2024 15:13:17'),
(10, 6, 'Madan Mahal', 2, 'Root Canal Treatment @ per tooth', '18, 17', 2, 3000, 6000, 10, 0, 0, NULL, 0, NULL, NULL, NULL, '', NULL, 'Pending', '', '15-08-2024 16:31:01'),
(11, 6, 'Madan Mahal', 1, 'Teeth Bleaching at Home Whitening', '16, 15', 2, 5000, 10000, 10, 9000, 2600, NULL, 6400, 0, 2600, NULL, '', NULL, 'paid', 'tedst', '15-08-2024 16:47:24'),
(12, 6, 'Madan Mahal', 2, 'Teeth Bleaching at Home Whitening', '16, 15', 2, 5000, 10000, 10, 6400, 1000, 1000, 5400, 1000, 0, NULL, '', NULL, 'paid', 'test', '15-08-2024 16:51:47'),
(13, 6, 'Madan Mahal', 3, 'Teeth Bleaching at Home Whitening', '16, 15', 2, 5000, 10000, 10, 5400, 5400, 5400, 0, 5400, 0, NULL, '', NULL, 'paid', 'test', '15-08-2024 16:53:21'),
(14, 3, 'Madan Mahal', 4, 'Pulpectomy (Child) @ per tooth', '18, 17', 2, 2800, 5600, 10, 1040, 1040, 1040, 0, 1040, 0, NULL, 'Credit', NULL, 'Credit', '', '15-08-2024 17:02:00'),
(15, 8, 'Madan Mahal', 1, 'Re-Root Canal Treatlment @ per tooth', '18, 17', 2, 4000, 8000, 10, 7200, 7200, 7200, 0, 0, 7200, NULL, 'Credit', NULL, 'paid', 'test', '16-08-2024 18:44:05'),
(16, 8, 'Madan Mahal', 2, 'Re-Root Canal Treatlment @ per tooth', '18, 17', 2, 4000, 8000, 10, 0, 0, 0, 0, 0, 0, NULL, 'Credit', NULL, 'paid', 'test', '16-08-2024 18:45:30'),
(17, 8, 'Madan Mahal', 1, 'Metal Braces', '16, 15', 2, 30000, 60000, 10, 54000, 22800, 22800, 31200, 0, 22800, NULL, '', NULL, 'paid', 'test', '16-08-2024 19:01:59'),
(18, 8, 'Madan Mahal', 2, 'Metal Braces', '16, 15', 2, 30000, 60000, 10, 31200, 31200, 31200, 0, 31200, 0, NULL, '', NULL, 'paid', 'test', '16-08-2024 19:09:18'),
(19, 8, 'Madan Mahal', 1, 'Porcelain Fused to Metal @ per Crown', '14, 13', 2, 3000, 6000, 10, 5400, 5400, 5400, 0, 5400, 0, NULL, '', NULL, 'paid', 'test', '16-08-2024 19:09:52'),
(20, 9, 'Madan Mahal', 1, 'Amalgam Restoration@ per tooth', '55, 54', 2, 800, 1600, 10, 1440, 1440, 1440, 0, 1440, 0, NULL, 'Credit', NULL, 'Credit', 'test', '16-08-2024 19:21:10'),
(21, 9, 'Madan Mahal', 1, 'Ceramic Braces', '53, 52', 2, 45000, 90000, 10, 81000, 81000, 81000, 0, 81000, 0, NULL, 'Credit', NULL, 'Credit', 'test', '16-08-2024 19:21:43'),
(22, 10, 'Madan Mahal', 1, 'Teeth Bleaching In Office Whitening', '18, 17', 2, 8000, 16000, 10, 14400, 8000, 8000, 6400, 0, 8000, NULL, '', NULL, 'paid', 'test', '17-08-2024 16:45:01'),
(23, 10, 'Madan Mahal', 2, 'Teeth Bleaching In Office Whitening', '18, 17', 2, 8000, 16000, 10, 6400, 3000, 3000, 3400, 0, 3000, NULL, '', NULL, 'paid', 'test', '17-08-2024 16:46:35'),
(24, 10, 'Madan Mahal', 3, 'Teeth Bleaching In Office Whitening', '18, 17', 2, 8000, 16000, 10, 3400, 3400, 3400, 0, 3400, 0, NULL, '', NULL, 'paid', 'test', '17-08-2024 16:47:31'),
(25, 11, 'Madan Mahal', 1, 'Metal Crowns @ Per Crown', '18, 17', 2, 1500, 3000, 10, 2700, 1000, 1000, 1700, 0, 1000, NULL, '', NULL, 'paid', 'test', '17-08-2024 17:10:59'),
(26, 11, 'Madan Mahal', 2, 'Metal Crowns @ Per Crown', '18, 17', 2, 1500, 3000, 10, 1700, 1700, 1700, 0, 1700, 0, NULL, '', NULL, 'paid', 'test', '17-08-2024 17:12:07'),
(27, 12, 'Madan Mahal', 1, 'Direct Composite Veneer @ per tooth', '18, 17', 2, 2500, 5000, 10, 4500, 4500, 4500, 0, 0, 4500, NULL, '', NULL, 'paid', 'tesdt', '17-08-2024 17:50:02'),
(28, 12, 'Madan Mahal', 1, 'Ceramic Braces', '18, 17', 2, 45000, 90000, 10, 81000, 35500, 35500, 45500, 0, 35500, NULL, '', NULL, 'paid', 'tsest', '17-08-2024 17:53:38'),
(29, 12, 'Madan Mahal', 2, 'Ceramic Braces', '18, 17', 2, 45000, 90000, 10, 45500, 45500, 45500, 0, 45500, 0, NULL, '', NULL, 'paid', 'test', '17-08-2024 17:54:00'),
(30, 13, 'Madan Mahal', 1, 'Indirect Pulp Capping with MTA @ per tooth', '18, 17', 2, 2000, 4000, 0, 4000, 1500, 1500, 2500, 0, 1500, NULL, '', NULL, 'paid', '', '21-08-2024 12:25:48'),
(31, 14, 'Madan Mahal', 1, 'Full mouth Implant', '18, 17', 2, 250000, 500000, 0, 500000, 100000, 100000, 400000, 100000, 0, NULL, '', NULL, 'paid', '', '21-08-2024 13:18:51'),
(32, 14, 'Madan Mahal', 2, 'Full mouth Implant', '18, 17', 2, 250000, 500000, 0, 400000, 400000, 400000, 0, 400000, 0, NULL, '', NULL, 'paid', '', '21-08-2024 13:22:27'),
(33, 15, 'Madan Mahal', 1, 'Retention plate@ per arch', '18, 17', 2, 2000, 4000, 0, 4000, 4000, 4000, 0, 0, 4000, NULL, '', NULL, 'paid', '', '22-08-2024 11:57:14'),
(34, 16, 'Madan Mahal', 1, 'Root Canal Treatment @ per tooth', '18, 17', 2, 3000, 6000, 10, 5400, 5400, 5400, 0, 0, 5400, NULL, '', NULL, 'paid', 'test', '22-08-2024 12:03:35'),
(35, 16, 'Madan Mahal', 1, 'Third Molar Impacted Tooth Removal', '16, 15', 2, 3000, 6000, 10, 5400, 5400, 5400, 0, 5400, 0, NULL, '', NULL, 'paid', 'test', '22-08-2024 12:08:23'),
(36, 17, 'Madan Mahal', 1, 'Root Canal Treatment @ per tooth', '18, 17', 2, 575, 1150, 0, 1150, 1150, 1150, 0, 1150, 0, NULL, 'Credit', NULL, 'Credit', '', '26-08-2024 12:35:29'),
(37, 17, 'Madan Mahal', 1, 'Teeth Bleaching at Home Whitening', '16, 15', 2, 5000, 10000, 0, 10000, 10000, 10000, 0, 10000, 0, NULL, 'Credit', NULL, 'Credit', 'done', '26-08-2024 12:35:59'),
(38, 18, 'Madan Mahal', 1, 'Single Implant', '18, 17', 2, 25000, 50000, 0, 50000, 25000, 25000, 25000, 25000, 0, NULL, 'Credit', NULL, 'Credit', '', '27-08-2024 15:20:52'),
(39, 18, 'Madan Mahal', 2, 'Single Implant', '18, 17', 2, 25000, 50000, 0, 25000, 10000, 10000, 15000, 10000, 0, NULL, 'Credit', NULL, 'Credit', '', '27-08-2024 15:27:15'),
(40, 19, 'Madan Mahal', 1, 'Pulpectomy (Child) @ per tooth', '18, 17', 2, 2800, 5600, 10, 5040, 2000, 2000, 3040, 2000, 0, NULL, '', NULL, 'paid', 'test', '27-08-2024 15:46:08'),
(41, 19, 'Madan Mahal', 2, 'Pulpectomy (Child) @ per tooth', '18, 17', 2, 2800, 5600, 10, 3040, 3040, 3040, 0, 3040, 0, NULL, '', NULL, 'paid', 'test', '27-08-2024 15:46:47'),
(42, 19, 'Madan Mahal', 1, 'Re-Root Canal Treatlment @ per tooth', '16, 15', 2, 4000, 8000, 10, 7200, 2000, 2000, 5200, 2000, 0, NULL, '', NULL, 'paid', 'test', '27-08-2024 15:49:09'),
(43, 19, 'Madan Mahal', 2, 'Re-Root Canal Treatlment @ per tooth', '16, 15', 2, 4000, 8000, 10, 5200, 3000, 3000, 2200, 3000, 0, NULL, '', NULL, 'paid', 'test', '27-08-2024 15:49:41'),
(44, 19, 'Madan Mahal', 3, 'Re-Root Canal Treatlment @ per tooth', '16, 15', 2, 4000, 8000, 10, 2200, 1000, 1000, 1200, 1000, 0, NULL, '', NULL, 'paid', 'test', '27-08-2024 15:50:51'),
(45, 19, 'Madan Mahal', 4, 'Re-Root Canal Treatlment @ per tooth', '16, 15', 2, 4000, 8000, 10, 1200, 1200, 1200, 0, 1200, 0, NULL, '', NULL, 'paid', 'test', '27-08-2024 15:51:34'),
(46, 21, 'Madan Mahal', 1, 'Teeth Bleaching at Home Whitening', '18, 17', 2, 5000, 10000, 0, 10000, 5000, 5000, 5000, 5000, 0, NULL, 'Credit', NULL, 'Credit', 'test', '27-08-2024 15:57:18'),
(47, 21, 'Madan Mahal', 2, 'Teeth Bleaching at Home Whitening', '18, 17', 2, 5000, 10000, 0, 5000, 5000, 5000, 0, 5000, 0, NULL, 'Credit', NULL, 'Credit', 'test', '27-08-2024 15:58:08'),
(48, 22, 'Madan Mahal', 1, 'Teeth Bleaching In Office Whitening', '18, 17, 16, 15, 14', 5, 8000, 40000, 0, 40000, 10000, 10000, 30000, 10000, 0, NULL, 'Credit', NULL, 'Credit', 'test', '27-08-2024 16:01:51'),
(49, 22, 'Madan Mahal', 2, 'Teeth Bleaching In Office Whitening', '18, 17, 16, 15, 14', 5, 8000, 40000, 0, 30000, 10000, 10000, 20000, 10000, 0, NULL, 'Credit', NULL, 'Credit', 'test', '27-08-2024 16:02:48'),
(50, 22, 'Madan Mahal', 3, 'Teeth Bleaching In Office Whitening', '18, 17, 16, 15, 14', 5, 8000, 40000, 0, 20000, 1000, 1000, 19000, 1000, 0, NULL, 'Credit', NULL, 'Credit', 'test', '27-08-2024 16:04:15'),
(51, 23, 'Madan Mahal', 1, 'Re-Root Canal Treatlment @ per tooth', '18, 17, 16, 15, 14', 5, 4000, 20000, 0, 20000, 5000, 5000, 15000, 5000, 0, NULL, 'Credit', NULL, 'Credit', 'test', '27-08-2024 16:18:26'),
(52, 23, 'Madan Mahal', 2, 'Re-Root Canal Treatlment @ per tooth', '18, 17, 16, 15, 14', 5, 4000, 20000, 0, 15000, 5000, 5000, 10000, 5000, 0, NULL, 'Credit', NULL, 'paid', 'test', '27-08-2024 16:22:39'),
(53, 23, 'Madan Mahal', 3, 'Re-Root Canal Treatlment @ per tooth', '18, 17, 16, 15, 14', 5, 4000, 20000, 0, 10000, 10000, 10000, 0, 10000, 0, NULL, 'Credit', NULL, 'Credit', 'test', '27-08-2024 16:23:06'),
(54, 24, 'Madan Mahal', 1, 'Root Canal Treatment @ per tooth', '18', 1, 500, 500, 2, 490, 200, 200, 290, 0, 0, NULL, 'Credit', NULL, 'Credit', 'not now', '28-08-2024 12:35:33'),
(55, 24, 'Madan Mahal', 2, 'Root Canal Treatment @ per tooth', '18', 1, 500, 500, 2, 290, 290, 290, 0, 290, 0, NULL, 'Credit', NULL, 'paid', '', '28-08-2024 12:40:49'),
(56, 15, 'Madan Mahal', 2, 'Retention plate@ per arch', '18, 17', 2, 2000, 4000, 0, 0, 0, 0, 0, 0, 0, NULL, '', NULL, 'Pending', 'test', '30-08-2024 12:15:35'),
(57, 25, 'Madan Mahal', 1, 'GIC Restoration @ per tooth', '18, 17', 2, 600, 1200, 10, 1080, 1080, 1080, 0, 0, 0, NULL, '', NULL, 'pending', 'test', '30-08-2024 12:21:46'),
(58, 26, 'Madan Mahal', 1, 'Ceramic Braces', '18, 17', 2, 45000, 90000, 10, 81000, 81000, 81000, 0, 81000, 0, NULL, '', NULL, 'paid', 'test', '30-08-2024 13:07:47'),
(59, 27, 'Madan Mahal', 1, 'Porcelain Fused to Metal @ per Crown', '18, 17', 2, 3000, 6000, 10, 5400, 2000, 2000, 3400, 2000, 0, NULL, 'Cash', NULL, 'paid', 'test', '30-08-2024 15:11:50'),
(60, 28, 'Madan Mahal', 1, 'Dental Jewellery (Skyce Crystal)', '18, 17', 2, 2000, 4000, 10, 3600, 2000, 2000, 1600, 2000, 0, NULL, 'Card', 'asfdsdf', 'paid', '', '30-08-2024 16:35:30'),
(61, 28, 'Madan Mahal', 1, 'Dental Jewellery (Skyce Crystal)', '18, 17', 2, 2000, 4000, 0, 1600, 1000, 1000, 600, 1000, 0, NULL, '', NULL, 'paid', '', '30-08-2024 16:36:38'),
(62, 28, 'Madan Mahal', 2, 'Dental Jewellery (Skyce Crystal)', '18, 17', 2, 2000, 4000, 0, 3000, 3000, 3000, 0, 3000, 0, NULL, '', NULL, 'paid', '', '30-08-2024 16:37:23'),
(63, 29, 'Madan Mahal', 1, 'Teeth Bleaching In Office Whitening', '18, 17', 2, 8000, 16000, 10, 14400, 4000, 4000, 10400, 4000, 0, NULL, '', NULL, 'paid', 'tedt', '30-08-2024 16:42:12'),
(64, 30, 'Madan Mahal', 1, 'Teeth Bleaching In Office Whitening', '18, 17', 2, 8000, 16000, 10, 14400, 5000, 5000, 9400, 5000, 0, NULL, '', NULL, 'paid', 'test', '30-08-2024 16:50:39'),
(65, 31, 'Madan Mahal', 1, 'lnvisalign (clear or invisible braces)', '18, 17', 2, 80000, 160000, 10, 144000, 25000, 25000, 119000, 25000, 0, NULL, '', NULL, 'paid', 'test', '30-08-2024 17:09:30'),
(66, 31, 'Madan Mahal', 2, 'lnvisalign (clear or invisible braces)', '18, 17', 2, 80000, 160000, 10, 119000, 25000, 25000, 94000, 25000, 0, NULL, '', NULL, 'paid', 'test', '30-08-2024 17:10:01'),
(67, 31, 'Madan Mahal', 3, 'lnvisalign (clear or invisible braces)', '18, 17', 2, 80000, 160000, 10, 94000, 25000, 25000, 69000, 25000, 0, NULL, '', NULL, 'paid', '', '30-08-2024 17:10:22'),
(68, 32, 'Madan Mahal', 1, 'Direct Composite Veneer @ per tooth', '18, 17', 2, 2500, 5000, 10, 4500, 2000, 2000, 2500, 2000, 0, NULL, '', NULL, 'paid', 'test', '30-08-2024 19:11:06'),
(69, 32, 'Madan Mahal', 1, 'Direct Composite Veneer @ per tooth', '18, 17', 2, 2500, 5000, 0, 2500, 1000, 1000, 1500, 1000, 0, NULL, '', NULL, 'paid', '', '30-08-2024 20:27:29'),
(70, 32, 'Madan Mahal', 2, 'Direct Composite Veneer @ per tooth', '18, 17', 2, 2500, 5000, 0, 4000, 100, 100, 3900, 100, 0, NULL, '', NULL, 'paid', 'test', '31-08-2024 11:44:25'),
(71, 33, 'Madan Mahal', 1, 'Single Implant', '31', 1, 25000, 25000, 5, 23750, 15000, 15000, 8750, 15000, 0, NULL, '', NULL, 'paid', '', '02-09-2024 12:52:10'),
(72, 36, 'Madan Mahal', 1, 'Re-Root Canal Treatlment @ per tooth', '18', 1, 4000, 4000, 5, 3800, 0, 0, 3800, 0, 0, NULL, 'Credit', NULL, 'paid', '', '02-09-2024 12:58:26'),
(73, 36, 'Madan Mahal', 2, 'Re-Root Canal Treatlment @ per tooth', '18', 1, 4000, 4000, 5, 4000, 0, 0, 4000, 0, 0, NULL, 'Credit', NULL, 'paid', '', '02-09-2024 13:47:55'),
(74, 38, 'Madan Mahal', 1, 'Metal Free Crown Ziconia Crowns @ per Crown', '18', 1, 8000, 8000, 4, 7680, 1000, 1000, 6680, 1000, 0, NULL, 'Credit', NULL, 'paid', '', '02-09-2024 14:13:31'),
(75, 38, 'Madan Mahal', 2, 'Metal Free Crown Ziconia Crowns @ per Crown', '18', 1, 8000, 8000, 4, 6680, 0, 0, 6680, 0, 0, NULL, 'Credit', NULL, 'paid', '', '02-09-2024 14:14:58'),
(76, 39, 'Madan Mahal', 1, 'Re-Root Canal Treatlment @ per tooth', '18', 1, 4000, 4000, 10, 3600, 600, 600, 3000, 600, 0, NULL, 'Credit', NULL, 'paid', '', '02-09-2024 14:45:31'),
(77, 40, 'Madan Mahal', 1, 'Composite Restoration @ per tooth', '18', 1, 225, 225, 0, 225, 225, 225, 0, 225, 0, NULL, 'Credit', NULL, 'paid', '', '02-09-2024 14:50:43'),
(78, 41, 'Madan Mahal', 1, 'Laminates and Veneers@ per tooth', '17', 1, 10000, 10000, 10, 9000, 2000, 2000, 7000, 2000, 0, NULL, 'Credit', NULL, 'Credit', '', '02-09-2024 14:57:39'),
(79, 41, 'Madan Mahal', 2, 'Laminates and Veneers@ per tooth', '17', 1, 10000, 10000, 10, 7000, 1000, 1000, 6000, 1000, 0, NULL, 'Credit', NULL, 'paid', '', '02-09-2024 15:00:07'),
(80, 42, 'Madan Mahal', 1, 'Laminates and Veneers@ per tooth', '18, 17', 2, 10000, 20000, 10, 18000, 5000, 5000, 13000, 5000, 0, NULL, 'Credit', NULL, 'Credit', 'test', '02-09-2024 16:53:54'),
(81, 42, 'Madan Mahal', 2, 'Laminates and Veneers@ per tooth', '18, 17', 2, 10000, 20000, 10, 13000, 2000, 2000, 11000, 2000, 0, NULL, 'Credit', NULL, 'Credit', 'test', '02-09-2024 17:11:07'),
(82, 42, 'Madan Mahal', 3, 'Laminates and Veneers@ per tooth', '18, 17', 2, 10000, 20000, 10, 11000, 100, 100, 10900, 100, 0, NULL, 'Credit', NULL, 'Credit', 'test', '02-09-2024 17:14:23'),
(83, 42, 'Madan Mahal', 4, 'Laminates and Veneers@ per tooth', '18, 17', 2, 10000, 20000, 10, 10900, 900, 900, 10000, 900, 0, NULL, 'Credit', NULL, 'Credit', 'test', '02-09-2024 17:17:45'),
(84, 42, 'Madan Mahal', 5, 'Laminates and Veneers@ per tooth', '18, 17', 2, 10000, 20000, 10, 10000, 10000, 10000, 0, 10000, 0, NULL, 'Credit', NULL, 'paid', 'test', '02-09-2024 17:18:26'),
(85, 46, 'Madan Mahal', 1, 'Laminates and Veneers@ per tooth', '18', 1, 10000, 10000, 20, 8000, 8000, 8000, 0, 8000, 0, NULL, '', NULL, 'paid', '', '06-09-2024 15:52:39'),
(86, 49, 'Madan Mahal', 1, 'Oral Prophylaxis (Scaling)', '55, 54', 2, 1500, 3000, 12, 2640, 2640, 2640, 0, 2640, 0, NULL, '', NULL, 'paid', '', '06-09-2024 17:58:10'),
(87, 52, 'Madan Mahal', 1, 'Re-Root Canal Treatlment @ per tooth', '42', 1, 4000, 4000, 1, 3960, 0, 0, 3960, 0, 0, NULL, '', NULL, 'Pending', '', '12-09-2024 13:46:42'),
(88, 53, 'Madan Mahal', 1, 'Re-Root Canal Treatlment @ per tooth', '18, 17, 16, 15, 14, 13, 12, 11, 21, 22, 23, 24, 25, 26, 27, 28, 48, 47, 46, 45, 44, 43, 42, 41, 31, ', 32, 4000, 128000, 5, 121600, 0, NULL, 121600, 0, 0, NULL, '', NULL, 'Pending', '', '23-09-2024 17:29:14'),
(89, 54, 'Madan Mahal', 1, 'Re-Root Canal Treatlment @ per tooth', '18, 17, 16, 15, 14, 13, 12, 11, 21, 22, 23, 24, 25, 26, 27, 28, 48, 47, 46, 45, 44, 43, 42, 41, 31, ', 32, 4000, 128000, 1, 126720, 0, NULL, 126720, 0, 0, NULL, '', NULL, 'Pending', 'hg', '23-09-2024 17:39:42'),
(90, 54, 'Madan Mahal', 1, 'Re-Root Canal Treatlment @ per tooth', '18, 17, 16, 15, 14, 13, 12, 11, 21, 22, 23, 24, 25, 26, 27, 28, 48, 47, 46, 45, 44, 43, 42, 41, 31, ', 32, 4000, 128000, 0, 128000, 0, NULL, 128000, 0, 0, NULL, '', NULL, 'Pending', '', '23-09-2024 17:40:44'),
(91, 56, 'Madan Mahal', 1, 'Digital Compuler zcd XRay (R.V.G.)', '18, 17, 16, 15, 14, 13, 12, 11, 21, 22, 23, 24, 25, 26, 27, 28, 48, 47, 46, 45, 44, 43, 42, 41, 31, ', 32, 50, 1600, 1, 1584, 0, NULL, 1584, 0, 0, NULL, '', NULL, 'Pending', 'tr', '23-09-2024 17:45:51'),
(92, 60, 'Madan Mahal', 1, 'Re-Root Canal Treatlment @ per tooth', '18, 17, 16, 15, 14, 13, 12, 11, 21, 22, 23, 24, 25, 26, 27, 28, 48, 47, 46, 45, 44, 43, 42, 41, 31, ', 32, 4000, 128000, 1, 126720, 0, NULL, 126720, 0, 0, NULL, '', NULL, 'Pending', 'nhhbv', '23-09-2024 18:11:35'),
(93, 61, 'Madan Mahal', 1, 'Digital Compuler zcd XRay (R.V.G.)', '18, 17, 16, 15, 14, 13, 12, 11, 21, 22, 23, 24, 25, 26, 27, 28, 48, 47, 46, 45, 44, 43, 42, 41, 31, ', 32, 50, 1600, 1, 1584, 0, NULL, 1584, 0, 0, NULL, '', NULL, 'Pending', 'o', '24-09-2024 14:12:23'),
(94, 61, 'Madan Mahal', 2, 'Digital Compuler zcd XRay (R.V.G.)', '18, 17, 16, 15, 14, 13, 12, 11, 21, 22, 23, 24, 25, 26, 27, 28, 48, 47, 46, 45, 44, 43, 42, 41, 31, ', 32, 50, 1600, 1, 1600, 0, NULL, 1600, 0, 0, NULL, '', NULL, 'Pending', 'd', '24-09-2024 14:57:38'),
(95, 63, 'Madan Mahal', 1, 'Root Canal Treatment @ per tooth', '18', 1, 500, 500, 0, 500, 0, NULL, 500, 0, 0, NULL, 'Credit', NULL, 'paid', '', '04-10-2024 13:44:07'),
(96, 64, 'Madan Mahal', 1, 'Root Canal Treatment @ per tooth', '18', 1, 500, 500, 0, 500, 0, NULL, 500, 0, 0, NULL, 'Credit', NULL, 'paid', '', '04-10-2024 15:55:14'),
(97, 66, 'Madan Mahal', 1, 'Digital Compuler zcd XRay (R.V.G.)', '18, 17, 16, 15, 14, 13, 12, 11, 21, 22, 23, 24, 25, 26, 27, 28, 48, 47, 46, 45, 44, 43, 42, 41, 31, ', 32, 50, 1600, 1, 1584, 32, NULL, 1552, 32, 0, NULL, '', NULL, 'paid', 'sd', '05-10-2024 17:25:22'),
(98, 67, 'Madan Mahal', 1, 'Re-Root Canal Treatlment @ per tooth', '18, 17, 16, 15, 14, 13, 12, 11, 21, 22, 23, 24, 25, 26, 27, 28, 48, 47, 46, 45, 44, 43, 42, 41, 31, ', 32, 4000, 128000, 1, 126720, 22, NULL, 126698, 22, 0, NULL, '', NULL, 'paid', '', '05-10-2024 17:28:18'),
(99, 68, 'Madan Mahal', 1, 'Amalgam Restoration@ per tooth', '55', 1, 200, 200, 10, 180, 180, NULL, 0, 180, 0, NULL, '', NULL, 'paid', 'okay', '05-10-2024 17:53:50'),
(100, 69, 'Madan Mahal', 1, 'Laminates and Veneers@ per tooth', '18', 1, 10000, 10000, 10, 9000, 0, NULL, 9000, 0, 0, NULL, '', NULL, 'Pending', '', '07-10-2024 11:42:37'),
(101, 69, 'Madan Mahal', 1, 'Laminates and Veneers@ per tooth', '18', 1, 10000, 10000, 10, 9000, 0, NULL, 9000, 0, 0, NULL, 'Cash', NULL, 'paid', '', '07-10-2024 11:42:37'),
(102, 70, 'Madan Mahal', 1, 'Third Molar Impacted Tooth Removal', '18', 1, 3000, 3000, 10, 2700, 2400, NULL, 300, 2400, 0, NULL, '', NULL, 'paid', '', '07-10-2024 11:50:10'),
(103, 72, 'Madan Mahal', 1, 'Digital Compuler zcd XRay (R.V.G.)', '18, 17, 16, 15, 14, 13, 12, 11, 21, 22, 23, 24, 25, 26, 27, 28, 48, 47, 46, 45, 44, 43, 42, 41, 31, ', 32, 58, 1856, 0, 1856, 2, NULL, 1854, 2, 0, NULL, 'Credit', NULL, 'paid', '', '08-10-2024 16:27:12'),
(104, 72, 'Madan Mahal', 1, 'Digital Compuler zcd XRay (R.V.G.)', '18, 17, 16, 15, 14, 13, 12, 11, 21, 22, 23, 24, 25, 26, 27, 28, 48, 47, 46, 45, 44, 43, 42, 41, 31, ', 32, 58, 1856, 0, 1854, 1, NULL, 1853, 1, 0, NULL, 'Credit', NULL, 'paid', '', '08-10-2024 16:28:55'),
(105, 72, 'Madan Mahal', 1, 'Digital Compuler zcd XRay (R.V.G.)', '18, 17, 16, 15, 14, 13, 12, 11, 21, 22, 23, 24, 25, 26, 27, 28, 48, 47, 46, 45, 44, 43, 42, 41, 31, ', 32, 58, 1856, 0, 1855, 1, NULL, 1854, 1, 0, NULL, 'Credit', NULL, 'paid', '', '08-10-2024 16:42:37'),
(106, 73, 'Madan Mahal', 1, 'Amalgam Restoration@ per tooth', '17', 1, 230, 230, 5, 219, 100, NULL, 119, 100, 0, NULL, '', NULL, 'paid', '', '21-10-2024 18:54:47'),
(107, 74, 'Madan Mahal', 1, 'GIC Restoration @ per tooth', '14', 1, 600, 600, 2, 588, 588, NULL, 0, 588, 0, NULL, '', NULL, 'paid', 'hgfgyfy', '26-10-2024 13:27:05'),
(108, 75, 'Madan Mahal', 1, 'Re-Root Canal Treatlment @ per tooth', '14', 1, 4000, 4000, 2, 3920, 3920, NULL, 0, 3920, 0, NULL, '', NULL, 'paid', 'okay', '26-10-2024 14:07:42'),
(109, 76, 'Madan Mahal', 1, 'Retention plate@ per arch', '43', 1, 2000, 2000, 5, 1900, 1900, NULL, 0, 1900, 0, NULL, '', NULL, 'paid', 'gy', '26-10-2024 16:51:20');

-- --------------------------------------------------------

--
-- Table structure for table `staff_salary`
--

CREATE TABLE `staff_salary` (
  `sl_id` int(100) NOT NULL,
  `employee_ID` varchar(100) DEFAULT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `payable_salary` varchar(100) DEFAULT NULL,
  `paid_salary` varchar(100) DEFAULT NULL,
  `due_salary` varchar(100) DEFAULT NULL,
  `advance_payment` varchar(100) DEFAULT NULL,
  `pay_date` datetime(6) DEFAULT NULL,
  `pay_status` varchar(100) DEFAULT NULL,
  `pay_month` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff_salary`
--

INSERT INTO `staff_salary` (`sl_id`, `employee_ID`, `branch_name`, `payable_salary`, `paid_salary`, `due_salary`, `advance_payment`, `pay_date`, `pay_status`, `pay_month`) VALUES
(1, 'dg_1', 'Madan Mahal', '20000', '18000', '2000', '', '2024-04-10 14:00:00.000000', '', 'March 2024'),
(2, 'dg_1', 'Madan Mahal', '20000', '18000', '2000', '', '2024-04-10 14:00:00.000000', '', 'March 2024'),
(3, 'dg_2', 'Madan Mahal', '20000', '18000', '2000', '', '2024-04-10 14:00:00.000000', '', 'March 2024'),
(4, 'dg_5', 'Madan Mahal', '20000', '18000', '2000', '', '2024-04-10 14:00:00.000000', 'success', 'March');

-- --------------------------------------------------------

--
-- Table structure for table `super_admin`
--

CREATE TABLE `super_admin` (
  `sa_id` int(255) NOT NULL,
  `hospital_id` varchar(255) DEFAULT NULL,
  `hospital_name` varchar(255) DEFAULT NULL,
  `super_name` varchar(255) DEFAULT NULL,
  `super_email` varchar(255) DEFAULT NULL,
  `super_mobile` varchar(255) DEFAULT NULL,
  `super_password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `super_admin`
--

INSERT INTO `super_admin` (`sa_id`, `hospital_id`, `hospital_name`, `super_name`, `super_email`, `super_mobile`, `super_password`) VALUES
(1, 'hos_1', 'dental square', 'mohit sahu', 'kuldeepdoauruinfosystems@gmail.com', '8602161019', '$2a$10$AvonBlGGaSAPdoNBBcL9V.WfytnSOwRsd4Zclqqd6gs0CcdMW34i6'),
(2, 'hos_1', 'dental square', 'mohit sahu', 'vinaydhariya21@gmail.com', '8602161019', '$2a$10$dkgBpGckBIfSWJxsTTneyuxaVR.OIkyP.RWFDS0x.ZOY6XqBMk/Pm');

-- --------------------------------------------------------

--
-- Table structure for table `treatment_list`
--

CREATE TABLE `treatment_list` (
  `treatment_id` int(255) NOT NULL,
  `treatment_name` varchar(255) DEFAULT NULL,
  `treatment_cost` varchar(255) DEFAULT NULL,
  `treatment_discount` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `treatment_list_copy`
--

CREATE TABLE `treatment_list_copy` (
  `treatment_id` int(255) NOT NULL,
  `treat_procedure_id` int(100) DEFAULT NULL,
  `treat_procedure_name` varchar(100) DEFAULT NULL,
  `treatment_name` varchar(1000) DEFAULT NULL,
  `treatment_cost` varchar(255) DEFAULT NULL,
  `nabh` int(100) DEFAULT NULL,
  `non_nabh` int(100) DEFAULT NULL,
  `treatment_discount` varchar(255) DEFAULT NULL,
  `value` varchar(1000) DEFAULT NULL,
  `label` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `treatment_list_copy`
--

INSERT INTO `treatment_list_copy` (`treatment_id`, `treat_procedure_id`, `treat_procedure_name`, `treatment_name`, `treatment_cost`, `nabh`, `non_nabh`, `treatment_discount`, `value`, `label`) VALUES
(1, 2, 'Dental IOPA X Ray', 'Digital Compuler zcd XRay (R.V.G.)', '300', 58, 50, NULL, 'Digital Compuler zcd XRay (R.V.G.)', 'Digital Compuler zcd XRay (R.V.G.)'),
(2, 3, 'Endodontlc Procedures', 'Root Canal Treatment @ per tooth', '3000', 575, 500, NULL, 'Root Canal Treatment @ per tooth', 'Root Canal Treatment @ per tooth'),
(3, 3, 'Endodontlc Procedures', 'Re-Root Canal Treatlment @ per tooth', '4000', 4000, 4000, NULL, 'Re-Root Canal Treatlment @ per tooth', 'Re-Root Canal Treatlment @ per tooth'),
(4, 3, 'Endodontlc Procedures', 'Pulpectomy (Child) @ per tooth', '2800', 2800, 2800, NULL, 'Pulpectomy (Child) @ per tooth', 'Pulpectomy (Child) @ per tooth'),
(5, 3, 'Endodontlc Procedures', 'Post and core @ per tooth', '2000', 2000, 2000, NULL, 'Post and core @ per tooth', 'Post and core @ per tooth'),
(6, 3, 'Endodontlc Procedures', 'Indirect Pulp Capping @ per tooth', '1500', 1500, 1500, NULL, 'Indirect Pulp Capping @ per tooth', 'Indirect Pulp Capping @ per tooth'),
(7, 3, 'Endodontlc Procedures', 'Indirect Pulp Capping with MTA @ per tooth', '2000', 2000, 2000, NULL, 'Indirect Pulp Capping with MTA @ per tooth', 'Indirect Pulp Capping with MTA @ per tooth'),
(8, 4, 'Restorative & Cosmetic Procedures', 'Composite Restoration @ per tooth', '1500', 259, 225, NULL, 'Composite Restoration @ per tooth', 'Composite Restoration @ per tooth'),
(9, 4, 'Restorative & Cosmetic Procedures', 'Amalgam Restoration@ per tooth', '800', 230, 200, NULL, 'Amalgam Restoration@ per tooth', 'Amalgam Restoration@ per tooth'),
(10, 4, 'Restorative & Cosmetic Procedures', 'GIC Restoration @ per tooth', '600', 600, 600, NULL, 'GIC Restoration @ per tooth', 'GIC Restoration @ per tooth'),
(11, 4, 'Restorative & Cosmetic Procedures', 'Laminates and Veneers@ per tooth', '10000', 10000, 10000, NULL, 'Laminates and Veneers@ per tooth', 'Laminates and Veneers@ per tooth'),
(12, 4, 'Restorative & Cosmetic Procedures', 'Direct Composite Veneer @ per tooth', '2500', 2500, 2500, NULL, 'Direct Composite Veneer @ per tooth', 'Direct Composite Veneer @ per tooth'),
(13, 4, 'Restorative & Cosmetic Procedures', 'Teeth Bleaching In Office Whitening', '8000', 8000, 8000, NULL, 'Teeth Bleaching In Office Whitening', 'Teeth Bleaching In Office Whitening'),
(14, 4, 'Restorative & Cosmetic Procedures', 'Teeth Bleaching at Home Whitening', '5000', 5000, 5000, NULL, 'Teeth Bleaching at Home Whitening', 'Teeth Bleaching at Home Whitening'),
(15, 4, 'Restorative & Cosmetic Procedures', 'Dental Jewellery (Skyce Crystal)', '2000', 2000, 2000, NULL, 'Dental Jewellery (Skyce Crystal)', 'Dental Jewellery (Skyce Crystal)'),
(16, 5, 'Prosthetic Procedures', 'Metal Free Crown Ziconia Crowns @ per Crown', '8000', 8000, 8000, NULL, 'Metal Free Crown Ziconia Crowns @ per Crown', 'Metal Free Crown Ziconia Crowns @ per Crown'),
(17, 5, 'Prosthetic Procedures', 'Porcelain Fused to Metal @ per Crown', '3000', 3000, 3000, NULL, 'Porcelain Fused to Metal @ per Crown', 'Porcelain Fused to Metal @ per Crown'),
(18, 5, 'Prosthetic Procedures', 'Metal Crowns @ Per Crown', '1500', 575, 500, NULL, 'Metal Crowns @ Per Crown', 'Metal Crowns @ Per Crown'),
(19, 5, 'Prosthetic Procedures', 'Metal Crowns with acrylic facing @ per Crown', '1800', 725, 630, NULL, 'Metal Crowns with acrylic facing @ per Crown', 'Metal Crowns with acrylic facing @ per Crown'),
(20, 5, 'Prosthetic Procedures', 'Removable Partial Dentures @ per tooth', '800', 304, 264, NULL, 'Removable Partial Dentures @ per tooth', 'Removable Partial Dentures @ per tooth'),
(21, 5, 'Prosthetic Procedures', 'Removable Full Moulh Complete Denture', '15000', 15000, 15000, NULL, 'Removable Full Moulh Complete Denture', 'Removable Full Moulh Complete Denture'),
(22, 5, 'Prosthetic Procedures', 'Crown & Bridge refix', '300', 300, 300, NULL, 'Crown & Bridge refix', 'Crown & Bridge refix'),
(23, 6, 'Orthodentics (Braces) Procedures', 'Metal Braces', '30000', 30000, 30000, NULL, 'Metal Braces', 'Metal Braces'),
(24, 6, 'Orthodentics (Braces) Procedures', 'Ceramic Braces', '45000', 45000, 45000, NULL, 'Ceramic Braces', 'Ceramic Braces'),
(25, 6, 'Orthodentics (Braces) Procedures', 'Lingual Braces', '80000', 80000, 80000, NULL, 'Lingual Braces', 'Lingual Braces'),
(26, 6, 'Orthodentics (Braces) Procedures', 'lnvisalign (clear or invisible braces)', '80000', 80000, 80000, NULL, 'lnvisalign (clear or invisible braces)', 'lnvisalign (clear or invisible braces)'),
(27, 6, 'Orthodentics (Braces) Procedures', 'Retention plate@ per arch', '2000', 2000, 2000, NULL, 'Retention plate@ per arch', 'Retention plate@ per arch'),
(28, 6, 'Orthodentics (Braces) Procedures', 'Self ligating metal braces', '55000', 55000, 55000, NULL, 'Self ligating metal braces', 'Self ligating metal braces'),
(29, 6, 'Orthodentics (Braces) Procedures', 'Self ligatating ceramic braces', '75000', 75000, 75000, NULL, 'Self ligatating ceramic braces', 'Self ligatating ceramic braces'),
(30, 6, 'Orthodentics (Braces) Procedures', 'Retainer (removable)', '3000', 3000, 3000, NULL, 'Retainer (removable)', 'Retainer (removable)'),
(31, 7, 'Oral Surgery Procedures', 'Extraction per tooth under LA', '500', 92, 80, NULL, 'Extraction per tooth under LA', 'Extraction per tooth under LA'),
(32, 7, 'Oral Surgery Procedures', 'Complicated Extraction per tooth under LA', '1000', 115, 100, NULL, 'Complicated Extraction per tooth under LA', 'Complicated Extraction per tooth under LA'),
(33, 7, 'Oral Surgery Procedures', 'Third Molar Impacted Tooth Removal', '3000', 3000, 3000, NULL, 'Third Molar Impacted Tooth Removal', 'Third Molar Impacted Tooth Removal'),
(34, 7, 'Oral Surgery Procedures', 'Apicoectomy @ per tooth', '2500', 575, 500, NULL, 'Apicoectomy @ per tooth', 'Apicoectomy @ per tooth'),
(35, 7, 'Oral Surgery Procedures', 'Minor Surgical Procedures under LA', '5000', 5000, 5000, NULL, 'Minor Surgical Procedures under LA', 'Minor Surgical Procedures under LA'),
(36, 7, 'Oral Surgery Procedures', 'Biopsy', '2500', 529, 460, NULL, 'Biopsy', 'Biopsy'),
(37, 7, 'Oral Surgery Procedures', 'I& D (Extra Oral)', '5000', 5000, 5000, NULL, 'I& D (Extra Oral)', 'I& D (Extra Oral)'),
(38, 7, 'Oral Surgery Procedures', 'I& D ( ntra Oral)', '1500', 1500, 1500, NULL, 'I& D ( ntra Oral)', 'I& D ( ntra Oral)'),
(40, 8, 'Dental implants', 'Single Implant', '25000', 25000, 25000, NULL, 'Single Implant', 'Single Implant'),
(41, 8, 'Dental implants', 'Full mouth Implant', '250000', 250000, 250000, NULL, 'Full mouth Implant', 'Full mouth Implant'),
(42, 8, 'Dental implants', 'Bone Grafting Procedure', '5000', 7591, 6601, NULL, 'Bone Grafting Procedure', 'Bone Grafting Procedure'),
(43, 9, 'Periodontics', 'Oral Prophylaxis (Scaling)', '1500', 1500, 1500, NULL, 'Oral Prophylaxis (Scaling)', 'Oral Prophylaxis (Scaling)'),
(44, 9, 'Periodontics', 'Gingivectomy per quadrant by scalpel', '3000', 269, 234, NULL, 'Gingivectomy per quadrant by scalpel', 'Gingivectomy per quadrant by scalpel'),
(45, 9, 'Periodontics', 'Flap Surgery per quadrant without bone graft', '6000', 6000, 6000, NULL, 'Flap Surgery per quadrant without bone graft', 'Flap Surgery per quadrant without bone graft'),
(46, 9, 'Periodontics', 'Bone Graft Per Tooth', '500', 500, 500, NULL, 'Bone Graft Per Tooth', 'Bone Graft Per Tooth'),
(47, 9, 'Periodontics', 'Operculectomy', '1000', 1000, 1000, NULL, 'Operculectomy', 'Operculectomy'),
(49, 1, 'OPD', 'OPD', '500', 350, 350, NULL, 'OPD', 'OPD'),
(51, 8, 'Dental implants', 'Sinus Lift Procedure', '15000', 15000, 15000, NULL, 'Sinus Lift Procedure', 'Sinus Lift Procedure'),
(54, 1, 'test procedure', 'test treatment', '9898', 6000, 5000, NULL, 'test value', 'test label'),
(56, 10, 'test procedure', 'test-three', NULL, 2000, 1000, NULL, 'test-three', 'test-three'),
(57, 1, 'Orthodentics (Braces) Procedures', 'okay', NULL, 3, 9, NULL, 'okay', 'okay');

-- --------------------------------------------------------

--
-- Table structure for table `treatment_package`
--

CREATE TABLE `treatment_package` (
  `tp_id` int(100) NOT NULL,
  `uhid` varchar(100) DEFAULT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `appointment_id` int(100) DEFAULT NULL,
  `examination_id` int(100) DEFAULT NULL,
  `doctor_id` varchar(100) DEFAULT NULL,
  `doctor_name` varchar(100) NOT NULL,
  `package_status` varchar(50) DEFAULT NULL,
  `diagnosis_category` varchar(100) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `treatment_package`
--

INSERT INTO `treatment_package` (`tp_id`, `uhid`, `branch_name`, `appointment_id`, `examination_id`, `doctor_id`, `doctor_name`, `package_status`, `diagnosis_category`, `created_at`) VALUES
(1, 'DH_1', 'Madan Mahal', 1, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-08-12 13:27:15.495535'),
(2, 'DH_3', 'Madan Mahal', 3, 0, 'dg_4', 'shadab', 'started', 'Dental-X', '2024-08-12 13:41:51.115583'),
(3, 'DH_4', 'Madan Mahal', 4, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-08-12 13:51:24.307778'),
(4, 'DH_5', 'Madan Mahal', 5, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-08-13 08:10:53.689285'),
(5, 'DH_2', 'Madan Mahal', 8, 0, 'dg_4', 'shadab', 'started', 'Dental-X', '2024-08-13 12:13:22.167534'),
(6, 'DH_2', 'Madan Mahal', 10, 0, 'dg_4', 'shadab', 'complete', 'Dental-X', '2024-08-15 08:56:52.055060'),
(7, 'DH_5', 'Madan Mahal', 12, 0, 'dg_4', 'shadab', 'started', 'Dental-X', '2024-08-16 08:03:12.281600'),
(8, 'DH_1', 'Madan Mahal', 13, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-08-16 12:44:21.542838'),
(9, 'DH_1', 'Madan Mahal', 14, 0, 'dg_4', 'shadab', 'completed', 'Pediatric', '2024-08-16 13:47:16.711446'),
(10, 'DH_5', 'Madan Mahal', 15, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-08-17 11:08:18.008310'),
(11, 'DH_6', 'Madan Mahal', 17, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-08-17 11:30:14.330719'),
(12, 'DH_6', 'Madan Mahal', 25, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-08-17 12:06:17.446458'),
(13, 'DH_7', 'Madan Mahal', 31, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-08-21 06:52:43.257849'),
(14, 'DH_7', 'Madan Mahal', 32, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-08-21 07:47:06.363861'),
(15, 'DH_7', 'Madan Mahal', 34, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-08-22 06:19:49.657959'),
(16, 'DH_2', 'Madan Mahal', 36, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-08-22 06:31:21.759128'),
(17, 'DH_1', 'Madan Mahal', 41, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-08-24 15:28:25.658849'),
(18, 'DH_8', 'Madan Mahal', 44, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-08-27 09:48:01.886490'),
(19, 'DH_6', 'Madan Mahal', 46, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-08-27 10:08:46.028163'),
(20, 'DH_5', 'Madan Mahal', 47, 0, 'dg_4', 'shadab', 'started', 'Dental-X', '2024-08-27 10:23:23.995009'),
(21, 'DH_8', 'Madan Mahal', 48, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-08-27 10:25:50.681691'),
(22, 'DH_8', 'Madan Mahal', 49, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-08-27 10:30:11.666705'),
(23, 'DH_8', 'Madan Mahal', 50, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-08-27 10:46:38.425693'),
(24, 'DH_9', 'Madan Mahal', 51, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-08-28 06:36:53.816168'),
(25, 'DH_2', 'Madan Mahal', 53, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-08-30 06:47:46.202911'),
(26, 'DH_2', 'Madan Mahal', 54, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-08-30 07:36:02.425315'),
(27, 'DH_6', 'Madan Mahal', 55, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-08-30 09:38:27.408848'),
(28, 'DH_2', 'Madan Mahal', 56, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-08-30 10:54:52.795088'),
(29, 'DH_2', 'Madan Mahal', 57, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-08-30 11:10:43.382133'),
(30, 'DH_2', 'Madan Mahal', 58, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-08-30 11:19:18.107213'),
(31, 'DH_2', 'Madan Mahal', 59, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-08-30 11:34:50.542542'),
(32, 'DH_2', 'Madan Mahal', 60, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-08-30 11:50:24.919880'),
(33, 'DH_11', 'Madan Mahal', 79, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-09-02 07:15:40.445203'),
(34, 'DH_10', 'Madan Mahal', 78, 0, 'dg_4', 'shadab', 'started', 'Dental-X', '2024-09-02 07:16:38.822670'),
(35, 'DH_10', 'Madan Mahal', 78, 0, 'dg_4', 'shadab', 'completed', 'Pediatric', '2024-09-02 07:23:01.695078'),
(36, 'DH_13', 'Madan Mahal', 81, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-09-02 07:26:04.035341'),
(37, 'DH_10', 'Madan Mahal', 78, 0, 'dg_4', 'shadab', 'started', 'Dental-X', '2024-09-02 08:30:31.701935'),
(38, 'DH_14', 'Madan Mahal', 86, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-09-02 08:36:28.554071'),
(39, 'DH_15', 'Madan Mahal', 88, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-09-02 08:55:46.793635'),
(40, 'DH_16', 'Madan Mahal', 89, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-09-02 09:19:37.315265'),
(41, 'DH_18', 'Madan Mahal', 92, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-09-02 09:26:15.473396'),
(42, 'DH_10', 'Madan Mahal', 78, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-09-02 11:10:47.433848'),
(43, 'DH_17', 'Madan Mahal', 90, 0, 'dg_4', 'shadab', 'started', 'Dental-X', '2024-09-02 11:49:58.192182'),
(44, 'DH_21', 'Madan Mahal', 102, 0, 'dg_4', 'shadab', 'started', 'Pediatric', '2024-09-06 06:34:39.782810'),
(45, 'DH_21', 'Madan Mahal', 102, 0, 'dg_4', 'shadab', 'started', 'Pediatric', '2024-09-06 06:35:32.229133'),
(46, 'DH_22', 'Madan Mahal', 104, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-09-06 10:18:15.885449'),
(47, 'DH_20', 'Madan Mahal', 103, 0, 'dg_4', 'shadab', 'started', 'Pediatric', '2024-09-06 10:47:48.590586'),
(48, 'DH_20', 'Madan Mahal', 103, 0, 'dg_4', 'shadab', 'started', 'Pediatric', '2024-09-06 12:15:40.709797'),
(49, 'DH_21', 'Madan Mahal', 102, 0, 'dg_4', 'shadab', 'completed', 'Pediatric', '2024-09-06 12:24:30.787624'),
(50, 'DH_24', 'Madan Mahal', 106, 0, 'dg_19', 'DEMO', 'started', 'Dental-X', '2024-09-12 07:49:44.751373'),
(51, 'DH_24', 'Madan Mahal', 106, 0, 'dg_19', 'DEMO', 'started', 'Dental-X', '2024-09-12 08:14:27.821061'),
(52, 'DH_24', 'Madan Mahal', 106, 0, 'dg_19', 'DEMO', 'completed', 'Dental-X', '2024-09-12 08:14:36.772815'),
(53, 'DH_11', 'Madan Mahal', 108, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-09-23 11:53:16.608652'),
(54, 'DH_25', 'Madan Mahal', 109, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-09-23 12:08:22.213704'),
(55, 'DH_25', 'Madan Mahal', 110, 0, 'dg_4', 'shadab', 'started', 'Dental-X', '2024-09-23 12:12:35.716671'),
(56, 'DH_26', 'Madan Mahal', 112, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-09-23 12:13:48.075619'),
(57, 'DH_27', 'Madan Mahal', 114, 0, 'dg_4', 'shadab', 'started', 'Dental-X', '2024-09-23 12:28:26.472643'),
(58, 'DH_28', 'Madan Mahal', 115, 0, 'dg_4', 'shadab', 'started', 'Dental-X', '2024-09-23 12:35:24.139529'),
(59, 'DH_28', 'Madan Mahal', 115, 0, 'dg_4', 'shadab', 'started', 'Dental-X', '2024-09-23 12:38:07.844496'),
(60, 'DH_29', 'Madan Mahal', 116, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-09-23 12:39:50.770477'),
(61, 'DH_28', 'Madan Mahal', 118, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-09-24 08:40:15.148942'),
(62, 'DH_25', 'Madan Mahal', 121, 0, 'dg_4', 'shadab', 'started', 'Dental-X', '2024-09-24 13:30:50.460970'),
(63, 'DH_30', 'Madan Mahal', 123, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-10-04 07:50:34.754179'),
(64, 'DH_31', 'Madan Mahal', 124, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-10-04 10:24:09.469874'),
(65, 'DH_32', 'Madan Mahal', 126, 0, 'dg_19', 'DEMO', 'started', 'Dental-X', '2024-10-04 11:46:23.912975'),
(66, 'DH_33', 'Madan Mahal', 127, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-10-05 11:54:10.957092'),
(67, 'DH_33', 'Madan Mahal', 128, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-10-05 11:57:35.127868'),
(68, 'DH_34', 'Madan Mahal', 129, 0, 'dg_19', 'DEMO', 'completed', 'Pediatric', '2024-10-05 12:19:24.127142'),
(69, 'DH_36', 'Madan Mahal', 131, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-10-07 06:08:16.029097'),
(70, 'DH_37', 'Madan Mahal', 134, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-10-07 06:17:33.321580'),
(71, 'DH_38', 'Madan Mahal', 136, 0, 'dg_19', 'DEMO', 'started', 'Pediatric', '2024-10-07 11:51:46.326438'),
(72, 'DH_1', 'Madan Mahal', 137, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-10-08 10:56:28.503600'),
(73, 'DH_32', 'Madan Mahal', 142, 0, 'dg_19', 'DEMO', 'completed', 'Dental-X', '2024-10-21 13:21:46.405102'),
(74, 'DH_40', 'Madan Mahal', 143, 0, 'dg_19', 'DEMO', 'completed', 'Dental-X', '2024-10-26 07:53:19.362049'),
(75, 'DH_41', 'Madan Mahal', 144, 0, 'dg_19', 'DEMO', 'completed', 'Dental-X', '2024-10-26 08:32:41.413963'),
(76, 'DH_42', 'Madan Mahal', 145, 0, 'dg_19', 'DEMO', 'completed', 'Dental-X', '2024-10-26 10:23:42.370937');

-- --------------------------------------------------------

--
-- Table structure for table `treat_procedure_list`
--

CREATE TABLE `treat_procedure_list` (
  `treat_procedure_id` int(100) NOT NULL,
  `treat_procedure_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `treat_procedure_list`
--

INSERT INTO `treat_procedure_list` (`treat_procedure_id`, `treat_procedure_name`) VALUES
(2, 'Dental IOPA X Ray'),
(3, 'Endodontlc Procedures'),
(4, 'Restorative & Cosmetic Procedures'),
(5, 'Prosthetic Procedures'),
(6, 'Orthodentics (Braces) Procedures'),
(7, 'Oral Surgery Procedures'),
(8, 'Dental implants'),
(9, 'Periodontics'),
(10, 'test procedure');

-- --------------------------------------------------------

--
-- Table structure for table `treat_suggest`
--

CREATE TABLE `treat_suggest` (
  `ts_id` int(11) NOT NULL,
  `tp_id` int(100) DEFAULT NULL,
  `appoint_id` int(11) NOT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `p_uhid` varchar(255) NOT NULL,
  `desease` varchar(100) DEFAULT NULL,
  `treatment_name` varchar(255) DEFAULT NULL,
  `totalCost` varchar(255) DEFAULT NULL,
  `discount` int(100) DEFAULT NULL,
  `paid_amount` int(100) DEFAULT NULL,
  `treatment_status` varchar(255) DEFAULT NULL,
  `consider_sitting` varchar(255) DEFAULT NULL,
  `total_sitting` varchar(255) DEFAULT NULL,
  `current_sitting` int(100) DEFAULT NULL,
  `upcoming_sitting` int(100) DEFAULT NULL,
  `appoint_date` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `current_sitting_status` varchar(100) DEFAULT NULL,
  `upcoming_sitting_status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `treat_suggest`
--

INSERT INTO `treat_suggest` (`ts_id`, `tp_id`, `appoint_id`, `branch_name`, `p_uhid`, `desease`, `treatment_name`, `totalCost`, `discount`, `paid_amount`, `treatment_status`, `consider_sitting`, `total_sitting`, `current_sitting`, `upcoming_sitting`, `appoint_date`, `note`, `current_sitting_status`, `upcoming_sitting_status`) VALUES
(1, 1, 1, 'Madan Mahal', 'DH_1', 'Caries', 'Laminates and Veneers@ per tooth', '10000', NULL, NULL, 'completed', NULL, '2', 1, NULL, NULL, NULL, NULL, NULL),
(2, 2, 3, 'Madan Mahal', 'DH_3', 'Caries', 'Pulpectomy (Child) @ per tooth', '2800', NULL, NULL, 'pending', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 2, 3, 'Madan Mahal', 'DH_3', 'Fracture', 'Removable Partial Dentures @ per tooth', '800', NULL, NULL, 'pending', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 3, 4, 'Madan Mahal', 'DH_4', 'Caries', 'Pulpectomy (Child) @ per tooth', '2800', NULL, NULL, 'completed', NULL, '2', 4, NULL, NULL, NULL, NULL, NULL),
(5, 4, 5, 'Madan Mahal', 'DH_5', 'Caries', 'Single Implant', '25000', NULL, NULL, 'ongoing', NULL, '2', 1, NULL, NULL, NULL, NULL, NULL),
(6, 5, 8, 'Madan Mahal', 'DH_2', 'Caries', 'GIC Restoration @ per tooth', '600', NULL, NULL, 'pending', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 6, 10, 'Madan Mahal', 'DH_2', 'Caries', 'Root Canal Treatment @ per tooth', '3000', NULL, NULL, 'completed', NULL, '2', 2, NULL, NULL, NULL, NULL, NULL),
(8, 6, 10, 'Madan Mahal', 'DH_2', 'Fracture', 'Teeth Bleaching at Home Whitening', '5000', NULL, NULL, 'completed', NULL, '2', 3, NULL, NULL, NULL, NULL, NULL),
(9, 8, 13, 'Madan Mahal', 'DH_1', 'Caries', 'Re-Root Canal Treatlment @ per tooth', '4000', NULL, NULL, 'completed', NULL, '2', 2, NULL, NULL, NULL, NULL, NULL),
(10, 8, 13, 'Madan Mahal', 'DH_1', 'Fracture', 'Metal Braces', '30000', NULL, NULL, 'completed', NULL, '2', 2, NULL, NULL, NULL, NULL, NULL),
(11, 8, 13, 'Madan Mahal', 'DH_1', 'Impacted', 'Porcelain Fused to Metal @ per Crown', '3000', NULL, NULL, 'completed', NULL, '2', 1, NULL, NULL, NULL, NULL, NULL),
(12, 9, 14, 'Madan Mahal', 'DH_1', 'Caries', 'Amalgam Restoration@ per tooth', '800', NULL, NULL, 'completed', NULL, '2', 1, NULL, NULL, NULL, NULL, NULL),
(13, 9, 14, 'Madan Mahal', 'DH_1', 'Fracture', 'Ceramic Braces', '45000', NULL, NULL, 'completed', NULL, '2', 1, NULL, NULL, NULL, NULL, NULL),
(14, 10, 15, 'Madan Mahal', 'DH_5', 'Caries', 'Teeth Bleaching In Office Whitening', '8000', NULL, NULL, 'completed', NULL, '2', 3, NULL, NULL, NULL, NULL, NULL),
(15, 10, 15, 'Madan Mahal', 'DH_5', 'Caries', 'Third Molar /Impacted Tooth Removal', '3000', NULL, NULL, '', NULL, '2', 2, NULL, NULL, NULL, NULL, NULL),
(16, 11, 17, 'Madan Mahal', 'DH_6', 'Fracture', 'Metal Crowns @ Per Crown', '1500', NULL, NULL, 'completed', NULL, '2', 2, NULL, NULL, NULL, NULL, NULL),
(17, 12, 25, 'Madan Mahal', 'DH_6', 'Caries', 'Direct Composite Veneer @ per tooth', '2500', NULL, NULL, 'completed', NULL, '2', 1, NULL, NULL, NULL, NULL, NULL),
(18, 12, 25, 'Madan Mahal', 'DH_6', 'Caries', 'Ceramic Braces', '45000', NULL, NULL, 'completed', NULL, '2', 2, NULL, NULL, NULL, NULL, NULL),
(19, 13, 31, 'Madan Mahal', 'DH_7', 'Caries', 'Indirect Pulp Capping with MTA @ per tooth', '2000', NULL, NULL, 'completed', NULL, '1', 1, NULL, NULL, NULL, NULL, NULL),
(20, 14, 32, 'Madan Mahal', 'DH_7', 'Caries', 'Full mouth Implant', '250000', NULL, NULL, 'completed', NULL, '2', 2, NULL, NULL, NULL, NULL, NULL),
(21, 15, 34, 'Madan Mahal', 'DH_7', 'Fracture', 'Retention plate@ per arch', '2000', NULL, NULL, 'completed', NULL, '3', 2, NULL, NULL, NULL, NULL, NULL),
(22, 16, 36, 'Madan Mahal', 'DH_2', 'Caries', 'Root Canal Treatment @ per tooth', '3000', NULL, NULL, 'completed', NULL, '2', 1, NULL, NULL, NULL, NULL, NULL),
(23, 16, 36, 'Madan Mahal', 'DH_2', 'Fracture', 'Third Molar /Impacted Tooth Removal', '3000', NULL, NULL, 'completed', NULL, '2', 1, NULL, NULL, NULL, NULL, NULL),
(24, 17, 41, 'Madan Mahal', 'DH_1', 'Caries', 'Root Canal Treatment @ per tooth', '575', NULL, NULL, 'completed', NULL, '2', 1, NULL, NULL, NULL, NULL, NULL),
(25, 17, 41, 'Madan Mahal', 'DH_1', 'Fracture', 'Teeth Bleaching at Home Whitening', '5000', NULL, NULL, 'completed', NULL, '2', 1, NULL, NULL, NULL, NULL, NULL),
(26, 18, 44, 'Madan Mahal', 'DH_8', 'Caries', 'Single Implant', '25000', NULL, NULL, 'completed', NULL, '2', 2, NULL, NULL, NULL, NULL, NULL),
(27, 19, 46, 'Madan Mahal', 'DH_6', 'Caries', 'Pulpectomy (Child) @ per tooth', '2800', NULL, NULL, 'completed', NULL, '2', 2, NULL, NULL, NULL, NULL, NULL),
(28, 19, 46, 'Madan Mahal', 'DH_6', 'Fracture', 'Re-Root Canal Treatlment @ per tooth', '4000', NULL, NULL, 'completed', NULL, '2', 4, NULL, NULL, NULL, NULL, NULL),
(29, 20, 47, 'Madan Mahal', 'DH_5', 'Caries', 'Laminates and Veneers@ per tooth', '10000', NULL, NULL, 'pending', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL),
(30, 21, 48, 'Madan Mahal', 'DH_8', 'Fracture', 'Teeth Bleaching at Home Whitening', '5000', NULL, NULL, 'completed', NULL, '2', 2, NULL, NULL, NULL, NULL, NULL),
(31, 22, 49, 'Madan Mahal', 'DH_8', 'Caries', 'Teeth Bleaching In Office Whitening', '8000', NULL, NULL, 'completed', NULL, '2', 3, NULL, NULL, NULL, NULL, NULL),
(32, 23, 50, 'Madan Mahal', 'DH_8', 'Caries', 'Re-Root Canal Treatlment @ per tooth', '4000', NULL, NULL, 'completed', NULL, '2', 3, NULL, NULL, NULL, NULL, NULL),
(33, 24, 51, 'Madan Mahal', 'DH_9', 'Caries', 'Root Canal Treatment @ per tooth', '500', NULL, NULL, 'completed', NULL, '2', 2, NULL, NULL, NULL, NULL, NULL),
(34, 25, 53, 'Madan Mahal', 'DH_2', 'Caries', 'GIC Restoration @ per tooth', '600', NULL, NULL, 'completed', NULL, '2', 1, NULL, NULL, NULL, NULL, NULL),
(35, 26, 54, 'Madan Mahal', 'DH_2', 'Caries', 'Ceramic Braces', '45000', NULL, NULL, 'completed', NULL, '2', 1, NULL, NULL, NULL, NULL, NULL),
(36, 27, 55, 'Madan Mahal', 'DH_6', 'Fracture', 'Porcelain Fused to Metal @ per Crown', '3000', NULL, NULL, 'completed', NULL, '2', 1, NULL, NULL, NULL, NULL, NULL),
(37, 28, 56, 'Madan Mahal', 'DH_2', 'Caries', 'Dental Jewellery (Skyce Crystal)', '2000', NULL, NULL, 'completed', NULL, '2', 2, NULL, NULL, NULL, NULL, NULL),
(38, 29, 57, 'Madan Mahal', 'DH_2', 'Caries', 'Teeth Bleaching In Office Whitening', '8000', NULL, NULL, 'completed', NULL, '2', 1, NULL, NULL, NULL, NULL, NULL),
(39, 30, 58, 'Madan Mahal', 'DH_2', 'Caries', 'Teeth Bleaching In Office Whitening', '8000', NULL, NULL, 'completed', NULL, '2', 1, NULL, NULL, NULL, NULL, NULL),
(40, 31, 59, 'Madan Mahal', 'DH_2', 'Caries', 'lnvisalign (clear or invisible braces)', '80000', NULL, NULL, 'completed', NULL, '2', 3, NULL, NULL, NULL, NULL, NULL),
(41, 32, 60, 'Madan Mahal', 'DH_2', 'Caries', 'Direct Composite Veneer @ per tooth', '2500', NULL, NULL, 'ongoing', NULL, '2', 2, NULL, NULL, NULL, NULL, NULL),
(43, 33, 79, 'Madan Mahal', 'DH_11', 'Mobility', 'Single Implant', '25000', NULL, NULL, 'completed', NULL, '3', 1, NULL, NULL, NULL, NULL, NULL),
(44, 34, 78, 'Madan Mahal', 'DH_10', 'Caries', 'Re-Root Canal Treatlment @ per tooth', '4000', NULL, NULL, 'pending', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL),
(46, 35, 78, 'Madan Mahal', 'DH_10', 'Missing Tooth', 'Removable Partial Dentures @ per tooth', '264', NULL, NULL, '', NULL, '1', 1, NULL, NULL, NULL, NULL, NULL),
(47, 36, 81, 'Madan Mahal', 'DH_13', 'Caries', 'Re-Root Canal Treatlment @ per tooth', '4000', NULL, NULL, 'completed', NULL, '2', 2, NULL, NULL, NULL, NULL, NULL),
(49, 38, 86, 'Madan Mahal', 'DH_14', 'Caries', 'Metal Free Crown Ziconia Crowns @ per Crown', '8000', NULL, NULL, 'completed', NULL, '2', 2, NULL, NULL, NULL, NULL, NULL),
(50, 39, 88, 'Madan Mahal', 'DH_15', 'Missing Tooth', 'Re-Root Canal Treatlment @ per tooth', '4000', NULL, NULL, 'ongoing', NULL, '2', 1, NULL, NULL, NULL, NULL, NULL),
(51, 40, 89, 'Madan Mahal', 'DH_16', 'Caries', 'Composite Restoration @ per tooth', '225', NULL, NULL, 'completed', NULL, '1', 1, NULL, NULL, NULL, NULL, NULL),
(52, 41, 92, 'Madan Mahal', 'DH_18', 'Fracture', 'Laminates and Veneers@ per tooth', '10000', NULL, NULL, 'completed', NULL, '2', 2, NULL, NULL, NULL, NULL, NULL),
(53, 42, 78, 'Madan Mahal', 'DH_10', 'Fracture', 'Laminates and Veneers@ per tooth', '10000', NULL, NULL, 'completed', NULL, '2', 5, NULL, NULL, NULL, NULL, NULL),
(54, 43, 90, 'Madan Mahal', 'DH_17', 'Caries', 'Root Canal Treatment @ per tooth', '500', NULL, NULL, 'pending', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL),
(55, 43, 90, 'Madan Mahal', 'DH_17', 'Caries', 'Re-Root Canal Treatlment @ per tooth', '4000', NULL, NULL, 'pending', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL),
(56, 46, 104, 'Madan Mahal', 'DH_22', 'Caries', 'Laminates and Veneers@ per tooth', '10000', NULL, NULL, 'completed', NULL, '1', 1, NULL, NULL, NULL, NULL, NULL),
(57, 49, 102, 'Madan Mahal', 'DH_21', 'Caries', 'Oral Prophylaxis (Scaling)', '1500', NULL, NULL, 'completed', NULL, '1', 1, NULL, NULL, NULL, NULL, NULL),
(58, 50, 106, 'Madan Mahal', 'DH_24', '50% good', 'Digital Compuler zcd XRay (R.V.G.)', '50', NULL, NULL, 'pending', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL),
(59, 52, 106, 'Madan Mahal', 'DH_24', 'Caries', 'Re-Root Canal Treatlment @ per tooth', '4000', NULL, NULL, 'completed', NULL, '453', 1, NULL, NULL, NULL, NULL, NULL),
(60, 53, 108, 'Madan Mahal', 'DH_11', 'dfdf', 'Re-Root Canal Treatlment @ per tooth', '4000', NULL, NULL, 'completed', NULL, '3432', 1, NULL, NULL, NULL, NULL, NULL),
(61, 54, 109, 'Madan Mahal', 'DH_25', 's', 'Re-Root Canal Treatlment @ per tooth', '4000', NULL, NULL, 'ongoing', NULL, '3', 1, NULL, NULL, NULL, NULL, NULL),
(62, 56, 112, 'Madan Mahal', 'DH_26', 'Caries', 'Digital Compuler zcd XRay (R.V.G.)', '50', NULL, NULL, 'ongoing', NULL, '3', 1, NULL, NULL, NULL, NULL, NULL),
(63, 60, 116, 'Madan Mahal', 'DH_29', 'Caries', 'Re-Root Canal Treatlment @ per tooth', '4000', NULL, NULL, 'ongoing', NULL, '3', 1, NULL, NULL, NULL, NULL, NULL),
(64, 61, 118, 'Madan Mahal', 'DH_28', 'Caries', 'Digital Compuler zcd XRay (R.V.G.)', '50', NULL, NULL, 'ongoing', NULL, '3', 2, NULL, NULL, NULL, NULL, NULL),
(65, 62, 121, 'Madan Mahal', 'DH_25', 'Caries', 'Re-Root Canal Treatlment @ per tooth', '4000', NULL, NULL, 'pending', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL),
(66, 63, 123, 'Madan Mahal', 'DH_30', 'Caries', 'Root Canal Treatment @ per tooth', '500', NULL, NULL, 'completed', NULL, '1', 1, NULL, NULL, NULL, NULL, NULL),
(67, 64, 124, 'Madan Mahal', 'DH_31', 'Caries', 'Root Canal Treatment @ per tooth', '500', NULL, NULL, 'completed', NULL, '1', 1, NULL, NULL, NULL, NULL, NULL),
(68, 66, 127, 'Madan Mahal', 'DH_33', 'Caries', 'Digital Compuler zcd XRay (R.V.G.)', '50', NULL, NULL, 'completed', NULL, '1', 1, NULL, NULL, NULL, NULL, NULL),
(69, 67, 128, 'Madan Mahal', 'DH_33', 'Caries', 'Re-Root Canal Treatlment @ per tooth', '4000', NULL, NULL, 'completed', NULL, '1', 1, NULL, NULL, NULL, NULL, NULL),
(70, 68, 129, 'Madan Mahal', 'DH_34', 'Caries', 'Amalgam Restoration@ per tooth', '200', NULL, NULL, 'completed', NULL, '1', 1, NULL, NULL, NULL, NULL, NULL),
(71, 69, 131, 'Madan Mahal', 'DH_36', 'Caries', 'Laminates and Veneers@ per tooth', '10000', NULL, NULL, 'completed', NULL, '1', 1, NULL, NULL, NULL, NULL, NULL),
(72, 70, 134, 'Madan Mahal', 'DH_37', 'Missing Tooth', 'Third Molar Impacted Tooth Removal', '3000', NULL, NULL, 'completed', NULL, '1', 1, NULL, NULL, NULL, NULL, NULL),
(73, 72, 137, 'Madan Mahal', 'DH_1', 'Caries', 'Digital Compuler zcd XRay (R.V.G.)', '58', NULL, NULL, 'completed', NULL, '1', 1, NULL, NULL, NULL, NULL, NULL),
(74, 73, 142, 'Madan Mahal', 'DH_32', 'Fracture', 'Amalgam Restoration@ per tooth', '230', NULL, NULL, 'completed', NULL, '1', 1, NULL, NULL, NULL, NULL, NULL),
(75, 74, 143, 'Madan Mahal', 'DH_40', 'Caries', 'GIC Restoration @ per tooth', '600', NULL, NULL, 'completed', NULL, '1', 1, NULL, NULL, NULL, NULL, NULL),
(76, 75, 144, 'Madan Mahal', 'DH_41', 'Caries', 'Re-Root Canal Treatlment @ per tooth', '4000', NULL, NULL, 'completed', NULL, '1', 1, NULL, NULL, NULL, NULL, NULL),
(77, 76, 145, 'Madan Mahal', 'DH_42', 'Impacted', 'Retention plate@ per arch', '2000', NULL, NULL, 'completed', NULL, '2', 1, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`appoint_id`);

--
-- Indexes for table `appointment_notification`
--
ALTER TABLE `appointment_notification`
  ADD PRIMARY KEY (`notify_id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indexes for table `chief_complain_list`
--
ALTER TABLE `chief_complain_list`
  ADD PRIMARY KEY (`chief_id`);

--
-- Indexes for table `clinic_prescription`
--
ALTER TABLE `clinic_prescription`
  ADD PRIMARY KEY (`pr_id`);

--
-- Indexes for table `currencydetails`
--
ALTER TABLE `currencydetails`
  ADD PRIMARY KEY (`cr_id`);

--
-- Indexes for table `dental_examination`
--
ALTER TABLE `dental_examination`
  ADD PRIMARY KEY (`exm_id`),
  ADD KEY `appointment_id` (`appointment_id`);

--
-- Indexes for table `dental_prescription`
--
ALTER TABLE `dental_prescription`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appoint_id` (`appoint_id`);

--
-- Indexes for table `dental_treatment`
--
ALTER TABLE `dental_treatment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_id` (`exam_id`);

--
-- Indexes for table `drugs`
--
ALTER TABLE `drugs`
  ADD PRIMARY KEY (`drug_id`);

--
-- Indexes for table `employee_attendance`
--
ALTER TABLE `employee_attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `employee_complaints`
--
ALTER TABLE `employee_complaints`
  ADD PRIMARY KEY (`complain_id`);

--
-- Indexes for table `employee_leave`
--
ALTER TABLE `employee_leave`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_register`
--
ALTER TABLE `employee_register`
  ADD PRIMARY KEY (`sr_id`);

--
-- Indexes for table `employee_timeline`
--
ALTER TABLE `employee_timeline`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `examin_details`
--
ALTER TABLE `examin_details`
  ADD PRIMARY KEY (`examin_id`);

--
-- Indexes for table `expense_voucher`
--
ALTER TABLE `expense_voucher`
  ADD PRIMARY KEY (`voucher_id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`holiday_id`);

--
-- Indexes for table `inquiries`
--
ALTER TABLE `inquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `insurance_company`
--
ALTER TABLE `insurance_company`
  ADD PRIMARY KEY (`ins_id`);

--
-- Indexes for table `lab_details`
--
ALTER TABLE `lab_details`
  ADD PRIMARY KEY (`lab_id`);

--
-- Indexes for table `lab_tests`
--
ALTER TABLE `lab_tests`
  ADD PRIMARY KEY (`lab_tid`);

--
-- Indexes for table `otpcollections`
--
ALTER TABLE `otpcollections`
  ADD PRIMARY KEY (`otp_id`);

--
-- Indexes for table `patient_bills`
--
ALTER TABLE `patient_bills`
  ADD PRIMARY KEY (`bill_id`);

--
-- Indexes for table `patient_details`
--
ALTER TABLE `patient_details`
  ADD PRIMARY KEY (`uhid`);

--
-- Indexes for table `patient_disease`
--
ALTER TABLE `patient_disease`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_lab_details`
--
ALTER TABLE `patient_lab_details`
  ADD PRIMARY KEY (`testid`);

--
-- Indexes for table `patient_lab_test_details`
--
ALTER TABLE `patient_lab_test_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testid` (`testid`);

--
-- Indexes for table `patient_lab_test_reports`
--
ALTER TABLE `patient_lab_test_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testid` (`testid`);

--
-- Indexes for table `patient_test_notes`
--
ALTER TABLE `patient_test_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `test_id` (`testid`);

--
-- Indexes for table `patient_timeline`
--
ALTER TABLE `patient_timeline`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD PRIMARY KEY (`pay_id`);

--
-- Indexes for table `prescription_details`
--
ALTER TABLE `prescription_details`
  ADD PRIMARY KEY (`prescription_id`);

--
-- Indexes for table `purchase_inventory`
--
ALTER TABLE `purchase_inventory`
  ADD PRIMARY KEY (`pur_id`);

--
-- Indexes for table `quick_prescription`
--
ALTER TABLE `quick_prescription`
  ADD PRIMARY KEY (`qp_id`);

--
-- Indexes for table `security_amount`
--
ALTER TABLE `security_amount`
  ADD PRIMARY KEY (`sa_id`);

--
-- Indexes for table `sitting_bill`
--
ALTER TABLE `sitting_bill`
  ADD PRIMARY KEY (`sb_id`);

--
-- Indexes for table `staff_salary`
--
ALTER TABLE `staff_salary`
  ADD PRIMARY KEY (`sl_id`);

--
-- Indexes for table `super_admin`
--
ALTER TABLE `super_admin`
  ADD PRIMARY KEY (`sa_id`);

--
-- Indexes for table `treatment_list`
--
ALTER TABLE `treatment_list`
  ADD PRIMARY KEY (`treatment_id`);

--
-- Indexes for table `treatment_list_copy`
--
ALTER TABLE `treatment_list_copy`
  ADD PRIMARY KEY (`treatment_id`);

--
-- Indexes for table `treatment_package`
--
ALTER TABLE `treatment_package`
  ADD PRIMARY KEY (`tp_id`);

--
-- Indexes for table `treat_procedure_list`
--
ALTER TABLE `treat_procedure_list`
  ADD PRIMARY KEY (`treat_procedure_id`);

--
-- Indexes for table `treat_suggest`
--
ALTER TABLE `treat_suggest`
  ADD PRIMARY KEY (`ts_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `appoint_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `appointment_notification`
--
ALTER TABLE `appointment_notification`
  MODIFY `notify_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `branch_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `chief_complain_list`
--
ALTER TABLE `chief_complain_list`
  MODIFY `chief_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `clinic_prescription`
--
ALTER TABLE `clinic_prescription`
  MODIFY `pr_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencydetails`
--
ALTER TABLE `currencydetails`
  MODIFY `cr_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dental_examination`
--
ALTER TABLE `dental_examination`
  MODIFY `exm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `dental_prescription`
--
ALTER TABLE `dental_prescription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `dental_treatment`
--
ALTER TABLE `dental_treatment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `drugs`
--
ALTER TABLE `drugs`
  MODIFY `drug_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `employee_attendance`
--
ALTER TABLE `employee_attendance`
  MODIFY `attendance_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `employee_complaints`
--
ALTER TABLE `employee_complaints`
  MODIFY `complain_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_leave`
--
ALTER TABLE `employee_leave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employee_register`
--
ALTER TABLE `employee_register`
  MODIFY `sr_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `employee_timeline`
--
ALTER TABLE `employee_timeline`
  MODIFY `event_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `examin_details`
--
ALTER TABLE `examin_details`
  MODIFY `examin_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_voucher`
--
ALTER TABLE `expense_voucher`
  MODIFY `voucher_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `holiday_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inquiries`
--
ALTER TABLE `inquiries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `insurance_company`
--
ALTER TABLE `insurance_company`
  MODIFY `ins_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lab_details`
--
ALTER TABLE `lab_details`
  MODIFY `lab_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `lab_tests`
--
ALTER TABLE `lab_tests`
  MODIFY `lab_tid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `otpcollections`
--
ALTER TABLE `otpcollections`
  MODIFY `otp_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `patient_bills`
--
ALTER TABLE `patient_bills`
  MODIFY `bill_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `patient_disease`
--
ALTER TABLE `patient_disease`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `patient_lab_details`
--
ALTER TABLE `patient_lab_details`
  MODIFY `testid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `patient_lab_test_details`
--
ALTER TABLE `patient_lab_test_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `patient_lab_test_reports`
--
ALTER TABLE `patient_lab_test_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `patient_test_notes`
--
ALTER TABLE `patient_test_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `patient_timeline`
--
ALTER TABLE `patient_timeline`
  MODIFY `event_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1017;

--
-- AUTO_INCREMENT for table `payment_details`
--
ALTER TABLE `payment_details`
  MODIFY `pay_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prescription_details`
--
ALTER TABLE `prescription_details`
  MODIFY `prescription_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_inventory`
--
ALTER TABLE `purchase_inventory`
  MODIFY `pur_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `quick_prescription`
--
ALTER TABLE `quick_prescription`
  MODIFY `qp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `security_amount`
--
ALTER TABLE `security_amount`
  MODIFY `sa_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sitting_bill`
--
ALTER TABLE `sitting_bill`
  MODIFY `sb_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `staff_salary`
--
ALTER TABLE `staff_salary`
  MODIFY `sl_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `super_admin`
--
ALTER TABLE `super_admin`
  MODIFY `sa_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `treatment_list`
--
ALTER TABLE `treatment_list`
  MODIFY `treatment_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `treatment_list_copy`
--
ALTER TABLE `treatment_list_copy`
  MODIFY `treatment_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `treatment_package`
--
ALTER TABLE `treatment_package`
  MODIFY `tp_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `treat_procedure_list`
--
ALTER TABLE `treat_procedure_list`
  MODIFY `treat_procedure_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `treat_suggest`
--
ALTER TABLE `treat_suggest`
  MODIFY `ts_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `patient_lab_test_details`
--
ALTER TABLE `patient_lab_test_details`
  ADD CONSTRAINT `patient_lab_test_details_ibfk_1` FOREIGN KEY (`testid`) REFERENCES `patient_lab_details` (`testid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
