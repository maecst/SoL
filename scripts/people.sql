-- phpMyAdmin SQL Dump
-- version 4.1.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 05, 2014 at 10:44 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `SoL_Photography`
--

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE IF NOT EXISTS `photos` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `filename` varchar(32) NOT NULL,
  `foldername` varchar(32) NOT NULL,
  `category` varchar(32) NOT NULL,
  `description` varchar(128),
  `location` varchar(128) NOT NULL,
  `date_taken` varchar(16),
  `upload_date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `images`
--

INSERT INTO `photos` 
(`filename`, `foldername`, `category`, `description`, `location`, `date_taken`) 
VALUES

  ('people001.jpg', 'people', 'people', 'Amy & Carey', 'Whistler, BC', 'September 2013')
, ('people002.jpg', 'people', 'people', 'Amy & Carey', 'Whistler, BC', 'September 2013')
, ('people003.jpg', 'people', 'people', 'Amy & Carey', 'Whistler, BC', 'September 2013')
, ('people004.jpg', 'people', 'people', 'Amy & Carey', 'Whistler, BC', 'September 2013')
, ('people005.jpg', 'people', 'people', 'Amy & Michael', 'Vancouver, BC', 'March 2012')
, ('people006.jpg', 'people', 'people', 'Amy & Michael', 'Vancouver, BC', 'March 2012')
, ('people007.jpg', 'people', 'people', 'Amy & Michael', 'Vancouver, BC', 'March 2012')
, ('people008.jpg', 'people', 'people', 'Victoria', NULL, 'February 2014')
, ('people009.jpg', 'people', 'people', 'Victoria', NULL, 'February 2014')
, ('people010.jpg', 'people', 'people', 'Amy & Carey', 'St. Thomas, U.S. Virgin Islands', 'January 2014')
, ('people011.jpg', 'people', 'people', 'Amy & Carey', 'St. Thomas, U.S. Virgin Islands', 'January 2014')
, ('people012.jpg', 'people', 'people', 'Amy & Carey', 'St. Thomas, U.S. Virgin Islands', 'January 2014')
, ('people013.jpg', 'people', 'people', 'Amy & Michael', 'SFU, Burnaby, BC', 'May 2012')
, ('people014.jpg', 'people', 'people', 'Amy & Michael', 'SFU, Burnaby, BC', 'May 2012')
, ('people015.jpg', 'people', 'people', 'Susan', 'Mayan Riviera', 'May 2012')
, ('people016.jpg', 'people', 'people', 'Susan', 'Mayan Riviera', 'May 2012')
, ('people017.jpg', 'people', 'people', 'Father & daughter', 'Mayan Riviera', 'May 2012')
, ('people018.jpg', 'people', 'people', 'Kim', 'Mayan Riviera', 'May 2012')
, ('people019.jpg', 'people', 'people', 'Susan', 'Mayan Riviera', 'May 2012')
, ('people020.jpg', 'people', 'people', 'Susan', 'Mayan Riviera', 'May 2012')
, ('people021.jpg', 'people', 'people', 'Susan & Jean-Francois', 'Mayan Riviera', 'May 2012')
, ('people022.jpg', 'people', 'people', 'Susan & Jean-Francois', 'Mayan Riviera', 'May 2012')
, ('people023.jpg', 'people', 'people', 'Susan & Jean-Francois', 'Mayan Riviera', 'May 2012')
, ('people024.jpg', 'people', 'people', 'Susan & Jean-Francois', 'Mayan Riviera', 'May 2012')
;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


