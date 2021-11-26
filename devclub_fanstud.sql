-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 26, 2021 at 11:41 AM
-- Server version: 10.1.47-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `devclub_fanstud`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `rember_token` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `username`, `email`, `password`, `phone`, `address`, `rember_token`, `status`, `created_at`, `updated_at`, `image`) VALUES
(1, 'Admin', 'admin', 'admin@gmail.com', '$2y$10$6YXBXWOIzqXpyvvnnqY/5uoc84LryRYEC4YoAUuKctJZVgi3oSKdC', '123456789', 'Noida,UP', NULL, 1, '2021-08-04 11:28:13', '2021-09-04 09:39:05', '300821104403-app_logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `app_versions`
--

CREATE TABLE `app_versions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `android_cur` int(11) NOT NULL,
  `android_man` int(11) NOT NULL,
  `ios_cur` int(11) NOT NULL,
  `ios_man` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_versions`
--

INSERT INTO `app_versions` (`id`, `android_cur`, `android_man`, `ios_cur`, `ios_man`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, '2020-12-17 00:18:37', '2020-12-17 00:18:41');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `banner` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL COMMENT 'app,web',
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `banner`, `link`, `type`, `status`, `created_at`, `updated_at`) VALUES
(14, '200821050921-343.png', NULL, 'app', 1, '2021-08-19 23:39:22', '2021-08-19 23:39:22'),
(17, '020921010549-banner_two.png', NULL, 'app', 1, '2021-09-02 07:35:50', '2021-09-02 07:35:50');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `influencers_id` varchar(255) DEFAULT NULL,
  `location` varchar(255) NOT NULL,
  `event_date` date NOT NULL,
  `start_time` varchar(255) DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  `about` text,
  `image` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `subscription_price` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `influencers_id`, `location`, `event_date`, `start_time`, `end_time`, `about`, `image`, `status`, `subscription_price`, `created_at`, `updated_at`) VALUES
(1, 'test', '19', 'Muradnagar', '2021-09-24', '15:28', '21:28', '<p>&nbsp;</p>\r\n\r\n<p>Ajey Nagar , popularly known as CarryMinati, is an Indian YouTuber and streamer from Faridabad, India. He is known for his comedic skits and reactions to various online topics on his channel CarryMinati. His other channel CarryisLive is dedicated to gaming and live streams.</p>', '240921043047-gallery_one.png', '1', '20', '2021-09-24 10:59:11', '2021-09-24 11:00:50'),
(2, 'hello', '19', 'Noida one sector 62', '2021-09-25', '23:40', '00:40', '<p>testing</p>', '240921054048-gallery_three.png', '1', '20', '2021-09-24 12:10:48', '2021-09-24 12:12:23'),
(3, 'for Testing', '19', 'Noida one sector 62', '2021-09-24', '16:43', '19:43', '<p>Testing</p>', '240921054405-gallery_two.png', '1', '20', '2021-09-24 12:14:05', '2021-09-24 12:14:07');

-- --------------------------------------------------------

--
-- Table structure for table `events_galleries`
--

CREATE TABLE `events_galleries` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events_galleries`
--

INSERT INTO `events_galleries` (`id`, `event_id`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, '240921055355-popular_two.jpg', 1, '2021-09-24 12:23:55', '2021-09-24 12:23:55'),
(2, 2, '240921055355-gallery_four.png', 1, '2021-09-24 12:23:58', '2021-09-24 12:23:58'),
(3, 2, '240921055358-gallery_one.png', 1, '2021-09-24 12:24:01', '2021-09-24 12:24:01'),
(4, 2, '240921055401-gallery_three.png', 1, '2021-09-24 12:24:03', '2021-09-24 12:24:03'),
(5, 2, '240921055403-gallery_two.png', 1, '2021-09-24 12:24:06', '2021-09-24 12:24:06'),
(6, 3, '240921060234-popular_two.jpg', 1, '2021-09-24 12:32:34', '2021-09-24 12:32:34'),
(7, 3, '240921060234-gallery_four.png', 1, '2021-09-24 12:32:37', '2021-09-24 12:32:37'),
(8, 3, '240921060237-gallery_one.png', 1, '2021-09-24 12:32:40', '2021-09-24 12:32:40'),
(9, 3, '240921060240-gallery_three.png', 1, '2021-09-24 12:32:42', '2021-09-24 12:32:42'),
(10, 3, '240921060242-gallery_two.png', 1, '2021-09-24 12:32:44', '2021-09-24 12:32:44');

-- --------------------------------------------------------

--
-- Table structure for table `event_chats`
--

CREATE TABLE `event_chats` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `text` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_chats`
--

INSERT INTO `event_chats` (`id`, `user_id`, `event_id`, `text`, `created_at`, `updated_at`) VALUES
(1, 19, 1, 'hi', '2021-09-24 11:42:44', '2021-09-24 11:42:44'),
(2, 19, 1, 'ggg', '2021-09-24 12:03:23', '2021-09-24 12:03:23'),
(3, 19, 1, 'hi', '2021-09-24 12:06:48', '2021-09-24 12:06:48');

-- --------------------------------------------------------

--
-- Table structure for table `event_questions`
--

