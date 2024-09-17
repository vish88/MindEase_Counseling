-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 16, 2024 at 05:52 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mindease_counseling`
--

-- --------------------------------------------------------

--
-- Table structure for table `counselors`
--

CREATE TABLE `counselors` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `specialty` varchar(100) NOT NULL,
  `bio` text DEFAULT NULL,
  `degree` varchar(255) NOT NULL,
  `field` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT 'https://mindease.io/wp-content/uploads/meditation-mind-ease.jpg',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `counselors`
--

INSERT INTO `counselors` (`id`, `name`, `specialty`, `bio`, `degree`, `field`, `image`, `created_at`) VALUES
(2, 'Shayan Ali', 'Stress Management', 'He is quite great', 'MS', 'Management', 'https://mindease.io/wp-content/uploads/meditation-mind-ease.jpg', '2024-09-14 13:28:41'),
(3, 'Salman Khan', 'Mental disorder', 'Ex', 'MS', 'Management', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSofjq4ZQkkrXDQUelysBhVHMykM2vtPRecyg&s', '2024-09-14 14:13:01'),
(5, 'M. Yaseen', 'Anxiety and DIsorder', 'He is good', 'MS', 'Psychology', 'https://www.mondaycampaigns.org/wp-content/uploads/2020/04/destress-monday-feature-belly-breathing.png', '2024-09-15 07:16:02'),
(6, 'Ms. Fatima', 'Anxiety', 'She is really great', 'MS', 'Management', 'https://www.mondaycampaigns.org/wp-content/uploads/2020/04/destress-monday-feature-belly-breathing.png', '2024-09-15 07:17:27'),
(7, 'Mr. Ali', 'Anxiety and DIsorder', 'He is goof', 'MS', 'Management', 'https://www.mondaycampaigns.org/wp-content/uploads/2020/04/destress-monday-feature-belly-breathing.png', '2024-09-15 07:20:00'),
(8, 'Ms. Maria', 'Anxiety and DIsorder', 'Great', 'MS', 'Management', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStut_b1U-L5thWwXO2kGFICSafoc1C4rVIHQ&s', '2024-09-15 07:22:04'),
(9, 'Vishal', 'Resolving Anxiety and Stress', 'NTNU Scholar', 'PhD', 'Mental Health', 'https://www.mondaycampaigns.org/wp-content/uploads/2020/04/destress-monday-feature-belly-breathing.png', '2024-09-16 15:45:08');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `first_name`, `last_name`, `email`, `message`, `created_at`) VALUES
(1, 'Sajjad', 'Ali', 'khaskhelisajjadali6@Gmail.com', 'I want this a', '2024-09-14 19:13:02');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `card_number` varbinary(255) NOT NULL,
  `expiration_date` varbinary(255) NOT NULL,
  `cvv` varbinary(255) NOT NULL,
  `saved_details` tinyint(1) DEFAULT 0,
  `payment_status` enum('pending','paid') DEFAULT 'paid',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `user_id`, `session_id`, `payment_method`, `card_number`, `expiration_date`, `cvv`, `saved_details`, `payment_status`, `created_at`) VALUES
(1, 3, 27, 'visa', 0x63577376355458766d6272537137726b5162734839413d3d, 0x6f6351546b3275734932505a69547a315252557a6e673d3d, 0x51567666376b3334787a4b634e6732474231745a33513d3d, 0, 'paid', '2024-09-15 05:09:25'),
(2, 3, 21, 'visa', 0x36706844334a6b39394534587469476e78736c71314743655a5937554971576642774c4b6978537a7357343d, 0x6f6351546b3275734932505a69547a315252557a6e673d3d, 0x79314a47685073386145796b6e6e6d526b59597348413d3d, 0, 'paid', '2024-09-15 05:25:20'),
(3, 3, 29, 'mastercard', 0x36706844334a6b39394534587469476e78736c71314743655a5937554971576642774c4b6978537a7357343d, 0x6f6351546b3275734932505a69547a315252557a6e673d3d, 0x79314a47685073386145796b6e6e6d526b59597348413d3d, 0, 'paid', '2024-09-16 10:58:14'),
(4, 3, 31, 'visa', 0x36706844334a6b39394534587469476e78736c71314743655a5937554971576642774c4b6978537a7357343d, 0x6f6351546b3275734932505a69547a315252557a6e673d3d, 0x79314a47685073386145796b6e6e6d526b59597348413d3d, 0, 'paid', '2024-09-16 15:42:00'),
(5, 3, 28, 'visa', 0x36706844334a6b39394534587469476e78736c71314743655a5937554971576642774c4b6978537a7357343d, 0x6f6351546b3275734932505a69547a315252557a6e673d3d, 0x79314a47685073386145796b6e6e6d526b59597348413d3d, 0, 'paid', '2024-09-16 15:42:50');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `counselor_id` int(11) NOT NULL,
  `session_date` date NOT NULL,
  `session_time` time NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `notes` text DEFAULT NULL,
  `payment_status` enum('paid','unpaid') DEFAULT 'unpaid'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `client_id`, `counselor_id`, `session_date`, `session_time`, `created_at`, `notes`, `payment_status`) VALUES
(10, 3, 3, '2024-09-05', '09:00:00', '2024-09-14 15:54:48', 'Hello there! You have to take care of yourself', 'unpaid'),
(21, 3, 2, '2024-09-17', '09:30:00', '2024-09-15 04:45:05', NULL, 'paid'),
(24, 3, 2, '2024-09-19', '09:30:00', '2024-09-15 04:57:44', NULL, 'unpaid'),
(27, 3, 2, '2024-09-18', '09:40:00', '2024-09-15 05:09:10', NULL, 'paid'),
(28, 3, 3, '2024-09-18', '10:30:00', '2024-09-15 05:11:57', NULL, 'paid'),
(29, 3, 3, '2024-09-18', '09:30:00', '2024-09-16 10:58:00', NULL, 'paid'),
(30, 3, 6, '2024-09-19', '09:30:00', '2024-09-16 13:10:38', NULL, 'unpaid'),
(31, 3, 7, '2024-09-19', '22:30:00', '2024-09-16 15:41:51', NULL, 'paid');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','client') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `image` varchar(255) DEFAULT 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ57ZcfEJ1M2FoUe-4BneINLMpAb_ATqajDFQ&s',
  `hobbies` varchar(255) DEFAULT NULL,
  `is_married` tinyint(1) DEFAULT 0,
  `nationality` varchar(100) DEFAULT 'Pakistani'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`, `created_at`, `image`, `hobbies`, `is_married`, `nationality`) VALUES
