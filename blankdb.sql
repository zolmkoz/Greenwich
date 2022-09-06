-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2021 at 06:22 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `greenwich`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `full_name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` text NOT NULL,
  `password_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `full_name`, `email`, `password`, `password_text`) VALUES
(1, 'Dev Nguyen', 'admin@greenwich.com', 'c68710d3fe56fc88f7905cb15f06cf5c', '14271427');

-- --------------------------------------------------------

--
-- Table structure for table `block_list`
--

CREATE TABLE `block_list` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `blocked_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `follow_list`
--

CREATE TABLE `follow_list` (
  `id` int(11) NOT NULL,
  `follower_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `msg` text NOT NULL,
  `read_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `from_user_id` int(11) NOT NULL,
  `read_status` int(11) NOT NULL DEFAULT 0,
  `post_id` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_img` text NOT NULL,
  `post_text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `profile_pic` text NOT NULL DEFAULT 'default_profile.jpg',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ac_status` int(11) NOT NULL COMMENT '0=not verified,1=active,2=blocked'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `block_list`
--
ALTER TABLE `block_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `follow_list`
--
ALTER TABLE `follow_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `block_list`
--
ALTER TABLE `block_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `follow_list`
--
ALTER TABLE `follow_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


INSERT INTO `users` (`id`, `first_name`, `last_name`, `gender`, `email`, `username`, `password`, `profile_pic`, `created_at`, `updated_at`, `ac_status`) 
VALUES 
('14', 'Chi', 'Luan', '1', '12@gmail.com', 'username12', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('15', 'Chi', 'Luan', '1', '13@gmail.com', 'username13', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('16', 'Chi', 'Luan', '1', '14@gmail.com', 'username14', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('17', 'Chi', 'Luan', '1', '15@gmail.com', 'username15', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('18', 'Chi', 'Luan', '1', '16@gmail.com', 'username16', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('19', 'Chi', 'Luan', '1', '17@gmail.com', 'username17', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('20', 'Chi', 'Luan', '1', '18@gmail.com', 'username18', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('21', 'Chi', 'Luan', '1', '19@gmail.com', 'username19', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('22', 'Chi', 'Luan', '1', '20@gmail.com', 'username20', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('23', 'Chi', 'Luan', '1', '21@gmail.com', 'username21', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('24', 'Chi', 'Luan', '1', '22@gmail.com', 'username22', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('25', 'Chi', 'Luan', '1', '23@gmail.com', 'username23', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('26', 'Chi', 'Luan', '1', '24@gmail.com', 'username24', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('27', 'Chi', 'Luan', '1', '25@gmail.com', 'username25', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('28', 'Chi', 'Luan', '1', '26@gmail.com', 'username26', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('29', 'Chi', 'Luan', '1', '27@gmail.com', 'username27', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('30', 'Chi', 'Luan', '1', '28@gmail.com', 'username28', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('31', 'Chi', 'Luan', '1', '29@gmail.com', 'username29', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('32', 'Chi', 'Luan', '1', '30@gmail.com', 'username30', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('33', 'Chi', 'Luan', '1', '31@gmail.com', 'username31', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('34', 'Chi', 'Luan', '1', '32@gmail.com', 'username32', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('35', 'Chi', 'Luan', '1', '33@gmail.com', 'username33', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('36', 'Chi', 'Luan', '1', '34@gmail.com', 'username34', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('37', 'Chi', 'Luan', '1', '35@gmail.com', 'username35', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('38', 'Chi', 'Luan', '1', '36@gmail.com', 'username36', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('39', 'Chi', 'Luan', '1', '37@gmail.com', 'username37', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('40', 'Chi', 'Luan', '1', '38@gmail.com', 'username38', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('41', 'Chi', 'Luan', '1', '39@gmail.com', 'username39', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('42', 'Chi', 'Luan', '1', '40@gmail.com', 'username40', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('43', 'Chi', 'Luan', '1', '41@gmail.com', 'username41', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('44', 'Chi', 'Luan', '1', '42@gmail.com', 'username42', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('45', 'Chi', 'Luan', '1', '43@gmail.com', 'username43', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('46', 'Chi', 'Luan', '1', '44@gmail.com', 'username44', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('47', 'Chi', 'Luan', '1', '45@gmail.com', 'username45', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('48', 'Chi', 'Luan', '1', '56@gmail.com', 'username56', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('49', 'Chi', 'Luan', '1', '57@gmail.com', 'username57', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('50', 'Chi', 'Luan', '1', '58@gmail.com', 'username58', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('51', 'Chi', 'Luan', '1', '59@gmail.com', 'username59', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('52', 'Chi', 'Luan', '1', '60@gmail.com', 'username60', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('53', 'Chi', 'Luan', '1', '61@gmail.com', 'username61', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('54', 'Chi', 'Luan', '1', '62@gmail.com', 'username62', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('55', 'Chi', 'Luan', '1', '63@gmail.com', 'username63', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('56', 'Chi', 'Luan', '1', '64@gmail.com', 'username64', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('57', 'Chi', 'Luan', '1', '65@gmail.com', 'username65', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('58', 'Chi', 'Luan', '1', '66@gmail.com', 'username66', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('59', 'Chi', 'Luan', '1', '67@gmail.com', 'username67', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('60', 'Chi', 'Luan', '1', '68@gmail.com', 'username68', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('61', 'Chi', 'Luan', '1', '69@gmail.com', 'username69', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('62', 'Chi', 'Luan', '1', '70@gmail.com', 'username70', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('63', 'Chi', 'Luan', '1', '71@gmail.com', 'username71', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('64', 'Chi', 'Luan', '1', '72@gmail.com', 'username72', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('65', 'Chi', 'Luan', '1', '73@gmail.com', 'username73', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('66', 'Chi', 'Luan', '1', '74@gmail.com', 'username74', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('67', 'Chi', 'Luan', '1', '75@gmail.com', 'username75', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('68', 'Chi', 'Luan', '1', '76@gmail.com', 'username76', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('69', 'Chi', 'Luan', '1', '77@gmail.com', 'username77', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('70', 'Chi', 'Luan', '1', '78@gmail.com', 'username78', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('71', 'Chi', 'Luan', '1', '79@gmail.com', 'username79', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('72', 'Chi', 'Luan', '1', '80@gmail.com', 'username80', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('73', 'Chi', 'Luan', '1', '81@gmail.com', 'username81', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('74', 'Chi', 'Luan', '1', '82@gmail.com', 'username82', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('75', 'Chi', 'Luan', '1', '83@gmail.com', 'username83', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('76', 'Chi', 'Luan', '1', '84@gmail.com', 'username84', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('77', 'Chi', 'Luan', '1', '85@gmail.com', 'username85', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('78', 'Chi', 'Luan', '1', '86@gmail.com', 'username86', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('79', 'Chi', 'Luan', '1', '87@gmail.com', 'username87', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('80', 'Chi', 'Luan', '1', '88@gmail.com', 'username88', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('81', 'Chi', 'Luan', '1', '89@gmail.com', 'username89', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('82', 'Chi', 'Luan', '1', '90@gmail.com', 'username90', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('83', 'Chi', 'Luan', '1', '91@gmail.com', 'username91', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('84', 'Chi', 'Luan', '1', '92@gmail.com', 'username92', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('85', 'Chi', 'Luan', '1', '93@gmail.com', 'username93', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('86', 'Chi', 'Luan', '1', '94@gmail.com', 'username94', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('87', 'Chi', 'Luan', '1', '95@gmail.com', 'username95', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('88', 'Chi', 'Luan', '1', '96@gmail.com', 'username96', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('89', 'Chi', 'Luan', '1', '97@gmail.com', 'username97', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('90', 'Chi', 'Luan', '1', '98@gmail.com', 'username98', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('91', 'Chi', 'Luan', '1', '99@gmail.com', 'username99', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('92', 'Chi', 'Luan', '1', '100@gmail.com', 'username100', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('93', 'Chi', 'Luan', '1', '101@gmail.com', 'username101', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('94', 'Chi', 'Luan', '1', '102@gmail.com', 'username102', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('95', 'Chi', 'Luan', '1', '103@gmail.com', 'username103', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('96', 'Chi', 'Luan', '1', '104@gmail.com', 'username104', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('97', 'Chi', 'Luan', '1', '105@gmail.com', 'username105', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('98', 'Chi', 'Luan', '1', '106@gmail.com', 'username106', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('99', 'Chi', 'Luan', '1', '107@gmail.com', 'username107', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('100', 'Chi', 'Luan', '1', '108@gmail.com', 'username108', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),

