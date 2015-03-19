-- phpMyAdmin SQL Dump
-- version 4.1.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 05, 2014 at 10:44 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9
--
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";
--
--
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
--
--
-- Database: `SoL_Photography`
--
-- --------------------------------------------------------
--
DROP TABLE `photos`;
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
  ('nature001.jpg', 'nature', 'Nature', NULL, 'Porteau Cove, B.C.', NULL)
, ('nature002.jpg', 'nature', 'Nature', NULL, 'Porteau Cove, B.C.', NULL)
, ('nature003.jpg', 'nature', 'Nature', NULL, 'Porteau Cove, B.C.', NULL)
, ('nature004.jpg', 'nature', 'Nature', 'Pacific Rim National Park', 'Vancouver Island, B.C.', NULL)
, ('nature005.jpg', 'nature', 'Nature', 'Pacific Rim National Park', 'Vancouver Island, B.C.', NULL)
, ('nature006.jpg', 'nature', 'Nature', 'Pacific Rim National Park', 'Vancouver Island, B.C.', NULL)
, ('nature007.jpg', 'nature', 'Nature', 'Grouse Mountain', 'North Vancouver, B.C.', NULL)
, ('nature008.jpg', 'nature', 'Nature', 'Pacific Rim National Park', 'Vancouver Island, B.C.', NULL)
, ('nature009.jpg', 'nature', 'Nature', 'Multnomah Falls', 'Columbia River Gorge, OR', NULL)
, ('nature010.jpg', 'nature', 'Nature', 'Maligne Falls', 'near Jasper, AB', NULL)
, ('nature011.jpg', 'nature', 'Nature', 'Shannon Falls', 'Squamish, B.C.', NULL)
, ('nature012.jpg', 'nature', 'Nature', 'Shannon Falls', 'Squamish, B.C.', NULL)
, ('nature013.jpg', 'nature', 'Nature', 'Shannon Falls', 'Squamish, B.C.', NULL)
, ('nature014.jpg', 'nature', 'Nature', 'Athabasca Falls', 'Jasper National Park, AB', NULL)
, ('nature015.jpg', 'nature', 'Nature', NULL, 'Harrison Lake, B.C.', NULL)
, ('nature016.jpg', 'nature', 'Nature', 'One Mile Lake', 'Pemberton, B.C.', NULL)
, ('nature017.jpg', 'nature', 'Nature', 'Blackcomb Mountain as seen from Green Lake', 'near Jasper, AB', NULL)
, ('nature018.jpg', 'nature', 'Nature', NULL, 'Whistler, B.C.', NULL)
, ('nature019.jpg', 'nature', 'Nature', 'John Hendry Park (Trout Lake)', 'Vancouver, B.C.', NULL)
, ('nature020.jpg', 'nature', 'Nature', 'Trout Lake', 'Vancouver, B.C.', NULL)
, ('nature021.jpg', 'nature', 'Nature', 'Burnaby Lake Park', 'Burnaby, B.C.', NULL)
, ('nature022.jpg', 'nature', 'Nature', 'John Hendry Park (Trout Lake)', 'Vancouver, B.C.', NULL)
, ('nature023.jpg', 'nature', 'Nature', 'Queen Elizabeth Park', 'Vancouver, B.C.', NULL)
, ('nature024.jpg', 'nature', 'Nature', 'Burnaby Lake Park', 'Burnaby, B.C.', NULL)
, ('nature025.jpg', 'nature', 'Nature', 'Burnaby Lake Park', 'Burnaby, B.C.', NULL)
, ('nature026.jpg', 'nature', 'Nature', 'Trout Lake', 'Vancouver, B.C.', NULL)
, ('nature027.jpg', 'nature', 'Nature', 'Burnaby Lake Park', 'Burnaby, B.C.', NULL)
, ('nature028.jpg', 'nature', 'Nature', 'Dusty Miller', 'Queen Elizabeth Park, Vancouver, B.C.', NULL)
, ('nature029.jpg', 'nature', 'Nature', 'White Hydrangea', 'UBC, Vancouver, B.C.', NULL)
, ('nature030.jpg', 'nature', 'Nature', 'Budding Daffodils in my Garden', NULL, NULL)
, ('nature031.jpg', 'nature', 'Nature', NULL, NULL, NULL)
, ('nature032.jpg', 'nature', 'Nature', 'Laburnum', 'Van Dusen Gardens, Vancouver, B.C.', NULL)
, ('nature033.jpg', 'nature', 'Nature', NULL, 'Van Dusen Gardens, Vancouver, B.C.', NULL)
, ('nature034.jpg', 'nature', 'Nature', NULL, 'Van Dusen Gardens, Vancouver, B.C.', NULL)
, ('nature035.jpg', 'nature', 'Nature', NULL, 'Queen Elizabeth Park, Vancouver, B.C.', NULL)
, ('nature036.jpg', 'nature', 'Nature', NULL, 'Queen Elizabeth Park, Vancouver, B.C.', NULL)
, ('nature037.jpg', 'nature', 'Nature', 'Tulips', 'Stanley Park, Vancouver, B.C.', NULL)
, ('nature038.jpg', 'nature', 'Nature', 'Skagit Valley Tulip Festival', 'Mount Vernon, WA', NULL)
, ('nature039.jpg', 'nature', 'Nature', 'Skagit Valley Tulip Festival', 'Mount Vernon, WA', NULL)
, ('nature040.jpg', 'nature', 'Nature', 'Skagit Valley Tulip Festival', 'Mount Vernon, WA', NULL)
, ('nature041.jpg', 'nature', 'Nature', 'Skagit Valley Tulip Festival', 'Mount Vernon, WA', NULL)
, ('nature042.jpg', 'nature', 'Nature', 'Tulips of the Valley', 'Agassiz, B.C.', NULL)
, ('nature043.jpg', 'nature', 'Nature', NULL, 'Grand Canyon National Park ', NULL)
, ('nature044.jpg', 'nature', 'Nature', 'Brown-Eyed Susans', 'Van Dusen Gardens, Vancouver, B.C.', NULL)
, ('nature045.jpg', 'nature', 'Nature', 'Black Bear', 'Callahan Valley near Whistler, B.C.', NULL)
, ('nature046.jpg', 'nature', 'Nature', 'Elk', 'Icefields Parkway, Jasper National Park, AB', NULL)
, ('nature047.jpg', 'nature', 'Nature', 'Mountain Goat', 'Golden, B.C.', NULL)
, ('nature048.jpg', 'nature', 'Nature', 'Prairie Dog', 'Drumheller, AB', NULL)
, ('nature049.jpg', 'nature', 'Nature', 'Swans', 'Lost Lagoon, Stanley Park, Vancouver, B.C.', NULL)
, ('nature050.jpg', 'nature', 'Nature', 'Male & Female Wood Ducks', 'Burnaby Lake Park, Burnaby, B.C.', NULL)
, ('nature051.jpg', 'nature', 'Nature', 'Male Wood Duck', 'Burnaby Lake Park, Burnaby, B.C.', NULL)
, ('nature052.jpg', 'nature', 'Nature', 'Western Meadowlark', 'Iona Beach, Richmond, B.C.', NULL)
, ('nature053.jpg', 'nature', 'Nature', 'Prairie Falcon', NULL, NULL)
, ('nature054.jpg', 'nature', 'Nature', 'Gyrfalcon', NULL, NULL)
, ('nature055.jpg', 'nature', 'Nature', 'Bald Eagle', NULL, NULL)
, ('nature056.jpg', 'nature', 'Nature', 'Great Horned Owl', NULL, NULL)
, ('nature057.jpg', 'nature', 'Nature', 'Bald Eagle', NULL, NULL)
, ('nature058.jpg', 'nature', 'Nature', 'Bald Eagle', NULL, NULL)
, ('nature059.jpg', 'nature', 'Nature', 'Sandhill Crane', 'Reifel Bird Sanctuary, Delta, B.C.', NULL)
, ('nature060.jpg', 'nature', 'Nature', 'Goslings', 'Reifel Bird Sanctuary, Delta, B.C.', NULL)
, ('nature061.jpg', 'nature', 'Nature', 'Gosling', 'Reifel Bird Sanctuary, Delta, B.C.', NULL)
, ('nature062.jpg', 'nature', 'Nature', 'Peacock', NULL, NULL)
, ('nature063.jpg', 'nature', 'Nature', 'Red-Winged Blackbird', 'Iona Beach, Richmond, B.C.', NULL)
, ('nature064.jpg', 'nature', 'Nature', 'Bufflehead', 'Iona Beach, Richmond, B.C.', NULL)
, ('nature065.jpg', 'nature', 'Nature', 'Red-Winged Blackbird', 'Iona Beach, Richmond, B.C.', NULL)
;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
