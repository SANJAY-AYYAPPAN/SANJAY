-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2023 at 06:57 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `campusinfo`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `mail`, `pass`) VALUES
(1, 'admin@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `appstud`
--

CREATE TABLE `appstud` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `dno` varchar(30) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `depart` varchar(30) NOT NULL,
  `mother` varchar(30) NOT NULL,
  `father` varchar(30) NOT NULL,
  `sslc` int(11) NOT NULL,
  `hsc` int(11) NOT NULL,
  `cgpa` int(11) NOT NULL,
  `state` varchar(30) NOT NULL,
  `resume` varchar(30) NOT NULL,
  `comname` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appstud`
--

INSERT INTO `appstud` (`id`, `name`, `dno`, `mail`, `depart`, `mother`, `father`, `sslc`, `hsc`, `cgpa`, `state`, `resume`, `comname`, `status`) VALUES
(182, 'Deva', '20UBC524', '', 'Maths', 'mom', 'dad', 80, 0, 9, 'Madurai', '', 'NDDS', ''),
(183, 'Deva', '20UBC524', '', 'Maths', 'mom', 'dad', 80, 0, 9, 'Madurai', '', 'test', ''),
(185, 'SANJAY A', '20UBC522', 'saju20092002@gmail.com', 'BCA', 'gokilavani', 'ayyappan', 100, 80, 8, 'Trichy', 'test.pdf', 'TCS', ''),
(186, 'SANJAY A', '20UBC522', 'saju20092002@gmail.com', 'BCA', 'gokilavani', 'ayyappan', 100, 80, 8, 'Trichy', 'test.pdf', 'VDart', ''),
(187, 'Deva', '20UBC524', 'saju2009200@gmail.com', 'Maths', 'mom', 'dad', 80, 0, 9, 'Madurai', '', 'VDart', ''),
(189, 'SANJAY A', '20UBC522', 'saju20092002@gmail.com', 'BCA', 'gokilavani', 'ayyappan', 100, 80, 9, 'Trichy', 'test.pdf', 'Infosys', ''),
(196, 'SANJAY A', '20UBC522', 'saju20092002@gmail.com', 'Maths', 'gokilavani', 'ayyappan', 100, 80, 7, 'Trichy', 'test.pdf', 'Mphasis', 'Applied');

-- --------------------------------------------------------

--
-- Table structure for table `companyinfo`
--

CREATE TABLE `companyinfo` (
  `comid` int(11) NOT NULL,
  `companyname` varchar(30) NOT NULL,
  `overview` varchar(60) NOT NULL,
  `location` varchar(60) NOT NULL,
  `reqcgpa` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `companyinfo`
--

INSERT INTO `companyinfo` (`comid`, `companyname`, `overview`, `location`, `reqcgpa`) VALUES
(1, 'NDDS', 'good', 'trichy', 8),
(2, 'Zoho', 'An Informartion Technology Releated', 'Chennai', 9.5),
(3, 'Infosys', 'A Product Based Comapny With High Package Of Salary', 'Bangalore', 8),
(4, 'Amazon', 'Product Based Company', 'Chennai', 8.9),
(5, 'TCS', 'A Communcation Related Between The Internets', 'Chennai', 8),
(6, 'Wipro', 'Good', 'Chennai', 8),
(7, 'HCL', 'Hardware Of Computers', 'Delhi', 9),
(8, 'Mphasis', 'A Big Employees And Non IT', 'Chennai', 7),
(9, 'Tech Mahindra', 'One Of The Big Company In India', 'Mumbai', 9),
(10, 'VDart', 'Non IT Releated', 'Trichy', 6),
(11, 'Flipkart', 'good', 'trichy', 9);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `dno` varchar(30) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `depart` varchar(30) NOT NULL,
  `mother` varchar(30) NOT NULL,
  `father` varchar(30) NOT NULL,
  `sslc` int(3) NOT NULL,
  `hsc` int(3) NOT NULL,
  `cgpa` int(2) NOT NULL,
  `resumetype` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `name`, `dno`, `mail`, `depart`, `mother`, `father`, `sslc`, `hsc`, `cgpa`, `resumetype`, `state`) VALUES
(1, 'SANJAY A', '20UBC522', 'saju20092002@gmail.com', 'Maths', 'gokilavani', 'ayyappan', 100, 80, 7, 'test.pdf', 'Trichy'),
(2, 'Deva', '20UBC524', 'saju2009200@gmail.com', 'Maths', 'mom', 'dad', 80, 0, 9, '', 'Madurai'),
(25, 'Anderson', '20UBC503', 'Anderson@gmail.com', 'BCA', '', '', 0, 0, 0, '', ''),
(26, 'Astilraj', '20UBC504', 'Astilraj@gmail.com', 'BCA', '', '', 0, 0, 0, '', ''),
(27, 'Abishek', '20UBC505', 'Abi@gmail.com', 'Maths', '', '', 0, 0, 0, '', ''),
(28, 'Santhosh', '20UBC506', 'Santhosh@gmail.com', 'Viscom', '', '', 0, 0, 0, '', ''),
(29, 'Rio', '20UBC507', 'Rio@gmail.com', 'Computer Science', '', '', 0, 0, 0, '', ''),
(30, 'Manoj', '20UCS889', 'Manoj@gmail.com', 'B_Com', '', '', 0, 0, 0, '', ''),
(31, 'Suriya', '17UCS820', 'Suriya@gmail.com', 'BBA', '', '', 0, 0, 0, '', ''),
(32, 'Hariharan', '20UBC889', 'Hariharan@gmail.com', 'BBA', '', '', 0, 0, 0, '', ''),
(33, 'Ronald', '20UBC509', 'ronald@gmail.com', 'BCA', '', '', 0, 0, 0, '', ''),
(34, 'Nishanth', '20UBC517', 'nishanth@gmail.com', 'Viscom', '', '', 0, 0, 0, '', ''),
(35, 'Tom Ferdi', '20UBC520', 'tom@gmail.com', 'BCA', '', '', 0, 0, 0, '', ''),
(36, 'Thavamani', '18UCV519', 'thavam@gmail.com', 'Computer Science', '', '', 0, 0, 0, '', ''),
(37, 'Belson', '20USC829', 'belson@gmail.com', 'Maths', '', '', 0, 0, 0, '', ''),
(38, 'Titus', '20UBC532', 'titus@gmail.com', 'BCA', '', '', 0, 0, 0, '', ''),
(39, 'Kumar', '20UBC887', 'Kumar@gmail.com', 'Viscom', '', '', 0, 0, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(8) NOT NULL,
  `name` varchar(20) NOT NULL,
  `dno` varchar(8) NOT NULL,
  `dept` varchar(30) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `dno`, `dept`, `mail`, `password`) VALUES
(1, 'SANJAY', '20UBC522', 'BCA', 'saju20092002@gmail.com', 'Saju@778'),
(2, 'Deva', '20UBC524', 'BCA', 'Deva@gmail.com', '12345'),
(3, 'Anderson', '20UBC503', 'BCA', 'Anderson@gmail.com', '12345'),
(4, 'Astilraj', '20UBC504', 'BCA', 'Astilraj@gmail.com', '12345'),
(5, 'Abishek', '20UBC505', 'Maths', 'Abi@gmail.com', '12345'),
(6, 'Santhosh', '20UBC506', 'Viscom', 'Santhosh@gmail.com', '12345'),
(7, 'Rio', '20UBC507', 'Computer Science', 'Rio@gmail.com', '12345'),
(8, 'Manoj', '20UCS889', 'B_Com', 'Manoj@gmail.com', '12345'),
(9, 'Suriya', '17UCS820', 'BBA', 'Suriya@gmail.com', '12345'),
(10, 'Hariharan', '20UBC889', 'BBA', 'Hariharan@gmail.com', '12345'),
(11, 'Ronald', '20UBC509', 'BCA', 'ronald@gmail.com', '12345'),
(12, 'Tom Ferdi', '20UBC520', 'BCA', 'tom@gmail.com', '12345'),
(13, 'Thavamani', '18UCV519', 'Computer Science', 'thavam@gmail.com', '12345'),
(14, 'Belson', '20USC829', 'Maths', 'belson@gmail.com', '12345'),
(15, 'Titus', '20UBC532', 'BCA', 'titus@gmail.com', '12345'),
(16, 'Kumar', '20UBC887', 'Viscom', 'Kumar@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `studlogin`
--

CREATE TABLE `studlogin` (
  `dno` varchar(8) NOT NULL,
  `password` varchar(8) NOT NULL
) ENGINE=MRG_MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `studprofile`
--

CREATE TABLE `studprofile` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `dno` varchar(8) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `depart` varchar(10) NOT NULL,
  `mother` varchar(30) NOT NULL,
  `father` varchar(30) NOT NULL,
  `sslc` int(11) NOT NULL,
  `hsc` int(11) NOT NULL,
  `cgpa` int(11) NOT NULL,
  `resumetype` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studprofile`
--

INSERT INTO `studprofile` (`id`, `name`, `dno`, `mail`, `depart`, `mother`, `father`, `sslc`, `hsc`, `cgpa`, `resumetype`) VALUES
(1, 'SANJAY', '20UBC522', 'saju20092002@gmail.com', 'BCA', 'gokilavani', 'ayyappan', 80, 40, 80, 'test.pdf'),
(84, 'Deva', '20UBC524', '', 'BCA', '', '', 0, 0, 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appstud`
--
ALTER TABLE `appstud`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companyinfo`
--
ALTER TABLE `companyinfo`
  ADD PRIMARY KEY (`comid`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studlogin`
--
ALTER TABLE `studlogin`
  ADD PRIMARY KEY (`dno`);

--
-- Indexes for table `studprofile`
--
ALTER TABLE `studprofile`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appstud`
--
ALTER TABLE `appstud`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `companyinfo`
--
ALTER TABLE `companyinfo`
  MODIFY `comid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `studprofile`
--
ALTER TABLE `studprofile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
