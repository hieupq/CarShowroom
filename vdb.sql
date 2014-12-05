-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2014 at 11:20 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `vdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_user`
--

CREATE TABLE IF NOT EXISTS `admin_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uname` varchar(30) NOT NULL,
  `upass` varchar(30) NOT NULL,
  `uid` int(10) DEFAULT NULL,
  `level` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin_user`
--

INSERT INTO `admin_user` (`id`, `uname`, `upass`, `uid`, `level`) VALUES
(1, 'admin', 'admin', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE IF NOT EXISTS `bookings` (
  `bid` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `u_name` varchar(40) NOT NULL,
  `v_name` varchar(50) NOT NULL,
  `d_name` varchar(50) NOT NULL,
  `sdate` varchar(30) DEFAULT NULL,
  `edate` varchar(30) DEFAULT NULL,
  `nod` int(10) DEFAULT NULL,
  `km` varbinary(10) DEFAULT NULL,
  `no_of_seats` int(10) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `b_date` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`bid`, `uid`, `u_name`, `v_name`, `d_name`, `sdate`, `edate`, `nod`, `km`, `no_of_seats`, `status`, `b_date`) VALUES
(1, 1, 'Jane Nguyen', 'Honda Accord', 'Perter Lane', '2014-10-21', '2010-04-23', 3, '340000', 5, 'Approved', '2010-04-02 21:26:05'),
(2, 2, 'Peter James', 'Chevrolet Tavera', 'John Smith', '2014-10-03', '2010-04-23', 3, '700000', 6, 'Approved', '2010-04-03 12:27:31'),
(3, 2, 'Peter James', 'Toyota Innova', 'Dang Bach', '2014-11-15', '2010-04-20', 6, '800000', 5, 'Pending', '2010-04-03 12:29:02'),
(4, 3, 'Tran Anh', ' Deluxe A/c Coach (18 Seater)', 'Perter Lane', '2014-12-04', '2014-12-04', 1, '2300000', 4, 'Pending', '2014-12-04 11:58:07');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE IF NOT EXISTS `driver` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `l_name` varchar(40) NOT NULL,
  `address` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `city` varchar(40) NOT NULL,
  `state` varchar(30) NOT NULL,
  `mob` varchar(15) NOT NULL,
  `lic_no` varchar(20) NOT NULL,
  `exp` varchar(20) NOT NULL,
  `experiance` int(4) NOT NULL,
  `note` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`id`, `name`, `l_name`, `address`, `image`, `city`, `state`, `mob`, `lic_no`, `exp`, `experiance`, `note`) VALUES
(2, 'John Smith', 'Smith', 'address', 'any', 'hanoi', 'hanoi', '9089878765', 'MH23-X2uW', '2022-03-04', 6, 'Siddharth'),
(4, 'Kim Sonone', 'Kim Sonone', 'address', 'any', 'hanoi', 'hanoi', '9578733322', 'MH12XKD', '2010-03-26', 4, 'Kiran is having 4 year fo Exp. He is Good and Intelligent and First Choice of Customers.'),
(5, 'Perter Lane', 'Perter Lane', 'address', 'any', 'hanoi', 'hanoi', '8909898767', 'GJ-34XW3', '2016-03-17', 6, 'Well Known in Gujarat.'),
(6, 'Minh DL', 'DL', 'address', 'images/', 'hanoi', 'hanoi', '8909898767', 'MH12XKD', '2010-03-26', 4, 'rec'),
(11, 'Dang Bach', 'Bach', 'address', 'images/rdc.gif', 'hanoi', 'hanoi', '9089878765', 'MH10-X2juW', '2010-03-16', 1, 'asdasd'),
(16, 'Hieu Pham', 'Pham', 'hanoi', 'No', 'hanoi', 'hanoi', '123456', '123456', '2016-11-24', 10, '');

-- --------------------------------------------------------

--
-- Table structure for table `fuel_details`
--

CREATE TABLE IF NOT EXISTS `fuel_details` (
  `fid` int(10) NOT NULL AUTO_INCREMENT,
  `v_name` varchar(50) NOT NULL,
  `d_name` varchar(50) NOT NULL,
  `date` varchar(40) NOT NULL,
  `f_type` varchar(40) NOT NULL,
  `qty` varchar(10) NOT NULL,
  `cost` int(10) NOT NULL,
  `note` varchar(200) NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `fuel_details`
--

INSERT INTO `fuel_details` (`fid`, `v_name`, `d_name`, `date`, `f_type`, `qty`, `cost`, `note`) VALUES
(1, 'Swing XLS', 'Tousif Khan', '2010-03-18', 'Diesel', '12', 600, 'Diesel Added'),
(2, 'HUNDAI Sonata', 'Asmit Patel', '2010-03-09', 'Diesel', '30', 1500, 'Asmit Goes to full the fuel and fill the tank. the bill was 1500 Rs.'),
(4, 'TATA Nano XL', 'Kiran Sonone', '2010-03-25', 'Pertol', '23', 1250, 'Filled in Nano.');

-- --------------------------------------------------------

--
-- Table structure for table `oil_detail`
--

CREATE TABLE IF NOT EXISTS `oil_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `v_name` varchar(50) NOT NULL,
  `d_name` varchar(50) NOT NULL,
  `date` varchar(40) NOT NULL,
  `cost` int(10) NOT NULL,
  `o_type` varchar(30) NOT NULL,
  `odometer` varchar(20) NOT NULL,
  `note` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `oil_detail`
