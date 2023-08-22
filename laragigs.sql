-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2023 at 08:27 PM
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
-- Database: `laragigs`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `listings`
--

CREATE TABLE `listings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listings`
--

INSERT INTO `listings` (`id`, `user_id`, `title`, `logo`, `tags`, `company`, `location`, `email`, `website`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Painter', NULL, 'laravel, api, backend', 'Sipes PLC', 'Hicklebury', 'fflatley@wolf.com', 'https://www.mosciski.com/vero-dolores-enim-quisquam-itaque-dolor-quaerat-aliquam', 'Consequatur assumenda optio suscipit labore dolorem eos at. Sed doloribus adipisci quasi omnis illo aspernatur. Magnam earum molestiae itaque repudiandae. Ducimus officia nam inventore repellat delectus. Quod ad ex aut expedita. Corporis dolor nihil magni placeat distinctio cumque quia. Laboriosam possimus quas incidunt hic totam. Id qui ipsam praesentium aut voluptatibus.', '2023-08-21 16:27:15', '2023-08-21 16:27:15'),
(2, 1, 'Storage Manager OR Distribution Manager', NULL, 'laravel, api, backend', 'Howell-Davis', 'Matildaport', 'zechariah.sawayn@willms.biz', 'http://block.info/repellat-doloremque-ut-quia', 'Voluptate facere sapiente consectetur sed. Vitae error molestias temporibus. Aliquam architecto eum dolor soluta tempore qui praesentium. Tempora recusandae dolorem iste eum. Dolorem culpa at architecto ut autem rem praesentium autem. Rerum id sapiente corrupti vitae aspernatur. At dolor ut et maxime perspiciatis blanditiis reiciendis. Vel deserunt voluptas accusamus voluptas.', '2023-08-21 16:27:15', '2023-08-21 16:27:15'),
(3, 1, 'Skin Care Specialist', NULL, 'laravel, api, backend', 'Okuneva-Cartwright', 'Ronnyborough', 'bgutkowski@wiegand.com', 'http://braun.biz/', 'Beatae quia iste dolor reprehenderit sit id. Et impedit enim fugiat. Aut quia laboriosam sint facere in eveniet. Incidunt vel est animi aut distinctio nisi aspernatur. Dolorem ut molestias eligendi libero. Ut id at non et mollitia et nihil. Ea ut ut ipsam modi amet tempora.', '2023-08-21 16:27:15', '2023-08-21 16:27:15'),
(4, 1, 'Silversmith', NULL, 'laravel, api, backend', 'Hermiston-Wunsch', 'Schambergertown', 'ebuckridge@ruecker.com', 'http://gerhold.com/et-dolorem-tempora-dicta-esse', 'Earum unde beatae dolorem temporibus. Enim doloremque et aut cupiditate quo. Ipsa aliquam sed dolorum id corporis corrupti. Consequatur et id sunt eum itaque consequatur. Sed iure blanditiis omnis quam reiciendis.', '2023-08-21 16:27:15', '2023-08-21 16:27:15'),
(5, 1, 'Microbiologist', NULL, 'laravel, api, backend', 'Rohan-Volkman', 'East Ruthiefort', 'howell.guido@bayer.com', 'http://www.quigley.biz/deleniti-aut-culpa-sed-magnam-nulla-qui-nulla', 'Quis maiores blanditiis labore officia ea quod qui. Qui eum vel voluptatem vel ipsa soluta maiores. Distinctio distinctio pariatur voluptas eius eos. Reprehenderit corporis facere ipsa deleniti id vel. Est velit temporibus voluptatem sit. Iste aspernatur animi quas molestiae. Quaerat dolor vitae veniam voluptatem magni aut.', '2023-08-21 16:27:15', '2023-08-21 16:27:15'),
(6, 1, 'Heat Treating Equipment Operator', NULL, 'laravel, api, backend', 'Hamill and Sons', 'Daijatown', 'qbayer@bosco.net', 'http://senger.com/debitis-officia-perferendis-repellat-nostrum-nihil', 'Qui error sit sit animi repudiandae itaque. Numquam ducimus culpa eius numquam. Voluptates corrupti assumenda quis recusandae sit provident praesentium. Deleniti vel voluptates velit quia. Optio occaecati cupiditate eos fuga corrupti aut. Voluptas illo laboriosam qui fugiat. Consequatur ut autem sunt voluptas animi.', '2023-08-21 16:27:15', '2023-08-21 16:27:15'),
(7, 2, 'Senior Laravel Devoloper', 'logos/xHe52V4bivZMG7vdqLpGArtBOkWWWd6Mg1R3AsUr.png', 'HTML, CSS, ReactJS, Laravel, OOP', 'ACME corp', 'UK', 'ammar@gmail.com', 'https://acme.com', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro corporis laboriosam fuga deleniti eligendi modi exercitationem? Doloremque nulla veritatis illum explicabo repellendus quisquam nisi. Magnam dolor voluptate quis cum. Reprehenderit?', '2023-08-21 16:43:48', '2023-08-21 17:04:13');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(56, '2014_10_12_000000_create_users_table', 1),
(57, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(58, '2019_08_19_000000_create_failed_jobs_table', 1),
(59, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(60, '2023_08_18_162820_create_listings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'john@gmail.com', '2023-08-21 16:27:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8ID4KpvGBb', '2023-08-21 16:27:15', '2023-08-21 16:27:15'),
(2, 'eslam', 'eslam@gmail.com', NULL, '$2y$10$EmSzWFeFKjYZD82zzr86JedJ7V3yc7nqd9lMC.s1hPRspP1hyOpHe', NULL, '2023-08-21 16:34:24', '2023-08-21 16:34:24'),
(3, 'Salem', 'salem@gmail.com', NULL, '$2y$10$02mMVytUhAQO7hAuOiYde.VUouFfkDIQbSrEFx/e9HFuYiDGnZW6O', NULL, '2023-08-22 13:32:01', '2023-08-22 13:32:01'),
(4, 'ahmed', 'ahmed@gmail.com', NULL, '$2y$10$787pjaAu6A43r8wxNUnwtedzNQGRsSBjSuN1IOP6tVZuVdpaNMxU6', NULL, '2023-08-22 14:35:34', '2023-08-22 14:35:34'),
(5, 'hamada', 'hamada@gmail.com', NULL, '$2y$10$PMuFMge7eLjTm4i5lYasOe.bo3QfBxE1REIx9eLEO47qYn2LDrXVi', NULL, '2023-08-22 14:50:11', '2023-08-22 14:50:11'),
(6, 'ali', 'ali@gmail.com', NULL, '$2y$10$zMVJbOhu8kze3tqUq5KXaeBAxN1b9LUOQxXiwd4TmHE73OTngaDSq', NULL, '2023-08-22 14:54:03', '2023-08-22 14:54:03');

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
-- Indexes for table `listings`
--
ALTER TABLE `listings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listings_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `listings`
--
ALTER TABLE `listings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `listings`
--
ALTER TABLE `listings`
  ADD CONSTRAINT `listings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
