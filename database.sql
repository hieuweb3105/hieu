-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2026 at 12:39 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hieu.name.vn`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `account_id` int(1) NOT NULL,
  `account_username` varchar(255) NOT NULL,
  `account_password` varchar(255) NOT NULL,
  `role_id` int(1) NOT NULL,
  `account_email` varchar(255) DEFAULT NULL,
  `account_full_name` varchar(255) NOT NULL,
  `account_avatar` varchar(255) DEFAULT NULL,
  `account_banner` varchar(255) DEFAULT NULL,
  `account_bio` varchar(255) DEFAULT NULL,
  `account_gender` enum('nam','nữ','khác') NOT NULL,
  `account_google_id` varchar(255) DEFAULT NULL,
  `account_google_avatar` varchar(255) DEFAULT NULL,
  `account_last_online` datetime NOT NULL DEFAULT current_timestamp(),
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime DEFAULT NULL,
  `delete_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`account_id`, `account_username`, `account_password`, `role_id`, `account_email`, `account_full_name`, `account_avatar`, `account_banner`, `account_bio`, `account_gender`, `account_google_id`, `account_google_avatar`, `account_last_online`, `create_at`, `update_at`, `delete_at`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, 'admin@hieu.name.vn', 'Quản Trị Viên', NULL, NULL, '', 'nam', NULL, NULL, '2026-07-14 17:08:10', '2026-07-14 16:55:52', NULL, NULL),
(2, 'test01', '0e698a8ffc1a0af622c7b4db3cb750cc', 2, 'test01@hieu.name.vn', 'TEST 01', NULL, NULL, '', 'khác', NULL, NULL, '2026-07-14 17:08:10', '2026-07-14 16:55:52', NULL, NULL),
(3, 'user01', 'b75705d7e35e7014521a46b532236ec3', 3, 'user01@example.com', 'NGƯỜI DÙNG 01', NULL, NULL, '', 'nữ', NULL, NULL, '2026-07-14 17:08:10', '2026-07-14 16:56:54', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(1) NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime DEFAULT NULL,
  `delete_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role_name`, `create_at`, `update_at`, `delete_at`) VALUES
(1, 'admin', '2026-07-14 16:42:20', NULL, NULL),
(2, 'mod', '2026-07-14 16:42:53', NULL, NULL),
(3, 'user', '2026-07-14 16:42:53', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`account_id`),
  ADD KEY `fk_account_role` (`role_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `account_id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `fk_account_role` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
