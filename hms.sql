-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 28, 2025 at 03:55 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', '123456', '04-03-2024 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int DEFAULT NULL,
  `userId` int DEFAULT NULL,
  `consultancyFees` int DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) NOT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `userStatus` int DEFAULT NULL,
  `doctorStatus` int DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(36, 'Orthopedics', 8, 6, 500, '2024-05-27', '4:00 PM', '2024-05-26 09:59:23', 1, 1, NULL),
(37, 'Orthopedics', 21, 6, 500, '2024-05-27', '4:00 PM', '2024-05-26 10:00:44', 1, 1, NULL),
(38, 'Obstetrics and Gynecology', 10, 5, 1300, '2024-05-26', '7:15 PM', '2024-05-26 11:51:32', 1, 1, NULL),
(39, 'Obstetrics and Gynecology', 10, 5, 1300, '2024-05-26', '6:00 PM', '2024-05-26 11:52:49', 1, 1, NULL),
(40, 'Orthopedics', 21, 5, 500, '2024-05-26', '6:00 PM', '2024-05-26 11:53:43', 1, 1, NULL),
(41, 'Ophthalmology', 20, 5, 500, '2024-05-26', '6:00 PM', '2024-05-26 11:54:39', 1, 1, NULL),
(42, 'Internal Medicine', 9, 3, 800, '2024-05-26', '5:00 PM', '2024-05-26 12:21:17', 1, 1, NULL),
(43, 'Orthopedics', 23, 6, 500, '2024-05-27', '7:30 AM', '2024-05-26 16:28:44', 1, 1, NULL),
(44, 'Obstetrics and Gynecology', 10, 6, 1300, '2024-05-27', '10:30 PM', '2024-05-26 16:30:19', 1, 1, NULL),
(45, 'Internal Medicine', 15, 6, 500, '2024-05-27', '8:30 PM', '2024-05-26 16:31:47', 1, 1, NULL),
(46, 'Internal Medicine', 15, 6, 500, '2024-05-27', '10:45 AM', '2024-05-26 16:33:44', 1, 1, NULL),
(47, 'Orthopedics', 8, 6, 500, '2024-05-27', '7:45 PM', '2024-05-26 16:35:30', 1, 1, NULL),
(48, 'General Surgery', 12, 6, 380, '2024-05-27', '6:45 PM', '2024-05-26 16:36:42', 1, 1, NULL),
(49, 'Orthopedics', 8, 6, 500, '2024-05-27', '5:45 PM', '2024-05-26 16:37:33', 1, 1, NULL),
(50, 'Internal Medicine', 9, 6, 800, '2024-05-27', '6:15 PM', '2024-05-26 16:38:34', 1, 1, NULL),
(51, 'Orthopedics', 8, 6, 500, '2024-05-27', '6:30 PM', '2024-05-26 16:39:15', 1, 1, NULL),
(52, 'Orthopedics', 8, 6, 500, '2024-05-28', '5:15 PM', '2024-05-27 11:07:47', 1, 1, NULL),
(53, 'Internal Medicine', 15, 6, 500, '2024-05-28', '5:00 PM', '2024-05-27 11:10:09', 1, 1, NULL),
(54, 'Pediatrics', 25, 6, 500, '2024-05-28', '5:30 PM', '2024-05-27 11:27:15', 1, 1, NULL),
(55, 'Orthopedics', 26, 6, 1400, '2024-05-28', '5:45 PM', '2024-05-27 11:36:43', 1, 1, NULL),
(56, 'Internal Medicine', 15, 6, 500, '2024-05-28', '2:30 PM', '2024-05-27 12:12:43', 1, 1, NULL),
(57, 'Neurologists', 24, 10, 1200, '2024-05-28', '12:30 AM', '2024-05-27 18:08:18', 1, 1, NULL),
(58, 'Orthopedics', 23, 3, 500, '2024-05-28', '3:00 AM', '2024-05-27 20:38:41', 1, 1, NULL),
(59, 'Orthopedics', 26, 3, 1400, '2024-05-28', '1:30 PM', '2024-05-28 07:07:19', 1, 1, NULL),
(60, 'Orthopedics', 26, 6, 1400, '2024-05-28', '2:30 PM', '2024-05-28 08:17:42', 1, 1, NULL),
(61, 'Dental Care', 13, 6, 1000, '2024-05-28', '2:30 PM', '2024-05-28 08:31:24', 1, 1, NULL),
(62, 'Orthopedics', 8, 4, 500, '2024-05-30', '7:00 PM', '2024-05-28 12:57:07', 1, 1, NULL),
(63, 'Neurologists', 46, 13, 700, '2025-09-25', '11:30 AM', '2025-09-25 05:58:05', 1, 1, NULL),
(64, 'ENT', 53, 13, 1500, '2025-09-26', '12:45 PM', '2025-09-25 06:36:17', 1, 1, NULL),
(65, 'Dermatology', 11, 13, 1300, '2025-09-30', '12:00 PM', '2025-09-26 18:00:07', 0, 1, '2025-09-26 18:00:18'),
(66, 'General Surgery', 54, 13, 200, '2025-09-30', '10:00 PM', '2025-09-27 15:51:01', 1, 1, NULL),
(67, 'ENT', 53, 13, 1500, '2025-09-28', '1', '2025-09-28 03:47:39', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `address` longtext,
  `docFees` varchar(255) DEFAULT NULL,
  `doctors_address` varchar(100) DEFAULT NULL,
  `contactno` bigint DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(255) DEFAULT NULL,
  `certificate` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `experience`, `address`, `docFees`, `doctors_address`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`, `status`, `certificate`) VALUES
(8, 'Orthopedics', 'Towhid', '2 Years++ MBBS in(orthopedics)FCPS(RUNNING)', 'Uttara', '500', NULL, 1984275821, 'towhid@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-19 20:43:48', '2024-05-27 18:24:06', NULL, NULL),
(9, 'Internal Medicine', 'Hafizur Rahman', '5 Years experience MBBS(Medicine)', 'Purbachal', '800', NULL, 2431454353, 'hafiz@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-19 20:44:23', '2024-05-27 18:27:25', NULL, NULL),
(10, 'Obstetrics and Gynecology', 'Mirza ', '3 Years++\nFCPS(Last year)', 'Mirpur', '1300', NULL, 1310943286, 'mirza@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-19 20:45:32', '2024-05-27 18:28:46', NULL, NULL),
(11, 'Dermatology', 'Hanif Haldar', '3 Years MBBS in(Dermatology)', 'Chittagong', '1300', NULL, 1310943286, 'hanif@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-19 20:46:23', '2024-05-27 18:25:05', NULL, NULL),
(12, 'General Surgery', 'abdullah', '3 Years ++\nMBBS(surgery)', 'horinpara', '380', NULL, 11111111111111, 'abdullah@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-19 23:30:15', '2024-05-27 18:28:14', NULL, NULL),
(13, 'Dental Care', 'rahat', '3 Years ++\nMBBS', 'barishal', '1000', NULL, 115704540000, 'rahar@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-19 23:31:36', '2024-05-27 18:45:55', NULL, NULL),
(14, 'Endocrinologists', 'riyajul', '3 Years', 'islampur', '4000', NULL, 233985767745, 'riyajul@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-19 23:33:23', '2024-05-26 08:37:18', NULL, NULL),
(15, 'Internal Medicine', 'ubaidul ', '3 Years', 'ibne sina hospital ', '500', NULL, 121389575, 'ubaidul@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-25 07:34:33', '2024-05-26 08:37:08', NULL, NULL),
(16, 'Pediatrics', 'jannatul ferdows', '3 Years', 'sigma clinic', '500', NULL, 12137867, 'jannatul@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-25 07:36:10', '2024-05-26 08:37:21', NULL, NULL),
(17, 'Anesthesia', 'raabil hasan', '3 Years', 'square hospital', '500', NULL, 9808909445, 'raabil@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-25 07:37:21', '2024-05-26 08:37:33', NULL, NULL),
(18, 'Anesthesia', 'urmi khaatun', '3 Years', 'square hospital ', '500', NULL, 9808909445, 'urmi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-25 07:38:17', '2024-05-26 08:37:41', NULL, NULL),
(19, 'General Surgery', 'rakib hasan', '3 Years', 'euro clinic', '500', NULL, 121389575, 'rakib@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-25 07:40:12', '2024-05-26 08:37:43', NULL, NULL),
(20, 'Ophthalmology', 'udoy ghosh ', '3 Years', 'ahsania hospital ', '500', NULL, 3278475, 'udoy@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-25 07:41:13', '2024-05-26 08:37:35', NULL, NULL),
(21, 'Orthopedics', 'beauti khatun ', '3 Years', 'al arfah clinic ', '500', NULL, 9808909445, 'beauti@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-25 07:42:53', '2024-05-26 08:37:46', NULL, NULL),
(22, 'Orthopedics', 'Mitul Rahman', '5 years ', 'sherpur clinic & diagonistic center', '1400', NULL, 1918320432, 'mitul@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-26 12:52:19', '2024-05-26 13:27:02', NULL, NULL),
(23, 'Orthopedics', 'Muktadir Rahman', '5years MBBS,FCPS(ORTHOPEDICS) ', 'square Hospital ', '500', NULL, 1111111111, 'miuktadir@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-26 12:58:18', '2024-05-26 16:26:54', NULL, NULL),
(24, 'Neurologists', 'sobuj', '3 years++ MBBS(neurologists)', 'ibn Sina', '1200', NULL, 1984275821, 'sobuj@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-27 11:13:07', '2024-05-27 18:10:47', NULL, NULL),
(25, 'Pediatrics', 'ikram', '', 'ibn Sina', '500', NULL, 1310943286, 'ikram@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-27 11:20:55', NULL, NULL, NULL),
(26, 'Orthopedics', 'Sifat', '7years', 'uttara', '1400', NULL, 2431454353, 'sifat@mail.com', '25d55ad283aa400af464c76d713c07ad', '2024-05-27 11:33:50', NULL, NULL, NULL),
(27, 'Radiology', 'jubayer alom', '3 years++ FCPS(RUNNING)', 'sherpur', '1000', NULL, 3333333555, 'jubayer@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-27 21:53:58', NULL, NULL, NULL),
(28, 'Obstetrics and Gynecology', 'ritu nasrin', 'MBBS(Gynecology)', 'kalipara,mirpur', '800', NULL, 1712518810, 'ritu@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-27 21:56:17', NULL, NULL, NULL),
(29, 'Anesthesia', 'rubel Hossain', 'MBBS(intern in Square)', 'barishal clinic', '300', NULL, 1843174219, 'rubel@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-27 21:59:22', NULL, NULL, NULL),
(30, 'Radiology', 'liton kumar ', 'MBBS\r\n\r\n', 'york in new', '280', NULL, 1712518810, 'liton@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-27 22:03:41', NULL, NULL, NULL),
(31, 'Endocrinologists', 'boruya dhor', '3years+ Working in Square hospital', 'savar', '700', NULL, 1918320432, 'boruya@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-27 22:05:45', NULL, NULL, NULL),
(32, 'Dermatologists', 'kiron saha', 'MBBS', 'bogora', '200', NULL, 1712518810, 'kiron@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-27 22:07:19', NULL, NULL, NULL),
(33, 'Neurologists', 'sumiya islam', 'FCPS(2nd part) working in janalpur ', 'kazipara', '800', NULL, 1984275821, 'sumaiya@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-27 22:09:04', NULL, NULL, NULL),
(34, 'Pathology', 'suruj uddin ahmed', 'MD(Pathology) MBBS(Dhaka Medical College)', 'sherpur', '800', NULL, 1712518810, 'suruj@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-27 22:11:42', NULL, NULL, NULL),
(35, 'Ophthalmology', 'dolon biswas', 'MBBS', 'mirpur', '500', NULL, 2431454353, 'dolon@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-27 22:13:23', NULL, NULL, NULL),
(36, 'Pediatrics', 'tanvir Ahmed ', 'MBBS', 'norail clinic ', '100', NULL, 1712518810, 'tanvir@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-27 22:15:33', NULL, NULL, NULL),
(37, 'General Surgery', 'mitu ara', 'MBBS(DMC)FCPS(LONDON)', 'kamarpara', '1400', NULL, 1310943286, 'mituara@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-27 22:17:12', NULL, NULL, NULL),
(38, 'General Surgery', 'boirov Chowdhory', 'MBBS(surgeon) working in Mymensingh', 'Comilla', '1200', NULL, 1918320432, 'boirov@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-27 22:19:24', NULL, NULL, NULL),
(39, 'Pediatrics', 'kazi jahir raihan', 'MBBS(Intern in ibne sina)', 'mirpur', '500', NULL, 2431454353, 'kazi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-27 22:21:11', NULL, NULL, NULL),
(40, 'Obstetrics and Gynecology', 'Naeem mia', 'MBBS,FCPS Working in northeast clinic', 'Chittagong', '2000', NULL, 1984275821, 'naeem@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-27 22:23:05', NULL, NULL, NULL),
(41, 'Dermatology', 'motaleb hasan', 'MBBS(DMC)', 'sherpur', '1200', NULL, 1310943286, 'motaleb@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-27 22:24:18', NULL, NULL, NULL),
(42, 'Ophthalmology', 'parvin nasrin', '7 YEARS ++', 'sherpur', '1200', NULL, 2431454353, 'parvin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-27 22:25:52', NULL, NULL, NULL),
(43, 'Radiology', 'rezu iskam', 'MBBS', 'parborta jenaidoho', '1200', NULL, 1712518810, 'rezu@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-27 22:27:15', NULL, NULL, NULL),
(44, 'Obstetrics and Gynecology', 'pranto Haque', 'FCPS(running)', 'sherpur\r\n', '1200', NULL, 1310943286, 'pranto@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-27 22:28:59', NULL, NULL, NULL),
(45, 'Dermatologists', 'sakib Ak hasan ', 'MBBS', 'magura', '700', NULL, 1712518810, 'sakib@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-27 22:40:01', NULL, NULL, NULL),
(46, 'Neurologists', 'Tamim Iqbal', '8+ years working in barishal clinic', 'barishal\r\n', '700', NULL, 1843174219, 'tamim@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-27 22:41:55', NULL, NULL, NULL),
(47, 'Internal Medicine', 'Asif Rakib', 'MBBS,FCPS', 'Uk', '1000', NULL, 1712518810, 'asif@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-27 22:46:51', NULL, NULL, NULL),
(48, 'Dermatologists', 'Abhijit SARKER', '10 years+', 'Chandpur', '1400', NULL, 1918320432, 'abhijit@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-27 22:48:30', NULL, NULL, NULL),
(49, 'Anesthesia', 'nayan sarker ', 'MBBS', 'birulia', '1400', NULL, 2431454353, 'nayan@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-27 22:49:29', NULL, NULL, NULL),
(50, 'Dental Care', 'mushfiq rahim', '6 Years+ working in DMC', 'rajshahi', '1400', NULL, 1918320432, 'mushfiq@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-27 22:50:58', NULL, NULL, NULL),
(51, 'Neurologists', 'shithi saha', 'FCPS,MD(LONDON)', 'sherpur', '1400', NULL, 2431454353, 'shithi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-27 22:52:12', NULL, NULL, NULL),
(52, 'Neurologists', 'gipi', '5yeras', 'sherpur', '30000', NULL, 5454545454, 'gipi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-28 09:34:33', NULL, NULL, NULL),
(53, 'ENT', 'Abir Hasan', '5+ Years of FCPS Practical Patient Surgery', 'Dhaka,City - FarmGate: 1632', '1500', NULL, 1986557505, 'tamamabir@gmail.com', '96de5ca86452b4cf64286744d04eeaf5', '2025-09-25 06:12:32', NULL, NULL, NULL),
(54, 'General Surgery', 'Tanzina Khan', '2 years in Surgery', 'America', '200', NULL, 123456789, 'tanzina@gmail.com', '97279a47336306ad51a9c9bcdd43524f', '2025-09-27 15:50:00', NULL, NULL, NULL),
(64, 'Dental Care', 'Tanzina Khan', 'asdfdsf', 'dsafdsaf', '1500', NULL, 4543656435, 'titu@gmail.com', 'a257a91001c2575f1989948a5c923e3c', '2025-09-28 02:51:12', NULL, NULL, '68d8a2a068051_Paramedical Courses.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int NOT NULL,
  `uid` int DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2024-05-16 05:19:33', NULL, 1),
(2, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2024-05-16 09:01:03', '16-05-2024 02:37:32 PM', 1),
(3, 9, 'hafiz@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-21 06:49:06', '21-05-2024 12:20:38 PM', 1),
(4, NULL, 'rahat@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-21 06:54:06', NULL, 0),
(5, 13, 'rahar@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-21 06:54:49', NULL, 1),
(6, NULL, 'rahar@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-21 09:08:59', NULL, 0),
(7, NULL, 'touhid@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-21 09:09:11', NULL, 0),
(8, 8, 'towhid@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-21 09:09:57', '21-05-2024 02:42:13 PM', 1),
(9, 9, 'hafiz@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-21 13:46:02', NULL, 1),
(10, 9, 'hafiz@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-22 07:27:17', '22-05-2024 01:42:57 PM', 1),
(11, 8, 'towhid@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-22 08:13:31', NULL, 1),
(12, 10, 'mirza@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-22 19:45:12', NULL, 1),
(13, NULL, 'muktadir@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-26 13:28:26', NULL, 0),
(14, 22, 'mitul@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-26 13:29:04', NULL, 1),
(15, NULL, 'beuti@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-27 08:32:47', NULL, 0),
(16, 9, 'hafiz@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-27 08:33:01', NULL, 1),
(17, 13, 'rahar@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-27 15:05:18', '27-05-2024 08:47:04 PM', 1),
(18, 52, 'gipi@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-28 09:37:36', '28-05-2024 03:07:47 PM', 1),
(19, 8, 'towhid@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-28 09:38:59', '28-05-2024 03:12:09 PM', 1),
(20, 53, 'tamamabir@gmail.com', 0x3a3a3100000000000000000000000000, '2025-09-25 06:13:36', NULL, 1),
(21, 53, 'tamamabir@gmail.com', 0x3a3a3100000000000000000000000000, '2025-09-25 06:26:22', '25-09-2025 12:24:30 PM', 1),
(22, 53, 'tamamabir@gmail.com', 0x3a3a3100000000000000000000000000, '2025-09-25 06:54:44', NULL, 1),
(23, 53, 'tamamabir@gmail.com', 0x3a3a3100000000000000000000000000, '2025-09-26 16:17:08', '26-09-2025 10:39:36 PM', 1),
(24, 53, 'tamamabir@gmail.com', 0x3a3a3100000000000000000000000000, '2025-09-26 17:13:00', NULL, 1),
(25, 53, 'tamamabir@gmail.com', 0x3a3a3100000000000000000000000000, '2025-09-26 17:18:21', '26-09-2025 10:56:07 PM', 1),
(26, 53, 'tamamabir@gmail.com', 0x3a3a3100000000000000000000000000, '2025-09-27 09:07:41', '27-09-2025 02:38:49 PM', 1),
(27, 53, 'tamamabir@gmail.com', 0x3a3a3100000000000000000000000000, '2025-09-27 15:36:06', '27-09-2025 09:17:28 PM', 1),
(28, 54, 'tanzina@gmail.com', 0x3a3a3100000000000000000000000000, '2025-09-27 15:50:23', '27-09-2025 09:20:32 PM', 1),
(29, 54, 'tanzina@gmail.com', 0x3a3a3100000000000000000000000000, '2025-09-27 15:51:21', NULL, 1),
(30, 53, 'tamamabir@gmail.com', 0x3a3a3100000000000000000000000000, '2025-09-28 02:04:39', '28-09-2025 07:38:27 AM', 1),
(31, 53, 'tamamabir@gmail.com', 0x3a3a3100000000000000000000000000, '2025-09-28 02:53:10', '28-09-2025 08:49:25 AM', 1),
(32, 53, 'tamamabir@gmail.com', 0x3a3a3100000000000000000000000000, '2025-09-28 03:47:56', '28-09-2025 09:24:19 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Orthopedics', '2024-04-09 18:09:46', '2024-05-14 09:26:47'),
(3, 'Obstetrics and Gynecology', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(4, 'Dermatology', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(5, 'Pediatrics', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(6, 'Radiology', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(7, 'General Surgery', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(8, 'Ophthalmology', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(9, 'Anesthesia', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(10, 'Pathology', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(11, 'ENT', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(12, 'Dental Care', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(13, 'Dermatologists', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(14, 'Endocrinologists', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(15, 'Neurologists', '2024-04-09 18:09:46', '2024-05-14 09:26:56');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint DEFAULT NULL,
  `message` mediumtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `AdminRemark` mediumtext,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `IsRead` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(3, 'faisal tanim', 'faysal@gmail.com', 22222222, 'I want to talk about my booking issues', '2024-05-19 22:56:14', 'ok we are calling you\r\n', '2024-05-21 09:21:28', 1),
(4, 'fahmida', 'fahmida@gmail.com', 22222222, 'I want an appointment for orthopedics\r\n', '2024-05-27 07:50:19', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int NOT NULL,
  `PatientID` int DEFAULT NULL,
  `BloodPressure` int DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` int DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `appoint_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`, `appoint_id`) VALUES