CREATE TABLE `event_questions` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `question_name` varchar(255) DEFAULT NULL,
  `option_1` varchar(255) DEFAULT NULL,
  `option_2` varchar(255) DEFAULT NULL,
  `option_3` varchar(255) DEFAULT NULL,
  `option_4` varchar(255) DEFAULT NULL,
  `right_option` varchar(255) DEFAULT NULL,
  `is_ask` int(10) DEFAULT '0',
  `time` varchar(255) NOT NULL DEFAULT '0',
  `status` int(10) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_questions`
--

INSERT INTO `event_questions` (`id`, `event_id`, `question_name`, `option_1`, `option_2`, `option_3`, `option_4`, `right_option`, `is_ask`, `time`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'what are you  trying  upto', 'bullshitt', 'well', 'nothing', 'felling', '2', 1, '20', 1, '2021-09-24 11:24:38', '2021-09-24 11:27:10');

-- --------------------------------------------------------

--
-- Table structure for table `event_question_answers`
--

CREATE TABLE `event_question_answers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `event_id` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `event_subscription`
--

CREATE TABLE `event_subscription` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_subscription`
--

INSERT INTO `event_subscription` (`id`, `user_id`, `event_id`, `created_at`, `updated_at`) VALUES
(1, 19, 1, '2021-09-24 11:02:53', '2021-09-24 11:02:53');

-- --------------------------------------------------------

--
-- Table structure for table `event_users`
--

CREATE TABLE `event_users` (
  `id` int(11) NOT NULL,
  `event_id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_users`
--

INSERT INTO `event_users` (`id`, `event_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 19, '2021-09-24 11:03:08', '2021-09-24 11:03:08');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, '240921042140-gallery_four.png', '1', '2021-09-24 10:51:42', '2021-09-24 10:51:42'),
(3, '240921042201-gallery_one.png', '1', '2021-09-24 10:52:05', '2021-09-24 10:52:05'),
(4, '240921042229-gallery_three.png', '1', '2021-09-24 10:52:31', '2021-09-24 10:52:31'),
(5, '240921042256-gallery_two.png', '1', '2021-09-24 10:52:58', '2021-09-24 10:52:58');

-- --------------------------------------------------------

--
-- Table structure for table `influencers`
--

