-- phpMyAdmin SQL Dump
-- version 3.5.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 12, 2014 at 09:56 PM
-- Server version: 5.5.33-31.1
-- PHP Version: 5.3.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nitcfest_ragam14`
--

-- --------------------------------------------------------

--
-- Table structure for table `cat_xtra`
--

CREATE TABLE IF NOT EXISTS `cat_xtra` (
  `id` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `color1` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `color2` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cat_xtra`
--

INSERT INTO `cat_xtra` (`id`, `color1`, `color2`) VALUES
('5', '#1ABC9C', '#16A085'),
('6', '#3498DB', '#2980B9'),
('7', '#E74C3C', '#C0392B'),
('8', '#E67E22', '#D35400'),
('9', '#F1C40F', '#F39C12'),
('10', '#2ECC71', '#27AE60'),
('11', '#9B59B6', '#8E44AD'),
('12', '#8A4465', '#7D3858'),
('13', '#34495E', '#2C3E50'),
('14', '#95A5A6', '#7F8C8D');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