(4, 15, 79, '13', 90, '100', ' alertrol - 1+1+1\r\n\r\nNapa -0+1+1\r\n', '2024-05-22 08:17:06', 15),
(5, 16, 79, '13', 90, '100', 'fgrdgrtfdgrtfd', '2024-05-22 08:41:15', 16),
(6, 17, 79, '13', 90, '100', 'hygn syrgm', '2024-05-22 19:45:38', 17),
(7, 46, 79, '13', 90, '100', 'napa', '2024-05-27 08:34:00', 50),
(8, 38, 79, '13', 90, '100', 'good', '2024-05-27 08:44:19', 42),
(9, 48, 79, '13', 90, 'nill', 'napa', '2024-05-28 09:40:06', 52);

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int NOT NULL,
  `PageType` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `PageTitle` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `PageDescription` mediumtext COLLATE utf8mb4_general_ci,
  `Email` varchar(120) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `MobileNumber` bigint DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `OpenningTime` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `OpenningTime`) VALUES
(1, 'aboutus', 'About Us', 'How is your health today? sound not good don\'t worry. Find your doctor online book as you wish with Sigma Healthcare. we offer free doctor channeling service, so make your appointment Now. This is the best online healthcare hospital in Bangladesh. ', NULL, NULL, '2020-05-20 07:21:52', NULL),
(2, 'contactus', 'Contact Details', 'Road-18, House-93, Sector-05, Uttara, Dhaka-1230', 'healtcare@gmail.com', 8801310900097, '2020-05-20 07:24:07', '24 hours');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int NOT NULL,
  `Docid` int DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` int DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext,
  `PatientAge` int DEFAULT NULL,
  `PatientMedhis` mediumtext,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `appoint_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`, `appoint_id`) VALUES
(32, 8, 'Ini ', 6, 'ini@gmail.com', 'female', 'Pollibiddut', 67, NULL, '2024-05-26 09:59:23', '2024-05-27 19:59:38', 36),
(33, 21, 'Ini ', 0, 'ini@gmail.com', 'female', 'Pollibiddut', 67, NULL, '2024-05-26 10:00:44', '2024-05-27 17:27:09', 37),
(34, 10, 'Touhidul Islam', 0, 'touhid@gmail.com', 'male', 'Pollibiddut', 55, NULL, '2024-05-26 11:51:32', '2024-05-27 17:26:59', 38),
(35, 10, 'Touhidul Islam', 2147483647, 'touhid@gmail.com', 'male', 'Pollibiddut', 55, NULL, '2024-05-26 11:52:49', '2024-05-27 18:18:38', 39),
(36, 21, 'Touhidul Islam', 0, 'touhid@gmail.com', 'male', 'Pollibiddut', 55, NULL, '2024-05-26 11:53:43', '2024-05-27 17:27:17', 40),
(37, 20, 'Touhidul Islam', 0, 'touhid@gmail.com', 'male', 'Pollibiddut', 55, NULL, '2024-05-26 11:54:39', '2024-05-27 17:28:03', 41),
(38, 9, 'Farjana Rahman', 999999999, 'farjana@gmail.com', 'female', 'Gazipur', 22, NULL, '2024-05-26 12:21:17', '2024-05-27 19:58:54', 42),
(39, 23, 'Ini ', 0, 'ini@gmail.com', 'female', 'Pollibiddut', 0, NULL, '2024-05-26 16:28:44', NULL, 43),
(40, 10, 'Ini ', 0, 'ini@gmail.com', 'female', 'Pollibiddut', 55, NULL, '2024-05-26 16:30:19', '2024-05-27 17:28:10', 44),
(41, 15, 'Ini ', 0, 'ini@gmail.com', 'female', 'Pollibiddut', 0, NULL, '2024-05-26 16:31:47', NULL, 45),
(42, 15, 'Ini ', 0, 'ini@gmail.com', 'female', 'Pollibiddut', 0, NULL, '2024-05-26 16:33:44', NULL, 46),
(43, 8, 'Ini ', 0, 'ini@gmail.com', 'female', 'Pollibiddut', 0, NULL, '2024-05-26 16:35:30', NULL, 47),
(44, 12, 'Ini ', 0, 'ini@gmail.com', 'female', 'Pollibiddut', 0, NULL, '2024-05-26 16:36:42', NULL, 48),
(45, 8, 'Ini ', 0, 'ini@gmail.com', 'female', 'Pollibiddut', 0, NULL, '2024-05-26 16:37:33', NULL, 49),
(46, 9, 'Ini ', 0, 'ini@gmail.com', 'female', 'Pollibiddut', 0, NULL, '2024-05-26 16:38:34', NULL, 50),
(47, 8, 'Ini ', 0, 'ini@gmail.com', 'female', 'Pollibiddut', 0, NULL, '2024-05-26 16:39:15', NULL, 51),
(48, 8, 'Ini ', 0, 'ini@gmail.com', 'female', 'Pollibiddut', 0, NULL, '2024-05-27 11:07:47', NULL, 52),
(49, 15, 'Ini ', 0, 'ini@gmail.com', 'female', 'Pollibiddut', 0, NULL, '2024-05-27 11:10:09', NULL, 53),
(50, 25, 'Ini ', 0, 'ini@gmail.com', 'female', 'Pollibiddut', 0, NULL, '2024-05-27 11:27:15', NULL, 54),
(51, 26, 'Ini ', 0, 'ini@gmail.com', 'female', 'Pollibiddut', 0, NULL, '2024-05-27 11:36:43', NULL, 55),
(52, 15, 'Ini ', 0, 'ini@gmail.com', 'female', 'Pollibiddut', 0, NULL, '2024-05-27 12:12:43', NULL, 56),
(53, 24, 'afrin jaman', 2147483647, 'afrin@gmail.com', 'female', 'savar', 25, NULL, '2024-05-27 18:08:18', NULL, 57),
(54, 23, 'Farjana Rahman', 0, 'farjana@gmail.com', 'female', 'Gazipur', 22, NULL, '2024-05-27 20:38:41', NULL, 58),
(55, 26, 'Farjana Rahman', 2147483647, 'farjana@gmail.com', 'female', 'Gazipur', 22, NULL, '2024-05-28 07:07:19', NULL, 59),
(56, 26, 'Ini ', 2147483647, 'ini@gmail.com', 'female', 'Pollibiddut', 67, NULL, '2024-05-28 08:17:42', NULL, 60),
(57, 13, 'Ini ', 2147483647, 'ini@gmail.com', 'female', 'Pollibiddut', 67, NULL, '2024-05-28 08:31:24', NULL, 61),
(58, 8, 'Sadik Samin', 999999999, 'sadik@gmail.com', 'male', 'Shepur, ', 33, NULL, '2024-05-28 12:57:07', NULL, 62),
(59, 46, 'Abir', 1986557505, 'tamamabir@gmail.com', 'male', 'Shagufta Road', 21, NULL, '2025-09-25 05:58:05', NULL, 63),
(60, 53, 'Abir', 1986557505, 'tamamabir@gmail.com', 'Male', 'Shagufta Road', 21, 'Divorced Sadness. Mental Sick.', '2025-09-25 06:36:17', '2025-09-26 17:24:55', 64),
(61, 11, 'Abir', 1986557505, 'tamamabir@gmail.com', 'male', 'Shagufta Road', 21, NULL, '2025-09-26 18:00:07', NULL, 65),
(62, 54, 'Abir', 1986557505, 'tamamabir@gmail.com', 'male', 'Shagufta Road', 21, NULL, '2025-09-27 15:51:01', NULL, 66),
(63, 53, 'Abir', 1986557505, 'tamamabir@gmail.com', 'male', 'Shagufta Road', 21, NULL, '2025-09-28 03:47:39', NULL, 67);

-- --------------------------------------------------------

--
-- Table structure for table `tblprescriptions`
--

CREATE TABLE `tblprescriptions` (
  `id` int NOT NULL,
  `patient_id` int NOT NULL,
  `appoint_id` int NOT NULL,
  `date` varchar(255) NOT NULL,
  `unique_code` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tblprescriptions`
