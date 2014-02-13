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
-- Table structure for table `event_xtra`
--

CREATE TABLE IF NOT EXISTS `event_xtra` (
  `code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `prize` int(11) NOT NULL,
  `min` int(11) NOT NULL,
  `max` int(11) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `event_xtra`
--

INSERT INTO `event_xtra` (`code`, `prize`, `min`, `max`) VALUES
('ACS', 20000, 3, 12),
('ADZ', 6500, 1, 3),
('AMP', 43000, 6, 12),
('ANT', 9000, 2, 3),
('CLD', 6000, 1, 1),
('CLG', 3750, 1, 4),
('CMS', 3750, 1, 1),
('CRN', 100000, 5, 50),
('CRT', 2900, 1, 1),
('CTB', 50000, 6, 50),
('DEB', 10000, 2, 2),
('DRM', 15000, 1, 50),
('DUM', 10000, 3, 3),
('DUP', 6000, 2, 2),
('FPG', 2900, 2, 2),
('JAM', 6400, 1, 1),
('JSK', 2900, 3, 3),
('KVP', 3250, 1, 1),
('LMS', 3750, 1, 1),
('MAP', 2000, 1, 1),
('MEH', 2000, 1, 1),
('MIM', 16000, 5, 9),
('MMC', 3750, 1, 1),
('MNA', 3750, 1, 1),
('MRG', 6000, 1, 1),
('MVS', 5000, 4, 8),
('OPA', 5500, 1, 1),
('OVR', 3750, 1, 1),
('PKR', 2500, 1, 1),
('PNT', 2900, 1, 1),
('PRF', 6000, 2, 2),
('PSK', 2900, 1, 1),
('RGL', 3750, 1, 5),
('SNP', 3250, 1, 1),
('SPB', 2000, 1, 1),
('STP', 16000, 5, 12),
('STS', 3750, 1, 1),
('SWA', 30000, 3, 20),
('TRS', 5000, 1, 4),
('TWT', 3250, 1, 1),
('VGC', 3750, 1, 1),
('WSO', 3750, 1, 1),
('WTG', 3250, 2, 2),
('FRS', 5000, 1, 1),
('QUI', 36000, 1, 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