--

INSERT INTO `oil_detail` (`id`, `v_name`, `d_name`, `date`, `cost`, `o_type`, `odometer`, `note`) VALUES
(4, 'Toyota Camry', 'Asmit Patel', '2010-04-20', 500, 'Synthetic', '67000', 'gdgfdg');

-- --------------------------------------------------------

--
-- Table structure for table `repair`
--

CREATE TABLE IF NOT EXISTS `repair` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `v_name` varchar(50) NOT NULL,
  `g_name` varchar(50) NOT NULL,
  `d_name` varchar(50) NOT NULL,
  `date` varchar(40) NOT NULL,
  `odometer` varchar(20) NOT NULL,
  `cost` int(10) NOT NULL,
  `note` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `repair`
--

INSERT INTO `repair` (`id`, `v_name`, `g_name`, `d_name`, `date`, `odometer`, `cost`, `note`) VALUES
(1, 'Swing XLS', 'Kerala Garage', 'Siddharth', '2010-03-11', '23423', 1200, 'Repairs'),
(2, 'TATA Nano XL', 'Nisar Autoo Garage', 'Kiran Sonone', '2009-03-05', '23000', 23000, 'Problem is Nano then repaired by Nisar Bhai and Delivered in 4 Days.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `add1` varchar(200) NOT NULL,
  `city` varchar(40) NOT NULL,
  `state` varchar(30) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `pass`, `add1`, `city`, `state`, `mobile`, `email`) VALUES
(1, 'Jane Nguyen', '123456', 'Miami', 'Miami', 'Maharashtra', '9898987876', 'jane86@gmail.com'),
(2, 'Peter James', '123456', 'CenterPark', 'NewYork', 'Maharashtra', '8909898767', 'peterml@gmail.com'),
(3, 'Tran Anh', '123456', 'Ton that thuyet', 'Hanoi', 'Hanoi', '012345678', 'ta@mail.com');

-- --------------------------------------------------------

--
-- Table structure for table `vmast`
--

CREATE TABLE IF NOT EXISTS `vmast` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `v_name` varchar(40) NOT NULL,
  `v_no` varchar(40) NOT NULL,
  `make` varchar(20) NOT NULL,
  `fuel_type` varchar(40) NOT NULL,
  `kmr` double NOT NULL,
  `avg` varchar(10) NOT NULL,
  `cost` int(10) NOT NULL,
  `image` varchar(50) NOT NULL,
  `v_type` varchar(40) NOT NULL,
  `insurer` varchar(50) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `date` varchar(40) DEFAULT NULL,
  `exp_date` varchar(40) DEFAULT NULL,
  `driver_name` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `vmast`
--

