-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2022 at 10:51 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

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
(1, 'Admin', 'admin@greenwich.com', 'f9c81dd99f5aec80fd33bb7964fb7267', '183461');

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

--
-- Dumping data for table `follow_list`
--

INSERT INTO `follow_list` (`id`, `follower_id`, `user_id`) VALUES
(87, 2, 1),
(88, 2, 3),
(89, 2, 4),
(90, 2, 5),
(91, 2, 6),
(92, 2, 7),
(93, 2, 8),
(94, 2, 9),
(95, 2, 10),
(96, 2, 11),
(97, 2, 12),
(98, 2, 13),
(99, 2, 14),
(100, 2, 15),
(101, 2, 16),
(102, 2, 17),
(103, 4, 1),
(104, 4, 2),
(105, 4, 3),
(106, 4, 5),
(107, 4, 6),
(108, 4, 7),
(109, 4, 8),
(110, 4, 9),
(111, 4, 10),
(112, 4, 11),
(113, 4, 12),
(114, 4, 13),
(115, 4, 14),
(116, 4, 15),
(117, 4, 16),
(118, 4, 17),
(119, 5, 1),
(120, 5, 2),
(121, 5, 3),
(122, 5, 4),
(123, 5, 6),
(124, 5, 7),
(125, 5, 8),
(126, 5, 9),
(127, 5, 10),
(128, 5, 11),
(129, 5, 12),
(130, 5, 13),
(131, 5, 14),
(132, 5, 15),
(133, 5, 16),
(134, 5, 17),
(135, 6, 1),
(136, 6, 2),
(137, 6, 3),
(138, 6, 4),
(139, 6, 5),
(140, 6, 7),
(141, 6, 8),
(142, 6, 9),
(143, 6, 10),
(144, 6, 11),
(145, 6, 12),
(146, 6, 13),
(147, 6, 14),
(148, 6, 15),
(149, 6, 16),
(150, 6, 17),
(151, 7, 1),
(152, 7, 2),
(153, 7, 3),
(154, 7, 4),
(155, 7, 5),
(156, 7, 6),
(157, 7, 8),
(158, 7, 9),
(159, 7, 10),
(160, 7, 11),
(161, 7, 12),
(162, 7, 13),
(163, 7, 14),
(164, 7, 15),
(165, 7, 16),
(166, 7, 17);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `post_id`, `user_id`) VALUES
(96, 20, 5);

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

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `to_user_id`, `message`, `created_at`, `from_user_id`, `read_status`, `post_id`) VALUES
(116, 1, 'started following you !', '2022-09-20 08:32:56', 2, 0, '0'),
(117, 3, 'started following you !', '2022-09-20 08:32:56', 2, 0, '0'),
(118, 4, 'started following you !', '2022-09-20 08:32:56', 2, 0, '0'),
(119, 5, 'started following you !', '2022-09-20 08:32:57', 2, 1, '0'),
(120, 6, 'started following you !', '2022-09-20 08:32:57', 2, 1, '0'),
(121, 7, 'started following you !', '2022-09-20 08:32:58', 2, 0, '0'),
(122, 8, 'started following you !', '2022-09-20 08:32:58', 2, 0, '0'),
(123, 9, 'started following you !', '2022-09-20 08:32:58', 2, 0, '0'),
(124, 10, 'started following you !', '2022-09-20 08:32:58', 2, 0, '0'),
(125, 11, 'started following you !', '2022-09-20 08:32:59', 2, 0, '0'),
(126, 12, 'started following you !', '2022-09-20 08:32:59', 2, 0, '0'),
(127, 13, 'started following you !', '2022-09-20 08:33:00', 2, 0, '0'),
(128, 14, 'started following you !', '2022-09-20 08:33:00', 2, 0, '0'),
(129, 15, 'started following you !', '2022-09-20 08:33:00', 2, 0, '0'),
(130, 16, 'started following you !', '2022-09-20 08:33:01', 2, 0, '0'),
(131, 17, 'started following you !', '2022-09-20 08:33:02', 2, 0, '0'),
(132, 1, 'started following you !', '2022-09-20 08:40:53', 4, 0, '0'),
(133, 2, 'started following you !', '2022-09-20 08:40:53', 4, 0, '0'),
(134, 3, 'started following you !', '2022-09-20 08:40:53', 4, 0, '0'),
(135, 5, 'started following you !', '2022-09-20 08:40:54', 4, 1, '0'),
(136, 6, 'started following you !', '2022-09-20 08:40:54', 4, 1, '0'),
(137, 7, 'started following you !', '2022-09-20 08:40:54', 4, 0, '0'),
(138, 8, 'started following you !', '2022-09-20 08:40:55', 4, 0, '0'),
(139, 9, 'started following you !', '2022-09-20 08:40:55', 4, 0, '0'),
(140, 10, 'started following you !', '2022-09-20 08:40:56', 4, 0, '0'),
(141, 11, 'started following you !', '2022-09-20 08:40:56', 4, 0, '0'),
(142, 12, 'started following you !', '2022-09-20 08:40:56', 4, 0, '0'),
(143, 13, 'started following you !', '2022-09-20 08:40:57', 4, 0, '0'),
(144, 14, 'started following you !', '2022-09-20 08:40:57', 4, 0, '0'),
(145, 15, 'started following you !', '2022-09-20 08:40:58', 4, 0, '0'),
(146, 16, 'started following you !', '2022-09-20 08:40:58', 4, 0, '0'),
(147, 17, 'started following you !', '2022-09-20 08:40:59', 4, 0, '0'),
(148, 1, 'started following you !', '2022-09-20 08:44:12', 5, 0, '0'),
(149, 2, 'started following you !', '2022-09-20 08:44:12', 5, 0, '0'),
(150, 3, 'started following you !', '2022-09-20 08:44:12', 5, 0, '0'),
(151, 4, 'started following you !', '2022-09-20 08:44:13', 5, 0, '0'),
(152, 6, 'started following you !', '2022-09-20 08:44:14', 5, 1, '0'),
(153, 7, 'started following you !', '2022-09-20 08:44:15', 5, 0, '0'),
(154, 8, 'started following you !', '2022-09-20 08:44:15', 5, 0, '0'),
(155, 9, 'started following you !', '2022-09-20 08:44:15', 5, 0, '0'),
(156, 10, 'started following you !', '2022-09-20 08:44:15', 5, 0, '0'),
(157, 11, 'started following you !', '2022-09-20 08:44:16', 5, 0, '0'),
(158, 12, 'started following you !', '2022-09-20 08:44:16', 5, 0, '0'),
(159, 13, 'started following you !', '2022-09-20 08:44:17', 5, 0, '0'),
(160, 14, 'started following you !', '2022-09-20 08:44:17', 5, 0, '0'),
(161, 15, 'started following you !', '2022-09-20 08:44:17', 5, 0, '0'),
(162, 16, 'started following you !', '2022-09-20 08:44:17', 5, 0, '0'),
(163, 17, 'started following you !', '2022-09-20 08:44:18', 5, 0, '0'),
(164, 1, 'started following you !', '2022-09-20 08:47:12', 6, 0, '0'),
(165, 2, 'started following you !', '2022-09-20 08:47:12', 6, 0, '0'),
(166, 3, 'started following you !', '2022-09-20 08:47:12', 6, 0, '0'),
(167, 4, 'started following you !', '2022-09-20 08:47:13', 6, 0, '0'),
(168, 5, 'started following you !', '2022-09-20 08:47:13', 6, 0, '0'),
(169, 7, 'started following you !', '2022-09-20 08:47:14', 6, 0, '0'),
(170, 8, 'started following you !', '2022-09-20 08:47:14', 6, 0, '0'),
(171, 9, 'started following you !', '2022-09-20 08:47:14', 6, 0, '0'),
(172, 10, 'started following you !', '2022-09-20 08:47:15', 6, 0, '0'),
(173, 11, 'started following you !', '2022-09-20 08:47:15', 6, 0, '0'),
(174, 12, 'started following you !', '2022-09-20 08:47:16', 6, 0, '0'),
(175, 13, 'started following you !', '2022-09-20 08:47:16', 6, 0, '0'),
(176, 14, 'started following you !', '2022-09-20 08:47:16', 6, 0, '0'),
(177, 15, 'started following you !', '2022-09-20 08:47:17', 6, 0, '0'),
(178, 16, 'started following you !', '2022-09-20 08:47:17', 6, 0, '0'),
(179, 17, 'started following you !', '2022-09-20 08:47:18', 6, 0, '0'),
(180, 1, 'started following you !', '2022-09-20 08:49:48', 7, 0, '0'),
(181, 2, 'started following you !', '2022-09-20 08:49:49', 7, 0, '0'),
(182, 3, 'started following you !', '2022-09-20 08:49:49', 7, 0, '0'),
(183, 4, 'started following you !', '2022-09-20 08:49:50', 7, 0, '0'),
(184, 5, 'started following you !', '2022-09-20 08:49:50', 7, 0, '0'),
(185, 6, 'started following you !', '2022-09-20 08:49:51', 7, 0, '0'),
(186, 8, 'started following you !', '2022-09-20 08:49:51', 7, 0, '0'),
(187, 9, 'started following you !', '2022-09-20 08:49:51', 7, 0, '0'),
(188, 10, 'started following you !', '2022-09-20 08:49:51', 7, 0, '0'),
(189, 11, 'started following you !', '2022-09-20 08:49:52', 7, 0, '0'),
(190, 12, 'started following you !', '2022-09-20 08:49:52', 7, 0, '0'),
(191, 13, 'started following you !', '2022-09-20 08:49:53', 7, 0, '0'),
(192, 14, 'started following you !', '2022-09-20 08:49:53', 7, 0, '0'),
(193, 15, 'started following you !', '2022-09-20 08:49:53', 7, 0, '0'),
(194, 16, 'started following you !', '2022-09-20 08:49:54', 7, 0, '0'),
(195, 17, 'started following you !', '2022-09-20 08:49:54', 7, 0, '0');

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

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `post_img`, `post_text`, `created_at`) VALUES
(17, 2, '1663662827post1.jpg', '[THÔNG BÁO] GREENWICH VIỆT NAM - TUYỂN SINH ĐẠI HỌC ĐỢT CUỐI NĂM 2022', '2022-09-20 08:33:47'),
(18, 3, '1663663243post4.png', '', '2022-09-20 08:40:43'),
(19, 4, '1663663385POST5.jpg', '[EVENT TOUR] x WE ARE ONE \r\n✨THAM GIA NGAY - ĐĂNG KÝ LÀM THÀNH VIÊN EVENT CLUB LIỀN TAY✨ ', '2022-09-20 08:43:05'),
(20, 5, '1663663558clubpost.jpg', '🔥🔥🔥IT Club – 𝗪𝗘 𝗔𝗥𝗘 𝗢𝗡𝗘🔥🔥🔥\r\n💥IT Club tiếp tục chuỗi sự kiện “ WE ARE ONE ” với chủ đề “WE ARE FAMILY”. IT Club sẽ mang đến những hoạt động thú vị Để chuẩn bị chào đón các sinh viên mới của trường.', '2022-09-20 08:45:58'),
(21, 6, '1663663693post6.png', '', '2022-09-20 08:48:13'),
(22, 7, '1663663824post7.jpg', '⛩ TRIỂN LÃM VÀ BÁO CÁO ĐỒ ÁN CỦA SINH VIÊN NGÀNH THIẾT KẾ ĐỒ HỌA 🌵\r\n💂‍♂️ Mời các bạn đến tham quan và chiêm ngưỡng sản phẩm trưng bày của các bạn sinh viên ngành Thiết Kế Đồ Họa từ Greenwich Việt Nam - cơ sở Cần Thơ để cùng thăng hoa với những cung bậc cảm xúc và đầy phiêu lưu từ Đồ Án Thiết kế Hoạt hình của lớp 0901 và 0902 nhé!\r\n⛈ Thông tin triển lãm:\r\n🔥 Thời gian: 9h30 - 17h00 các ngày 09/09 và 10/09/2022\r\n🌈 Địa điểm: Hội trường 3A - Greenwich Việt Nam - cơ sở Cần Thơ.\r\n✨Hoàn toàn miễn phí.\r\n💙 Note lại thông tin và tham gia cùng chúng mình nhé!!', '2022-09-20 08:50:24');

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `gender`, `email`, `username`, `password`, `profile_pic`, `created_at`, `updated_at`, `ac_status`) VALUES
(1, 'Nguyen', 'Trung Nguyen', 1, 'zolmkoz1@gmail.com', 'zolmkoz1', 'f9c81dd99f5aec80fd33bb7964fb7267', '1663662476nguyen.jpg', '2022-09-20 08:26:43', '2022-09-20 08:27:56', 1),
(2, 'Greenwich', 'Việt Nam', 1, '2@gmail.com', 'GreenwichVietnam', 'f9c81dd99f5aec80fd33bb7964fb7267', '1663662659gre.jpg', '2022-09-20 08:25:04', '2022-09-20 08:30:59', 1),
(3, 'Công Tác', 'Sinh Viên', 1, '3@gmail.com', 'CTSVGreenwich', 'f9c81dd99f5aec80fd33bb7964fb7267', '1663663237gre.jpg', '2022-09-20 08:25:04', '2022-09-20 08:40:37', 1),
(4, 'Greenwich Event Club', '-Cần Thơ', 1, '4@gmail.com', 'EventGreenwichCT', 'f9c81dd99f5aec80fd33bb7964fb7267', '1663663349event.png', '2022-09-20 08:25:04', '2022-09-20 08:42:29', 1),
(5, 'Google Developer Student Clubs ', '- UOGCT', 1, '5@gmail.com', 'Greewich.ITClub.CanTho', 'f9c81dd99f5aec80fd33bb7964fb7267', '1663663517ITCLUB.jpg', '2022-09-20 08:25:04', '2022-09-20 08:45:17', 1),
(6, 'Thư Viện', 'Greenwich CT', 1, '6@gmail.com', 'ThuvienGWCT', 'f9c81dd99f5aec80fd33bb7964fb7267', '1663663677gre.jpg', '2022-09-20 08:25:04', '2022-09-20 08:47:57', 1),
(7, 'Huỳnh', 'Phương', 1, '7@gmail.com', 'pepuog.anjell', 'f9c81dd99f5aec80fd33bb7964fb7267', '1663663864huynhphuong.jpg', '2022-09-20 08:25:04', '2022-09-20 08:51:04', 1),
(8, 'Chi', 'Luan', 1, '8@gmail.com', 'username8', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', '2022-09-20 08:25:04', '2022-09-20 08:25:04', 1),
(9, 'Chi', 'Luan', 1, '9@gmail.com', 'username9', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', '2022-09-20 08:25:04', '2022-09-20 08:25:04', 1),
(10, 'Chi', 'Luan', 1, '10@gmail.com', 'username10', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', '2022-09-20 08:25:04', '2022-09-20 08:25:04', 1),
(11, 'Chi', 'Luan', 1, '11@gmail.com', 'username11', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', '2022-09-20 08:25:04', '2022-09-20 08:25:04', 1),
(12, 'Chi', 'Luan', 1, '12@gmail.com', 'username12', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', '2022-09-20 08:25:04', '2022-09-20 08:25:04', 1),
(13, 'Chi', 'Luan', 1, '13@gmail.com', 'username13', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', '2022-09-20 08:25:04', '2022-09-20 08:25:04', 1),
(14, 'Chi', 'Luan', 1, '14@gmail.com', 'username14', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', '2022-09-20 08:25:04', '2022-09-20 08:25:04', 1),
(15, 'Chi', 'Luan', 1, '15@gmail.com', 'username15', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', '2022-09-20 08:25:04', '2022-09-20 08:25:04', 1),
(16, 'Chi', 'Luan', 1, '16@gmail.com', 'username16', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', '2022-09-20 08:25:04', '2022-09-20 08:25:04', 1),
(17, 'Chi', 'Luan', 1, '17@gmail.com', 'username17', 'f9c81dd99f5aec80fd33bb7964fb7267', 'default_profile.jpg', '2022-09-20 08:25:04', '2022-09-20 08:25:04', 1);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
