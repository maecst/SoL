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

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `confirmpass` varchar(128) NOT NULL,
  `role` varchar(32) NOT NULL,  --will limit to admin or user for now
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT = 1000;

--
-- Dumping data for table `images`
--


INSERT INTO `users` 
(`id`, `firstname`, `lastname`, `email`, `password`, `role`) 
VALUES
  (1   'Henry', 'Tan', 'hkitannn@gmail.com', 'totallyencryptedpassword', 'ADMIN')
, (2   'Mae', 'Yee', 'mae.cst@hotmail.com', 'sliveroflight', 'ADMIN')
, (3   'Michael', 'Chodolak', 'chodolak@gmail.com', 'damnthatsinteresting', 'ADMIN')
, (4   'Stephanie', 'Lachapelle', 'steph-lachapelle@hotmail.com', 'vidyagames', 'ADMIN')
, (5   'Jim', 'Parry', 'jlparry@jlparry.com', 'codeignilumminati', 'ADMIN')
;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
