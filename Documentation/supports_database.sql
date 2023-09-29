-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2023 at 08:44 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `supports_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `info_details`
--

CREATE TABLE `info_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `surname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `mobile` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `interest` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `info_details`
--

INSERT INTO `info_details` (`id`, `surname`, `email`, `email_verified_at`, `mobile`, `gender`, `city`, `interest`, `created_at`, `updated_at`) VALUES
(1, 'surname', 'email', '0000-00-00 00:00:00', 'mobile', 'gender', 'city', 'interest', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'surname', 'emaile', '0000-00-00 00:00:00', 'mobile', 'gender', 'city', 'interest', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'surname', 'emailc', '0000-00-00 00:00:00', 'mobile', 'gender', 'city', 'interest', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'surname', 'emdfdgdflc', '0000-00-00 00:00:00', 'mobile', 'gender', 'city', 'interest', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'surname', 'emaild', '0000-00-00 00:00:00', 'mobile', 'gender', 'city', 'interest', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'surname', 'emdfdfld', '0000-00-00 00:00:00', 'mobile', 'gender', 'city', 'interest', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'surname', 'edfdgflc', '0000-00-00 00:00:00', 'mobile', 'gender', 'city', 'interest', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'surname', 'emafgdflc', '0000-00-00 00:00:00', 'mobile', 'gender', 'city', 'interest', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_21_155700_create_tickets_table', 2),
(6, '2014_10_12_200000_add_two_factor_columns_to_users_table', 3),
(7, '2023_09_27_140941_create_sessions_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('BgTv1sYV2rRfr866uQBhAPIt7r8fxFyKtyiIIyHb', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicFlMcFVuVE9GS3FEbVBURDNGU1c2dmRWSE1RNlBDU2g2VFZGb2RVayI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jb21wbGV4Ijt9fQ==', 1696012997),
('Hsz5ZeAXLqL2f0BSDbLks7u2AJ6Ur0mbjeoWdmV9', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQUdJYUdzZlFTQlZ6Q01kb3hVdUJ3OTM3M0ltWUVIVmJrdnhHQUU2NCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNDoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3VzZXIvcHJvZmlsZSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI5OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvdGlja2V0cyI7fX0=', 1695926719);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `summary` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `location` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `name`, `email`, `category`, `summary`, `description`, `status`, `location`, `created_at`, `updated_at`) VALUES
(32, 'User1', 'lux_motsumi@yahoo.com', 'test', 'Test 55', 'Color Globe', 'New Ticket 3', 'Stevebauman\\Location\\Position::__set_state(array(\n   \'ip\' => \'66.102.0.0\',\n   \'countryName\' => \'United States\',\n   \'countryCode\' => \'US\',\n   \'regionCode\' => \'CA\',\n   \'regionName\' => \'California\',\n   \'cityName\' => \'Mountain View\',\n   \'zipCode\' => \'94043\',\n   \'isoCode\' => NULL,\n   \'postalCode\' => NULL,\n   \'latitude\' => \'37.422\',\n   \'longitude\' => \'-122.084\',\n   \'metroCode\' => NULL,\n   \'areaCode\' => \'CA\',\n   \'timezone\' => \'America/Los_Angeles\',\n   \'driver\' => \'Stevebauman\\\\Location\\\\Drivers\\\\IpApi\',\n))', '2023-09-27 18:08:34', '2023-09-27 18:08:34'),
(34, 'BiiiRK', 'luxmotsumi68@gmail.com', 'test', 'Test 55', 'Test 55', 'New Ticket 55', 'Stevebauman\\Location\\Position::__set_state(array(\n   \'ip\' => \'66.102.0.0\',\n   \'countryName\' => \'United States\',\n   \'countryCode\' => \'US\',\n   \'regionCode\' => \'CA\',\n   \'regionName\' => \'California\',\n   \'cityName\' => \'Mountain View\',\n   \'zipCode\' => \'94043\',\n   \'isoCode\' => NULL,\n   \'postalCode\' => NULL,\n   \'latitude\' => \'37.422\',\n   \'longitude\' => \'-122.084\',\n   \'metroCode\' => NULL,\n   \'areaCode\' => \'CA\',\n   \'timezone\' => \'America/Los_Angeles\',\n   \'driver\' => \'Stevebauman\\\\Location\\\\Drivers\\\\IpApi\',\n))', '2023-09-27 18:24:48', '2023-09-27 18:24:48'),
(35, 'BiiiRK', 'luxmotsumi67@gmail.com', 'test', 'Test 55', 'Test 1', 'New Ticket 5', 'Stevebauman\\Location\\Position::__set_state(array(\n   \'ip\' => \'66.102.0.0\',\n   \'countryName\' => \'United States\',\n   \'countryCode\' => \'US\',\n   \'regionCode\' => \'CA\',\n   \'regionName\' => \'California\',\n   \'cityName\' => \'Mountain View\',\n   \'zipCode\' => \'94043\',\n   \'isoCode\' => NULL,\n   \'postalCode\' => NULL,\n   \'latitude\' => \'37.422\',\n   \'longitude\' => \'-122.084\',\n   \'metroCode\' => NULL,\n   \'areaCode\' => \'CA\',\n   \'timezone\' => \'America/Los_Angeles\',\n   \'driver\' => \'Stevebauman\\\\Location\\\\Drivers\\\\IpApi\',\n))', '2023-09-27 18:26:40', '2023-09-27 18:26:40'),
(36, 'BiiiRK', 'luxmotsumi@gmail.com', 'Accounts', 'Test 55', 'Test 2', 'New Ticket 5', 'Stevebauman\\Location\\Position::__set_state(array(\n   \'ip\' => \'66.102.0.0\',\n   \'countryName\' => \'United States\',\n   \'countryCode\' => \'US\',\n   \'regionCode\' => \'CA\',\n   \'regionName\' => \'California\',\n   \'cityName\' => \'Mountain View\',\n   \'zipCode\' => \'94043\',\n   \'isoCode\' => NULL,\n   \'postalCode\' => NULL,\n   \'latitude\' => \'37.422\',\n   \'longitude\' => \'-122.084\',\n   \'metroCode\' => NULL,\n   \'areaCode\' => \'CA\',\n   \'timezone\' => \'America/Los_Angeles\',\n   \'driver\' => \'Stevebauman\\\\Location\\\\Drivers\\\\IpApi\',\n))', '2023-09-27 18:36:04', '2023-09-27 18:36:04'),
(38, 'Instructor', 'user3@gmail.com', 'Sales', 'Location', 'Test 1', 'New Ticket 46', 'Stevebauman\\Location\\Position::__set_state(array(\n   \'ip\' => \'66.102.0.0\',\n   \'countryName\' => \'United States\',\n   \'countryCode\' => \'US\',\n   \'regionCode\' => \'CA\',\n   \'regionName\' => \'California\',\n   \'cityName\' => \'Mountain View\',\n   \'zipCode\' => \'94043\',\n   \'isoCode\' => NULL,\n   \'postalCode\' => NULL,\n   \'latitude\' => \'37.422\',\n   \'longitude\' => \'-122.084\',\n   \'metroCode\' => NULL,\n   \'areaCode\' => \'CA\',\n   \'timezone\' => \'America/Los_Angeles\',\n   \'driver\' => \'Stevebauman\\\\Location\\\\Drivers\\\\IpApi\',\n))', '2023-09-28 15:45:10', '2023-09-28 15:45:10'),
(42, 'Instructor 3', 'user6@gmail.com', 'IT', 'Test 55', 'Test 55', 'New Ticket 49', 'Stevebauman\\Location\\Position::__set_state(array(\n   \'ip\' => \'66.102.0.0\',\n   \'countryName\' => \'United States\',\n   \'countryCode\' => \'US\',\n   \'regionCode\' => \'CA\',\n   \'regionName\' => \'California\',\n   \'cityName\' => \'Mountain View\',\n   \'zipCode\' => \'94043\',\n   \'isoCode\' => NULL,\n   \'postalCode\' => NULL,\n   \'latitude\' => \'37.422\',\n   \'longitude\' => \'-122.084\',\n   \'metroCode\' => NULL,\n   \'areaCode\' => \'CA\',\n   \'timezone\' => \'America/Los_Angeles\',\n   \'driver\' => \'Stevebauman\\\\Location\\\\Drivers\\\\IpApi\',\n))', '2023-09-28 15:50:07', '2023-09-28 15:50:07'),
(44, 'User8', 'user5@gmail.com', 'IT', 'Location', 'Color Globe', 'New Ticket 8', 'Stevebauman\\Location\\Position::__set_state(array(\n   \'ip\' => \'66.102.0.0\',\n   \'countryName\' => \'United States\',\n   \'countryCode\' => \'US\',\n   \'regionCode\' => \'CA\',\n   \'regionName\' => \'California\',\n   \'cityName\' => \'Mountain View\',\n   \'zipCode\' => \'94043\',\n   \'isoCode\' => NULL,\n   \'postalCode\' => NULL,\n   \'latitude\' => \'37.422\',\n   \'longitude\' => \'-122.084\',\n   \'metroCode\' => NULL,\n   \'areaCode\' => \'CA\',\n   \'timezone\' => \'America/Los_Angeles\',\n   \'driver\' => \'Stevebauman\\\\Location\\\\Drivers\\\\IpApi\',\n))', '2023-09-28 15:53:36', '2023-09-28 15:53:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Lux', 'luxmotsumi67@gmail.com', NULL, '$2y$10$Bol5N.CtPDlwTi7gajSljeCzAmkeVW91Ifq0ee8A1jTSaXApFpJ6y', NULL, NULL, NULL, NULL, '2023-09-27 13:23:42', '2023-09-27 13:23:42'),
(2, 'Malibongwe', 'user1@gmail.com', NULL, '$2y$10$4GVYQFyZcjIsVOGHVKA6F.5pcrzBptibRAoegFNbYcb7/BX9FPmYy', NULL, NULL, NULL, NULL, '2023-09-28 16:44:57', '2023-09-28 16:44:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `info_details`
--
ALTER TABLE `info_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `info_details_email_unique` (`email`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tickets_email_unique` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `info_details`
--
ALTER TABLE `info_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
