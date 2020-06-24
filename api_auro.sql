-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2020 at 08:13 AM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api_auro`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_keys`
--

CREATE TABLE `access_keys` (
  `access_key` varchar(250) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `expired_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `access_keys`
--

INSERT INTO `access_keys` (`access_key`, `status`, `expired_at`, `user_id`) VALUES
('ddvrgr3v513243546', 1, '2020-06-24 13:33:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `created_at`) VALUES
(1, 'Running', 1, '2020-06-23 17:40:55'),
(10, 'Strength', 1, '2020-06-23 17:47:57'),
(11, 'Yoga', 1, '2020-06-23 18:01:00');

-- --------------------------------------------------------

--
-- Table structure for table `difficulty_levels`
--

CREATE TABLE `difficulty_levels` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `difficulty_levels`
--

INSERT INTO `difficulty_levels` (`id`, `name`, `status`, `created_at`) VALUES
(2, 'Beginner', 1, '2020-06-23 18:03:35'),
(3, 'Intermediate', 1, '2020-06-23 18:03:41'),
(4, 'Advanced', 1, '2020-06-23 18:03:48');

-- --------------------------------------------------------

--
-- Table structure for table `history_logs`
--

CREATE TABLE `history_logs` (
  `id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `old_data` text,
  `new_data` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history_logs`
--

INSERT INTO `history_logs` (`id`, `created_at`, `type`, `old_data`, `new_data`) VALUES
(1, '2020-06-23 21:21:52', 'training_class', '{"id":5,"status":1,"created_at":"2020-06-23 21:20:00","updated_at":"2020-06-23 21:20:00","name":"Hello","duration":300,"audio_track":"http:\\/\\/localhost\\/auro_api_test\\/api\\/public\\/storage\\/audio\\/5ef27200adcd4.mp3","category_id":2,"trainer_id":2,"difficulty_level_id":2}', '{"duration":"300","category_id":"2","trainer_id":"2","difficulty_level_id":"2","name":"Hello World","audio_track":"http:\\/\\/localhost\\/auro_api_test\\/api\\/public\\/storage\\/audio\\/5ef27270599f8.mp3"}');

-- --------------------------------------------------------

--
-- Table structure for table `trainers`
--

CREATE TABLE `trainers` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trainers`
--

INSERT INTO `trainers` (`id`, `name`, `status`, `created_at`) VALUES
(1, 'Ban', 1, '2020-06-23 18:01:49'),
(2, 'Jane', 1, '2020-06-23 18:02:02'),
(3, 'Omar', 1, '2020-06-23 18:02:09');

-- --------------------------------------------------------

--
-- Table structure for table `training_class`
--

CREATE TABLE `training_class` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL COMMENT 'in seconds',
  `audio_track` text,
  `category_id` int(11) DEFAULT NULL,
  `trainer_id` int(11) DEFAULT NULL,
  `difficulty_level_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `training_class`
--

INSERT INTO `training_class` (`id`, `status`, `created_at`, `updated_at`, `name`, `duration`, `audio_track`, `category_id`, `trainer_id`, `difficulty_level_id`) VALUES
(5, 1, '2020-06-23 21:20:00', '2020-06-23 21:21:52', 'Hello World', 300, 'http://localhost/auro_api_test/api/public/storage/audio/5ef27270599f8.mp3', 2, 2, 2),
(6, 1, '2020-06-23 21:23:00', '2020-06-23 21:23:00', 'Hello1', 300, 'http://localhost/auro_api_test/api/public/storage/audio/5ef272b414d04.mp3', 3, 2, 2),
(7, 1, '2020-06-23 21:23:05', '2020-06-23 21:23:05', 'Hello2', 300, 'http://localhost/auro_api_test/api/public/storage/audio/5ef272b9978b2.mp3', 2, 2, 2),
(8, 1, '2020-06-23 21:23:09', '2020-06-23 21:23:09', 'Hello3', 300, 'http://localhost/auro_api_test/api/public/storage/audio/5ef272bdaf370.mp3', 2, 2, 2),
(9, 1, '2020-06-23 21:23:14', '2020-06-23 21:23:14', 'Hello4', 300, 'http://localhost/auro_api_test/api/public/storage/audio/5ef272c1edf95.mp3', 2, 2, 2),
(10, 1, '2020-06-23 21:23:23', '2020-06-23 21:23:23', 'Hello6', 300, 'http://localhost/auro_api_test/api/public/storage/audio/5ef272cbb6095.mp3', 3, 2, 2),
(11, 1, '2020-06-23 21:23:31', '2020-06-23 21:23:31', 'Hello7', 300, 'http://localhost/auro_api_test/api/public/storage/audio/5ef272d351141.mp3', 2, 2, 2),
(12, 1, '2020-06-23 21:23:38', '2020-06-23 21:23:38', 'Hello8', 300, 'http://localhost/auro_api_test/api/public/storage/audio/5ef272da2fd3c.mp3', 2, 2, 2),
(13, 1, '2020-06-23 21:23:42', '2020-06-23 21:23:42', 'Hello9', 300, 'http://localhost/auro_api_test/api/public/storage/audio/5ef272dedbdbf.mp3', 2, 2, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `difficulty_levels`
--
ALTER TABLE `difficulty_levels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `history_logs`
--
ALTER TABLE `history_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainers`
--
ALTER TABLE `trainers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `training_class`
--
ALTER TABLE `training_class`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `difficulty_levels`
--
ALTER TABLE `difficulty_levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `history_logs`
--
ALTER TABLE `history_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `trainers`
--
ALTER TABLE `trainers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `training_class`
--
ALTER TABLE `training_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
