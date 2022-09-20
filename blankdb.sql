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
('1', 'Nguyen', 'Trung Nguyen', '1', 'zolmkoz1@gmail.com', 'zolmkoz1', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '0'),
('2', 'Chi', 'Luan', '1', '2@gmail.com', 'username2', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('3', 'Chi', 'Luan', '1', '3@gmail.com', 'username3', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('4', 'Chi', 'Luan', '1', '4@gmail.com', 'username4', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('5', 'Chi', 'Luan', '1', '5@gmail.com', 'username5', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('6', 'Chi', 'Luan', '1', '6@gmail.com', 'username6', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('7', 'Chi', 'Luan', '1', '7@gmail.com', 'username7', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('8', 'Chi', 'Luan', '1', '8@gmail.com', 'username8', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('9', 'Chi', 'Luan', '1', '9@gmail.com', 'username9', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('10', 'Chi', 'Luan', '1', '10@gmail.com', 'username10', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('11', 'Chi', 'Luan', '1', '11@gmail.com', 'username11', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('12', 'Chi', 'Luan', '1', '12@gmail.com', 'username12', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('13', 'Chi', 'Luan', '1', '13@gmail.com', 'username13', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('14', 'Chi', 'Luan', '1', '14@gmail.com', 'username14', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('15', 'Chi', 'Luan', '1', '15@gmail.com', 'username15', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('16', 'Chi', 'Luan', '1', '16@gmail.com', 'username16', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1'),
('17', 'Chi', 'Luan', '1', '17@gmail.com', 'username17', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', current_timestamp(), current_timestamp(), '1')


