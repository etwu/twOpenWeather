-- phpMyAdmin SQL Dump
-- version 3.5.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 21, 2013 at 02:34 PM
-- Server version: 5.1.69
-- PHP Version: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `weather`
--

-- --------------------------------------------------------

--
-- Table structure for table `cwb_46686`
--

CREATE TABLE IF NOT EXISTS `cwb_46686` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=148 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_46688`
--

CREATE TABLE IF NOT EXISTS `cwb_46688` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5874 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_46690`
--

CREATE TABLE IF NOT EXISTS `cwb_46690` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5947 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_46692`
--

CREATE TABLE IF NOT EXISTS `cwb_46692` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5910 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_46693`
--

CREATE TABLE IF NOT EXISTS `cwb_46693` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5873 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_46694`
--

CREATE TABLE IF NOT EXISTS `cwb_46694` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5873 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_46695`
--

CREATE TABLE IF NOT EXISTS `cwb_46695` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5972 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_46697`
--

CREATE TABLE IF NOT EXISTS `cwb_46697` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=535 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_46699`
--

CREATE TABLE IF NOT EXISTS `cwb_46699` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5869 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_46706`
--

CREATE TABLE IF NOT EXISTS `cwb_46706` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5870 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_46708`
--

CREATE TABLE IF NOT EXISTS `cwb_46708` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5870 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_46711`
--

CREATE TABLE IF NOT EXISTS `cwb_46711` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5868 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_46730`
--

CREATE TABLE IF NOT EXISTS `cwb_46730` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5845 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_46735`
--

CREATE TABLE IF NOT EXISTS `cwb_46735` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5869 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_46741`
--

CREATE TABLE IF NOT EXISTS `cwb_46741` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5872 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_46744`
--

CREATE TABLE IF NOT EXISTS `cwb_46744` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5867 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_46748`
--

CREATE TABLE IF NOT EXISTS `cwb_46748` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5870 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_46749`
--

CREATE TABLE IF NOT EXISTS `cwb_46749` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5869 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_46753`
--

CREATE TABLE IF NOT EXISTS `cwb_46753` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5867 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_46754`
--

CREATE TABLE IF NOT EXISTS `cwb_46754` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5868 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_46755`
--

CREATE TABLE IF NOT EXISTS `cwb_46755` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5888 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_46757`
--

CREATE TABLE IF NOT EXISTS `cwb_46757` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5868 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_46759`
--

CREATE TABLE IF NOT EXISTS `cwb_46759` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5867 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_46761`
--

CREATE TABLE IF NOT EXISTS `cwb_46761` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5869 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_46762`
--

CREATE TABLE IF NOT EXISTS `cwb_46762` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5863 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_46765`
--

CREATE TABLE IF NOT EXISTS `cwb_46765` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5890 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_46766`
--

CREATE TABLE IF NOT EXISTS `cwb_46766` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5869 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_46777`
--

CREATE TABLE IF NOT EXISTS `cwb_46777` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5868 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_46799`
--

CREATE TABLE IF NOT EXISTS `cwb_46799` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5865 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_46810`
--

CREATE TABLE IF NOT EXISTS `cwb_46810` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2022 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_46902`
--

CREATE TABLE IF NOT EXISTS `cwb_46902` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1997 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_A0A9M`
--

CREATE TABLE IF NOT EXISTS `cwb_A0A9M` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5858 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_C0A53`
--

CREATE TABLE IF NOT EXISTS `cwb_C0A53` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2023 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_C0AD0`
--

CREATE TABLE IF NOT EXISTS `cwb_C0AD0` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2026 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_C0C52`
--

CREATE TABLE IF NOT EXISTS `cwb_C0C52` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2026 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_C0C57`
--

CREATE TABLE IF NOT EXISTS `cwb_C0C57` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2026 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_C0C63`
--

CREATE TABLE IF NOT EXISTS `cwb_C0C63` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2026 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_C0D39`
--

CREATE TABLE IF NOT EXISTS `cwb_C0D39` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2026 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_C0D55`
--

CREATE TABLE IF NOT EXISTS `cwb_C0D55` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2026 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_C0D56`
--

CREATE TABLE IF NOT EXISTS `cwb_C0D56` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2026 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_C0E42`
--

CREATE TABLE IF NOT EXISTS `cwb_C0E42` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2026 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_C0E53`
--

CREATE TABLE IF NOT EXISTS `cwb_C0E53` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2026 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_C0E76`
--