CREATE TABLE `influencers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `is_delete` int(10) NOT NULL DEFAULT '0',
  `status` int(11) DEFAULT '1',
  `priority` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `influencers`
--

INSERT INTO `influencers` (`id`, `name`, `mobile`, `password`, `email`, `location`, `description`, `image`, `is_delete`, `status`, `priority`, `created_at`, `updated_at`) VALUES
(19, 'Carry Minatti', '123123123', '$2y$10$0Pm/aTGzRAi8T6427rjosu1GCDsp8Ud36ZM9AXe6QaXhlPefjkoqi', 'car123@gmail.com', 'delhi', '<p>Carry Minatti</p>', '240921060609-carry_mask.png', 1, 1, '1', '2021-08-06 05:10:11', '2021-09-24 12:36:10'),
(30, 'Amit Badana', NULL, NULL, NULL, 'Mumbai', '<p>Amit Badana</p>', '100821062640-Group 681.jpg', 1, 1, '2', '2021-08-10 00:56:40', '2021-08-25 06:16:54'),
(31, 'Bhuvan Bam', NULL, NULL, NULL, 'Noida', '<p>Bhuvan Bam</p>', '100821062834-Group 682.jpg', 1, 1, '3', '2021-08-10 00:58:34', '2021-08-25 06:16:52'),
(32, 'pushpendra', NULL, NULL, NULL, 'Noida one sector 62', '<p>test</p>', '120821044739-Group 674.png', 1, 1, NULL, '2021-08-11 23:17:39', '2021-08-25 06:16:50'),
(33, 'pushpendra', NULL, NULL, NULL, 'Noida one sector 62', NULL, '120821044848-Group 674.png', 1, 1, 'test', '2021-08-11 23:18:48', '2021-08-25 06:16:47'),
(34, 'Java Certification', NULL, NULL, NULL, 'Noida one sector 62', '<p>only male Subscribers Text</p>', '120821045051-Group 670.jpg', 1, 1, 'test', '2021-08-11 23:20:51', '2021-08-24 18:11:04'),
(35, 'edutrapleRecruiter', NULL, NULL, NULL, 'Noida ,Delhi, Ghaziabad', '<p>Test</p>', '120821045128-Group 678.jpg', 1, 1, 'Ters', '2021-08-11 23:21:28', '2021-08-24 18:11:02'),
(36, 'pushpendra', NULL, NULL, NULL, 'Noida one sector 62', '<p>test</p>', '170821123458-1629100203.jpeg', 1, 1, 'test', '2021-08-17 05:41:37', '2021-08-24 18:10:59'),
(37, 'pushpendra', NULL, NULL, NULL, 'Muradnagar', '<p>test</p>', '180821052433-Group 678.jpg', 1, 1, 'test', '2021-08-17 23:54:33', '2021-08-24 18:10:57'),
(38, 'pushpendra sharma', NULL, NULL, NULL, 'Mumbai', '<p>test</p>', '180821052452-Group 677.jpg', 1, 1, 'test', '2021-08-17 23:54:52', '2021-08-24 18:10:53'),
(39, 'Demo Amazon', NULL, NULL, NULL, 'Noida ,Delhi, Ghaziabad', '<p>test</p>', '180821061805-Group 678.jpg', 1, 1, 'test', '2021-08-17 23:55:09', '2021-08-24 18:10:50'),
(40, 'Carry minati', '7751967175', NULL, 'fan@gmail.com', 'Noida one sector 62', '<pre>\r\nreq</pre>', '240921041715-girl.png', 0, 1, 'test', '2021-08-25 05:41:38', '2021-09-24 10:47:15'),
(41, 'testpushpendra', '7011036618', '$2y$10$SeV/OmWLgJD5J1UcrDydru2lATzAsY5fPjvkHGkcouqM0j0MBhpm6', 'testpushpendra@gmail.com', 'Noida one sector 62', '<p>Test</p>', '240921041606-girl_one.png', 0, 1, 'test', '2021-08-31 08:31:34', '2021-09-24 10:46:07'),
(42, 'testpushpendra', '7011036618', '$2y$10$y62HjS7mFO2wNlmLbxkr.uAjAke23/Pd.ePibKN1wSj8eCu3UBTdK', 'admin', 'Noida one sector 62', '<p>Ajey Nagar , popularly known as CarryMinati, is an Indian YouTuber and streamer from Faridabad, India. He is known for his comedic skits and reactions to various online&nbsp;</p>', '240921041438-young-worker-painting-wall-room-260nw-536450503.jpg', 0, 1, 'test', '2021-09-24 10:42:57', '2021-09-24 10:44:38'),
(43, 'testpushpendra', '7011036618', '$2y$10$rKBh2WHMrQTHPLpLiFUr6eeKo7/As9aYGYOzvjXpKh5lTnHFCM5Qa', 'testpushpendra@gmail.com', 'Noida one sector 62', '<p>Ajey Nagar , popularly known as CarryMinati, is an Indian YouTuber and streamer from Faridabad, India. He is known for his comedic skits and reactions to various online&nbsp;</p>', '240921041537-girl_two.png', 0, 1, 'test', '2021-09-24 10:43:43', '2021-09-24 10:45:37'),
(44, 'testpushpendra', '7011036618', '$2y$10$5zooAQpaRpuca3/Rh0LtR.cqedN0Cn2r0o2wnqNrOFSLEDvU.lAv6', 'testpushpendra@gmail.com', 'Noida one sector 62', '<p>Ajey Nagar , popularly known as CarryMinati, is an Indian YouTuber and streamer from Faridabad, India. He is known for his comedic skits and reactions to various online&nbsp;</p>', '240921041451-carry_mask.png', 0, 1, 'test', '2021-09-24 10:44:51', '2021-09-24 10:44:52'),
(45, 'Carry Minati', '1234567890', '$2y$10$1ss/b9VESIudrjU9SRgNpOOnonGInBdz6gWBKmUat/2shSXeAy8Ja', 'car123@gmail.com', 'Muradnagar', '<p>Ajey Nagar , popularly known as CarryMinati, is an Indian YouTuber and streamer from Faridabad, India. He is known for his comedic skits and reactions to various online topics on his channel CarryMinati. His other channel CarryisLive is dedicated to gaming and live streams.</p>', '240921042731-popular_two.jpg', 0, 1, 'test', '2021-09-24 10:57:01', '2021-09-24 11:16:24');

-- --------------------------------------------------------

--
-- Table structure for table `influencers_galleries`
--

CREATE TABLE `influencers_galleries` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `influencer_id` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `text` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `text`, `image`, `description`, `created_at`, `updated_at`, `title`) VALUES
(1, 9, 'Fans Studio', 'https://fansstudio.appmantra.live/public/storage/notification', 'Fans Studio', '2021-10-13 11:11:19', '2021-10-13 11:11:19', NULL),
(2, 12, 'Fans Studio', 'https://fansstudio.appmantra.live/public/storage/notification', 'Fans Studio', '2021-10-13 11:11:19', '2021-10-13 11:11:19', NULL),
(3, 18, 'Fans Studio', 'https://fansstudio.appmantra.live/public/storage/notification', 'Fans Studio', '2021-10-13 11:11:19', '2021-10-13 11:11:19', NULL),
(4, 19, 'Fans Studio', 'https://fansstudio.appmantra.live/public/storage/notification', 'Fans Studio', '2021-10-13 11:11:20', '2021-10-13 11:11:20', NULL),
(5, 20, 'Fans Studio', 'https://fansstudio.appmantra.live/public/storage/notification', 'Fans Studio', '2021-10-13 11:11:20', '2021-10-13 11:11:20', NULL),
(6, 21, 'Fans Studio', 'https://fansstudio.appmantra.live/public/storage/notification', 'Fans Studio', '2021-10-13 11:11:20', '2021-10-13 11:11:20', NULL),
(7, 9, 'Fans Studio', 'https://fansstudio.appmantra.live/public/storage/notification', 'Fans Studio', '2021-10-13 11:12:31', '2021-10-13 11:12:31', NULL),
(8, 12, 'Fans Studio', 'https://fansstudio.appmantra.live/public/storage/notification', 'Fans Studio', '2021-10-13 11:12:31', '2021-10-13 11:12:31', NULL),
(9, 18, 'Fans Studio', 'https://fansstudio.appmantra.live/public/storage/notification', 'Fans Studio', '2021-10-13 11:12:31', '2021-10-13 11:12:31', NULL),
(10, 19, 'Fans Studio', 'https://fansstudio.appmantra.live/public/storage/notification', 'Fans Studio', '2021-10-13 11:12:31', '2021-10-13 11:12:31', NULL),
(11, 20, 'Fans Studio', 'https://fansstudio.appmantra.live/public/storage/notification', 'Fans Studio', '2021-10-13 11:12:32', '2021-10-13 11:12:32', NULL),
(12, 21, 'Fans Studio', 'https://fansstudio.appmantra.live/public/storage/notification', 'Fans Studio', '2021-10-13 11:12:32', '2021-10-13 11:12:32', NULL),
(13, 9, 'Fans Studio', 'https://fansstudio.appmantra.live/public/storage/notification', 'Fans Studio', '2021-10-13 11:13:07', '2021-10-13 11:13:07', NULL),
(14, 12, 'Fans Studio', 'https://fansstudio.appmantra.live/public/storage/notification', 'Fans Studio', '2021-10-13 11:13:07', '2021-10-13 11:13:07', NULL),
(15, 18, 'Fans Studio', 'https://fansstudio.appmantra.live/public/storage/notification', 'Fans Studio', '2021-10-13 11:13:07', '2021-10-13 11:13:07', NULL),
(16, 19, 'Fans Studio', 'https://fansstudio.appmantra.live/public/storage/notification', 'Fans Studio', '2021-10-13 11:13:07', '2021-10-13 11:13:07', NULL),
(17, 20, 'Fans Studio', 'https://fansstudio.appmantra.live/public/storage/notification', 'Fans Studio', '2021-10-13 11:13:07', '2021-10-13 11:13:07', NULL),
(18, 21, 'Fans Studio', 'https://fansstudio.appmantra.live/public/storage/notification', 'Fans Studio', '2021-10-13 11:13:08', '2021-10-13 11:13:08', NULL),
(19, 9, 'Fans Studio', 'https://fansstudio.appmantra.live/public/storage/notification', 'Fans Studio', '2021-10-13 11:18:18', '2021-10-13 11:18:18', NULL),
(20, 12, 'Fans Studio', 'https://fansstudio.appmantra.live/public/storage/notification', 'Fans Studio', '2021-10-13 11:18:19', '2021-10-13 11:18:19', NULL),
(21, 18, 'Fans Studio', 'https://fansstudio.appmantra.live/public/storage/notification', 'Fans Studio', '2021-10-13 11:18:19', '2021-10-13 11:18:19', NULL),
(22, 19, 'Fans Studio', 'https://fansstudio.appmantra.live/public/storage/notification', 'Fans Studio', '2021-10-13 11:18:19', '2021-10-13 11:18:19', NULL),
(23, 20, 'Fans Studio', 'https://fansstudio.appmantra.live/public/storage/notification', 'Fans Studio', '2021-10-13 11:18:19', '2021-10-13 11:18:19', NULL),
(24, 21, 'Fans Studio', 'https://fansstudio.appmantra.live/public/storage/notification', 'Fans Studio', '2021-10-13 11:18:19', '2021-10-13 11:18:19', NULL),
(25, 9, 'Fans Studio', 'https://fansstudio.appmantra.live/public/storage/notification', 'Fans Studio', '2021-10-13 11:18:49', '2021-10-13 11:18:49', NULL),
(26, 12, 'Fans Studio', 'https://fansstudio.appmantra.live/public/storage/notification', 'Fans Studio', '2021-10-13 11:18:49', '2021-10-13 11:18:49', NULL),
(27, 18, 'Fans Studio', 'https://fansstudio.appmantra.live/public/storage/notification', 'Fans Studio', '2021-10-13 11:18:49', '2021-10-13 11:18:49', NULL),
(28, 19, 'Fans Studio', 'https://fansstudio.appmantra.live/public/storage/notification', 'Fans Studio', '2021-10-13 11:18:49', '2021-10-13 11:18:49', NULL),
(29, 20, 'Fans Studio', 'https://fansstudio.appmantra.live/public/storage/notification', 'Fans Studio', '2021-10-13 11:18:50', '2021-10-13 11:18:50', NULL),
(30, 21, 'Fans Studio', 'https://fansstudio.appmantra.live/public/storage/notification', 'Fans Studio', '2021-10-13 11:18:50', '2021-10-13 11:18:50', NULL),
(31, 9, 'Fans Studio', 'https://fansstudio.appmantra.live/public/storage/notification', 'Fans Studio', '2021-10-13 11:27:04', '2021-10-13 11:27:04', NULL),
(32, 12, 'Fans Studio', 'https://fansstudio.appmantra.live/public/storage/notification', 'Fans Studio', '2021-10-13 11:27:04', '2021-10-13 11:27:04', NULL),
(33, 18, 'Fans Studio', 'https://fansstudio.appmantra.live/public/storage/notification', 'Fans Studio', '2021-10-13 11:27:04', '2021-10-13 11:27:04', NULL),
(34, 19, 'Fans Studio', 'https://fansstudio.appmantra.live/public/storage/notification', 'Fans Studio', '2021-10-13 11:27:05', '2021-10-13 11:27:05', NULL),
(35, 20, 'Fans Studio', 'https://fansstudio.appmantra.live/public/storage/notification', 'Fans Studio', '2021-10-13 11:27:05', '2021-10-13 11:27:05', NULL),
(36, 21, 'Fans Studio', 'https://fansstudio.appmantra.live/public/storage/notification', 'Fans Studio', '2021-10-13 11:27:05', '2021-10-13 11:27:05', NULL),
(37, 9, 'Fans Studio', 'https://fansstudio.appmantra.live/public/storage/notification', 'Fans Studio', '2021-10-13 11:28:35', '2021-10-13 11:28:35', NULL),
(38, 12, 'Fans Studio', 'https://fansstudio.appmantra.live/public/storage/notification', 'Fans Studio', '2021-10-13 11:28:35', '2021-10-13 11:28:35', NULL),
(39, 18, 'Fans Studio', 'https://fansstudio.appmantra.live/public/storage/notification', 'Fans Studio', '2021-10-13 11:28:35', '2021-10-13 11:28:35', NULL),
(40, 19, 'Fans Studio', 'https://fansstudio.appmantra.live/public/storage/notification', 'Fans Studio', '2021-10-13 11:28:35', '2021-10-13 11:28:35', NULL),
(41, 20, 'Fans Studio', 'https://fansstudio.appmantra.live/public/storage/notification', 'Fans Studio', '2021-10-13 11:28:36', '2021-10-13 11:28:36', NULL),
(42, 21, 'Fans Studio', 'https://fansstudio.appmantra.live/public/storage/notification', 'Fans Studio', '2021-10-13 11:28:36', '2021-10-13 11:28:36', NULL),
(43, 9, 'Fans Studio', 'https://fansstudio.appmantra.live/public/storage/notification', 'Fans Studio', '2021-10-13 11:31:49', '2021-10-13 11:31:49', NULL),
(44, 12, 'Fans Studio', 'https://fansstudio.appmantra.live/public/storage/notification', 'Fans Studio', '2021-10-13 11:31:49', '2021-10-13 11:31:49', NULL),
(45, 18, 'Fans Studio', 'https://fansstudio.appmantra.live/public/storage/notification', 'Fans Studio', '2021-10-13 11:31:49', '2021-10-13 11:31:49', NULL),
(46, 19, 'Fans Studio', 'https://fansstudio.appmantra.live/public/storage/notification', 'Fans Studio', '2021-10-13 11:31:50', '2021-10-13 11:31:50', NULL),
(47, 20, 'Fans Studio', 'https://fansstudio.appmantra.live/public/storage/notification', 'Fans Studio', '2021-10-13 11:31:50', '2021-10-13 11:31:50', NULL),
(48, 21, 'Fans Studio', 'https://fansstudio.appmantra.live/public/storage/notification', 'Fans Studio', '2021-10-13 11:31:50', '2021-10-13 11:31:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` int(10) NOT NULL DEFAULT '1',
  `mrp` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `is_delete` int(11) NOT NULL DEFAULT '0',
  `duration` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `referral_code` varchar(255) DEFAULT NULL,
  `referral_userID` varchar(255) DEFAULT NULL,
  `wallet` varchar(255) NOT NULL DEFAULT '0',
  `referal_code` varchar(255) DEFAULT NULL,
  `refer_id` varchar(255) DEFAULT NULL,
  `is_delete` int(11) NOT NULL DEFAULT '0',
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `phone`, `photo`, `gender`, `dob`, `status`, `referral_code`, `referral_userID`, `wallet`, `referal_code`, `refer_id`, `is_delete`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'tekniko', '$2y$10$1LFLpNnvNgK5seKdfnqM2.yrTOEtEkCalrtO1Rjj6fByTZN8DjBv2', 'tek@gmail.com', '1234567895', 'user.png', NULL, NULL, 1, '8SOFC7I0', NULL, '50', NULL, NULL, 1, NULL, '2021-08-04 05:39:04', '2021-08-16 03:33:52'),
(7, 'pus', '$2y$10$Nc.08VgGjRT6hFs1t9Z3geDr7mFTofbjiKumDCcRxtKKRpLReUIWG', 'pandeypush11@gmail.com', '9876543210', 'user.png', NULL, NULL, 1, 'RWDSDZ3I', NULL, '0', NULL, NULL, 0, NULL, '2021-08-06 10:38:04', '2021-09-14 15:15:48'),
(8, 'push1', '$2y$10$U.EOgyLWJJMr7US3GzaDhuJ1kCrvHkZJNguDwA1eJ/5bEuYyb0lCy', 'push123@gmail.com', '1111111111', '8_user_profile1628772342.jpg', NULL, NULL, 1, '9ZD9H4YX', NULL, '0', NULL, NULL, 0, NULL, '2021-08-12 12:44:39', '2021-08-17 01:33:14'),
(9, 'Satyanarayan Sahoo', '$2y$10$mvrPSiTJ1Ku4EmRUl9Ub6uZE/qhp.m2lCcwH82n3o4lowShpvxqqu', 'sssssssssssssssssssssssssss@gmail.com', '6370371406', '9_user_profile1631986484.jpg', 'male', '2021-08-16', 1, NULL, NULL, '0', NULL, NULL, 0, NULL, '2021-08-16 03:24:48', '2021-09-18 17:34:54'),
(12, 'Vibhas Mishra', '$2y$10$7y6irTlaCDJRkpmmbv4B0.1ipeSrOYep70pAZgkNZrYh0G0PMxRXO', 'vibhas1326@gmail.com', '9311620027', 'user.png', NULL, NULL, 1, 'LHZOW7WW', NULL, '50', NULL, NULL, 0, NULL, '2021-08-16 13:18:05', '2021-08-27 07:11:03'),
(13, 'neelmani shukla', '$2y$10$PnvXxabroyAYHGgxsbnMvey14PTA2ic3pJ3Knpiak/otFmDLqScoK', 'nshukla2013@gmail.com', '9717816707', 'user.png', NULL, NULL, 1, 'NRC9GP3P', NULL, '0', NULL, NULL, 0, NULL, '2021-08-20 05:09:09', '2021-08-20 05:09:09'),
(14, 'test', '$2y$10$0T5xCHQrZ50Afz1QQ0QOTuYUVHHUzyWMVlle4mEH5e/8qV.n/MJY6', 'test1@gmail.com', '1234567856', 'user.png', NULL, NULL, 1, 'CWKDU31Z', NULL, '0', NULL, NULL, 1, NULL, '2021-08-20 06:00:32', '2021-08-22 06:47:38'),
(15, 'suchitra', '$2y$10$Nyv3yv/fGj5gaEWHKTA7/uhlwp6Vn9p.2EcMZggc3FYN/wxBlBEsC', 'gydnj@gmil.com', '9773561499', '15_user_profile1629892678.jpg', NULL, '19-08-2021', 1, 'TIV7ZH84', NULL, '0', NULL, NULL, 0, NULL, '2021-08-25 11:54:54', '2021-08-25 11:58:11'),
(16, 'Aj Ok', '$2y$10$efiub4.0CvHRxE1IR1KvhOGbr5CbTByhzJeNGYFVlqKKtJdUhD2xG', 'ajok64635@gmail.com', '9773561498', '16_user_profile1629893566.jpg', NULL, NULL, 1, 'Q5VH8IGB', NULL, '0', NULL, NULL, 0, NULL, '2021-08-25 12:12:11', '2021-08-25 12:12:54'),
(17, 'test', '$2y$10$Ga3gekycGIBc/631c.tkL.qf1/U6NuJSd8q7tGsbqw/rwaxSbm5X6', 'test123456@gmail.com', '9966883322', 'user.png', NULL, NULL, 1, 'ZDEFVA7M', NULL, '0', NULL, NULL, 0, NULL, '2021-08-27 12:23:00', '2021-08-27 12:23:00'),
(18, 'test', '$2y$10$RC0JBgViKM.SaeJ2GB5dWeuaqiNziSid3nsCieQP3hp6FwkzhI//G', 'test0987@gmail.com', '9987656390', 'user.png', 'Female', '13-09-2021', 1, 'V3S25Y4Z', NULL, '0', NULL, NULL, 0, NULL, '2021-08-31 10:16:03', '2021-09-15 05:31:15'),
(19, 'pushpendra', '$2y$10$O.Z/9jJmzlpoJfBPqhoKO.s8eNB8Q7hdVv1ARGwZvo1BfM25mB5xm', 'pandeypush1995@gmail.com', '9837917265', 'user.png', 'Male', '24-09-2021', 1, 'T2R2F5DE', NULL, '0', NULL, NULL, 0, NULL, '2021-09-03 07:10:34', '2021-09-24 12:07:27'),
(20, 'Geeta Walia', '$2y$10$E0Z7UFHW67HRSk1eZN7ZC.Ny2UZ4Tsmcwo5u6JxXcf2nNmtbgNXSy', 'geetawalia786@gmail.com', '8368513445', 'user.png', NULL, NULL, 1, '2HXR5QDY', NULL, '0', NULL, NULL, 0, NULL, '2021-09-18 07:24:51', '2021-09-18 07:24:51'),
(21, 'deepanshu', '$2y$10$SjlqDztNrR6kX1JoSzZl1.uMpGYsGHDUpz8bj7oVzku.fnofiloXu', 'deepanshu@gmail.com', '9654841155', 'user.png', 'Male', '24-09-2017', 1, 'AY3921SH', NULL, '0', NULL, NULL, 0, NULL, '2021-09-24 12:18:41', '2021-09-24 12:19:28');

