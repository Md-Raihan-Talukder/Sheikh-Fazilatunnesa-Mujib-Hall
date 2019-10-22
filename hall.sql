-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2019 at 04:54 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hall`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee`
--

CREATE TABLE `tbl_employee` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `job` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` int(11) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_employee`
--

INSERT INTO `tbl_employee` (`id`, `name`, `job`, `address`, `phone`, `image`) VALUES
(3, 'Nupur', ' Hall Cleaner', 'Dumki', 2147483647, '3.jpg'),
(4, 'Rabeya', 'Cook Manager', 'Dumki', 54356567, '4.jpg'),
(6, ' Shamol Das', 'guard', 'Dumki', 1510002231, '6.jpg'),
(7, 'Morsheda Islam', 'Cooker', 'Dumki', 2147483647, '7.jpg'),
(8, 'Shirin jahan', 'Dining Manager', 'Patuakhali', 54356567, '8.jpg'),
(9, 'Sathi', 'Cooker', 'Dumki', 2147483647, '9.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id`, `email`, `password`) VALUES
(3, 'eva@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(4, 'farjana.cse.15@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notices`
--

CREATE TABLE `tbl_notices` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_notices`
--

INSERT INTO `tbl_notices` (`id`, `title`, `description`, `time`) VALUES
(3, 'Room allotment', '<p>Firstly Students will&nbsp;submit&nbsp;an application for a new room. Then teachers will gave their new room when any room will empty.</p>\r\n', '2018-07-12 12:37:01'),
(4, 'hall enrollment date', '<p>Hall enrollment will be held on 25th July, 2018. Fees 1356 tk.&nbsp;</p>\r\n', '2018-07-13 04:16:15'),
(5, 'Hall feast', '<p>Hall feast of Sheikh Fazilatunnesa Mujib Hall will be&nbsp;held at 16 july,2018.</p>\r\n', '2018-07-13 13:14:56'),
(6, 'Hall Rag day', 'Hall rag day of NFS Faculty will be held at 5 p.m.', '2018-07-17 05:16:12'),
(7, 'Admission Date', '<p><em>Admission test will be held at 05-12-2018</em></p>\r\n', '2018-07-18 04:12:58');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `student_id` int(11) NOT NULL,
  `registration_no` int(11) NOT NULL,
  `faculty` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `session` varchar(255) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `is_verified` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`id`, `name`, `student_id`, `registration_no`, `faculty`, `phone`, `email`, `session`, `semester`, `amount`, `transaction_id`, `is_verified`) VALUES
(3, 'Nahida Rahman', 1402012, 5312, 'CSE', 1722413556, 'farjana.cse.15@gmail.com', '2014-15', '1st', 1320, 'asdfgj123', 1),
(4, 'Rupta', 1402013, 5313, 'CSE', 1722413555, 'raihanbappi420@gmail.com', '2014-15', '1st', 1320, 'asdfgj124', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rooms`
--

CREATE TABLE `tbl_rooms` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `block` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_rooms`
--

INSERT INTO `tbl_rooms` (`id`, `name`, `block`) VALUES
(6, '101', 'A'),
(8, '402', 'A'),
(9, '301', 'A'),
(10, '302', 'A'),
(11, '102', 'A'),
(12, '401', 'A'),
(13, '103', 'A'),
(14, '306', 'A'),
(15, '104', 'A'),
(16, '105', 'A'),
(17, '106', 'A'),
(18, '107', 'A'),
(19, '201', 'A'),
(20, '202', 'A'),
(21, '203', 'A'),
(22, '204', 'A'),
(23, '205', 'A'),
(24, '206', 'A'),
(25, '207', 'A'),
(26, '208', 'A'),
(27, '209', 'A'),
(28, '210', 'A'),
(29, '211', 'A'),
(30, '212', 'A'),
(31, '303', 'A'),
(32, '304', 'A'),
(33, '305', 'A'),
(34, '307', 'A'),
(35, '308', 'A'),
(36, '309', 'A'),
(37, '310', 'A'),
(38, '311', 'A'),
(39, '312', 'A'),
(40, '403', 'A'),
(41, '404', 'A'),
(42, '405', 'A'),
(43, '406', 'A'),
(44, '407', 'A'),
(45, '408', 'A'),
(46, '409', 'A'),
(47, '410', 'A'),
(48, '101', 'B'),
(49, '102', 'B'),
(50, '103', 'B'),
(51, '104', 'B'),
(52, '105', 'B'),
(53, '106', 'B'),
(54, '201', 'B'),
(55, '202', 'B'),
(56, '203', 'B'),
(57, '204', 'B'),
(58, '205', 'B'),
(59, '206', 'B'),
(60, '301', 'B'),
(61, '302', 'B'),
(62, '303', 'B'),
(63, '304', 'B'),
(64, '305', 'B'),
(65, '306', 'B'),
(66, '401', 'B'),
(67, '402', 'B'),
(68, '403', 'B'),
(69, '404', 'B'),
(70, '405', 'B'),
(71, '406', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `id` int(11) NOT NULL,
  `university_id` int(11) NOT NULL,
  `registration_no` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `faculty` varchar(100) DEFAULT NULL,
  `phone_no` varchar(15) DEFAULT NULL,
  `address` varchar(100) NOT NULL,
  `room_id` int(11) NOT NULL,
  `session` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `is_verified` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`id`, `university_id`, `registration_no`, `name`, `email`, `faculty`, `phone_no`, `address`, `room_id`, `session`, `image`, `is_verified`) VALUES
(19, 1402073, 5422, 'Tasnia Islam Esa', '', 'BBA', '01515255864', 'Khulna', 6, '2014-15', '19.jpg', 1),
(20, 1402007, 5356, 'Rabeya akter', '', 'NFS', '01515255864', 'Barisal', 6, '2014-15', '20.jpg', 1),
(21, 1402007, 5356, 'Sharmin Akter', '', 'BBA', '01515255864', 'Dhaka', 6, '2013-14', '21.jpg', 0),
(22, 1402071, 5356, 'Maria jahan', '', 'DVM', '01515255864', 'Pirojpur', 6, '2014-15', '22.jpg', 0),
(23, 1402071, 5356, 'Zannatunnesa', '', 'CSE', '01515255864', 'Barisal', 11, '2014-15', '23.jpg', 0),
(24, 1402007, 5420, 'Orny Mehrabin', '', 'BBA', '01515255864', 'Barisal', 11, '2014-15', '24.jpg', 0),
(25, 1402062, 5422, 'Farhana Maria', '', 'BBA', '01515255864', 'Dhaka', 11, '2014-15', '25.jpg', 0),
(26, 1402062, 5356, 'Iffat Mouli', '', 'NFS', '01515255864', 'Barisal', 11, '2014-15', '26.jpg', 0),
(27, 1402043, 5356, 'Umme Saida', '', 'NFS', '01515255864', 'Barisal', 6, '2014-15', '27.jpg', 0),
(28, 1402067, 5420, 'Israt Jahan', '', 'Agriculture', '01515255864', 'Dumki', 11, '2015-16', '28.jpg', 0),
(29, 1402067, 5432, 'Farjana Metu', '', 'Agriculture', '01515255864', 'Barisal', 13, '2015-16', '29.jpg', 0),
(32, 1402012, 5312, 'Oyshe Tasnim', '', 'BBA', '01725255864', 'Barisal', 13, '2015-16', '32.jpg', 0),
(33, 1402028, 5307, 'Lasmia Lamha', '', 'NFS', '01725255542', 'Dumki', 13, '2015-16', '33.jpg', 0),
(35, 1402071, 5465, 'Sagota Dey', '', 'Agriculture', '01515255864', 'Barisal', 13, '2014-15', '35.jpg', 0),
(36, 1402032, 5343, 'Nusrat Imroze', '', 'Agriculture', '01725255864', 'Barisal', 15, '2015-16', '36.jpg', 0),
(37, 1402062, 5356, 'Bushra', '', 'CSE', '01725255864', 'Dhaka', 15, '', '37.jpg', 1),
(38, 1402071, 5356, 'Nourin Jahan', '', 'BBA', '01515255864', 'Barisal', 15, '2016-17', '38.jpg', 0),
(39, 1402036, 5432, 'Umme Masuma', '', 'Agriculture', '01515255554', 'Dhaka', 15, '2016-17', '39.jpg', 0),
(40, 1402067, 5422, 'Tasnia Tabassum', '', 'NFS', '01725255864', 'Barisal', 16, '2016-17', '40.jpg', 0),
(42, 1402028, 5420, 'Farhana Islam', '', 'BBA', '01725255864', 'Barisal', 16, '2016-17', '42.jpg', 0),
(43, 1402055, 5432, 'Lamia jahan', '', 'Agriculture', '01725255542', 'Dumki', 16, '2016-17', '43.jpg', 0),
(45, 1402067, 5420, 'Nijhu', '', 'Agriculture', '01725255864', 'Dumki', 17, '2014-15', '45.jpg', 0),
(46, 1402071, 5356, 'Bithika Das', '', 'Agriculture', '01725255864', 'Barisal', 18, '', '46.jpg', 1),
(47, 1402054, 5427, 'Rabeya boshri', '', 'BBA', '01515255542', 'Barisal', 18, '2015-16', '47.jpg', 0),
(50, 1402073, 5422, 'Farjana Islam Eva', '', 'CSE', '01960043727', 'Khulna', 19, '2014-15', '50.jpg', 0),
(51, 1402007, 5356, 'Sangita Das', '', 'CSE', '01725255864', 'Barisal', 19, '2014-15', '51.jpg', 0),
(52, 1402049, 5420, 'Nurun Nahar Putul', '', 'CSE', '01725255542', 'Khulna', 21, '2014-15', '52.jpg', 0),
(53, 1402013, 5343, 'Anamika Das', '', 'CSE', '01515255542', 'Barisal', 21, '', '53.jpg', 1),
(54, 1402037, 5420, 'Tamanna Nigar Tuly', '', 'CSE', '01515255542', 'Khulna', 20, '2014-15', '54.jpg', 0),
(55, 1402071, 5420, 'Jannatunnesa Oyshe', '', 'CSE', '01515255554', 'Barisal', 20, '2014-15', '55.jpg', 0),
(56, 1402007, 5420, 'Dipa Sarkar', '', 'Agriculture', '01725255864', 'Barisal', 48, '2014-15', '56.jpg', 1),
(57, 1402067, 5422, 'Rabeya', '', 'Agriculture', '01725255864', 'Barisal', 49, '2016-17', '57.jpg', 0),
(58, 1402012, 5356, 'Tanima Sen', '', 'CSE', '01515255864', 'Sathkhira', 19, '2014-15', '58.jpg', 1),
(64, 140207122, 65236, 'Tasnia Islam Esa TWO', '', 'Ag', '012932032', 'Dhaka', 11, '2014-15', '64.jpg', 0),
(65, 140232311, 54223, 'Tasnia Islam Esa THREE', 'djprince3g@gmail.com', 'Ag', '012932032', 'Dhaka', 6, '2014-15', '65.jpg', 1),
(66, 1402018, 5312, 'Nahida Rahman', 'raihanbappi420@gmail.com', 'CSE', '01778456878', 'Barisal', 50, '2014-15', '66.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_notices`
--
ALTER TABLE `tbl_notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_rooms`
--
ALTER TABLE `tbl_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_notices`
--
ALTER TABLE `tbl_notices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_rooms`
--
ALTER TABLE `tbl_rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `tbl_student`
--
ALTER TABLE `tbl_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
