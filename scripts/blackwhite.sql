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
  (   'bw001.jpg', 'blackwhite', 'Black & White', 'Up Above the Clouds', 'Grouse Mountain, B.C.', NULL)
, (   'bw002.jpg', 'blackwhite', 'Black & White', 'Black Tusk', 'Whistler, B.C.', NULL)
, (   'bw003.jpg', 'blackwhite', 'Black & White', 'Moon Rise', 'Whistler, B.C.', NULL)
, (   'bw004.jpg', 'blackwhite', 'Black & White', NULL, 'Whistler, B.C.', NULL)
, (   'bw005.jpg', 'blackwhite', 'Black & White', NULL, 'Whistler, B.C.', NULL)
, (   'bw006.jpg', 'blackwhite', 'Black & White', NULL, 'Whistler, B.C.', NULL)
, (   'bw007.jpg', 'blackwhite', 'Black & White', 'Alexander Falls', 'Callahan Valley (near Whistler), B.C.', NULL)
, (   'bw008.jpg', 'blackwhite', 'Black & White', 'Gnarly', NULL, NULL)
, (   'bw009.jpg', 'blackwhite', 'Black & White', 'Iona Beach', NULL, NULL)
, (   'bw010.jpg', 'blackwhite', 'Black & White', 'A Lone Tree', 'Vanier Park, B.C.', NULL)
, (   'bw011.jpg', 'blackwhite', 'Black & White', 'Come Into My Parlour', NULL, NULL)
, (   'bw012.jpg', 'blackwhite', 'Black & White', 'Dunkin Duck', NULL, NULL)
, (   'bw013.jpg', 'blackwhite', 'Black & White', NULL, 'Astoria, OR.', NULL)
, (   'bw014.jpg', 'blackwhite', 'Black & White', 'Through the Looking Glass', 'Vanier Park, B.C.', NULL)
, (   'bw015.jpg', 'blackwhite', 'Black & White', NULL, NULL, NULL)
, (   'bw016.jpg', 'blackwhite', 'Black & White', NULL, 'Mulkiteo Ferry Terminal, WA', NULL)
, (   'bw017.jpg', 'blackwhite', 'Black & White', 'Lion''s Gate Bridge (long exposure)', 'Vancouver, B.C.', NULL)
, (   'bw018.jpg', 'blackwhite', 'Black & White', 'Lion''s Gate Bridge', 'Vancouver, B.C.', NULL)
, (   'bw019.jpg', 'blackwhite', 'Black & White', 'Wired Up', NULL, NULL)
, (   'bw020.jpg', 'blackwhite', 'Black & White', 'Mop Head', NULL, NULL)
, (   'bw021.jpg', 'blackwhite', 'Black & White', NULL, NULL, NULL)
, (   'bw022.jpg', 'blackwhite', 'Black & White', NULL, NULL, NULL)
, (   'bw023.jpg', 'blackwhite', 'Black & White', NULL, NULL, NULL)
, (   'bw024.jpg', 'blackwhite', 'Black & White', NULL, NULL, NULL)
, (   'bw025.jpg', 'blackwhite', 'Black & White', NULL, NULL, NULL)
, (   'bw026.jpg', 'blackwhite', 'Black & White', NULL, NULL, NULL)
, (   'bw027.jpg', 'blackwhite', 'Black & White', NULL, NULL, NULL)

;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