CREATE TABLE IF NOT EXISTS `cwb_C0E76` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2026 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_C0F86`
--

CREATE TABLE IF NOT EXISTS `cwb_C0F86` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2026 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_C0F99`
--

CREATE TABLE IF NOT EXISTS `cwb_C0F99` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2026 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_C0G64`
--

CREATE TABLE IF NOT EXISTS `cwb_C0G64` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2026 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_C0G65`
--

CREATE TABLE IF NOT EXISTS `cwb_C0G65` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2026 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_C0G71`
--

CREATE TABLE IF NOT EXISTS `cwb_C0G71` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2026 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_C0H9C`
--

CREATE TABLE IF NOT EXISTS `cwb_C0H9C` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2026 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_C0I01`
--

CREATE TABLE IF NOT EXISTS `cwb_C0I01` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2026 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_C0I11`
--

CREATE TABLE IF NOT EXISTS `cwb_C0I11` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2025 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_C0K24`
--

CREATE TABLE IF NOT EXISTS `cwb_C0K24` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2026 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_C0K28`
--

CREATE TABLE IF NOT EXISTS `cwb_C0K28` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2026 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_C0K33`
--

CREATE TABLE IF NOT EXISTS `cwb_C0K33` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2026 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_C0M41`
--

CREATE TABLE IF NOT EXISTS `cwb_C0M41` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2026 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_C0O91`
--

CREATE TABLE IF NOT EXISTS `cwb_C0O91` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2029 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_C0O93`
--

CREATE TABLE IF NOT EXISTS `cwb_C0O93` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2026 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_C0R15`
--

CREATE TABLE IF NOT EXISTS `cwb_C0R15` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2454 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_C0R22`
--

CREATE TABLE IF NOT EXISTS `cwb_C0R22` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2298 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_C0R27`
--

CREATE TABLE IF NOT EXISTS `cwb_C0R27` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2445 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_C0R40`
--

CREATE TABLE IF NOT EXISTS `cwb_C0R40` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2026 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_C0S73`
--

CREATE TABLE IF NOT EXISTS `cwb_C0S73` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2026 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_C0S74`
--

CREATE TABLE IF NOT EXISTS `cwb_C0S74` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2026 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_C0T82`
--

CREATE TABLE IF NOT EXISTS `cwb_C0T82` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2026 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_C0T87`
--

CREATE TABLE IF NOT EXISTS `cwb_C0T87` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2202 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_C0T96`
--

CREATE TABLE IF NOT EXISTS `cwb_C0T96` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2026 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_C0U60`
--

CREATE TABLE IF NOT EXISTS `cwb_C0U60` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2025 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_C0U71`
--

CREATE TABLE IF NOT EXISTS `cwb_C0U71` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2026 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_C0V25`
--

CREATE TABLE IF NOT EXISTS `cwb_C0V25` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2026 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_C0V31`
--

CREATE TABLE IF NOT EXISTS `cwb_C0V31` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2076 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_C0V37`
--

CREATE TABLE IF NOT EXISTS `cwb_C0V37` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2035 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_C0X08`
--

CREATE TABLE IF NOT EXISTS `cwb_C0X08` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2026 ;

-- --------------------------------------------------------

--
-- Table structure for table `cwb_C0Z06`
--

CREATE TABLE IF NOT EXISTS `cwb_C0Z06` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2026 ;

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE IF NOT EXISTS `locations` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `location_name` varchar(10) DEFAULT NULL,
  `table_name` varchar(20) DEFAULT NULL,
  `city_1` varchar(20) DEFAULT NULL,
  `city_2` varchar(20) DEFAULT NULL,
  `location_lon` varchar(30) DEFAULT NULL,
  `location_lat` varchar(30) DEFAULT NULL,
  `location_att` int(5) NOT NULL,
  `location_zone` varchar(1) NOT NULL,
  `location_attr` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=74 ;

-- --------------------------------------------------------

--
-- Table structure for table `sample_table`
--

CREATE TABLE IF NOT EXISTS `sample_table` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `temp_c` decimal(5,1) DEFAULT NULL,
  `temp_f` decimal(5,1) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `wind_speed` varchar(10) DEFAULT NULL,
  `wind_gust` varchar(10) DEFAULT NULL,
  `visible` decimal(3,1) DEFAULT NULL,
  `humity` int(3) DEFAULT NULL,
  `pressure` decimal(5,1) DEFAULT NULL,
  `rain_data` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
