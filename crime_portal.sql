-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2019 at 07:32 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `crime_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE IF NOT EXISTS `complaint` (
`c_id` int(11) NOT NULL,
  `a_no` bigint(12) NOT NULL,
  `location` varchar(50) NOT NULL,
  `type_crime` varchar(50) NOT NULL,
  `d_o_c` date NOT NULL,
  `description` varchar(7000) NOT NULL,
  `inc_status` varchar(50) DEFAULT 'Unassigned',
  `pol_status` varchar(50) DEFAULT 'null',
  `p_id` varchar(50) DEFAULT 'Null'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`c_id`, `a_no`, `location`, `type_crime`, `d_o_c`, `description`, `inc_status`, `pol_status`, `p_id`) VALUES
(1, 123214521452, 'Tollygunge', 'Robbery', '2018-12-06', 'My Home has been Robbed.', 'Assigned', 'ChargeSheet Filed', 't101'),
(2, 123456789012, 'Anandapur', 'Theft', '2018-12-12', 'Wharever dawg\r\n', 'Unassigned', 'null', 'Null'),
(3, 234567890123, 'Anandapur', 'Police Brutality', '2018-12-12', 'eiwrfhwofwef', 'Unassigned', 'null', 'Null'),
(4, 123456789123, 'Tollygunge', 'Police Brutality', '2019-11-01', 'Police suck', 'Unassigned', 'null', 'Null'),
(5, 123456789012, 'Anandapur', 'Theft', '2019-11-16', 'Thot', 'Unassigned', 'null', 'Null'),
(7, 123456789012, 'Anandapur', 'Robbery', '2019-11-17', 'in my house', 'Unassigned', 'null', 'Null'),
(8, 123456789012, 'Bengaluru', 'Theft', '2019-11-17', 'rr nagar', 'Assigned', 'ChargeSheet Filed', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `head`
--

CREATE TABLE IF NOT EXISTS `head` (
  `h_id` varchar(50) NOT NULL,
  `h_pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `head`
--

INSERT INTO `head` (`h_id`, `h_pass`) VALUES
('head@kp', 'head');

-- --------------------------------------------------------

--
-- Table structure for table `police`
--

CREATE TABLE IF NOT EXISTS `police` (
  `p_name` varchar(50) NOT NULL,
  `p_id` varchar(50) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `p_pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `police`
--

INSERT INTO `police` (`p_name`, `p_id`, `spec`, `location`, `p_pass`) VALUES
('Sam', '1234', 'Robbery', 'Bengaluru', 'sam'),
('Manish Singh', 'a101', 'Murder', 'Anandapur', 'manish'),
('Jay Singh', 'a102', 'All', 'Anandapur', 'jay'),
('Suvendu Ghosh', 't101', 'Robbery', 'Tollygunge', 'suvendu');

-- --------------------------------------------------------

--
-- Table structure for table `police_station`
--

CREATE TABLE IF NOT EXISTS `police_station` (
  `i_id` varchar(50) NOT NULL,
  `i_name` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `i_pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `police_station`
--

INSERT INTO `police_station` (`i_id`, `i_name`, `location`, `i_pass`) VALUES
('1234', 'Gunas', 'Bengaluru', 'gunaguna'),
('shah@anandapur', 'Shahbaz', 'Anandapur', 'shahbaz'),
('shivam@tollygunge', 'Shivam', 'Tollygunge', 'shivam');

-- --------------------------------------------------------

--
-- Table structure for table `update_case`
--

CREATE TABLE IF NOT EXISTS `update_case` (
  `c_id` int(11) NOT NULL,
  `d_o_u` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `case_update` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `update_case`
--

INSERT INTO `update_case` (`c_id`, `d_o_u`, `case_update`) VALUES
(1, '2018-12-17 10:32:06', 'Criminal Verified'),
(1, '2018-12-17 10:32:12', 'Criminal Caught'),
(1, '2018-12-17 10:32:15', 'Criminal Interrogated'),
(1, '2018-12-17 10:32:21', 'Criminal Accepted the Crime'),
(1, '2018-12-17 10:32:26', 'Criminal Charged'),
(1, '2018-12-17 10:32:51', 'The case has been moved to Court.'),
(1, '2018-12-17 10:32:59', 'Criminal Verified'),
(1, '2019-10-17 14:41:29', 'Bye Bye MF'),
(1, '2019-10-17 14:41:38', 'n'),
(8, '2019-11-17 05:17:06', 'Criminal Verified'),
(8, '2019-11-17 05:17:14', 'Criminal Caught'),
(8, '2019-11-17 05:17:24', 'Criminal Interrogated'),
(8, '2019-11-17 05:17:28', 'Criminal Confessed the Crime'),
(8, '2019-11-17 05:17:34', 'Criminal Charged'),
(8, '2019-11-17 05:17:50', 'Sentenced to 10 years in federal jail');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `u_name` varchar(50) NOT NULL,
  `u_id` varchar(50) NOT NULL,
  `u_pass` varchar(50) NOT NULL,
  `u_addr` varchar(100) NOT NULL,
  `a_no` bigint(12) NOT NULL,
  `gen` varchar(15) NOT NULL,
  `mob` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_name`, `u_id`, `u_pass`, `u_addr`, `a_no`, `gen`, `mob`) VALUES
('Rahul Hegde', 'rahulhegde97@gmail.com', 'rahulhegde', 'Bengaluru', 123456789012, 'Male', 9591175823),
('John', 'john@gmail.com', 'john', 'Bengaluru', 123456789123, 'Male', 9591175822),
('Guna Shree', 'guna@gmail.com', 'gunaguna', 'Bengaluru', 234567890123, 'Female', 9865432112);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
 ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `police`
--
ALTER TABLE `police`
 ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `police_station`
--
ALTER TABLE `police_station`
 ADD PRIMARY KEY (`i_id`), ADD UNIQUE KEY `location` (`location`);

--
-- Indexes for table `update_case`
--
ALTER TABLE `update_case`
 ADD UNIQUE KEY `d_o_u` (`d_o_u`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`a_no`), ADD UNIQUE KEY `u_id` (`u_id`), ADD UNIQUE KEY `mob` (`mob`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
