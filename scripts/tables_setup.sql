-- phpMyAdmin SQL Dump
-- version 4.1.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: March 06, 2015 at 12:00 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9
--
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";
--
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
  `date_taken` varchar(32),
  `upload_date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
--
--
-- Dumping data for table `images`
--
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
, ('nature001.jpg', 'nature', 'Nature', NULL, 'Porteau Cove, B.C.', NULL)
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
, ('people001.jpg', 'people', 'people', 'Amy & Carey', 'Whistler, BC', 'September 2013')
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
, ('places001.jpg', 'places', 'places', 'St. Thomas', 'U.S. Virgin Islands', NULL)
, ('places002.jpg', 'places', 'places', 'Lion''s Gate Bridge', 'Vancouver, BC', NULL)
, ('places003.jpg', 'places', 'places', NULL, 'Flase Creek, Vancouver, BC', NULL)
, ('places004.jpg', 'places', 'places', 'Science World', 'False Creek, Vancouver, BC', NULL)
, ('places005.jpg', 'places', 'places', 'Ambleside Park', 'North Vancouver, BC', NULL)
, ('places006.jpg', 'places', 'places', NULL, 'Astoria, OR', NULL)
, ('places007.jpg', 'places', 'places', NULL, 'Astoria, OR', NULL)
, ('places008.jpg', 'places', 'places', NULL, 'Astoria, OR', NULL)
, ('places009.jpg', 'places', 'places', 'The Empress Hotel & Victoria''s Inner Harbor', 'Victoria, BC', NULL)
, ('places010.jpg', 'places', 'places', 'B.C. Legislature', 'Victoria, BC', NULL)
, ('places011.jpg', 'places', 'places', 'Science World', 'Vancouver, BC', NULL)
, ('places012.jpg', 'places', 'places', 'Pacific Centeral Station', 'Vancouver, BC', NULL)
, ('places013.jpg', 'places', 'places', 'Main Street Sky Train Station', 'Vancouver, BC', NULL)
, ('places014.jpg', 'places', 'places', 'Main Street Sky Train Station', 'Vancouver, BC', NULL)
, ('places015.jpg', 'places', 'places', 'Science World Reflections', 'Vancouver, BC', NULL)
, ('places016.jpg', 'places', 'places', 'Skyscrapers', 'Hong Kong', NULL)
, ('places017.jpg', 'places', 'places', 'Victoria Peak', 'Hong Kong', NULL)
, ('places018.jpg', 'places', 'places', 'A Beacon in the Dark', 'Hong Kong', NULL)
, ('places019.jpg', 'places', 'places', 'Symphony of Lights', 'Hong Kong', NULL)
, ('places020.jpg', 'places', 'places', 'Trout Lake Community Center', 'Vancouver, BC', NULL)
, ('places021.jpg', 'places', 'places', 'PNE', 'Vancouver, BC', NULL)
, ('places022.jpg', 'places', 'places', 'Fort Point', 'San Francisco', NULL)
, ('places023.jpg', 'places', 'places', 'Japantown', 'Vancouver, BC', NULL)
, ('places024.jpg', 'places', 'places', 'Japantown', 'Vancouver, BC', NULL)
, ('places025.jpg', 'places', 'places', 'Western Industrial Area', 'Vancouver, BC', NULL)
, ('places026.jpg', 'places', 'places', 'Western Industrial Area', 'Vancouver, BC', NULL)
;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
