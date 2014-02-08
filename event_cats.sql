-- phpMyAdmin SQL Dump
-- version 3.5.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 01, 2014 at 08:42 AM
-- Server version: 5.5.33-31.1
-- PHP Version: 5.3.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nitcfest_ragam13`
--

-- --------------------------------------------------------

--
-- Table structure for table `event_cats`
--

CREATE TABLE IF NOT EXISTS `event_cats` (
  `cat_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `par_cat` tinyint(4) NOT NULL DEFAULT '-1',
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `event_cats`
--

INSERT INTO `event_cats` (`cat_id`, `par_cat`, `name`) VALUES
(1, -1, 'Events'),
(2, -1, 'Workshops'),
(3, -1, 'Proshows'),
(4, -1, 'Social Initiatives'),
(5, 1, 'General'),
(6, 1, 'Literary'),
(7, 1, 'Dance'),
(8, 1, 'Dramatics'),
(9, 1, 'Music'),
(10, 1, 'Fine Arts'),
(11, 1, 'Thematic'),
(12, 1, 'Online'),
(13, 1, 'Gaming'),
(14, 1, 'Sports');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
