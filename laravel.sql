-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2021 at 04:38 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
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
-- Table structure for table `keranjangs`
--

CREATE TABLE `keranjangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `keranjangs`
--

INSERT INTO `keranjangs` (`id`, `name`, `harga`, `created_at`, `updated_at`) VALUES
(1, 'Nasi Padang', '15000', '2021-11-29 23:44:59', '2021-11-29 23:44:59'),
(2, 'Nasi Uduk', '10000', '2021-11-29 23:47:14', '2021-11-29 23:47:14'),
(3, 'name', 'harga', '2021-11-30 00:32:25', '2021-11-30 00:32:25'),
(4, 'Cumi Bakar', '20000', '2021-11-30 00:33:05', '2021-11-30 00:33:05'),
(5, 'Cah Kailan', '11000', '2021-11-30 00:33:53', '2021-11-30 00:33:53'),
(6, 'Cah Kailan', '11000', '2021-11-30 00:34:01', '2021-11-30 00:34:01');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_11_29_120858_create_products_table', 1),
(6, '2021_11_30_060222_create_keranjangs_table', 2),
(7, '2021_11_30_060222_create_keranjang_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `harga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `image`, `harga`, `created_at`, `updated_at`) VALUES
(1, 'Cumi Tepung', 'cumi-tepung', 'https://img-global.cpcdn.com/recipes/7f629ba0d2676dc8/400x400cq70/photo.jpg', 10000, NULL, NULL),
(2, 'Cumi Bakar', 'cumi-bakar', 'http://resepkoki.id/wp-content/uploads/2017/02/Resep-Cumi-Bakar.jpg', 20000, '2021-11-29 12:29:45', '2021-11-29 12:29:45'),
(3, 'Cumi Cabe Goreng', 'cumi-cabe-goreng', 'https://img-global.cpcdn.com/recipes/7ee2c20392265df7/680x482cq70/cumi-crispy-bawang-pedas-cumi-cabe-garam-foto-resep-utama.jpg', 15000, '2021-11-29 12:31:22', '2021-11-29 12:31:22'),
(4, 'Cah Kailan', 'cah-kailan', 'https://img-global.cpcdn.com/recipes/9ecd0d1ba478ddf9/680x482cq70/cah-baby-kailan-bawang-putih-foto-resep-utama.jpg', 11000, '2021-11-29 12:31:22', '2021-11-29 12:31:22'),
(5, 'Tahu Goreng', 'tahu-goreng', 'https://i1.wp.com/resepkoki.id/wp-content/uploads/2018/08/Resep-Tahu-Goreng-Garing.jpg?fit=1424%2C1823&ssl=1', 13000, '2021-11-29 12:36:32', '2021-11-29 12:36:32'),
(6, 'Cah Taoge', 'cah-taoge', 'http://resepkoki.id/wp-content/uploads/2017/04/Resep-Tumis-tauge.jpg', 15000, '2021-11-29 12:37:07', '2021-11-29 12:37:07'),
(7, 'Kerang Bambu', 'kerang-bambu', 'https://s2.bukalapak.com/img/7404337371/large/Kerang_Bambu.png', 3000, '2021-11-29 12:32:41', '2021-11-29 12:32:41'),
(8, 'Udang Mayones', 'udang-mayones', 'https://asset.kompas.com/crops/I2ShitmlaiF0-ELlDiV8FMorBEM=/3x0:700x465/780x390/data/photo/2020/11/03/5fa1476504af0.jpg', 4000, '2021-11-29 12:32:41', '2021-11-29 12:32:41'),
(9, 'Nasi', 'nasi', 'https://image-cdn.medkomtek.com/EAMBp3WlXXJYTn6wmaiodxZHrDg=/1200x675/smart/klikdokter-media-buckets/medias/2305553/original/086320600_1557224843-Nasi-dan-Obesitas-Adakah-Hubungannya-By-Waraphong-Yuhun-Shutterstock.jpg', 4000, '2021-11-29 12:40:52', '2021-11-29 12:40:52'),
(10, 'Nasi Goreng', 'nasi-goreng', 'https://cdn0-production-images-kly.akamaized.net/-eH7yCUw-1f_HamKly6LCeaPxa8=/318x0:1598x1280/640x480/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/2730143/original/094669300_1550287561-rosalinda222_fried-2509089_1920.JPG', 11000, '2021-11-29 12:40:52', '2021-11-29 12:40:52');

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
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `keranjangs`
--
ALTER TABLE `keranjangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `keranjangs`
--
ALTER TABLE `keranjangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
