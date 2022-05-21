-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: sql11.freemysqlhosting.net
-- Generation Time: Oct 22, 2021 at 06:26 AM
-- Server version: 5.5.62-0ubuntu0.14.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql11481869`
--

-- --------------------------------------------------------

--
-- Table structure for table `s824358843311063090`
--

CREATE TABLE `s824358843311063090` (
  `user_id` bigint(20) DEFAULT NULL,
  `study_time` int(11) DEFAULT NULL,
  `work_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `s827575208859926529`
--

CREATE TABLE `s827575208859926529` (
  `user_id` bigint(20) DEFAULT NULL,
  `study_time` int(11) DEFAULT NULL,
  `work_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `servers_settings`
--

CREATE TABLE `servers_settings` (
  `server_id` bigint(20) DEFAULT NULL,
  `prefix` varchar(5) DEFAULT NULL,
  `role_settings` tinyint(1) DEFAULT NULL,
  `auto_reset` tinyint(1) DEFAULT NULL,
  `next_reset` datetime DEFAULT NULL,
  `logs_channel_id` bigint(20) DEFAULT NULL,
  `reset_period` smallint(6) DEFAULT NULL,
  `language` varchar(10) NOT NULL DEFAULT 'en'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `timers`
--

CREATE TABLE `timers` (
  `user_id` bigint(20) DEFAULT NULL,
  `server_id` bigint(20) DEFAULT NULL,
  `channel_id` bigint(20) DEFAULT NULL,
  `timer_date` datetime DEFAULT NULL,
  `timer_duration` int(11) DEFAULT NULL,
  `break_duration` int(11) DEFAULT NULL,
  `timer_type` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` bigint(20) DEFAULT NULL,
  `total_timer1` int(11) DEFAULT NULL,
  `total_timer2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `s824358843311063090`
--
ALTER TABLE `s824358843311063090`
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `s827575208859926529`
--
ALTER TABLE `s827575208859926529`
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `servers_settings`
--
ALTER TABLE `servers_settings`
  ADD UNIQUE KEY `server_id` (`server_id`);

--
-- Indexes for table `timers`
--
ALTER TABLE `timers`
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `user_id` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