-- --------------------------------------------------------

--
-- Table structure for table `user_logins`
--

CREATE TABLE `user_logins` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `deviceType` varchar(255) DEFAULT NULL,
  `deviceID` varchar(255) DEFAULT NULL,
  `deviceToken` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_logins`
--

INSERT INTO `user_logins` (`id`, `user_id`, `deviceType`, `deviceID`, `deviceToken`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 6, 'ANDROID', '35388f323b06d646', 'caNj6cY0SyeUk4jSosTuSY:APA91bHGrFp05fOvH8QhYCeYPpHA9lKrxA_2w6MYlJvkOdP0hLv8yfQ6GQwmF6iYyk6tPIaLunkX_Re46Qo40TXxVT1TW-hfEKHJ65CUH1KES2Sk-u0HJ7EaJ1mBXHBKTe42NEIEd5Ns', '122.177.131.60', '2021-09-03 07:00:18', '2021-09-03 07:00:18'),
(2, 9, 'ANDROID', 'dsa', 'cSKH1v4HSHi7sDLlwCwTJR:APA91bFcreiSG8sfcwdlWseiawowQjG1pcH4C0-61DIdWugr_Clcuj8Fc2Efnu3WKysXFR4BKIrx84W0YZPjIGQilw8954YzpdfVUK8TjyP43pCEn9vwicG78vi1pXQ_UK7StmjUpzNE', '122.177.131.60', '2021-09-03 07:00:20', '2021-09-06 12:47:10'),
(3, 19, 'ANDROID', 'df91630ecd8724df', 'f6QVBQWIS42tl9W-0FHwz6:APA91bFFkKJJTa0Hbm6R2Pbn2DAzJ-7OioGT7ZRp7-y4ko7NE5jq7StHUonnIkDebJltnfTuW_pVUUvAP8HiUqPxtD14CuCbZ2Hjp5rVo8o8BdtSFE9hRLZRBIXCdoPAJDXSCihlyZXB', '122.177.131.60', '2021-09-03 07:10:34', '2021-09-27 10:17:02'),
(4, 18, 'ANDROID', 'df91630ecd8724df', 'fIRHyd-vRnSmKxTRrZfhP6:APA91bEDgpwd7TwQCEnc6CjP9_krasa1vbLTUegMm7cJUI7y0bxqgH7XXYg9ufJCHdb74m655rnapOoGRyi_XGq4hzQ49JHLKOcPlVmsFkMGQau9Yb-OibaeBKDmfM__o3u2v4bBBlNQ', '122.177.88.235', '2021-09-06 04:55:32', '2021-09-13 10:29:08'),
(5, 12, 'ANDROID', '00cf07021a944f80', 'fY17Hi1KSieUxv06Ayj2nh:APA91bGyTjDENSGcfBnbpUmV9DA88cMl3SFbkel85vj8RPdFeGM76wq1vxEs_aq2nq4JQdme4zK0t85B4Hx6rbDp-Sv7sM0IBNVGFx8eKHZaCHo3-PnI-EKsxvFUqfjKufbGNhxKqbBh', '47.31.177.117', '2021-09-17 13:42:03', '2021-09-17 13:42:03'),
(6, 20, 'ANDROID', '42ebbc4cb53a5656', 'fQvnop66SCG0SZlESKEJ6O:APA91bE1Iykwq7usPd9sfdeKQF3jRUFSAIey1XS-qTRwXh9mTbMY7AU-f9LPx-Mn91ShmT9InAffKl390zHW-PCDzQSlDT32P0ILeCoImQpSvgpfqCx7SgJ9ahLnf8fsBOidiiK9xrKs', '103.214.60.201', '2021-09-18 07:24:51', '2021-09-18 07:24:51'),
(7, 21, 'ANDROID', 'af6d76100faac98e', 'ftFoYI5TRw6yo9rRygFMVa:APA91bEcaKRhse4lrPm9XQpakALH7OrYDYlYSOPtKtN_iLNQc0zpz6Pvs-uEcxY4XVN6qA9FlZb4qWkxBNb4zHKVBDZs0sm8gvYE1qulugJ8XAS-hTB83-XG95QmAxSP-Kt6_LS6rjho', '122.161.48.33', '2021-09-24 12:18:41', '2021-09-24 12:18:41');

-- --------------------------------------------------------

--
-- Table structure for table `user_otp`
--

CREATE TABLE `user_otp` (
  `id` int(11) NOT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `otp` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `timestamp` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_otp`