--

INSERT INTO `tblprescriptions` (`id`, `patient_id`, `appoint_id`, `date`, `unique_code`) VALUES
(2, 60, 64, '2025-09-26 22:23:57', '68D6BE1D0AF43'),
(3, 60, 64, '2025-09-26 23:04:16', '68D6C790686BD'),
(4, 60, 64, '2025-09-26 23:14:54', '68D6CA0E436C2'),
(5, 62, 66, '2025-09-27 21:53:27', '68D808770F678');

-- --------------------------------------------------------

--
-- Table structure for table `tblprescription_medicines`
--

CREATE TABLE `tblprescription_medicines` (
  `prescription_id` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `medicine_name` varchar(500) NOT NULL,
  `dose` varchar(255) NOT NULL,
  `timing` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `instructions` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tblprescription_medicines`
--

INSERT INTO `tblprescription_medicines` (`prescription_id`, `medicine_name`, `dose`, `timing`, `duration`, `instructions`) VALUES
('68D6BE1D0AF43', 'Paracetamol', '500mg', '1+0+1', '7 Days', 'After Meal'),
('68D6BE1D0AF43', 'Fexofenadin', '120mg', '0+0+1', '7 Days', ''),
('68D6C790686BD', 'Desloratadin', '5mg', '0+1+0', '7 Days', 'After Meal'),
('68D6CA0E436C2', 'Paracetamol', '500mg', '1+1+0', '7 Days', 'After Meal'),
('68D6CA0E436C2', 'Desloratadin', '5mg', '1+1+1', '7 Days', ''),
('68D808770F678', 'Pantonix', '20mg', '1+0+1', '7 Days', 'Before Meal'),
('68D808770F678', 'Cefixime', '500mg', '1+0+1', '7 Days', 'After Meal');

-- --------------------------------------------------------

--
-- Table structure for table `tbltimes`
--

CREATE TABLE `tbltimes` (
  `id` int NOT NULL,
  `doctor_id` int NOT NULL,
  `t_from` time(6) NOT NULL,
  `t_to` time(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbltimes`
--

INSERT INTO `tbltimes` (`id`, `doctor_id`, `t_from`, `t_to`) VALUES
(1, 53, '22:16:00.000000', '00:18:00.000000'),
(3, 53, '10:30:00.000000', '12:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int NOT NULL,
  `uid` int DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(3, 6, 'ini@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-19 20:38:40', '20-05-2024 02:08:45 AM', 1),
(4, 5, 'touhid@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-19 20:38:57', '20-05-2024 02:09:02 AM', 1),
(5, 3, 'farjana@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-19 20:39:14', '20-05-2024 02:09:20 AM', 1),
(6, 4, 'sadik@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-19 20:39:33', '20-05-2024 02:09:37 AM', 1),
(7, 4, 'sadik@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-21 06:51:39', '21-05-2024 01:26:44 PM', 1),
(8, 7, 'akash@london.com', 0x3a3a3100000000000000000000000000, '2024-05-21 07:57:03', NULL, 1),
(9, 8, 'farhan@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-21 09:05:41', '21-05-2024 02:38:36 PM', 1),
(10, 8, 'farhan@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-21 09:12:34', '21-05-2024 02:45:03 PM', 1),
(11, 8, 'farhan@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-21 09:32:56', NULL, 1),
(12, 4, 'sadik@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-21 12:00:40', NULL, 1),
(13, 3, 'farjana@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-21 13:19:15', NULL, 1),
(14, 3, 'farjana@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-21 13:22:13', NULL, 1),
(15, 3, 'farjana@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-21 13:28:25', NULL, 1),
(16, 4, 'sadik@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-21 13:46:27', NULL, 1),
(17, 3, 'farjana@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-22 07:26:37', NULL, 1),
(18, 6, 'ini@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-22 19:32:52', '23-05-2024 01:21:22 AM', 1),
(19, 4, 'sadik@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-24 17:58:30', NULL, 1),
(20, 4, 'sadik@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-24 18:32:11', NULL, 1),
(21, 6, 'ini@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-26 07:58:26', NULL, 1),
(22, 6, 'ini@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-26 07:59:58', NULL, 1),
(23, 6, 'ini@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-26 08:56:36', NULL, 1),
(24, 6, 'ini@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-26 08:57:45', '26-05-2024 03:41:13 PM', 1),
(25, 5, 'touhid@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-26 11:50:57', NULL, 1),
(26, 3, 'farjana@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-26 12:16:18', '26-05-2024 06:16:15 PM', 1),
(27, 5, 'touhid@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-26 13:24:28', NULL, 1),
(28, 6, 'ini@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-26 16:24:39', NULL, 1),
(29, 6, 'ini@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-26 21:08:47', NULL, 1),
(30, 6, 'ini@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-26 23:01:37', NULL, 1),
(31, 6, 'ini@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-27 08:26:05', '27-05-2024 01:59:02 PM', 1),
(32, 3, 'farjana@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-27 08:29:11', NULL, 1),
(33, 3, 'farjana@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-27 08:31:01', '27-05-2024 02:02:20 PM', 1),
(34, 4, 'sadik@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-27 08:35:25', NULL, 1),
(35, 4, 'sadik@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-27 08:38:14', NULL, 1),
(36, 6, 'ini@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-27 08:45:56', NULL, 1),
(37, 6, 'ini@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-27 10:52:53', NULL, 1),
(38, 6, 'ini@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-27 10:56:04', NULL, 1),
(39, 6, 'ini@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-27 11:08:52', '27-05-2024 04:40:35 PM', 1),
(40, 3, 'farjana@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-27 11:13:22', '27-05-2024 04:44:56 PM', 1),
(41, 6, 'ini@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-27 11:36:21', NULL, 1),
(42, 6, 'ini@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-27 12:12:20', NULL, 1),
(43, 6, 'ini@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-27 15:50:15', '27-05-2024 10:59:02 PM', 1),
(44, 10, 'afrin@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-27 18:07:45', '27-05-2024 11:43:57 PM', 1),
(45, 3, 'farjana@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-27 18:14:15', NULL, 1),
(46, 3, 'farjana@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-27 19:52:44', NULL, 1),
(47, 3, 'farjana@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-27 20:38:22', '28-05-2024 02:10:07 AM', 1),
(48, 3, 'farjana@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-28 06:54:53', NULL, 1),
(49, 6, 'ini@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-28 08:17:06', '28-05-2024 01:49:49 PM', 1),
(50, 6, 'ini@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-28 08:30:09', NULL, 1),
(51, 4, 'sadik@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-28 08:56:06', NULL, 1),
(52, 4, 'sadik@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-28 09:01:14', NULL, 1),
(53, 4, 'sadik@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-28 09:20:49', NULL, 1),
(54, 6, 'ini@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-28 09:42:22', '28-05-2024 03:29:47 PM', 1),
(55, 4, 'sadik@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-28 12:45:15', NULL, 1),
(56, 6, 'ini@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-28 12:50:28', NULL, 1),
(57, 6, 'ini@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-28 18:44:36', '29-05-2024 12:21:10 AM', 1),
(58, 4, 'sadik@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-28 19:08:45', NULL, 1),
(59, 13, 'tamamabir@gmail.com', 0x3a3a3100000000000000000000000000, '2025-09-25 05:56:23', '25-09-2025 11:33:31 AM', 1),
(60, 13, 'tamamabir@gmail.com', 0x3132372e302e302e3100000000000000, '2025-09-25 06:35:49', '25-09-2025 12:26:45 PM', 1),
(61, 13, 'tamamabir@gmail.com', 0x3a3a3100000000000000000000000000, '2025-09-26 17:09:52', '26-09-2025 10:40:38 PM', 1),
(62, 13, 'tamamabir@gmail.com', 0x3a3a3100000000000000000000000000, '2025-09-26 17:26:15', '26-09-2025 11:30:35 PM', 1),
(63, 13, 'tamamabir@gmail.com', 0x3a3a3100000000000000000000000000, '2025-09-27 09:08:57', '27-09-2025 02:40:10 PM', 1),
(64, 13, 'tamamabir@gmail.com', 0x3a3a3100000000000000000000000000, '2025-09-27 15:50:41', '27-09-2025 09:21:04 PM', 1),
(65, 13, 'tamamabir@gmail.com', 0x3a3a3100000000000000000000000000, '2025-09-28 03:19:37', '28-09-2025 09:17:44 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `phone` int DEFAULT NULL,
  `age` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`, `phone`, `age`) VALUES
(3, 'Farjana Rahman', 'Gazipur', 'Dhaka', 'female', 'farjana@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-19 20:36:32', '2024-05-28 07:06:14', 2147483647, 22),
(4, 'Sadik Samin', 'Shepur, ', 'Sherpur Sadar', 'male', 'sadik@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-19 20:37:02', '2024-05-27 17:10:38', 999999999, 33),
(5, 'Touhidul Islam', 'Pollibiddut', 'Savar ', 'male', 'touhid@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-19 20:37:29', '2024-05-27 17:10:46', 999999999, 55),
(6, 'Ini ', 'Pollibiddut', 'Savar ', 'female', 'ini@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-19 20:38:03', '2024-05-27 17:11:01', 2147483647, 67),
(7, 'Akash Tara', 'barlington, UK', 'London', 'male', 'akash@london.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-21 07:45:25', NULL, 2147483647, 44),
(8, 'farhan hasan', 'dhaka', 'Dhaka', 'male', 'farhan@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-21 09:04:50', NULL, 176483878, 30),
(9, 'farhan hasan', 'dhaka', 'Dhaka', 'male', 'farhan@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-21 09:05:04', NULL, 176483878, 30),
(10, 'afrin jaman', 'savar', 'dhaka', 'female', 'afrin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-27 18:04:35', NULL, 2147483647, 25),
(11, 'asad', 'comilla', 'comilla', 'male', 'asad@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-27 18:06:54', NULL, 2147483647, 30),
(12, 'ZARA', 'Sribordi', 'Sherpur Sadar', 'female', 'zara@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-27 21:47:47', NULL, 2147483647, 17),
(13, 'Abir', 'Shagufta Road', 'Dhaka', 'male', 'tamamabir@gmail.com', '96de5ca86452b4cf64286744d04eeaf5', '2025-09-25 05:56:10', NULL, 1986557505, 21);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblprescriptions`
--
ALTER TABLE `tblprescriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltimes`
--
ALTER TABLE `tbltimes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `tblprescriptions`
--
ALTER TABLE `tblprescriptions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbltimes`
--
ALTER TABLE `tbltimes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