(2, 'sajjadali', 'sajjadali@gmail.com', '$2y$10$jBx3OYNeJzo9/4K7Kxtcr.wO/9024nRMAW.w7PDe1fPjDmYLcVW5G', 'admin', '2024-09-14 13:23:45', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_9Jl86HEZ_C4NZHGC4EyZRBXcCClCI1ISdg&s', 'Reading books, Watch Movies', 0, 'Pakistani'),
(3, 'sajjada', 'khaskhelisajjadali6@gmail.com', '$2y$10$ktSe66dRnoLyrTUiqxF2lejmdAMBQeU7PsiecvUqqeZgWjpoglIKW', 'client', '2024-09-14 15:38:18', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ57ZcfEJ1M2FoUe-4BneINLMpAb_ATqajDFQ&s', NULL, 0, 'Pakistani'),
(4, 'shayan', 'shayan@gmail.com', '$2y$10$hc7Q2Cucd5jIh8VXHBt64uLFg8uUN4jreZjFiyuTZkzo2oMYDEz.u', 'client', '2024-09-14 16:00:36', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ57ZcfEJ1M2FoUe-4BneINLMpAb_ATqajDFQ&s', NULL, 0, 'Pakistani');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `counselors`
--
ALTER TABLE `counselors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `counselor_id` (`counselor_id`);

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
-- AUTO_INCREMENT for table `counselors`
--
ALTER TABLE `counselors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`);

--
-- Constraints for table `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `sessions_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sessions_ibfk_2` FOREIGN KEY (`counselor_id`) REFERENCES `counselors` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
