-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2025 at 05:12 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thunderbolts`
--

-- --------------------------------------------------------

--
-- Table structure for table `academies`
--

CREATE TABLE `academies` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `academies`
--

INSERT INTO `academies` (`id`, `title`, `active`, `createdAt`, `updatedAt`) VALUES
(1, 'Individual Sports', 1, '2024-12-18 09:06:37', '2024-12-18 09:06:37'),
(2, 'Squad Sports', 1, '2024-12-18 09:06:51', '2024-12-18 09:06:51');

-- --------------------------------------------------------

--
-- Table structure for table `agegroups`
--

CREATE TABLE `agegroups` (
  `id` int(11) NOT NULL,
  `ageGroup` varchar(255) NOT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `imageKey` varchar(255) DEFAULT NULL,
  `bucket` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `programId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int(11) NOT NULL,
  `applicantName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `resumeUrl` varchar(255) DEFAULT NULL,
  `coverLetter` text,
  `status` enum('pending','reviewed','interviewed','accepted','rejected') DEFAULT 'pending',
  `appliedDate` datetime DEFAULT NULL,
  `careerId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `salary_range` varchar(50) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `certificate`
--

CREATE TABLE `certificate` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `excelFile` varchar(255) DEFAULT NULL,
  `excelFileKey` varchar(255) DEFAULT NULL,
  `bucket` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `generatedCertificates` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `message` text,
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `firstName`, `lastName`, `email`, `message`, `verified`, `createdAt`, `updatedAt`) VALUES
(1, 'Rajeeb', 'JOSHI', 'rajeebjoshi676@gmail.com', NULL, 0, '2024-10-22 16:59:08', '2024-10-22 16:59:08'),
(2, 'Rajeeb ', 'Joshi', 'rajeebjoshi676@gmail.com', 'Hello sir /madam .\nWhat are the events are there in this year thunderbolts cup. ', 0, '2024-10-22 17:01:27', '2024-10-22 17:01:27'),
(3, 'Vivek ', 'Chand', 'vivek@ullens.edu.np', '', 0, '2024-10-28 05:45:10', '2024-10-28 05:45:10'),
(4, 'Vivek ', 'Chand', 'vivek@ullens.edu.np', '', 0, '2024-10-28 07:13:50', '2024-10-28 07:13:50'),
(5, 'sidh', 'lama', 'segawax187@evvgo.com', '', 0, '2024-11-12 09:11:29', '2024-11-12 09:11:29'),
(6, 'Rajan ', 'Neupane', 'ecacca@chelsea.edu.np', NULL, 0, '2024-11-17 05:36:31', '2024-11-17 05:36:31'),
(7, 'Rajan ', 'Neupane', 'rajan@chelsea.edu.np', ' Good morning , Confirmed For U -12 gilrs for Table tennis. Thank you. ', 0, '2024-11-22 05:43:16', '2024-11-22 05:43:16'),
(8, 'Rajan ', 'Neupane', 'mail@rajan.edu.np', 'Confirmed.', 0, '2024-11-22 05:47:28', '2024-11-22 05:47:28'),
(9, 'Rajan ', 'Neupane', 'mail@rajan.edu.np', 'Confirmed', 0, '2024-11-22 05:48:40', '2024-11-22 05:48:40'),
(10, 'Rajan ', 'Neupane', 'mail@rajan.edu.np', 'Confirmed', 0, '2024-11-22 05:49:00', '2024-11-22 05:49:00'),
(11, 'Rajan ', 'Neupane', 'mail@rajan.edu.np', 'Confirmation of U- 12 cricket ', 0, '2024-11-22 05:51:51', '2024-11-22 05:51:51'),
(12, 'Rajan ', 'Neupane', 'mail@rajan.edu.np', '', 0, '2024-11-22 05:52:06', '2024-11-22 05:52:06'),
(13, 'Bimokshya ', 'Mahat', 'mahatbimokshya@gmail.com', '', 0, '2024-11-23 11:05:57', '2024-11-23 11:05:57'),
(14, 'Brijesh ', 'Aryal', 'bluebirdsecondaryschool@gmail.com', 'Under 18 boys category', 0, '2024-12-02 09:17:56', '2024-12-02 09:17:56'),
(15, 'Brijesh', 'Aryal', 'bluebirdsecondaryschool@gmail.com', '', 0, '2024-12-03 02:09:38', '2024-12-03 02:09:38'),
(16, 'Ankit', 'Dahal', 'iamankitdahall@gmail.com', '', 0, '2024-12-04 12:32:59', '2024-12-04 12:32:59'),
(17, 'Darshil ', 'Bista', 'darshilbista18@gmail.com', 'Hi sir how to fill the cricket U-19 form we are coming from Lalitpur Nist +2 ', 0, '2024-12-05 01:40:36', '2024-12-05 01:40:36'),
(18, 'Ahrav ', 'Shrestha', 'ahravshrestha7a@gmail.com', 'I would like to participate in the Thunderbolts cup individual event, table tennis competition for U-18 boys.', 0, '2024-12-05 13:55:14', '2024-12-05 13:55:14'),
(19, 'nissim', 'bhatta ', 'parulpandey.elixir@gmail.com', 'i want to play table tennis', 0, '2024-12-06 15:14:47', '2024-12-06 15:14:47'),
(20, 'Tribhuvan', 'Devkota', 'devkotatribhuvan@gmail.com', 'Be courageous ', 0, '2024-12-12 15:56:21', '2024-12-12 15:56:21'),
(21, 'Brijesh ', 'Aryal', 'leomadan2054@gmail.com', '', 0, '2024-12-13 06:51:52', '2024-12-13 06:51:52'),
(22, 'Sabin', 'Shrestha ', 'sabincr7suu098@gmail.com', NULL, 0, '2024-12-15 13:26:46', '2024-12-15 13:26:46'),
(23, 'Sabin', 'Shrestha', 'sabincr7suu098@gmail.com', NULL, 0, '2024-12-15 13:30:13', '2024-12-15 13:30:13'),
(24, 't', 'l', 'mh@gmail.com', 'hello', 0, '2024-12-17 15:17:39', '2024-12-17 15:17:39'),
(25, 'Jenny ', 'Khadka', 'mikhadkajenny@gmail.com', 'hello', 0, '2024-12-17 15:18:36', '2024-12-17 15:18:36'),
(26, 'Hridaya ', 'Basnet', 'pujakc02324@gmail.com', 'For Chess ', 0, '2024-12-19 03:02:59', '2024-12-19 03:02:59'),
(27, 'Hridaya ', 'Basnet', 'pujakc02324@gmail.com', 'For chess', 0, '2024-12-19 03:15:17', '2024-12-19 03:15:17'),
(28, 'Dibison', 'Chapagai', 'dibisonchapagain@gmail.com', 'I would like to register for esports', 0, '2024-12-24 11:21:04', '2024-12-24 11:21:04'),
(29, 'Dibison', 'Chapagai ', 'chapagai9@gmail.com', NULL, 0, '2024-12-25 12:59:06', '2024-12-25 12:59:06');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `imageKey` varchar(255) DEFAULT NULL,
  `bucket` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `imageKey`, `bucket`, `mime`, `title`, `image`, `createdAt`, `updatedAt`) VALUES
