-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2023 at 07:58 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iwp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `empid` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `password`, `empid`) VALUES
('sachin', '1234', 'sachin');

-- --------------------------------------------------------

--
-- Table structure for table `balance`
--

CREATE TABLE `balance` (
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `balance`
--

INSERT INTO `balance` (`balance`) VALUES
(178460);

-- --------------------------------------------------------

--
-- Table structure for table `booked_hist`
--

CREATE TABLE `booked_hist` (
  `phone` varchar(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `idproof` varchar(20) NOT NULL,
  `room_type` varchar(20) NOT NULL,
  `checkin` date NOT NULL,
  `checkout` date NOT NULL,
  `days` int(11) NOT NULL,
  `ac` varchar(5) NOT NULL,
  `breakfast` varchar(5) NOT NULL,
  `lunch` varchar(5) NOT NULL,
  `snacks` varchar(5) NOT NULL,
  `dinner` varchar(5) NOT NULL,
  `swimming` varchar(5) NOT NULL,
  `price` int(11) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `booked_hist`
--

INSERT INTO `booked_hist` (`phone`, `name`, `idproof`, `room_type`, `checkin`, `checkout`, `days`, `ac`, `breakfast`, `lunch`, `snacks`, `dinner`, `swimming`, `price`, `book_id`) VALUES
('123', 'abc', '123', 'Single bed', '2019-10-09', '2019-10-17', 8, 'false', 'false', 'false', 'false', 'false', 'false', 1000, 10013),
('123', 'abc', '123', 'Single bed', '2019-10-09', '2019-10-12', 3, 'false', 'true', 'true', 'false', 'false', 'false', 2350, 10014),
('123', 'abc', '123', 'Single bed', '2019-10-17', '2019-10-19', 2, 'false', 'false', 'false', 'false', 'false', 'false', 1000, 10016),
('123', 'abc', '123', 'Double bed', '2019-10-09', '2019-10-19', 10, 'false', 'false', 'true', 'false', 'false', 'false', 20400, 10017),
('123', 'abc', '123', 'Single bed', '2019-10-02', '2019-10-04', 2, 'false', 'false', 'false', 'false', 'false', 'false', 2000, 10018),
('1234', 'Vaibhav', '1234', 'Single bed', '2019-11-08', '2019-11-10', 2, 'false', 'true', 'true', 'false', 'false', 'false', 2900, 10019),
('2147483647', 'Hemanithin K S ', '192110426', 'Double bed', '2023-11-20', '2023-11-23', 3, 'true', 'false', 'false', 'false', 'false', 'false', 6300, 10020),
('2147483647', 'Hemanithin K S ', '192110426', 'Single bed', '2023-11-27', '2023-11-24', 3, 'true', 'false', 'false', 'true', 'false', 'false', 4260, 10021),
('123', 'abc', '123', 'Double bed', '2023-11-15', '2023-11-29', 14, 'true', 'false', 'false', 'false', 'false', 'false', 29400, 10022),
('123', 'abc', '123', 'Four bed', '2023-11-21', '2023-11-30', 9, 'false', 'false', 'true', 'false', 'false', 'false', 29700, 10023),
('2147483647', 'Hemanithin K S ', '192110426', 'Single bed', '2023-12-05', '2023-12-28', 23, 'false', 'true', 'false', 'false', 'false', 'false', 26450, 10025),
('8608100249', 'Hemanithin K S ', '192110426', 'Single bed', '2023-11-20', '2023-11-29', 9, 'false', 'false', 'false', 'false', 'false', 'false', 9000, 10026),
('8608100249', 'Hemanithin K S ', '192110426', 'Double bed', '2023-11-27', '2023-11-22', 5, 'false', 'false', 'false', 'false', 'false', 'false', 9000, 10028);

-- --------------------------------------------------------

--
-- Table structure for table `book_id`
--

CREATE TABLE `book_id` (
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `book_id`
--

INSERT INTO `book_id` (`book_id`) VALUES
(10029);

-- --------------------------------------------------------

--
-- Table structure for table `confirmed_booking`
--

CREATE TABLE `confirmed_booking` (
  `phone` varchar(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `idproof` varchar(20) NOT NULL,
  `room_type` varchar(20) NOT NULL,
  `checkin` date NOT NULL,
  `checkout` date NOT NULL,
  `days` int(11) NOT NULL,
  `ac` varchar(5) NOT NULL,
  `breakfast` varchar(5) NOT NULL,
  `lunch` varchar(5) NOT NULL,
  `snacks` varchar(5) NOT NULL,
  `dinner` varchar(5) NOT NULL,
  `swimming` varchar(5) NOT NULL,
  `price` int(11) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms_count`
--

CREATE TABLE `rooms_count` (
  `room_type` varchar(20) NOT NULL,
  `available_rooms` int(11) NOT NULL,
  `occupied_rooms` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rooms_count`
--

INSERT INTO `rooms_count` (`room_type`, `available_rooms`, `occupied_rooms`, `price`) VALUES
('Single bed', 6, 0, 1000),
('Double bed', 5, 0, 1800),
('Four bed', 5, 0, 3000);

-- --------------------------------------------------------

--
-- Table structure for table `temp`
--

CREATE TABLE `temp` (
  `pwd` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `temp_book_id_`
--

CREATE TABLE `temp_book_id_` (
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `temp_room`
--

CREATE TABLE `temp_room` (
  `phone` varchar(11) NOT NULL,
  `idproof` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `temp_session`
--

CREATE TABLE `temp_session` (
  `phone` varchar(11) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `idproof` varchar(20) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `temp_session`
--

INSERT INTO `temp_session` (`phone`, `password`, `name`, `email`, `idproof`, `dob`) VALUES
('8608100249', '1234', 'Hemanithin K S ', 'hemanithinks2003@gmail.com', '192110426', '2003-09-22');

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `phone` varchar(200) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `idproof` varchar(20) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`phone`, `password`, `name`, `email`, `idproof`, `dob`) VALUES
('0', '', '', '', '', '0000-00-00'),
('123', '1234', 'abc', 'abc@gmail.com', '123', '2000-01-01'),
('1234', '12345', 'Vaibhav', 'vaibhav@gmail.com', '1234', '2000-01-01'),
('8608100249', '1234', 'Hemanithin K S ', 'hemanithinks2003@gmail.com', '192110426', '2003-09-22');

-- --------------------------------------------------------

--
-- Table structure for table `user_room_book`
--

CREATE TABLE `user_room_book` (
  `phone` varchar(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `idproof` varchar(20) NOT NULL,
  `room_type` varchar(20) NOT NULL,
  `checkin` date NOT NULL,
  `checkout` date NOT NULL,
  `days` int(11) NOT NULL,
  `ac` varchar(5) NOT NULL,
  `breakfast` varchar(5) NOT NULL,
  `lunch` varchar(5) NOT NULL,
  `snacks` varchar(5) NOT NULL,
  `dinner` varchar(5) NOT NULL,
  `swimming` varchar(5) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Waiting',
  `price` int(11) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booked_hist`
--
ALTER TABLE `booked_hist`
  ADD UNIQUE KEY `book_id` (`book_id`);

--
-- Indexes for table `confirmed_booking`
--
ALTER TABLE `confirmed_booking`
  ADD UNIQUE KEY `book_id` (`book_id`);

--
-- Indexes for table `temp_session`
--
ALTER TABLE `temp_session`
  ADD PRIMARY KEY (`phone`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`phone`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
