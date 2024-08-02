-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2024 at 02:37 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social_media_dashboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `analytics`
--

CREATE TABLE `analytics` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `data` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `analytics`
--

INSERT INTO `analytics` (`id`, `user_id`, `data`, `created_at`) VALUES
(1, 4, '1456', '2024-08-02 12:26:45'),
(2, 4, '9898', '2024-08-02 12:26:51'),
(3, 4, 'mmmm', '2024-08-02 12:27:30'),
(4, 4, 'an 1', '2024-08-02 12:30:22');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `received_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `message`, `received_at`) VALUES
(1, 4, 'am feeling good today', '2024-08-02 12:26:04');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `scheduled_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `content`, `scheduled_at`, `created_at`) VALUES
(1, 6, 'Hey everyone! 🎉\r\n\r\nI’m thrilled to share some amazing news with you all. After months of hard work and dedication, we’re officially launching our new project next week! 🚀\r\n\r\nStay tuned for updates, and make sure to follow us for more details. We can’t wait to unveil what we’ve been working on!\r\n\r\nThank you for all your support and encouragement. Let’s make this journey memorable together! 💪\r\n\r\nBest,\r\nSam', '2024-08-02 14:03:00', '2024-08-02 11:02:04'),
(2, 6, 'Hey everyone! 🎉\r\n\r\nI’m thrilled to share some amazing news with you all. After months of hard work and dedication, we’re officially launching our new project next week! 🚀\r\n\r\nStay tuned for updates, and make sure to follow us for more details. We can’t wait to unveil what we’ve been working on!\r\n\r\nThank you for all your support and encouragement. Let’s make this journey memorable together! 💪\r\n\r\nBest,\r\n', '2024-08-02 14:04:00', '2024-08-02 11:04:03'),
(3, 4, 'gggg', '2024-08-02 14:15:00', '2024-08-02 11:14:30'),
(4, 4, 'gggg', '2024-08-02 14:15:00', '2024-08-02 11:17:59'),
(5, 4, 'am doog', '2024-08-02 14:19:00', '2024-08-02 11:18:20'),
(6, 4, 'am coming today', '2024-08-02 14:22:00', '2024-08-02 11:21:04'),
(7, 4, 'am coming roday', '2024-08-02 14:25:00', '2024-08-02 11:24:38'),
(8, 4, 'nn', '2024-08-02 14:25:00', '2024-08-02 11:25:29'),
(9, 4, 'nnnn', '2024-08-02 14:27:00', '2024-08-02 11:27:37'),
(10, 7, 'Title: 🌟 Exciting Announcement! 🌟\r\n\r\nContent:\r\n\r\nHey everyone! 🎉\r\n\r\nI’m thrilled to share some amazing news with you all. After months of hard work and dedication, we’re officially launching our new project next week! 🚀\r\n\r\nStay tuned for updates, and make sure to follow us for more details. We can’t wait to unveil what we’ve been working on!\r\n\r\nThank you for all your support and encouragement. Let’s make this journey memorable together! 💪\r\n\r\nBest', '2024-08-02 15:08:00', '2024-08-02 12:07:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `created_at`) VALUES
(1, 'oluyali', 'oluyalireuben1@gmail.com', '$2y$10$R/VsfH2WCcbLYhM9KGvf6ebHsIyZJ0qljXftsSPQq2Xh/UKsTy.hi', '2024-08-02 10:15:46'),
(3, 'olu', 'oluyalireuben@gmail.com', '$2y$10$q4fAzt/0Dmw5Mc34aNMMa.V90Rpz13g8vLL3uGpDZy1Y1FngQ0E4y', '2024-08-02 10:20:23'),
(4, 'ian', 'ian@gmail.com', '$2y$10$vTAuOQKwVphuo3pGNbiB/uJ5Z7XJnT9D3iwCQ5TrA5jUZLjagYiPu', '2024-08-02 10:40:52'),
(6, 'Sam', 'sam@gmail.com', '$2y$10$DQBoj2DFhTHIK0VbM2.0i.k2B3HxD9McG/nCkN6wT5XJ12XOFzd0G', '2024-08-02 10:58:49'),
(7, 'josy', 'josy@gmail.com', '$2y$10$hXFKa3IsRN0I0LD9y1iBbu5u79X87OU7pXs7uqLSL.xz13hp9kRke', '2024-08-02 12:06:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `analytics`
--
ALTER TABLE `analytics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `analytics`
--
ALTER TABLE `analytics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `analytics`
--
ALTER TABLE `analytics`
  ADD CONSTRAINT `analytics_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