(1, '1/MSI_MPG.jpg', 'public/uploads', 'image/jpeg', 'Gallery Image', NULL, '2025-01-07 07:47:40', '2025-01-07 07:47:40');

-- --------------------------------------------------------

--
-- Table structure for table `gamegroup`
--

CREATE TABLE `gamegroup` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `gameId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gamegroup_school`
--

CREATE TABLE `gamegroup_school` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `GameGroupId` int(11) NOT NULL,
  `SchoolListId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gamepointstable`
--

CREATE TABLE `gamepointstable` (
  `id` int(11) NOT NULL,
  `schoolId` int(11) NOT NULL,
  `gameId` int(11) NOT NULL,
  `groupId` int(11) DEFAULT NULL,
  `played` int(11) NOT NULL DEFAULT '0',
  `won` int(11) NOT NULL DEFAULT '0',
  `lost` int(11) NOT NULL DEFAULT '0',
  `drawn` int(11) NOT NULL DEFAULT '0',
  `points` int(11) NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `additionalStats` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` enum('Individual','Squad') NOT NULL,
  `category` varchar(255) NOT NULL,
  `fee` float NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `active` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `name`, `type`, `category`, `fee`, `createdAt`, `updatedAt`, `active`) VALUES
(1, 'Football', 'Squad', 'U-18 GIRLS', 5000, '2024-12-03 05:39:42', '2024-12-03 05:39:42', 1);

-- --------------------------------------------------------

--
-- Table structure for table `manualregistrations`
--

CREATE TABLE `manualregistrations` (
  `id` int(11) NOT NULL,
  `paymentType` enum('Cash','QR') NOT NULL,
  `totalAmount` float NOT NULL,
  `gameFee` float NOT NULL,
  `noOfParticipants` varchar(255) DEFAULT NULL,
  `gameCategory` varchar(255) NOT NULL,
  `gameName` varchar(255) NOT NULL,
  `gameType` enum('Individual','Squad') NOT NULL,
  `schoolEmail` varchar(255) NOT NULL,
  `schoolContactNo` varchar(255) NOT NULL,
  `schoolName` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manualregistrations`
--

INSERT INTO `manualregistrations` (`id`, `paymentType`, `totalAmount`, `gameFee`, `noOfParticipants`, `gameCategory`, `gameName`, `gameType`, `schoolEmail`, `schoolContactNo`, `schoolName`, `createdAt`, `updatedAt`) VALUES
(1, 'QR', 7000, 7000, NULL, 'U-16 BOYS', 'FOOTBALL', 'Squad', 'info@nist.edu.np', '9841608256', 'NIST School', '2024-11-12 04:01:11', '2024-11-12 04:01:11'),
(2, 'QR', 7000, 7000, NULL, 'U-16 BOYS', 'FOOTBALL', 'Squad', 'info@iwschool.edu.np', '9702135081', 'IMPERIAL WORLD SCHOOL', '2024-11-12 04:02:43', '2024-11-12 04:02:43'),
(3, 'Cash', 7000, 7000, NULL, 'U-16 BOYS', 'FOOTBALL', 'Squad', 'ANUPMUKHIA28@GMAIL.COM', '9841409061', 'EPS SCHOOL', '2024-11-13 08:28:49', '2024-11-13 08:28:49'),
(4, 'Cash', 7000, 7000, '', 'U-16 BOYS', 'FOOTBALL', 'Squad', 'LAMABOBBY795@GMAIL.COM', '9841765898', 'VS NIKETAN', '2024-11-13 08:52:55', '2024-11-13 08:52:55'),
(5, 'Cash', 7000, 7000, '', 'U-16 BOYS', 'FOOTBALL', 'Squad', 'TNABIN661@GMAIL.COM', '9845841017', 'NEPAL APF SCHOOL', '2024-11-13 08:54:25', '2024-11-13 08:54:25'),
(6, 'QR', 7000, 7000, '', 'U-16 BOYS', 'FOOTBALL', 'Squad', 'MAHARJAN333@HOTMAIL.COM', '9863591661', 'BRAHMA KUNJA SCHOOL', '2024-11-13 08:56:43', '2024-11-13 08:56:43'),
(7, 'Cash', 7000, 7000, '', 'U-16 BOYS', 'FOOTBALL', 'Squad', 'PRAJAPATIRIZEN@GMAIL.COM', '9840310413', 'VINAYAK SCHOOL', '2024-11-13 08:59:27', '2024-11-13 08:59:27'),
(8, 'Cash', 7000, 7000, '', 'U-16 BOYS', 'FOOTBALL', 'Squad', 'MAHARJANYAMAN12345@GMAIL.COM', '9818904775', 'DAV SCHOOL', '2024-11-13 09:01:49', '2024-11-13 09:01:49'),
(9, 'QR', 7000, 7000, '', 'U-16 BOYS', 'FOOTBALL', 'Squad', 'RASAILIDHIREN6566@GMAIL.COM', '9864544533', 'BLOOM SCHOOL', '2024-11-13 09:21:47', '2024-11-13 09:21:47'),
(10, 'Cash', 5000, 5000, NULL, 'U-13 GIRLS', 'FUTSAL', 'Squad', 'info@chantalmauduit.com.np', '9818750558', 'CHANTAL MAUDUIT ACADEMY', '2024-11-19 03:58:42', '2024-11-19 03:58:42'),
(11, 'Cash', 5000, 5000, '', 'U-13 GIRLS', 'FUTSAL', 'Squad', 'PUSHPANJAISECONDARYSCHOOL@GMAIL.COM', '9818750558', 'PUSHPANJALI SECONDARY SCHOOL', '2024-11-19 04:00:54', '2024-11-19 04:00:54'),
(12, 'Cash', 5000, 5000, NULL, 'U-18 GIRLS', 'FUTSAL', 'Squad', 'PUSHPANJAISECONDARYSCHOOL@GMAIL.COM', '9818750558', 'PUSHPANJALI SECONDARY SCHOOL', '2024-11-19 04:01:20', '2024-11-19 04:01:20'),
(13, 'Cash', 5000, 5000, NULL, 'U-18 BOYS', 'FUTSAL', 'Squad', 'PUSHPANJAISECONDARYSCHOOL@GMAIL.COM', '9818750558', 'PUSHPANJALI SECONDARY SCHOOL', '2024-11-19 04:01:44', '2024-11-19 04:01:44'),
(14, 'Cash', 6000, 6000, NULL, 'U-12 BOYS', 'CRICKET', 'Squad', 'hemantasapkota111@gmail.com', '9851310945', 'New Era Academy', '2024-11-29 05:33:59', '2024-11-29 05:33:59'),
(15, 'QR', 7000, 7000, '', 'U-16 BOYS', 'CRICKET', 'Squad', 'INFO@Matribhumischool.edu.np', '9860478684', 'MATRIBHUMI SCHOOL', '2024-11-29 06:29:27', '2024-11-29 06:29:27'),
(16, 'Cash', 7000, 7000, '', 'U-16 BOYS', 'CRICKET', 'Squad', 'THAPAPRAKASH2519@GMAIL.COM', '9840949953', 'LITTLE ANGELS SCHOOL', '2024-11-29 06:32:07', '2024-11-29 06:32:07'),
(17, 'Cash', 6000, 6000, '', 'U-12 BOYS', 'CRICKET', 'Squad', 'THAPAPRAKASH2519@GMAIL.COM', '9840949953', 'LITTLE ANGELS SCHOOL', '2024-11-29 06:32:56', '2024-11-29 06:32:56'),
(18, 'Cash', 7000, 7000, NULL, 'U-16 BOYS', 'BASKETBALL', 'Squad', 'MYLIFEMYFAMILYMYFRIENDS@GMAIL.COM', '9803228727', 'RELIANCE INTL SCHOOL', '2024-11-29 07:42:33', '2024-11-29 07:42:33'),
(19, 'Cash', 7000, 7000, '', 'U-18 Boys', 'BASKETBALL', 'Squad', 'aekendra@kws.edu.np', '9849156661', 'Kathmandu World School', '2024-11-29 09:04:38', '2024-11-29 09:04:38'),
(20, 'Cash', 7000, 7000, NULL, 'U-18 GIRLS', 'BASKETBALL', 'Squad', 'aekendra@kws.edu.np', '9849156661', 'Kathmandu World School', '2024-11-29 09:05:34', '2024-11-29 09:05:34'),
(21, 'Cash', 5000, 5000, NULL, 'U-18 Boys', 'FUTSAL', 'Squad', 'aekendra@kws.edu.np', '9849156661', 'Kathmandu World School', '2024-11-29 09:06:27', '2024-11-29 09:06:27'),
(22, 'Cash', 5000, 5000, NULL, 'U-18 GIRLS', 'FUTSAL', 'Squad', 'aekendra@kws.edu.np', '9849156661', 'Kathmandu World School', '2024-11-29 09:07:10', '2024-11-29 09:07:10'),
(23, 'Cash', 6000, 6000, '', 'U-12 BOYS', 'FOOTBALL', 'Squad', 'LAMABOBBY795@GMAIL.COM', '9841765898', 'VS NIKETAN', '2024-12-04 08:29:19', '2024-12-04 08:29:19'),
(24, 'Cash', 5000, 5000, '', 'U-18 BOYS', 'FUTSAL', 'Squad', 'NICHALSHRESTHA157@GMAIL.COM', '9813593046', 'DIVYA COLLEGE', '2024-12-04 08:32:56', '2024-12-04 08:32:56'),
(25, 'Cash', 6000, 6000, '', 'U-12 BOYS', 'FOOTBALL', 'Squad', 'PRAJAPATIRIZEN@GMAIL.COM', '9840310413', 'VINAYAK SCHOOL', '2024-12-04 08:35:10', '2024-12-04 08:35:10');

-- --------------------------------------------------------

--
-- Table structure for table `participations`
--

CREATE TABLE `participations` (
  `id` int(11) NOT NULL,
  `numberOfParticipants` int(11) DEFAULT NULL,
  `paidAmount` float NOT NULL,
  `paymentStatus` enum('SUCCESS','PENDING','FAILED') NOT NULL DEFAULT 'PENDING',
  `PRN` varchar(255) NOT NULL,
  `fee` float NOT NULL,
  `schoolId` int(11) NOT NULL,
  `gameId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `imageKey` varchar(255) DEFAULT NULL,
  `bucket` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `link` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pointstables`
--

CREATE TABLE `pointstables` (
  `id` int(11) NOT NULL,
  `schoolName` varchar(255) DEFAULT NULL,
  `goldFirst` int(11) DEFAULT '0',
  `silverSecond` int(11) DEFAULT '0',
  `bronzeThird` int(11) DEFAULT '0',
  `totalPoints` int(11) DEFAULT '0',
  `position` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pointstables`
--

INSERT INTO `pointstables` (`id`, `schoolName`, `goldFirst`, `silverSecond`, `bronzeThird`, `totalPoints`, `position`, `createdAt`, `updatedAt`) VALUES
(13, 'GEMS SCHOOL', 6, 5, 3, 48, 1, '2024-12-24 04:44:06', '2024-12-24 05:11:59'),
(14, 'AVM SCHOOL', 4, 1, 0, 23, 2, '2024-12-24 04:47:24', '2024-12-24 04:47:24'),
(15, 'BLUEBIRD SECONDARY SCHOOL', 2, 0, 0, 10, 6, '2024-12-24 04:48:36', '2024-12-24 05:16:18'),
(16, 'NEPAL POLICE SCHOOL', 2, 4, 1, 23, 3, '2024-12-24 04:49:33', '2024-12-24 07:38:41'),
(17, 'NISARGA BATIKA SCHOOL', 1, 2, 1, 12, 5, '2024-12-24 04:50:31', '2024-12-24 05:16:18'),
(18, 'ST. MARY\'S SCHOOL', 1, 1, 1, 9, 8, '2024-12-24 04:51:16', '2024-12-24 07:38:28'),
(19, 'DAV SCHOOL', 2, 1, 2, 15, 4, '2024-12-24 04:53:23', '2024-12-24 05:16:18'),
(20, 'MOUNT OLIVE SCHOOL', 1, 1, 0, 8, 9, '2024-12-24 04:54:04', '2024-12-24 07:38:28'),
(21, 'SARASWOTI MADHYAMIK VIDHYALAYA', 1, 0, 0, 5, 12, '2024-12-24 04:54:32', '2024-12-24 07:38:28'),
(22, 'V.S NIKETAN SCHOOL', 0, 1, 0, 3, 21, '2024-12-24 04:55:10', '2024-12-24 07:38:28'),
(23, 'REGENT RESIDENTIAL SCHOOL', 0, 1, 0, 3, 22, '2024-12-24 04:55:37', '2024-12-24 07:38:28'),
(24, 'CHELSEA WORLD SCHOOL', 1, 1, 0, 8, 10, '2024-12-24 04:56:08', '2024-12-24 07:38:28'),
(25, 'BHASSARA SCHOOL', 0, 1, 1, 4, 16, '2024-12-24 04:56:43', '2024-12-24 06:48:07'),
(26, 'BAL VIKAS SCHOOL', 0, 1, 0, 3, 23, '2024-12-24 04:57:06', '2024-12-24 07:38:28'),
(27, 'ST. XAVIER\'S SCHOOL', 1, 0, 0, 5, 14, '2024-12-24 05:53:19', '2024-12-24 06:48:07'),
(28, 'VALLEY PUBLIC SCHOOL', 1, 0, 0, 5, 15, '2024-12-24 05:53:44', '2024-12-24 07:38:28'),
(29, 'MATRIBHUMI SCHOOL', 0, 1, 0, 3, 25, '2024-12-24 05:54:06', '2024-12-24 07:38:28'),
(30, 'LITTLE ANGELS SCHOOL', 0, 1, 0, 3, 20, '2024-12-24 05:54:37', '2024-12-24 07:38:28'),
(31, 'MILLSBERRY SCHOOL', 0, 1, 0, 3, 24, '2024-12-24 05:54:59', '2024-12-24 06:48:07'),
(32, 'MANAKAMANA SCHOOL', 0, 1, 0, 3, 19, '2024-12-24 05:55:35', '2024-12-24 07:38:28'),
(33, 'BN ACADEMY', 0, 1, 0, 3, 18, '2024-12-24 05:56:11', '2024-12-24 07:38:28'),
(34, 'NEPAL APF SCHOOL', 1, 1, 1, 9, 7, '2024-12-24 05:56:41', '2024-12-24 07:38:26'),
(35, 'CHANTAL MAUDUIT ACADEMY', 0, 0, 1, 1, 41, '2024-12-24 05:57:16', '2024-12-24 07:38:28'),
(36, 'PUSHPANJALI SCHOOL', 0, 0, 1, 1, 34, '2024-12-24 05:57:38', '2024-12-24 07:38:28'),
(37, 'RATO BANGALA SCHOOL', 0, 0, 1, 1, 42, '2024-12-24 05:58:39', '2024-12-24 07:38:28'),
(38, 'LRI SCHOOL', 1, 0, 1, 6, 11, '2024-12-24 05:58:55', '2024-12-24 07:38:28'),
(39, 'NAMI COLLEGE', 0, 0, 1, 1, 40, '2024-12-24 05:59:16', '2024-12-24 07:38:28'),
(40, 'BERNHARDT COLLEGE', 0, 0, 1, 1, 39, '2024-12-24 05:59:34', '2024-12-24 07:38:28'),
(41, 'PHULCHOWKI SCHOOL', 0, 0, 1, 1, 38, '2024-12-24 06:00:14', '2024-12-24 07:38:28'),
(42, 'JUPITER SCHOOL', 0, 0, 1, 1, 37, '2024-12-24 06:00:26', '2024-12-24 07:38:28'),
(43, 'TERESA ACADEMY', 0, 0, 1, 1, 36, '2024-12-24 06:00:39', '2024-12-24 07:38:28'),
(44, 'HARDIK ACADEMY', 0, 0, 1, 1, 35, '2024-12-24 06:00:49', '2024-12-24 07:38:28'),
(45, 'NEPAL YUBAK SECONDARY SCHOOL', 0, 0, 1, 1, 26, '2024-12-24 06:01:06', '2024-12-24 07:38:28'),
(46, 'PUSHPASADAN BOARDING SCHOOL', 0, 0, 1, 1, 33, '2024-12-24 06:01:24', '2024-12-24 07:38:28'),
(47, 'DELIGHT KINDERGARDEN SCHOOL', 0, 0, 1, 1, 32, '2024-12-24 06:01:40', '2024-12-24 07:38:28'),
(48, 'PRIME GLOBAL SCHOOL', 0, 0, 1, 1, 31, '2024-12-24 06:01:52', '2024-12-24 07:38:28'),
(49, 'TIA SCHOOL', 0, 0, 1, 1, 30, '2024-12-24 06:02:05', '2024-12-24 07:38:28'),
(50, 'IMPERIAL WORLD SCHOOL', 0, 0, 1, 1, 29, '2024-12-24 06:02:19', '2024-12-24 07:38:28'),
(51, 'OMEGA SCHOOL', 0, 0, 1, 1, 28, '2024-12-24 06:02:31', '2024-12-24 07:38:28'),
(52, 'LINCOLN SCHOOL', 0, 0, 1, 1, 27, '2024-12-24 06:02:39', '2024-12-24 07:38:28'),
(53, 'XAVIERS INTERNATIONAL SCHOOL', 1, 0, 0, 5, 13, '2024-12-24 06:47:45', '2024-12-24 07:38:28'),
(54, 'TIMES INTERNATIONAL COLLEGE', 0, 1, 0, 3, 17, '2024-12-24 06:48:06', '2024-12-24 07:38:28');

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `imageKey` varchar(255) DEFAULT NULL,
  `bucket` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `academyId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `registrationpayments`
--

CREATE TABLE `registrationpayments` (
  `id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `status` enum('PENDING','SUCCESS','ERROR') NOT NULL,
  `prn` varchar(255) NOT NULL,
  `participationId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `schoollist`
--

CREATE TABLE `schoollist` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schoollist`
--

INSERT INTO `schoollist` (`id`, `name`, `logo`, `createdAt`, `updatedAt`) VALUES
(1, 'GEMS School', 'logo', '2024-12-03 06:49:28', '2024-12-03 06:49:28');

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contactNo` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `name`, `email`, `contactNo`, `createdAt`, `updatedAt`) VALUES
(1, 'Pathshala Nepal Foundation', 'pnflalitpur@pathshala.edu.np', '9843164921', '2024-11-11 10:12:01', '2024-11-11 10:12:01'),
(2, 'St.Xavier\'s College', 'vedantkv22@gmail.com', '9810191178', '2024-11-20 16:44:49', '2024-11-20 16:44:49'),
(3, 'Matribhumi School ', 'info@matribhumischool.edu.np', '9860478684', '2024-11-21 05:24:44', '2024-11-21 05:24:44'),
(14, 'RHODODENDRON INTERNATIONAL BOARDING SCHOOL (RIBS)', 'admin@ribs.edu.np', '9841622310', '2024-11-28 05:46:28', '2024-11-28 05:46:28'),
(15, 'Manakamana Secondary SChool', 'manakamanamavi038@gmail.com', '9808547520', '2024-12-03 09:43:06', '2024-12-03 09:43:06'),
(16, 'Global College International ', 'iamankitdahall@gmail.com', '9803304092', '2024-12-04 12:35:15', '2024-12-04 12:35:15'),
(17, 'Global International College', 'abheekbajracharya2007@gmail.com', '9861577910', '2024-12-04 14:46:56', '2024-12-04 14:46:56'),
(18, 'Global College Intl', 'ahravshrestha7a@gmail.com', '9863791197', '2024-12-05 13:57:26', '2024-12-05 13:57:26'),
(19, 'Lalitpur NIST College', 'admin@patannist.edu.np', '9847458613', '2024-12-06 04:44:28', '2024-12-06 04:44:28'),
(20, 'The Celebration Co-Ed', 'info@celebrationcoed.edu.np', '9851144421', '2024-12-12 05:44:49', '2024-12-12 05:44:49'),
(21, 'Ace School', 'anju.magar@ahs.edu.np', '9841671005', '2024-12-13 09:01:16', '2024-12-13 09:01:16'),
(22, 'S.S.Sadan Secondary school ', 'pujakc02324@gmail.com', '9840399492', '2024-12-19 03:20:12', '2024-12-19 03:20:12'),
(23, 'Spring Hill Higher Secondary School', 'basnetmadhukar5414@gmail.com', '9841790748', '2024-12-19 03:54:55', '2024-12-19 03:54:55');

-- --------------------------------------------------------

--
-- Table structure for table `specialcamps`
--

CREATE TABLE `specialcamps` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `imageKey` varchar(255) DEFAULT NULL,
  `bucket` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `specialcamps`
--

INSERT INTO `specialcamps` (`id`, `title`, `description`, `image`, `imageKey`, `bucket`, `mime`, `createdAt`, `updatedAt`) VALUES
(1, 'Test Camps', 'Testing purpose', NULL, '1/MSI_MEG_GODLIKE.jpg', 'public/uploads', 'image/jpeg', '2025-01-07 07:50:49', '2025-01-07 07:50:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('Admin','Front desk') NOT NULL,
  `password` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `role`, `password`, `createdAt`, `updatedAt`) VALUES
(2, 'finance@thunderbolts.com.np', 'Front desk', '$2b$10$GBN5cwBbYoxXqaHz/fnW1eO7aDRBQyk3SalLagB8GUMxDp32irk1K', '2024-11-13 07:52:43', '2024-11-13 07:52:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academies`
--
ALTER TABLE `academies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agegroups`
--
ALTER TABLE `agegroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `programId` (`programId`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `careerId` (`careerId`);

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certificate`
--
ALTER TABLE `certificate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gamegroup`
--
ALTER TABLE `gamegroup`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `game_group_name_game_id` (`name`,`gameId`),
  ADD KEY `gameId` (`gameId`);

--
-- Indexes for table `gamegroup_school`
--
ALTER TABLE `gamegroup_school`
  ADD PRIMARY KEY (`GameGroupId`,`SchoolListId`),
  ADD KEY `SchoolListId` (`SchoolListId`);

--
-- Indexes for table `gamepointstable`
--
ALTER TABLE `gamepointstable`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `game_points_table_school_id_game_id_group_id` (`schoolId`,`gameId`,`groupId`),
  ADD KEY `gameId` (`gameId`),
  ADD KEY `groupId` (`groupId`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manualregistrations`
--
ALTER TABLE `manualregistrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `participations`
--
ALTER TABLE `participations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `PRN` (`PRN`),
  ADD UNIQUE KEY `Participations_gameId_schoolId_unique` (`schoolId`,`gameId`),
  ADD UNIQUE KEY `PRN_2` (`PRN`),
  ADD UNIQUE KEY `PRN_3` (`PRN`),
  ADD UNIQUE KEY `PRN_4` (`PRN`),
  ADD UNIQUE KEY `PRN_5` (`PRN`),
  ADD UNIQUE KEY `PRN_6` (`PRN`),
  ADD UNIQUE KEY `PRN_7` (`PRN`),
  ADD UNIQUE KEY `PRN_8` (`PRN`),
  ADD UNIQUE KEY `PRN_9` (`PRN`),
  ADD UNIQUE KEY `PRN_10` (`PRN`),
  ADD KEY `gameId` (`gameId`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pointstables`
--
ALTER TABLE `pointstables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `academyId` (`academyId`);

--
-- Indexes for table `registrationpayments`
--
ALTER TABLE `registrationpayments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `prn` (`prn`),
  ADD UNIQUE KEY `prn_2` (`prn`),
  ADD UNIQUE KEY `prn_3` (`prn`),
  ADD UNIQUE KEY `prn_4` (`prn`),
  ADD UNIQUE KEY `prn_5` (`prn`),
  ADD UNIQUE KEY `prn_6` (`prn`),
  ADD UNIQUE KEY `prn_7` (`prn`),
  ADD UNIQUE KEY `prn_8` (`prn`),
  ADD UNIQUE KEY `prn_9` (`prn`),
  ADD UNIQUE KEY `prn_10` (`prn`),
  ADD KEY `participationId` (`participationId`);

--
-- Indexes for table `schoollist`
--
ALTER TABLE `schoollist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `schools_name_email_contact_no` (`name`,`email`,`contactNo`);

--
-- Indexes for table `specialcamps`
--
ALTER TABLE `specialcamps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academies`
--
ALTER TABLE `academies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `agegroups`
--
ALTER TABLE `agegroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `certificate`
--
ALTER TABLE `certificate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gamegroup`
--
ALTER TABLE `gamegroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gamepointstable`
--
ALTER TABLE `gamepointstable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `manualregistrations`
--
ALTER TABLE `manualregistrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `participations`
--
ALTER TABLE `participations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pointstables`
--
ALTER TABLE `pointstables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registrationpayments`
--
ALTER TABLE `registrationpayments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schoollist`
--
ALTER TABLE `schoollist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `specialcamps`
--
ALTER TABLE `specialcamps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `agegroups`
--
ALTER TABLE `agegroups`
  ADD CONSTRAINT `agegroups_ibfk_1` FOREIGN KEY (`programId`) REFERENCES `programs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `applications`
--
ALTER TABLE `applications`
  ADD CONSTRAINT `applications_ibfk_1` FOREIGN KEY (`careerId`) REFERENCES `careers` (`id`);

--
-- Constraints for table `gamegroup`
--
ALTER TABLE `gamegroup`
  ADD CONSTRAINT `gamegroup_ibfk_1` FOREIGN KEY (`gameId`) REFERENCES `games` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `gamegroup_ibfk_2` FOREIGN KEY (`gameId`) REFERENCES `games` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `gamegroup_ibfk_3` FOREIGN KEY (`gameId`) REFERENCES `games` (`id`),
  ADD CONSTRAINT `gamegroup_ibfk_4` FOREIGN KEY (`gameId`) REFERENCES `games` (`id`),
  ADD CONSTRAINT `gamegroup_ibfk_5` FOREIGN KEY (`gameId`) REFERENCES `games` (`id`),
  ADD CONSTRAINT `gamegroup_ibfk_6` FOREIGN KEY (`gameId`) REFERENCES `games` (`id`);

--
-- Constraints for table `gamegroup_school`
--
ALTER TABLE `gamegroup_school`
  ADD CONSTRAINT `gamegroup_school_ibfk_1` FOREIGN KEY (`GameGroupId`) REFERENCES `gamegroup` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `gamegroup_school_ibfk_2` FOREIGN KEY (`SchoolListId`) REFERENCES `schoollist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gamepointstable`
--
ALTER TABLE `gamepointstable`
  ADD CONSTRAINT `gamepointstable_ibfk_1` FOREIGN KEY (`schoolId`) REFERENCES `schools` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `gamepointstable_ibfk_2` FOREIGN KEY (`gameId`) REFERENCES `games` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `gamepointstable_ibfk_3` FOREIGN KEY (`groupId`) REFERENCES `gamegroup` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `gamepointstable_ibfk_4` FOREIGN KEY (`schoolId`) REFERENCES `schools` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `gamepointstable_ibfk_5` FOREIGN KEY (`gameId`) REFERENCES `games` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `gamepointstable_ibfk_6` FOREIGN KEY (`groupId`) REFERENCES `gamegroup` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `gamepointstable_ibfk_7` FOREIGN KEY (`schoolId`) REFERENCES `schools` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `gamepointstable_ibfk_8` FOREIGN KEY (`gameId`) REFERENCES `games` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `gamepointstable_ibfk_9` FOREIGN KEY (`groupId`) REFERENCES `gamegroup` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `participations`
--
ALTER TABLE `participations`
  ADD CONSTRAINT `participations_ibfk_1` FOREIGN KEY (`schoolId`) REFERENCES `schools` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `participations_ibfk_10` FOREIGN KEY (`gameId`) REFERENCES `games` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `participations_ibfk_11` FOREIGN KEY (`schoolId`) REFERENCES `schools` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `participations_ibfk_12` FOREIGN KEY (`gameId`) REFERENCES `games` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `participations_ibfk_13` FOREIGN KEY (`schoolId`) REFERENCES `schools` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `participations_ibfk_14` FOREIGN KEY (`gameId`) REFERENCES `games` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `participations_ibfk_15` FOREIGN KEY (`schoolId`) REFERENCES `schools` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `participations_ibfk_16` FOREIGN KEY (`gameId`) REFERENCES `games` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `participations_ibfk_17` FOREIGN KEY (`schoolId`) REFERENCES `schools` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `participations_ibfk_18` FOREIGN KEY (`gameId`) REFERENCES `games` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `participations_ibfk_19` FOREIGN KEY (`schoolId`) REFERENCES `schools` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `participations_ibfk_2` FOREIGN KEY (`gameId`) REFERENCES `games` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `participations_ibfk_20` FOREIGN KEY (`gameId`) REFERENCES `games` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `participations_ibfk_3` FOREIGN KEY (`schoolId`) REFERENCES `schools` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `participations_ibfk_4` FOREIGN KEY (`gameId`) REFERENCES `games` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `participations_ibfk_5` FOREIGN KEY (`schoolId`) REFERENCES `schools` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `participations_ibfk_6` FOREIGN KEY (`gameId`) REFERENCES `games` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `participations_ibfk_7` FOREIGN KEY (`schoolId`) REFERENCES `schools` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `participations_ibfk_8` FOREIGN KEY (`gameId`) REFERENCES `games` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `participations_ibfk_9` FOREIGN KEY (`schoolId`) REFERENCES `schools` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `programs`
--
ALTER TABLE `programs`
  ADD CONSTRAINT `programs_ibfk_1` FOREIGN KEY (`academyId`) REFERENCES `academies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `programs_ibfk_10` FOREIGN KEY (`academyId`) REFERENCES `academies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `programs_ibfk_11` FOREIGN KEY (`academyId`) REFERENCES `academies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `programs_ibfk_12` FOREIGN KEY (`academyId`) REFERENCES `academies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `programs_ibfk_13` FOREIGN KEY (`academyId`) REFERENCES `academies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `programs_ibfk_14` FOREIGN KEY (`academyId`) REFERENCES `academies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `programs_ibfk_15` FOREIGN KEY (`academyId`) REFERENCES `academies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `programs_ibfk_2` FOREIGN KEY (`academyId`) REFERENCES `academies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `programs_ibfk_3` FOREIGN KEY (`academyId`) REFERENCES `academies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `programs_ibfk_4` FOREIGN KEY (`academyId`) REFERENCES `academies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `programs_ibfk_5` FOREIGN KEY (`academyId`) REFERENCES `academies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `programs_ibfk_6` FOREIGN KEY (`academyId`) REFERENCES `academies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `programs_ibfk_7` FOREIGN KEY (`academyId`) REFERENCES `academies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `programs_ibfk_8` FOREIGN KEY (`academyId`) REFERENCES `academies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `programs_ibfk_9` FOREIGN KEY (`academyId`) REFERENCES `academies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `registrationpayments`
--
ALTER TABLE `registrationpayments`
  ADD CONSTRAINT `registrationpayments_ibfk_1` FOREIGN KEY (`participationId`) REFERENCES `participations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `registrationpayments_ibfk_10` FOREIGN KEY (`participationId`) REFERENCES `participations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `registrationpayments_ibfk_2` FOREIGN KEY (`participationId`) REFERENCES `participations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `registrationpayments_ibfk_3` FOREIGN KEY (`participationId`) REFERENCES `participations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `registrationpayments_ibfk_4` FOREIGN KEY (`participationId`) REFERENCES `participations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `registrationpayments_ibfk_5` FOREIGN KEY (`participationId`) REFERENCES `participations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `registrationpayments_ibfk_6` FOREIGN KEY (`participationId`) REFERENCES `participations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `registrationpayments_ibfk_7` FOREIGN KEY (`participationId`) REFERENCES `participations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `registrationpayments_ibfk_8` FOREIGN KEY (`participationId`) REFERENCES `participations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `registrationpayments_ibfk_9` FOREIGN KEY (`participationId`) REFERENCES `participations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