INSERT INTO `vmast` (`id`, `v_name`, `v_no`, `make`, `fuel_type`, `kmr`, `avg`, `cost`, `image`, `v_type`, `insurer`, `company`, `date`, `exp_date`, `driver_name`) VALUES
(1, 'Mercedes (S Class)', '2014', 'Mercedes', 'New', 8, '20', 5000000, 'cars/mercedes-s-class.jpg', 'Luxury Cars', 'Shashank Agrawal', 'ICICI bank', '2010-03-02', '2020-03-24', 'Hieu Pham'),
(2, 'Mercedes (E Class)', '2014', 'Mercedes', 'New', 5.2, '22', 180000, 'cars/mercedes-e-class.jpg', 'Luxury Cars', 'Vilas Mahajan', 'HDFC Bank', '2010-03-17', '2016-03-11', 'Hieu Pham'),
(3, 'Toyota Camry', '2014', 'Toyota', 'New', 4.5, '15', 350000, 'cars/toyota--camry.jpg', 'Luxury Cars', 'Bhushan Patil', 'LIC Finance Ltd.', '2009-03-02', '2015-03-11', 'MinhDL'),
(4, 'Honda Accord', '2014', 'Honda', 'New', 4.4, '18', 340000, 'cars/honda-accord.jpg', 'Luxury Cars', 'Asif Khan', 'Bajaj Finance Ltd.', '2003-03-13', '2012-09-13', 'Perter Lane'),
(5, 'Skoda Octavia ', '2103', 'Skoda', 'New', 6, '22', 340000, 'cars/skoda-octavia.jpg', 'Luxury Cars', 'Aakash Saxena', 'Bajaj Finance Ltd.', '2010-03-15', '2022-03-12', 'Dang Bach'),
(6, 'Toyota Commuter', 'MH-12 9898', 'Toyota', 'New', 20, '12', 220000, 'cars/toyota_commuter.jpg', 'Mini Vans & Large Coaches', 'Amit Sharma', 'ICICI Bank Ltd.', '', '', 'Kim Sonone'),
(7, ' Deluxe A/c Coach (18 Seater)', '2012', ' TATA', 'New', 12, '12', 2300000, 'cars/deluxe-ac-coach-3.jpg', 'Mini Vans & Large Coaches', 'Amit Sharma', 'ICICI Bank Ltd.', '', '', 'Perter Lane'),
(8, 'Deluxe A/c Coach (35 Seater )', '2013', 'Toyota', 'New', 12, '12', 5000000, 'cars/deluxe-volovo-coach.jpg', 'Mini Vans & Large Coaches', 'Amit Sharma', 'ICICI Bank Ltd.', '', '', 'MinhDL'),
(9, 'Luxury Traveller', '2014', 'Tempo', 'New', 12, '12', 220000, 'cars/tempo-travellers-a.jpg', 'Mini Vans & Large Coaches', 'Amit Sharma', 'ICICI Bank Ltd.', '', '', 'Kim Sonone'),
(10, ' Mercedes Viano', 'MH-12 2199', ' Mercedes', 'New', 12, '12', 5000000, 'cars/mercedes-viano.jpg', 'Mini Vans & Large Coaches', 'Amit Sharma', 'ICICI Bank Ltd.', '', '', 'Hieu Pham'),
(11, 'Maruti Baleno', 'MH 12 MC 234', 'Maruti', 'New', 20, '15', 4000000, 'cars/maruti--baleno.jpg', 'Executive Cars ', 'Aakash Saxena', 'ICICI bank', '2004-04-13', '2012-09-27', 'Kim Sonone'),
(12, 'Ford Fiesta', 'MH 12 8787', 'Ford', 'New', 24, '21', 2300000, 'cars/ford-fiesta.jpg', 'Executive Cars', 'Asif Khan', 'HDFC Bank', '2010-04-22', '2022-04-13', 'Kiran Sonone'),
(13, 'Toyota Corolla', 'MH 23 2234', 'Toyota', 'New', 23, '15', 5500000, 'cars/toyota-corolla.jpg', 'Executive Cars ', 'Aakash Saxena', 'ICICI bank', '2010-04-14', '2033-04-19', 'Dang Bach'),
(14, 'Honda Civic', 'MH 23 K878', 'Honda', 'New', 18, '12', 3500000, 'cars/honda-civic.jpg', 'Executive Cars ', 'Shashank Agrawal', 'LIC Finance Ltd.', '2005-04-20', '2018-04-18', 'John Smith'),
(15, 'Tata Indica', 'MH 12 BC12 ', 'Tata', 'New', 10, '22', 450000, 'cars/tata-indica.jpg', 'Economy Cars', 'Bhushan Patil', 'Bajaj Finance Ltd.', '2009-02-11', '2012-04-19', 'Perter Lane'),
(16, 'Maruti Swift', 'MH 24 898', 'Maruti', 'New', 12, '23', 340000, 'cars/swift.jpg', 'Economy Cars', 'Bhushan Patil', 'Bajaj Finance Ltd.', '2005-11-24', '2012-04-11', 'Perter Lane'),
(17, 'Wagon R', 'MH 23', 'Wagon R', 'New', 10, '15', 2300000, 'cars/wagnor.jpg', 'Economy Cars', 'Bhushan Patil', 'Bajaj Finance Ltd.', '2005-09-29', '2010-04-23', 'Dang Bach'),
(18, 'Chevrolet Tavera', 'MH 12 8787', 'Chevrolet', 'New', 10, '12', 700000, 'cars/chevrolet-tavera.jpg', 'MUVs & SUVs', 'Vilas Mahajan', 'Bajaj Finance Ltd.', '2007-04-25', '2019-04-24', 'John Smith'),
(19, 'Ford Endeavour', 'MH 23 c876', 'Ford', 'New', 18, '18', 780000, 'cars/ford-endeavour.jpg', 'MUVs & SUVs', 'Vilas Mahajan', 'LIC Finance Ltd.', '2004-04-23', '2016-12-22', 'John Smith'),
(20, 'Toyota Innova', 'Mh 23 N676', 'Toyota', 'New', 23, '15', 800000, 'cars/toyota-innova.jpg', 'MUVs & SUVs', 'Vilas Mahajan', 'LIC Finance Ltd.', '2004-07-15', '2016-10-19', 'Dang Bach'),
(21, 'BMW M5', 'M5 2014', 'BMW', 'New', 10, '10', 200000, 'cars/bmwm5.jpg', 'Luxury Cars', 'abc', 'abc', '2014-11-11', '2014-11-12', 'Hieu');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
