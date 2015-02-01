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
  `upload_date` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT = 1000;

--
-- Dumping data for table `images`
--

INSERT INTO `photos` 
(`id`, `filename`, `foldername`, `category`, `description`, `location`, `date_taken`, `upload_date`) 
VALUES
  (1,   'nature001.jpg', 'nature', 'Nature', NULL, 'Porteau Cove, B.C.', NULL, '2015-01-01')
, (2,   'nature002.jpg', 'nature', 'Nature', NULL, 'Porteau Cove, B.C.', NULL, '2015-01-01')
, (3,   'nature003.jpg', 'nature', 'Nature', NULL, 'Porteau Cove, B.C.', NULL, '2015-01-01')
, (4,   'nature004.jpg', 'nature', 'Nature', 'Pacific Rim National Park', 'Vancouver Island, B.C.', NULL, '2015-01-01')
, (5,   'nature005.jpg', 'nature', 'Nature', 'Pacific Rim National Park', 'Vancouver Island, B.C.', NULL, '2015-01-01')
, (6,   'nature006.jpg', 'nature', 'Nature', 'Pacific Rim National Park', 'Vancouver Island, B.C.', NULL, '2015-01-01')
, (7,   'nature007.jpg', 'nature', 'Nature', 'Grouse Mountain', 'North Vancouver, B.C.', NULL, '2015-01-01')
, (8,   'nature008.jpg', 'nature', 'Nature', 'Pacific Rim National Park', 'Vancouver Island, B.C.', NULL, '2015-01-01')
, (9,   'nature009.jpg', 'nature', 'Nature', 'Multnomah Falls', 'Columbia River Gorge, OR', NULL, '2015-01-01')
, (10,  'nature010.jpg', 'nature', 'Nature', 'Maligne Falls', 'near Jasper, AB', NULL, '2015-01-01')
;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