--

INSERT INTO `user_otp` (`id`, `mobile`, `email`, `otp`, `created_at`, `timestamp`, `updated_at`) VALUES
(1, '6370371406', NULL, '1234', '2021-08-04 05:28:34', '2021-09-13 09:55:27', '2021-09-13 04:10:27'),
(2, NULL, NULL, '1234', '2021-08-04 06:11:54', '2021-08-04 12:34:27', '2021-08-04 06:49:30'),
(3, NULL, 'satyasahoo.abc@gmail.com', '1234', '2021-08-04 06:52:30', '2021-09-28 22:05:37', '2021-09-28 16:20:40'),
(4, NULL, 'pandeypush1995@gmai.c', '1234', '2021-08-06 05:43:40', '2021-08-06 11:28:36', '2021-08-06 05:43:40'),
(5, NULL, 'pandeypush1995@gmai.co', '1234', '2021-08-06 05:43:40', '2021-08-06 11:28:36', '2021-08-06 05:43:40'),
(6, NULL, 'pandeypush1995@gmai.com', '1234', '2021-08-06 05:43:40', '2021-08-06 11:28:36', '2021-08-06 05:43:40'),
(7, NULL, 'pandeypush1995@gmail.com', '1234', '2021-08-06 05:44:59', '2021-09-14 14:18:22', '2021-09-14 08:33:25'),
(8, NULL, 'p', '1234', '2021-08-06 05:59:43', '2021-08-06 11:56:58', '2021-08-06 06:11:59'),
(9, NULL, 'pa', '1234', '2021-08-06 05:59:44', '2021-08-06 11:56:59', '2021-08-06 06:11:59'),
(10, NULL, 'pan', '1234', '2021-08-06 05:59:44', '2021-08-06 12:22:52', '2021-08-06 06:37:52'),
(11, NULL, 'pandeypush1995@gmail.c', '1234', '2021-08-06 06:42:36', '2021-08-06 12:35:41', '2021-08-06 06:50:44'),
(12, NULL, 'pandeypush1995@gmail.co', '1234', '2021-08-06 06:42:36', '2021-08-06 12:31:40', '2021-08-06 06:46:44'),
(13, '1234567890', NULL, '1234', '2021-08-06 07:46:49', '2021-09-06 18:33:43', '2021-09-06 12:48:43'),
(14, '1234576890', NULL, '1234', '2021-08-06 07:48:48', '2021-08-06 13:40:06', '2021-08-06 07:55:06'),
(15, '1234576899', NULL, '1234', '2021-08-06 08:48:30', '2021-08-06 14:33:30', '2021-08-06 08:48:30'),
(16, '9876543210', NULL, '1234', '2021-08-06 10:36:32', '2021-08-18 17:23:38', '2021-08-18 11:38:38'),
(17, NULL, 'pandeypush11@gmail.com', '1234', '2021-08-06 10:37:52', '2021-08-06 16:22:49', '2021-08-06 10:37:52'),
(18, NULL, 'hunny@gmail.com', '1234', '2021-08-12 10:05:05', '2021-08-12 15:50:01', '2021-08-12 10:05:05'),
(19, NULL, 'pandeypush1995@gmail.vom', '1234', '2021-08-12 11:49:20', '2021-08-12 17:34:17', '2021-08-12 11:49:20'),
(20, NULL, 'push123@gmail.com', '1234', '2021-08-12 12:43:55', '2021-08-12 18:28:51', '2021-08-12 12:43:55'),
(21, '1111111111', NULL, '1234', '2021-08-12 12:44:20', '2021-08-31 17:36:12', '2021-08-31 11:51:12'),
(22, '1234343434', NULL, '1234', '2021-08-19 06:51:38', '2021-08-19 12:36:38', '2021-08-19 06:51:38'),
(23, NULL, 'arvind@gmail.com', '1234', '2021-08-19 07:04:38', '2021-08-19 12:50:33', '2021-08-19 07:05:36'),
(24, NULL, 'nshukla2013@gmail.com', '1234', '2021-08-20 05:08:24', '2021-08-20 10:53:21', '2021-08-20 05:08:24'),
(25, '9717816707', NULL, '1234', '2021-08-20 05:08:44', '2021-08-20 11:07:32', '2021-08-20 05:22:32'),
(26, NULL, 'test123@gmail.com', '1234', '2021-08-20 05:43:00', '2021-08-20 11:27:56', '2021-08-20 05:43:00'),
(27, NULL, 'test1@gmail.com', '1234', '2021-08-20 05:59:41', '2021-08-20 11:44:37', '2021-08-20 05:59:41'),
(28, '1234567856', NULL, '1234', '2021-08-20 06:00:02', '2021-08-20 11:45:02', '2021-08-20 06:00:02'),
(29, NULL, 'gydnj@gmil.com', '1234', '2021-08-25 11:53:58', '2021-08-25 17:38:55', '2021-08-25 11:53:58'),
(30, '9773561499', NULL, '1234', '2021-08-25 11:54:17', '2021-08-25 17:39:17', '2021-08-25 11:54:17'),
(31, '9773561498', NULL, '1234', '2021-08-25 12:11:48', '2021-08-31 15:58:00', '2021-08-31 10:13:00'),
(32, NULL, 'test1234@gmail.com', '1234', '2021-08-27 12:19:37', '2021-08-27 18:04:33', '2021-08-27 12:19:37'),
(33, NULL, 'test123456@gmail.com', '1234', '2021-08-27 12:22:26', '2021-08-27 18:07:23', '2021-08-27 12:22:26'),
(34, '9966883322', NULL, '1234', '2021-08-27 12:22:41', '2021-08-27 18:07:41', '2021-08-27 12:22:41'),
(35, NULL, 'test123456789@gmail.vom', '1234', '2021-08-30 10:04:03', '2021-08-30 15:48:59', '2021-08-30 10:04:03'),
(36, NULL, 'suefood9773@yahoo.com', '1234', '2021-08-31 10:12:43', '2021-08-31 15:57:39', '2021-08-31 10:12:43'),
(37, NULL, 'test0987@gmail.com', '1234', '2021-08-31 10:15:18', '2021-09-15 11:15:45', '2021-09-15 05:30:49'),
(38, '9987656390', NULL, '1234', '2021-08-31 10:15:47', '2021-08-31 16:00:47', '2021-08-31 10:15:47'),
(39, '1112222222', NULL, '1234', '2021-08-31 11:48:49', '2021-08-31 17:33:49', '2021-08-31 11:48:49'),
(40, NULL, 'tek@gmail.com', '1234', '2021-09-01 10:22:35', '2021-09-01 16:07:31', '2021-09-01 10:22:35'),
(41, '9955334422', NULL, '1234', '2021-09-01 10:22:50', '2021-09-01 16:07:50', '2021-09-01 10:22:50'),
(42, NULL, 'abc@gma.co', '1234', '2021-09-01 16:54:46', '2021-09-01 22:39:41', '2021-09-01 16:54:46'),
(43, '1234', NULL, '1234', '2021-09-02 16:21:56', '2021-09-06 12:50:40', '2021-09-06 07:05:40'),
(44, '9837917265', NULL, '1234', '2021-09-03 07:10:17', '2021-09-03 12:55:17', '2021-09-03 07:10:17'),
(45, NULL, '1234567890', '1234', '2021-09-14 04:51:47', '2021-09-14 10:36:56', '2021-09-14 04:51:56'),
(46, NULL, 'deepanshu@gmail.com', '1234', '2021-09-24 12:18:05', '2021-09-24 18:03:01', '2021-09-24 12:18:05'),
(47, '9654841155', NULL, '1234', '2021-09-24 12:18:23', '2021-09-24 18:03:23', '2021-09-24 12:18:23');

