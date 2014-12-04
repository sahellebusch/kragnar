-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2014 at 03:15 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `fcclogtest`
--

CREATE TABLE IF NOT EXISTS `fcclog` (
  `timestamp` datetime NOT NULL,
  `showtime` varchar(12) DEFAULT NULL,
  `dj` varchar(35) NOT NULL,
  `pa_volts` float(11) DEFAULT NULL,
  `pa_amps` float(11) DEFAULT NULL,
  `fwrd_pwr` float(11) DEFAULT NULL,
  `readings` tinyint(1) NOT NULL,
  `r_zero` varchar(30) DEFAULT NULL,
  `r_twelve` varchar(30) DEFAULT NULL,
  `r_twentynine` varchar(30) DEFAULT NULL,
  `r_fortysix` varchar(30) DEFAULT NULL,
  `r_fiftyfive` varchar(30) DEFAULT NULL,
  `notes` varchar(100) DEFAULT 'NULL',
  `studentID` int(7) NOT NULL,
  `digital_signature` varchar(35) DEFAULT NULL,
  foreign key (`studentID`) references dj(s_ID)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

create table if NOT exists `DJ` (
    `s_ID` int(7) NOT NULL,
    `first_name` varchar(255) NOT NULL,
    `last_name` varchar(255) NOT NULL,
    `show_name` varchar(255) NOT NULL,
    `email` varchar(255) NOT NULL,
    primary key (`s_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fcclogtest`
--

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

insert into dj values (000724030, "sean", "hellebusch", "hellagood show", "sah7817@truman.edu");
insert into dj values (000123456, "tommy", "tester", "test show", "tt1234@truman.edu");
insert into dj values (000456789, "foo", "bar", "foobar", "fb5678@truman.edu");
