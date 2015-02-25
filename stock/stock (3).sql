-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 28, 2013 at 06:41 AM
-- Server version: 5.1.53
-- PHP Version: 5.3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `stock`
--

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE IF NOT EXISTS `item` (
  `item_id` int(10) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(50) NOT NULL,
  `itemgroup_id` int(10) NOT NULL,
  `unit_id` int(10) NOT NULL,
  `item_currqty` double NOT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `item`
--


-- --------------------------------------------------------

--
-- Table structure for table `itemgroup`
--

CREATE TABLE IF NOT EXISTS `itemgroup` (
  `itemgroup_id` int(10) NOT NULL AUTO_INCREMENT,
  `itemgroup_name` varchar(50) NOT NULL,
  PRIMARY KEY (`itemgroup_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `itemgroup`
--


-- --------------------------------------------------------

--
-- Table structure for table `party`
--

CREATE TABLE IF NOT EXISTS `party` (
  `party_id` int(10) NOT NULL AUTO_INCREMENT,
  `party_name` varchar(50) NOT NULL,
  `party_type` varchar(30) NOT NULL,
  `party_address` varchar(100) NOT NULL,
  `party_area` varchar(30) NOT NULL,
  `party_city` varchar(30) NOT NULL,
  `party_pincode` int(10) NOT NULL,
  `party_contactprsn` varchar(20) NOT NULL,
  `party_phoneno` varchar(20) NOT NULL,
  `party_fax` varchar(30) NOT NULL,
  `party_mobile` varchar(30) NOT NULL,
  `party_gstno` varchar(30) NOT NULL,
  `party_cstno` varchar(30) NOT NULL,
  `party_tinno` varchar(30) NOT NULL,
  `party_panno` varchar(30) NOT NULL,
  PRIMARY KEY (`party_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `party`
--


-- --------------------------------------------------------

--
-- Table structure for table `production_1`
--

CREATE TABLE IF NOT EXISTS `production_1` (
  `prod_1_id` int(10) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(10) NOT NULL,
  `date` varchar(20) NOT NULL,
  `reciepe_id` int(10) NOT NULL,
  `narration` varchar(100) NOT NULL,
  `prod_1_name` varchar(50) NOT NULL,
  `prod_1_noofbatch` int(10) NOT NULL,
  PRIMARY KEY (`prod_1_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `production_1`
--


-- --------------------------------------------------------

--
-- Table structure for table `production_2`
--

CREATE TABLE IF NOT EXISTS `production_2` (
  `prod_2_id` int(11) NOT NULL AUTO_INCREMENT,
  `prod_2_name` varchar(255) NOT NULL,
  `voucher_id` int(10) NOT NULL,
  `narration` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  PRIMARY KEY (`prod_2_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `production_2`
--


-- --------------------------------------------------------

--
-- Table structure for table `prod_2_item`
--

CREATE TABLE IF NOT EXISTS `prod_2_item` (
  `prod_2_id` int(10) NOT NULL,
  `prod_1_id` int(10) NOT NULL,
  `noofbatch` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prod_2_item`
--


-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE IF NOT EXISTS `purchase` (
  `purchase_id` int(10) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(10) NOT NULL,
  `invoiceno` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `party_id` int(10) NOT NULL,
  `other_taxes` double NOT NULL,
  `total_amount` double NOT NULL,
  `gross_amount` double NOT NULL,
  PRIMARY KEY (`purchase_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `purchase`
--


-- --------------------------------------------------------

--
-- Table structure for table `purchase_item`
--

CREATE TABLE IF NOT EXISTS `purchase_item` (
  `purchase_id` int(10) NOT NULL,
  `item_id` int(10) NOT NULL,
  `itemqty` float NOT NULL,
  `itemrate` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_item`
--


-- --------------------------------------------------------

--
-- Table structure for table `reciepe`
--

CREATE TABLE IF NOT EXISTS `reciepe` (
  `reciepe_id` int(10) NOT NULL AUTO_INCREMENT,
  `reciepe_name` varchar(50) NOT NULL,
  PRIMARY KEY (`reciepe_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `reciepe`
--


-- --------------------------------------------------------

--
-- Table structure for table `reciepe_item`
--

CREATE TABLE IF NOT EXISTS `reciepe_item` (
  `reciepe_id` int(10) NOT NULL,
  `item_id` int(10) NOT NULL,
  `itemqty` double NOT NULL,
  `unit_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reciepe_item`
--


-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE IF NOT EXISTS `sale` (
  `sale_id` int(10) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(10) NOT NULL,
  `invoiceno` varchar(20) NOT NULL,
  `party_id` int(10) NOT NULL,
  `date` varchar(20) NOT NULL,
  `other_taxes` double NOT NULL,
  `gross_amount` double NOT NULL,
  `inv_amount` double NOT NULL,
  PRIMARY KEY (`sale_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `sale`
--


-- --------------------------------------------------------

--
-- Table structure for table `sale_item`
--

CREATE TABLE IF NOT EXISTS `sale_item` (
  `sale_id` int(10) NOT NULL,
  `sale_type_id` int(10) NOT NULL,
  `sale_type` varchar(50) NOT NULL,
  `itemqty` double NOT NULL,
  `itemrate` double NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sale_item`
--


-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE IF NOT EXISTS `unit` (
  `unit_id` int(10) NOT NULL AUTO_INCREMENT,
  `unit_name` varchar(30) NOT NULL,
  PRIMARY KEY (`unit_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `unit`
--


-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(2) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'mohit', 'mohit');

-- --------------------------------------------------------

--
-- Table structure for table `voucher`
--

CREATE TABLE IF NOT EXISTS `voucher` (
  `voucher_id` int(10) NOT NULL AUTO_INCREMENT,
  `voucher_name` varchar(50) NOT NULL,
  `voucher_type` varchar(70) NOT NULL,
  PRIMARY KEY (`voucher_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `voucher`
--

