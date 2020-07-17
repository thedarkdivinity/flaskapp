-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2020 at 04:05 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--

--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `phone_num` varchar(10) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `email` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `phone_num`, `msg`, `date`, `email`) VALUES
(1, 'first post', '12345564', 'first post', '2020-06-07 23:09:31', 'firstpost@gmail.com'),
(2, 'hlguh', '999', 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', NULL, 'ramesh@ramiu.com'),
(3, 'mama', '44444', 'i love mayo', NULL, 'mayo@gmail.com'),
(4, 'ravish singh', '0222344231', 'zindagi makkhan', NULL, 'kamatsayush@gmail.com'),
(5, 'lks', '8291680827', 'andu mandi', NULL, 'lks@gmail.com'),
(6, 'Sayush Kamat', '0222344231', 'naksdihcaloichn.oCKsmJA:Sc', NULL, 'sayush.kamat@rediffmail.c'),
(7, 'Sayush Kamat', '0222344231', 'naksdihcaloichn.oCKsmJA:Sc', NULL, 'sayush.kamat@rediffmail.c'),
(8, 'Sayush Kamat', '0222344231', 'fwefqef', NULL, 'kamatsayush@gmail.com'),
(9, 'aqdwOJM', '0222344231', 'DWEWDEWqfq', NULL, 'kamatsayush@gmail.com'),
(10, 'orphanageschema', '0222344231', 'efrawwvfws', NULL, 'kamatsayu@gmail.com'),
(11, 'ayushi', '2222222', 'random messaeg', NULL, 'ayushi@gmail.com'),
(12, 'efwaf', '0222344231', 'wfwr', NULL, 'kamatsayush@gmail.com'),
(13, 'efwaf', '0222344231', 'wfwr', NULL, 'kamatsayush@gmail.com'),
(14, 'caScas', '0223334', 'cadcds', NULL, 'kamatsayuh@gmail.com'),
(15, 'caScas', '0223334', 'cadcds', NULL, 'kamatsayuh@gmail.com'),
(16, 'routeit', '0222344231', 'yo boi bit', NULL, 'kamatsayush@gmail.com'),
(17, 'cscdscfqqwqwdq', '0222344231', 'cwefeqef', NULL, 'kamatsayush@gmail.com'),
(18, 'Sayush Kamat', '0222344231', 'amk', NULL, 'kamatsayush@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` varchar(27) NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'First post', 'mast wali tagline', 'first_post', 'This is my first post', 'post-bg.jpg', '2020-06-08 22:46:03'),
(2, 'Second post', 'kya bolu ', 'second-post', 'ALLah hi reheam', '', '2020-06-09 23:20:37'),
(3, 'kuch kuch hota hai', 'kya karu bai', 'third_post', 'sjxjkaXP BD98QBW', 'post-bg.jpg', '2020-06-09 23:35:43'),
(4, 'wltdo', 'who let', 'fourth_post', 'who let the dogs out!!!', '', '2020-06-09 23:36:25'),
(5, 'gmd', 'gmdends', 'fifth_post', 'llorem ipsum dolor sit polisnaksihfian', 'post-bg.jpg', '2020-06-13 12:10:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
