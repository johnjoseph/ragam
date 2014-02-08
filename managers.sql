-- phpMyAdmin SQL Dump
-- version 3.5.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 01, 2014 at 08:43 AM
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
('ADV', 'adventuregames', '2013ragam', 1),
('DCM', 'akanksha', 'neenu', 1),
('-pr', 'akhil', 'qwerty', 1),
('AMP', 'amplified', 'amp@ragam13', 1),
('ANH', 'antaksharih', 'password', 1),
('-pr', 'aparna', 'apollo', 1),
('SPB', 'athuljohn', 'kumbidi', 1),
('KPM', 'athuljohnvarghese', 'kumbidi', 1),
('DUP', 'athulya', 'Aree27', 1),
('CLM', 'athulyaclm', 'classical', 1),
('FAP', 'athulyafap', 'face', 1),
('-pr', 'athulyaproof', 'athulya', 1),
('BBL', 'basketball', '2013ragam', 1),
('CLG', 'collage', 'collage@ragam', 1),
('CSI', 'csi', 'password', 1),
('DBT', 'debate', 'debate@ragam', 1),
('-pr', 'djgeo', 'ragam13', 1),
('DOT', 'dota', '2013ragam', 1),
('DOV', 'dotav', '2013ragam', 1),
('FIF', 'fifa', '2013ragam', 1),
('-pr', 'gokulnathproof', '2013ragam', 1),
('-pr', 'hezthestar', 'yash1th', 1),
('JAE', 'himaya', 'blitzkrieg!', 1),
('JML', 'himayai', 'blitzkrieg', 1),
('DRE', 'himayaiyer', 'blitzkrieg?', 1),
('DRM', 'iyerhimaya', 'blitzkrieg/3', 1),
('LMS', 'jacobhlms', 'koran', 1),
('MEH', 'jacobhmeh', 'koran', 1),
('-pr', 'john', 'john', 1),
('JSK', 'kiran', 'psst3', 1),
('SNP', 'kiranair', 'psst2', 1),
('CDA', 'kirannair', 'psst', 1),
('LTG', 'lasertag', '013ragam', 1),
('MAP', 'mapilapat', '2013ragam', 1),
('MME', 'mime', 'mimeme', 1),
('MSP', 'moviespoof', '2013ragam', 1),
('AZP', 'nandu', '2693', 1),
('FRS', 'nans', '2693raika', 1),
('MAC', 'neeenu', 'trinity18', 1),
('MWS', 'neenu', 'trinity18', 1),
('FSW', 'neenuali', 'trinity18', 1),
('NFS', 'nfsmw', '2013ragam', 1),
('STR', 'nikhita', 'nikki', 1),
('PNG', 'nikhitam', 'nikkim', 1),
('CRT', 'nikhitama', 'nikkima', 1),
('-pr', 'nirmal', 'qwerty', 1),
('-pr', 'nitheesh', 'unda', 1),
('OPN', 'oppana', '2013ragam', 1),
('MPR', 'parvathymp', 'parvathy', 1),
('RAG', 'parvathyrag', 'parvathy', 1),
('PRF', 'payas', 'payas@ragam', 1),
('-pr', 'pranav', 'ubiquity', 1),
('-pr', 'pravar', 'pravar', 1),
('SWA', 'pulzmusic', 'music18', 1),
('PEN', 'pulzpencilsketch', 'finearts27', 1),
('VEG', 'pulzvegetable', 'finearts29', 1),
('-pr', 'punnen', 'jamesbond', 1),
('RNG', 'rangoli', 'password', 1),
('-pr', 'rinin', 'gotham', 1),
('MOA', 'sikha', 'sunshineyellow', 1),
('PKR', 'sikhamanoj', 'sunshine', 1),
('CHN', 'steve', 'choreonight', 1),
('OVA', 'stevet', 'overacting', 1),
('CNT', 'stevethomas', 'choreonight2', 1),
('TOS', 'takeone', '2013ragam', 1),
('LVL', 'tanya', 'tanya', 1),
('MMR', 'tanyap', 'tanya', 1),
('BRL', 'tanyapp', 'tanyapp', 1),
('MLH', 'tanyapr', 'tanya', 1),
('QIZ', 'tomquiz', '9037102360', 1),
('STP', 'tomst', '9037102360', 1),
('TRH', 'tomtreshunt', '9037102360', 1),
('-pr', 'torque', '13ragam', 1),
('-pr', 'vijeesh', 'hseejiv', 1),
('WTG', 'wtgw', 'wtgw13', 1),
('-pr', 'yadu', 'tori', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
