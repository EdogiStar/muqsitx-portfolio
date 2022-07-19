-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2022 at 11:12 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `muqsit`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `about_id` int(11) NOT NULL,
  `about_content1` text NOT NULL,
  `about_content2` text NOT NULL,
  `about_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`about_id`, `about_content1`, `about_content2`, `about_status`) VALUES
(1, 'Hi! am Isah.\r\nI am a self taught web developer who has always had passion for building and designing stunning and powerful web applications. My core technologies are HTML, CSS, JavaScript, PHP, and of course the PHP framework: Laravel.\r\n', 'A motivated, adaptable and responsible Computing Student seeking a position in an IT field which will utilise the professional and technical skills developed through past experiences in this field. I have a methodical, customer-focused approach to work and a strong drive to see things through to completion.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `contact_name` varchar(255) NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_phone` int(11) NOT NULL,
  `contact_message` text NOT NULL,
  `contact_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `contact_name`, `contact_email`, `contact_phone`, `contact_message`, `contact_status`) VALUES
(1, 'Isah Muhammad', 'isah@gmail.com', 2147483647, 'Hi! am a lead developer at Turing. I have reviewed your portfolio and I do believe we have a chance for you in our organization.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `link_id` int(11) NOT NULL,
  `link_href` varchar(255) NOT NULL,
  `link_icon` varchar(255) NOT NULL,
  `link_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`link_id`, `link_href`, `link_icon`, `link_status`) VALUES
(1, 'https://www.facebook.com/muhd.isah.374', 'fab fa-fw fa-facebook-f', 1),
(2, 'https://linkedin.com/in/isah-muhammad-alhaji-b86224238', 'fab fa-fw fa-linkedin-In', 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_name` varchar(255) NOT NULL,
  `menu_link` varchar(255) NOT NULL,
  `menu_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_name`, `menu_link`, `menu_status`) VALUES
(1, 'Portfolio', 'portfolio', 1),
(2, 'About', 'about', 1),
(3, 'Contact', 'contact', 1);

-- --------------------------------------------------------

--
-- Table structure for table `picture`
--

CREATE TABLE `picture` (
  `pic_id` int(11) NOT NULL,
  `pic_src` varchar(255) NOT NULL,
  `pic_alt` varchar(255) NOT NULL,
  `pic_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `picture`
--

INSERT INTO `picture` (`pic_id`, `pic_src`, `pic_alt`, `pic_status`) VALUES
(1, 'avataaars.svg', 'Profile Pix', 0),
(2, 'md.jpg', 'Profile Pix', 1);

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `img_src` varchar(255) NOT NULL,
  `img_alt` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `aria_labelledby` varchar(255) NOT NULL,
  `data_bs_target` varchar(255) NOT NULL,
  `modal_id` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`id`, `title`, `img_src`, `img_alt`, `content`, `aria_labelledby`, `data_bs_target`, `modal_id`, `status`) VALUES
(1, 'Log Cabin', 'cabin.png', 'Cabin', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias magnam, recusandae quos quis inventore quisquam velit asperiores, vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.', 'portfolioModal1', 'portfolioModal1', 'portfolioModal1', 1),
(6, 'FlixStore', 'Git3.jpg', 'FlixStore Photo', 'This is a group project that involves different developers working specifically on their area of specialties. I played the backend developer role in this project and everything was completed within two (2) working weeks.', 'flixstore', 'flixstore', 'flixstore', 1),
(7, 'Ravman App', 'a2.png', 'Ravman Photo', 'Ravman is a financial application used by IBB University Lapai to keep track of daily expenses and expenditures.\r\n\r\nI designed the application completely both the frontend and the backend.', 'ravman', 'ravman', 'ravman', 1),
(8, 'IBBU Timetable Schedular', 'Git2.jpg', 'Timetable Caption', 'IBBU FNS Timetable Management System is a web application that automatically schedules timetable for both lectures and examinations for the faculty of natural sciences, IBB University Lapai', 'timetable', 'timetable', 'timetable', 1);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `skill_id` int(11) NOT NULL,
  `skill_name` varchar(255) NOT NULL,
  `skill_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`skill_id`, `skill_name`, `skill_status`) VALUES
(6, 'Junior PHP Developer', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_photo` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `user_photo`, `user_email`, `user_password`, `user_status`) VALUES
(1, 'Isah Muhd', '', 'muqsitxx@gmail.com', '4124bc0a9335c27f086f24ba207a4912', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`about_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`link_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `picture`
--
ALTER TABLE `picture`
  ADD PRIMARY KEY (`pic_id`);

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`skill_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `about_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `link_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `picture`
--
ALTER TABLE `picture`
  MODIFY `pic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `skill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