-- --------------------------------------------------------

--
-- Table structure for table `user_subscriptions`
--

CREATE TABLE `user_subscriptions` (
  `id` int(11) NOT NULL,
  `user_id` int(10) NOT NULL,
  `subscription_id` int(10) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` int(10) NOT NULL DEFAULT '1',
  `is_delete` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wallet_transaction`
--

CREATE TABLE `wallet_transaction` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_versions`
--
ALTER TABLE `app_versions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events_galleries`
--
ALTER TABLE `events_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_chats`
--
ALTER TABLE `event_chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_questions`
--
ALTER TABLE `event_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_question_answers`
--
ALTER TABLE `event_question_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_subscription`
--
ALTER TABLE `event_subscription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_users`
--
ALTER TABLE `event_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `influencers`
--
ALTER TABLE `influencers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `influencers_galleries`
--
ALTER TABLE `influencers_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_logins`
--
ALTER TABLE `user_logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_otp`
--
ALTER TABLE `user_otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_transaction`
--
ALTER TABLE `wallet_transaction`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `app_versions`
--
ALTER TABLE `app_versions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `events_galleries`
--
ALTER TABLE `events_galleries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `event_chats`
--
ALTER TABLE `event_chats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `event_questions`
--
ALTER TABLE `event_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `event_question_answers`
--
ALTER TABLE `event_question_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event_subscription`
--
ALTER TABLE `event_subscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `event_users`
--
ALTER TABLE `event_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `influencers`
--
ALTER TABLE `influencers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `influencers_galleries`
--
ALTER TABLE `influencers_galleries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user_logins`
--
ALTER TABLE `user_logins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_otp`
--
ALTER TABLE `user_otp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wallet_transaction`
--
ALTER TABLE `wallet_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
