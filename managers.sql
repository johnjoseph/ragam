-- phpMyAdmin SQL Dump
-- version 3.5.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 12, 2014 at 09:57 PM
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
-- Table structure for table `managers`
--

CREATE TABLE IF NOT EXISTS `managers` (
  `eventcode` varchar(10) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(20) NOT NULL,
  `validate` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `managers`
--

INSERT INTO `managers` (`eventcode`, `username`, `password`, `validate`) VALUES
('-pr', 'adityapulachery', 'ragamragam', 1),
('DUM', 'aishmaruvada', 'omalloor88', 1),
('SWA', 'aishumaruvada', 'omalloor88', 1),
('DEB', 'aishwaryamaruvada', 'omalloor88', 1),
('WTG', 'aswathi', 'wtgw', 1),
('-pr', 'athulya', 'athulya', 1),
('CRN', 'choreonight', 'choreonite1', 1),
('CRM', 'criminalminds', 'criminalminds', 1),
('WSO', 'dinakar', 'ws', 1),
('CLD', 'dishiti', 'dishiti', 1),
('MNA', 'dishitiep', 'dishiti', 1),
('PRF', 'dishitigupta', 'dishiti', 1),
('DUP', 'duplicate', 'duplicate', 0),
('FRS', 'freestyle', 'freestyle1', 1),
('-pr', 'gokulnath', 'ragam14', 1),
('-pr', 'hafiz', 'ragam14', 1),
('-pr', 'jacob', 'ronaldo', 1),
('JAM', 'jam', 'jam', 1),
('CTB', 'joffy', 'ragam', 1),
('FAR', 'joffycyriac', 'ragam', 1),
('TRS', 'joffytrs', 'ragam', 1),
('AMP', 'joffyvc', 'ragam', 1),
('-pr', 'john', 'payasam', 1),
('STP', 'johnku', '9h16xtjk', 1),
('OPA', 'johnkur', 'farawaytree', 1),
('SNP', 'johnkuri', 'supernova', 1),
('-pr', 'kiran', 'kiran', 1),
('LMS', 'lightmusicsolo', 'lightmusicsolo', 1),
('PKR', 'milan', 'saintjude', 1),
('PSK', 'milanmariya', 'saintjude', 1),
('CMS', 'milantomy', 'saintjude', 1),
('MIM', 'mime', 'mime', 0),
('MMC', 'mimicry', 'mimicry', 0),
('MRG', 'mrmsragam', 'mrmsragam1', 1),
('ADZ', 'nakul', 'iloveindia', 1),
('CRT', 'nakultwo', 'ilovekerala', 1),
('OVR', 'namita', 'namita', 1),
('ANT', 'namitak', 'namitak', 1),
('QUI', 'namitakr', 'namitakr', 1),
('-pr', 'nandagopal', 'ragam14', 1),
('-pr', 'nandakumar', 'nans2693', 1),
('FPG', 'nanditha', 'nandunni', 1),
('DRM', 'nandithau', 'nandunni', 1),
('KVP', 'nandithaunnikrishnan', 'nandunni', 1),
('RGL', 'rangoli', 'rangoli', 1),
('ACS', 'sabahmohammed', 'ragam', 1),
('-pr', 'sikhamanoj', 'javagreen', 1),
('MVS', 'spoof', 'spoof', 1),
('-pr', 'stevethomas', 'stevethomas', 1),
('STS', 'stringsolo', 'stringsolo', 1),
('JSK', 'suzanne', 'suzanne', 1),
('SPB', 'suzannevc', 'ragam', 1),
('MEH', 'suze', 'suze', 1),
('PNT', 'tarun', '12345678', 1),
('MAP', 'tarunt', '12345678', 1),
('CLG', 'tarunthekkel', '12345678', 1),
('TWT', 'tinthet', 'tinthet1', 1),
('-pr', 'tom', 'tomst', 1),
('VGC', 'vegetablecarving', 'vegetablecarving', 1),
('-pr', 'wasih', 'wasih', 1),
('-pr', 'yadu', 'appy', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
