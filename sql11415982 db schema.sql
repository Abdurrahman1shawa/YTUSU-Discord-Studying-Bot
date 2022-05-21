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
