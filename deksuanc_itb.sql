-- phpMyAdmin SQL Dump
-- version 4.4.15
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 11, 2018 at 08:35 PM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `deksuanc_itb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_description`
--

CREATE TABLE IF NOT EXISTS `tbl_description` (
  `desc_id` int(11) NOT NULL,
  `desc_text` varchar(200) CHARACTER SET latin1 NOT NULL,
  `desc_imgid` int(11) NOT NULL,
  `desc_userid` int(11) NOT NULL,
  `desc_created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `desc_updated_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_description`
--

INSERT INTO `tbl_description` (`desc_id`, `desc_text`, `desc_imgid`, `desc_userid`, `desc_created_date`, `desc_updated_date`) VALUES
(1, 'Test', 1, 1, '2018-10-25 20:27:19', '2018-10-26 08:41:20'),
(2, 'This is also a test caption for image 1. Helloooooo', 1, 1, '2018-10-25 20:27:19', '2018-10-25 22:40:21'),
(3, 'Image 2 caption', 2, 1, '2018-10-25 21:10:41', '2018-10-25 22:39:38'),
(4, 'greennnnnnnn2', 2, 1, '2018-10-25 21:10:53', '2018-11-01 18:46:57'),
(5, 'Yeah', 1, 1, '2018-11-01 18:52:14', '2018-11-01 19:00:12'),
(6, 'test', 1, 1, '2018-11-01 18:52:28', '2018-11-01 18:52:28'),
(8, 'Haloooo', 1, 1, '2018-11-01 18:58:54', '2018-11-01 19:00:19'),
(9, 'What is it', 2, 1, '2018-11-01 18:59:03', '2018-11-01 18:59:03'),
(12, 'Cat', 6, 1, '2018-11-06 13:45:32', '2018-11-06 13:45:32'),
(13, 'White', 6, 1, '2018-11-06 13:45:37', '2018-11-06 13:46:02'),
(15, 'Water', 5, 1, '2018-11-06 13:46:12', '2018-11-06 13:46:12'),
(16, 'Rock', 5, 1, '2018-11-06 13:46:17', '2018-11-06 13:46:17'),
(17, 'Waterfall', 5, 1, '2018-11-06 13:46:19', '2018-11-06 13:46:19'),
(18, 'River', 5, 1, '2018-11-06 13:46:25', '2018-11-06 13:46:25'),
(19, 'Nature', 5, 1, '2018-11-06 13:46:34', '2018-11-06 13:46:34'),
(21, 'Animal', 6, 1, '2018-11-06 13:47:28', '2018-11-06 13:47:28'),
(22, 'Flower', 4, 1, '2018-11-06 13:47:42', '2018-11-06 13:47:42'),
(23, 'Leaves', 4, 1, '2018-11-06 13:47:47', '2018-11-06 13:47:47'),
(24, 'Green', 4, 1, '2018-11-06 13:47:56', '2018-11-06 13:47:56'),
(25, 'Stem', 3, 1, '2018-11-06 13:49:19', '2018-11-06 13:49:19'),
(26, 'Landscape', 3, 1, '2018-11-06 13:49:37', '2018-11-06 13:49:37');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_img`
--

CREATE TABLE IF NOT EXISTS `tbl_img` (
  `img_id` int(11) NOT NULL,
  `img_title` varchar(100) CHARACTER SET latin1 NOT NULL,
  `img_url` varchar(100) CHARACTER SET latin1 NOT NULL,
  `img_source` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_img`
--

INSERT INTO `tbl_img` (`img_id`, `img_title`, `img_url`, `img_source`) VALUES
(1, 'Ruckowitzschachten, National park Bayerischer Wald, Bavaria, Germany', 'https://farm9.staticflickr.com/8186/8079921017_db8b1ea3fd_c.jpg', 'flickr'),
(2, 'Tree in yellow field', 'https://farm3.staticflickr.com/2692/5794686156_c391267369_z.jpg', 'flickr'),
(3, 'A glorious old tree in North Wales', 'https://farm1.staticflickr.com/409/18186063494_c973b0aa04_c.jpg', 'flickr'),
(4, 'flowers', 'https://farm6.staticflickr.com/5338/9005046502_1cc7127783_k.jpg', 'flickr'),
(5, 'Valloire', 'https://farm8.staticflickr.com/7452/13930751867_4d36a4d319_h.jpg', 'flickr'),
(6, 'cat', 'https://farm9.staticflickr.com/8326/8086454780_bca645406e_b.jpg', 'flickr');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `usr_id` int(11) NOT NULL,
  `usr_username` varchar(50) NOT NULL,
  `usr_password` varchar(100) NOT NULL,
  `usr_registered_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`usr_id`, `usr_username`, `usr_password`, `usr_registered_date`) VALUES
(1, 'kendo', 'e10adc3949ba59abbe56e057f20f883e', '2018-10-25 14:50:33'),
(2, 'harry', 'e10adc3949ba59abbe56e057f20f883e', '2018-10-25 14:50:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_description`
--
ALTER TABLE `tbl_description`
  ADD PRIMARY KEY (`desc_id`);

--
-- Indexes for table `tbl_img`
--
ALTER TABLE `tbl_img`
  ADD PRIMARY KEY (`img_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`usr_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_description`
--
ALTER TABLE `tbl_description`
  MODIFY `desc_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `tbl_img`
--
ALTER TABLE `tbl_img`
  MODIFY `img_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `usr_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
