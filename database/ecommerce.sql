-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 04, 2023 at 03:19 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_05_03_035839_create_sessions_table', 1),
(7, '2023_05_03_042614_create_carts_table', 1),
(8, '2023_05_03_042624_create_products_table', 1),
(9, '2023_05_03_042636_create_product_categories_table', 1),
(10, '2023_05_03_042649_create_product_galleries_table', 1),
(11, '2023_05_03_042704_create_transactions_table', 1),
(12, '2023_05_03_042711_create_transaction_items_table', 1),
(13, '2023_05_03_043241_add_roles_and_username_to_table_users', 1);

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
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'authToken', '828f90024a6dcd84c3d669a0c894bb13d7ddbe0e594f5a06594a2de52ce182d1', '[\"*\"]', NULL, NULL, '2023-05-04 06:28:39', '2023-05-04 06:28:39'),
(2, 'App\\Models\\User', 1, 'authToken', 'a160fa3274204fbe96de4c9becbace56d9f2ebab7de7235d003fd214364e1d7f', '[\"*\"]', '2023-05-04 06:39:21', NULL, '2023-05-04 06:33:16', '2023-05-04 06:39:21'),
(3, 'App\\Models\\User', 1, 'authToken', 'e519e28a139323349f15940cc751f77573de4383e2dd379adee82176cd23b234', '[\"*\"]', '2023-05-04 06:42:05', NULL, '2023-05-04 06:39:30', '2023-05-04 06:42:05'),
(4, 'App\\Models\\User', 1, 'authToken', '9dfec807b22c65a9bb5fe44e034417d7ca22ab984aa07b90bb8ab1501bfa30b4', '[\"*\"]', '2023-05-04 07:08:50', NULL, '2023-05-04 06:43:13', '2023-05-04 07:08:50');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories_id` bigint NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `description`, `tags`, `categories_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Adidas NMD', 200.00, 'Ini adalah sepatu sport', NULL, 1, NULL, '2021-04-15 02:16:06', '2021-04-15 02:16:06'),
(2, 'Ultra 4D 5 Shoes', 285.00, 'When the adidas Ultraboost debuted back\r\nin 2015, it had an impact that spilled beyond\r\nthe world of running. For this version of t...', NULL, 5, NULL, '2021-04-15 10:17:22', '2021-04-15 10:27:20'),
(3, 'SL 20 Shoes', 123.00, 'These adidas SL20 Shoes will back your play. \r\nLightweight cushioning gives you a faster \r\npush-off and a snappy feel.', NULL, 5, NULL, '2021-04-15 10:18:19', '2021-04-15 10:39:03'),
(4, 'Ultra 4D 5 Shoes', 285.00, 'When the adidas Ultraboost debuted back \r\nin 2015, it had an impact that spilled beyond \r\nthe world of running.', NULL, 5, NULL, '2021-04-15 10:18:51', '2021-04-15 10:40:20'),
(5, 'Ultraboots 20 Shoes', 206.00, 'Wear your values on your feet with these adi\r\ndas running shoes. Rocking the wild colours \r\nshows you\'re not shy about standing out.', NULL, 5, NULL, '2021-04-15 10:19:08', '2021-04-15 10:43:19'),
(6, 'LEGO® SPORT SHOES', 92.00, 'These shoes keep kids comfortable through\r\nplaytime, whether that means running around\r\non building universes out of bricks.', NULL, 4, NULL, '2021-04-15 10:20:03', '2021-05-04 07:33:37'),
(7, 'Fortarun Running Shoes 2020', 34.00, 'Whether they\'re headed to school, day care\r\nor the playground with friends, send them\r\nout in all-day foot support with these adidas.', NULL, 4, NULL, '2021-04-15 10:21:05', '2021-05-04 07:36:17'),
(8, 'Supernove Running Shoes', 83.00, 'Two kinds of cushioning in the midsole give\r\nyou flexibility and responsiveness right where\r\nyou need them.', NULL, 4, NULL, '2021-04-15 10:22:10', '2021-05-04 07:37:14'),
(9, 'Faito Summer.RDY Tokyo Shoes', 76.00, 'Whether you\'re running out the front door to\r\nlog a few miles or want to bring a running-\r\ninspired style statement to your everyday.', NULL, 4, NULL, '2021-04-15 10:22:39', '2021-05-04 07:38:53'),
(10, 'DAME 7 SHOES', 125.00, 'Show up in big game style whether you\'re trying out for the team or challenging a friend to some one-on-one in the park.', NULL, 3, NULL, '2021-05-04 07:40:05', '2021-05-04 11:52:12'),
(11, 'Pro boots low shoes', 57.00, 'The superlight midsole features an innovative\r\ndrop-in that provides outstanding energy \r\nreturn every time you plant.', NULL, 3, NULL, '2021-05-04 07:40:30', '2021-05-04 11:55:13'),
(12, 'D.O.N ISSUE 2.0 Shoes', 111.00, 'These signature shoes from Mitchell and\r\nadidas Basketball feature graphics that\r\nhighlight the young All-Star\'s style.', NULL, 3, NULL, '2021-05-04 11:35:31', '2021-05-04 11:56:00'),
(13, 'Harden Vol. 4 Shoes', 137.00, 'Most guys are finished by late in the fourth\r\nquarter. That\'s when James Harden is just\r\ngetting started.', NULL, 3, NULL, '2021-05-04 11:36:51', '2021-05-04 11:56:57'),
(14, 'Terrex urban low  Hiking Shoes', 143.00, 'Unpaved trails and mixed surfaces are easy\r\nwhen you have the traction and support you\r\nneed. Casual enough for the daily commute.', NULL, 2, NULL, '2021-05-04 11:37:22', '2021-05-04 11:59:49'),
(15, 'TERREX EASTRAIL HIKING SHOES', 54.00, 'Built for a stable feel and confident traction\r\non wet, uneven terrain. Stack up the trail\r\nmiles in these lightweight hiking shoes', NULL, 2, NULL, '2021-05-04 11:38:04', '2021-05-04 12:10:09'),
(16, 'TERREX AX3 HIKING SHOES', 83.00, 'GORE-TEX Upper Mesh and synthetic uppers\r\nwill encase each foot in durable comfort. \r\nContinental Rubber Outs', NULL, 2, NULL, '2021-05-04 11:38:29', '2021-05-04 12:14:10'),
(17, 'TERREX TRAILMAKER HIKING SHOES', 34.00, 'The adidas Terrex Trailmaker Hiking Shoes\r\nblend responsive running-shoe design with\r\ntrail-shoe support.', NULL, 2, NULL, '2021-05-04 11:38:53', '2021-05-04 12:04:09');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Sport', NULL, '2021-04-15 02:15:27', '2021-04-15 02:15:27'),
(2, 'Hiking', NULL, '2021-04-15 02:15:33', '2021-04-15 02:15:33'),
(3, 'Basketball', NULL, '2021-04-15 10:09:12', '2021-04-15 10:09:12'),
(4, 'Training', NULL, '2021-04-15 10:12:34', '2021-04-15 10:21:21'),
(5, 'Running', NULL, '2021-04-15 10:12:44', '2021-04-15 10:12:44'),
(6, 'All Shoes', NULL, '2021-04-15 10:14:25', '2021-04-15 10:14:25');

-- --------------------------------------------------------

--
-- Table structure for table `product_galleries`
--

CREATE TABLE `product_galleries` (
  `id` bigint UNSIGNED NOT NULL,
  `products_id` bigint NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_galleries`
--

INSERT INTO `product_galleries` (`id`, `products_id`, `url`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 'public/gallery/sW4VtliQPYnwvlbpxL5x6ZhKvbgBWT84OoiDyRsE.png', NULL, '2021-04-15 10:30:43', '2021-04-15 10:30:43'),
(2, 2, 'public/gallery/ESsUP5CCJDFU9M2VENusfqpNTMnTmhaBJ1aXgObY.png', NULL, '2021-04-15 10:30:43', '2021-04-15 10:30:43'),
(3, 2, 'public/gallery/XraXaJ1wpPTxKLiu7aeUNeS6ahKzcbXNDEdaoDhl.png', NULL, '2021-04-15 10:30:43', '2021-04-15 10:30:43'),
(4, 2, 'public/gallery/dZCrPlwJFELXoLijEN54znQEdVHrR5XYJ2JJF9fz.png', NULL, '2021-04-15 10:30:43', '2021-04-15 10:30:43'),
(5, 2, 'public/gallery/aG8N8BxYfrsFCNrS4Dy0dzRFJ8kGSeq0YfcBG5Y1.png', NULL, '2021-04-15 10:30:43', '2021-04-15 10:30:43'),
(6, 2, 'public/gallery/eCb0D1Co2QPkxBgHnNkug8sCPZK4Cqo2pfRxxXbC.png', NULL, '2021-04-15 10:30:43', '2021-04-15 10:30:43'),
(7, 3, 'public/gallery/MUwSao1nhz93t143rnGukQ3n3zsQOzT7bds6LaNL.png', NULL, '2021-05-04 07:23:36', '2021-05-04 07:23:36'),
(8, 3, 'public/gallery/ypjT3Q93S4m4JJZU1AmFSvKGlYkzEozgquMuDlEl.png', NULL, '2021-05-04 07:23:36', '2021-05-04 07:23:36'),
(9, 3, 'public/gallery/TpHwMvS5Qt16ZrWGCNvRig06Hil1KC32nhfytqJr.png', NULL, '2021-05-04 07:23:36', '2021-05-04 07:23:36'),
(10, 3, 'public/gallery/790HDAkKC716Yz3mhY8dLpb1YprJbJcAyFSV9jfj.png', NULL, '2021-05-04 07:23:36', '2021-05-04 07:23:36'),
(11, 3, 'public/gallery/OnoxNehpuncIDkrxLjkIuwvLk5ZhOoA0w7jqPpYo.png', NULL, '2021-05-04 07:23:36', '2021-05-04 07:23:36'),
(12, 3, 'public/gallery/mUgYSLli5dluYD7RN0f0ATJqG3A3JwwWYRP9S0l6.png', NULL, '2021-05-04 07:23:36', '2021-05-04 07:23:36'),
(13, 4, 'public/gallery/qFURuaDw1Q50uD6x4iBY2vSHOCj4J7L2P5kJbj2Q.png', NULL, '2021-05-04 07:24:38', '2021-05-04 07:24:38'),
(14, 4, 'public/gallery/1GdKEYEWsSLWAfPBYA0SadJDiN8mTysVeXlQJdPn.png', NULL, '2021-05-04 07:24:38', '2021-05-04 07:24:38'),
(15, 4, 'public/gallery/X6mVmUz9WJeReWF8VEWSUmGv2FGrsYPRdQjZx2GE.png', NULL, '2021-05-04 07:24:38', '2021-05-04 07:24:38'),
(16, 4, 'public/gallery/Dvx61EybFLptTyacEOsQXUTMIRxv23zKVX0kYOqP.png', NULL, '2021-05-04 07:24:38', '2021-05-04 07:24:38'),
(17, 4, 'public/gallery/Apzm7xatqXoWDCk11BkeifpEc9tJKrQgjTEeY9qN.png', NULL, '2021-05-04 07:24:38', '2021-05-04 07:24:38'),
(18, 4, 'public/gallery/jLfKPCiFi3iamxOfxanObW7o24iHVldFLDjI7RQe.png', NULL, '2021-05-04 07:24:38', '2021-05-04 07:24:38'),
(19, 5, 'public/gallery/c9SCBcdBsTGg0denYuTrUhudkY0TrrXqe3ef5cnk.png', NULL, '2021-05-04 07:25:28', '2021-05-04 07:25:28'),
(20, 5, 'public/gallery/u2yGoCdP1tcu3z5X672fXO8RQKCeXVhiaRvksWQN.png', NULL, '2021-05-04 07:25:28', '2021-05-04 07:25:28'),
(21, 5, 'public/gallery/IzeGtHfVqz4PaCZJQwuZSA4kp7TbZ75SxSKEvLwm.png', NULL, '2021-05-04 07:25:28', '2021-05-04 07:25:28'),
(22, 5, 'public/gallery/Q14TGPSj8xDd3Qdlk4H36kk2XSnneHorALvBibVq.png', NULL, '2021-05-04 07:25:28', '2021-05-04 07:25:28'),
(23, 5, 'public/gallery/kG9M8bitYoL3bklD5WjM8qjl7lyr4iv4YM0Uwd2c.png', NULL, '2021-05-04 07:25:28', '2021-05-04 07:25:28'),
(24, 5, 'public/gallery/EO6AVZfnniMiMlAe3wqkSWKYs9GgrVsnB3NYu5Ag.png', NULL, '2021-05-04 07:25:28', '2021-05-04 07:25:28'),
(25, 6, 'public/gallery/XYbi0Tp87wf5kLvzC5GxJlFKP0YdCi7eh8G5PMjS.png', NULL, '2021-05-04 07:26:32', '2021-05-04 07:26:32'),
(26, 6, 'public/gallery/lVdI2v3PjixwUU8xz8Zqv0yBaPQ2CMCuQHhjuC9K.png', NULL, '2021-05-04 07:26:32', '2021-05-04 07:26:32'),
(27, 6, 'public/gallery/Szl5Nu8oNAUH0l7XldPQxIOKLzGZ827oPHnUOxzB.png', NULL, '2021-05-04 07:26:32', '2021-05-04 07:26:32'),
(28, 6, 'public/gallery/XQVrG0hujZhGILIMzFmma5mZe1Noi3GlWLHo8ImS.png', NULL, '2021-05-04 07:26:32', '2021-05-04 07:26:32'),
(29, 6, 'public/gallery/LAPcmx2zKHS8fiuTncNmaTZxfIxwryaon5A0IKea.png', '2021-05-04 07:26:39', '2021-05-04 07:26:32', '2021-05-04 07:26:39'),
(30, 6, 'public/gallery/w3nUzuGE0HQhT0VwtWQt83XiU6150TXWIKzF9Qrq.png', NULL, '2021-05-04 07:26:32', '2021-05-04 07:26:32'),
(31, 6, 'public/gallery/BtnLPXafDx5MmH1leGM7KyU2rN1MEJBYdtvOZA0k.png', NULL, '2021-05-04 07:26:32', '2021-05-04 07:26:32'),
(32, 7, 'public/gallery/hScbD2WYpPV2Cduxa579cR12xlUWC7260jEVkSzj.png', '2021-05-04 07:27:51', '2021-05-04 07:27:11', '2021-05-04 07:27:51'),
(33, 7, 'public/gallery/1wpSewvlFXFs290PnK4H0y61LxWLtRqUJnCcY2rf.png', '2021-05-04 07:27:51', '2021-05-04 07:27:11', '2021-05-04 07:27:51'),
(34, 7, 'public/gallery/QOcB4MFYLPzBRligBq4sBKCxa5jNPJGGUK845WVR.png', '2021-05-04 07:27:56', '2021-05-04 07:27:11', '2021-05-04 07:27:56'),
(35, 7, 'public/gallery/JBZIm95hybdZz2B6XlJq2v9hfpX1ppnKdjaWazwz.png', '2021-05-04 07:27:56', '2021-05-04 07:27:11', '2021-05-04 07:27:56'),
(36, 7, 'public/gallery/LhdN0uvRM8hb32RYqlxNH4ydvXuBKL3wnQID5VGS.png', '2021-05-04 07:27:55', '2021-05-04 07:27:11', '2021-05-04 07:27:55'),
(37, 7, 'public/gallery/oTmNxsUyB7ByKUoKhhgVNqOP6jK4y64xTqNnbrtg.png', '2021-05-04 07:27:54', '2021-05-04 07:27:11', '2021-05-04 07:27:54'),
(38, 7, 'public/gallery/MzhR0xpvB6zYSXKNksVJ6aIjXDb3CWo6p5egXUUZ.png', '2021-05-04 07:29:17', '2021-05-04 07:28:09', '2021-05-04 07:29:17'),
(39, 7, 'public/gallery/YwW4wNL22f3Hd3jYnZiqpEmfP1qK2Bqm912w4H6E.png', '2021-05-04 07:29:18', '2021-05-04 07:28:09', '2021-05-04 07:29:18'),
(40, 7, 'public/gallery/QR0oz5YUthRsPz1PAW8aJJ7FAvR2dVhA8dDBwMJN.png', '2021-05-04 07:29:21', '2021-05-04 07:28:09', '2021-05-04 07:29:21'),
(41, 7, 'public/gallery/0mZSWCQtXfiGzf1gH5uqI5o4jlyUkSxrOmjPCUbA.png', '2021-05-04 07:29:21', '2021-05-04 07:28:09', '2021-05-04 07:29:21'),
(42, 7, 'public/gallery/CTtoA6xervJUiIvk0E5zmD2JgrbjdCz9OBh2gdBw.png', '2021-05-04 07:29:20', '2021-05-04 07:28:09', '2021-05-04 07:29:20'),
(43, 7, 'public/gallery/JCk5ShoAe2GRlR4Yvn63fyuoze2FXFEM4RobuxQd.png', '2021-05-04 07:29:20', '2021-05-04 07:28:09', '2021-05-04 07:29:20'),
(44, 8, 'public/gallery/gLgH5SDUGrQNP0HkYWTr87LC497EW039LNPCms90.png', NULL, '2021-05-04 07:29:36', '2021-05-04 07:29:36'),
(45, 8, 'public/gallery/645jUMcrYWMhphBRGTsX2ZJzBe7JZhcDcEZMNS4M.png', NULL, '2021-05-04 07:29:36', '2021-05-04 07:29:36'),
(46, 8, 'public/gallery/0YPzKg685DRjvVLsaPumz1t7j1QRMyW5GJbcUdOV.png', NULL, '2021-05-04 07:29:36', '2021-05-04 07:29:36'),
(47, 8, 'public/gallery/UUOeRtPYbwRoyimhZzK0FcEOfeMMbGetuRuY41QY.png', NULL, '2021-05-04 07:29:36', '2021-05-04 07:29:36'),
(48, 8, 'public/gallery/c4BD6bYKpXq5EKhx0pEJLehbzexXToEBk3A6HpOs.png', NULL, '2021-05-04 07:29:36', '2021-05-04 07:29:36'),
(49, 8, 'public/gallery/WAczik636z63hiXK3KyIz9PFGgxTjxMq2fYfR42E.png', NULL, '2021-05-04 07:29:36', '2021-05-04 07:29:36'),
(50, 7, 'public/gallery/3zZbek9csRbVli6YNp6eyprU0AcwtCOUqo8SnvGj.png', NULL, '2021-05-04 07:30:16', '2021-05-04 07:30:16'),
(51, 7, 'public/gallery/l1uCVNTynsM9JlXtJtqNtaFamdbISNRdFN4S8uTM.png', NULL, '2021-05-04 07:30:16', '2021-05-04 07:30:16'),
(52, 7, 'public/gallery/dYrEbp7xexd4LFkCm0cFYdGbt8LUMjlS8v6IDJow.png', NULL, '2021-05-04 07:30:16', '2021-05-04 07:30:16'),
(53, 7, 'public/gallery/jQ59oaXzFUTooQQksfz3YHUChIJwWKhZYdZMSKjO.png', NULL, '2021-05-04 07:30:16', '2021-05-04 07:30:16'),
(54, 7, 'public/gallery/MZB5bUC7ejdyDEeQ9PYhkLmyQgHIfWoM7RL8RyFi.png', NULL, '2021-05-04 07:30:16', '2021-05-04 07:30:16'),
(55, 7, 'public/gallery/jywHbOFNbOn6FlDfRPpZtKG2iXhtL1CW9w94KAry.png', NULL, '2021-05-04 07:30:16', '2021-05-04 07:30:16'),
(56, 9, 'public/gallery/NESrP9wKlmCS71gXGwBaHDZWodXkrBGnNkJsnwjI.png', NULL, '2021-05-04 07:30:53', '2021-05-04 07:30:53'),
(57, 9, 'public/gallery/FmP0uF4O2Cf0NTC9yZpgkBsMXLESo5wd3yfXX7JG.png', NULL, '2021-05-04 07:30:53', '2021-05-04 07:30:53'),
(58, 9, 'public/gallery/c0D9t7RQODbezeIHiAZ1dhlsaMbWcPv8eNfNG1NA.png', NULL, '2021-05-04 07:30:53', '2021-05-04 07:30:53'),
(59, 9, 'public/gallery/Bwlaa32z7XrYPCdyr6fyrHFfPPxsYqgTXLiaxd2X.png', NULL, '2021-05-04 07:30:53', '2021-05-04 07:30:53'),
(60, 9, 'public/gallery/y8ZwOtxTipVnRghgVeCj83S1eXDu8iZIhQoYOQO9.png', NULL, '2021-05-04 07:30:53', '2021-05-04 07:30:53'),
(61, 9, 'public/gallery/IDAKMX25RuNmqqLkHIunbTHo1ouS72rtHBJZImSx.png', NULL, '2021-05-04 07:30:53', '2021-05-04 07:30:53'),
(62, 10, 'public/gallery/YQHYOz4y5NRrDm8r6ngF7ssVMEUTdPb30mFq2dLm.png', NULL, '2021-05-04 11:43:14', '2021-05-04 11:43:14'),
(63, 10, 'public/gallery/M4h5l656VhQKR64bgRyIeux1yZpLDxGOpM5gpgPA.png', NULL, '2021-05-04 11:43:14', '2021-05-04 11:43:14'),
(64, 10, 'public/gallery/88aLFwFs4JoxQjdYydbpkJ9wpAS7azZVuQaBEY43.png', NULL, '2021-05-04 11:43:14', '2021-05-04 11:43:14'),
(65, 10, 'public/gallery/Z20EKmAKx6FRD6DDR1om2jAv8We8wjY5QwQo5TzA.png', NULL, '2021-05-04 11:43:14', '2021-05-04 11:43:14'),
(66, 10, 'public/gallery/5OptzcHlYUBbBFjvnxIaCTWwL3Qmsar2J05IXiLr.png', NULL, '2021-05-04 11:43:14', '2021-05-04 11:43:14'),
(67, 10, 'public/gallery/ePKMdaszrkhK8zVXCFEeqR2cDZebhogO2flpx7Ky.png', NULL, '2021-05-04 11:43:14', '2021-05-04 11:43:14'),
(68, 12, 'public/gallery/dzF9cWN45AWvmvhRpDdoeulXSr45m6lTBB5bDKYS.png', NULL, '2021-05-04 11:44:49', '2021-05-04 11:44:49'),
(69, 12, 'public/gallery/Wew0DogWeaCG0YLwLYzCJi2JIAmnEJhbKBkHoITG.png', NULL, '2021-05-04 11:44:49', '2021-05-04 11:44:49'),
(70, 12, 'public/gallery/4GMLx75LlaGVqae60RCiDvuUxkG5jlEvzzNC3jA7.png', NULL, '2021-05-04 11:44:49', '2021-05-04 11:44:49'),
(71, 12, 'public/gallery/rz1igOAWiyTCaLv8cgMiNdcE66E46xw29Pfbx9po.png', NULL, '2021-05-04 11:44:49', '2021-05-04 11:44:49'),
(72, 12, 'public/gallery/5B5GlsNMHwtEYwKBktMiM5QmD0Y6HxjZT3OtLbeM.png', NULL, '2021-05-04 11:44:49', '2021-05-04 11:44:49'),
(73, 12, 'public/gallery/3kAA8cjoJTOwL6EurjDG3S6BU1tGdBM5aqht3o6P.png', NULL, '2021-05-04 11:44:49', '2021-05-04 11:44:49'),
(74, 11, 'public/gallery/8PgnXVnKdP7CxA9964a471VjLW5w7NebyIIYLxWO.png', NULL, '2021-05-04 11:45:34', '2021-05-04 11:45:34'),
(75, 11, 'public/gallery/lt5vTvAy43qTFwTmtM8oOzRgUC6VBL1NThjBYRmE.png', NULL, '2021-05-04 11:45:34', '2021-05-04 11:45:34'),
(76, 11, 'public/gallery/SvbtpI8FRwn1WcPHatgANVdwsuWGWMHlph3fF0Vg.png', NULL, '2021-05-04 11:45:34', '2021-05-04 11:45:34'),
(77, 11, 'public/gallery/dpyuy0z2X0sQbkpEQ6xtmluhDBGztFGhPGHmD3RG.png', NULL, '2021-05-04 11:45:34', '2021-05-04 11:45:34'),
(78, 11, 'public/gallery/YqmGv70Th5htQoVvYX9fhPJrhwpi1GAZ1ntycKmr.png', NULL, '2021-05-04 11:45:34', '2021-05-04 11:45:34'),
(79, 11, 'public/gallery/7R55a60B9hRvsThaA1B4GtyxunvPHq1LimvK6kFq.png', NULL, '2021-05-04 11:45:34', '2021-05-04 11:45:34'),
(80, 13, 'public/gallery/UB6Hud677C0XcZRb9GXcJZLhkkkXtSI8QIOvMDzO.png', NULL, '2021-05-04 11:46:41', '2021-05-04 11:46:41'),
(81, 13, 'public/gallery/oVsmhP6fqoDcwgIrv0N7dGDxv8gISDbH8Oq9sPGX.png', NULL, '2021-05-04 11:46:41', '2021-05-04 11:46:41'),
(82, 13, 'public/gallery/84sfU4r74fjqtUgBFWU5YH511MsmqtfGWS0A8TzZ.png', NULL, '2021-05-04 11:46:41', '2021-05-04 11:46:41'),
(83, 13, 'public/gallery/64xbpGIm62Lparx8wOwMOIZupCoVoUgDeQs89aWX.png', NULL, '2021-05-04 11:46:41', '2021-05-04 11:46:41'),
(84, 13, 'public/gallery/6GN1PAGdU0ntATOe0OEgLvFUPeqF4ADbs7tcciXs.png', NULL, '2021-05-04 11:46:41', '2021-05-04 11:46:41'),
(85, 13, 'public/gallery/Tj9dASovJQO17dELPYToBuzWMmnvFbdOJEvXfvpS.png', NULL, '2021-05-04 11:46:41', '2021-05-04 11:46:41'),
(86, 14, 'public/gallery/b96xpO10KGYt6dW6vYIQfr7QOJmbvXQo8iQI16vj.png', NULL, '2021-05-04 11:48:15', '2021-05-04 11:48:15'),
(87, 14, 'public/gallery/IfFaceaymXMzPBhYpe7kwFFHdRzG4Oao7L80lxjF.png', NULL, '2021-05-04 11:48:15', '2021-05-04 11:48:15'),
(88, 14, 'public/gallery/TGaMlw7PXNsQqTwXVxk6bRdbwwLN8Cr1dUWhwY5p.png', NULL, '2021-05-04 11:48:15', '2021-05-04 11:48:15'),
(89, 14, 'public/gallery/qN80yZuZSH0ttmbWcjuxe5x9EX6PCVS1NmJSzyHm.png', NULL, '2021-05-04 11:48:15', '2021-05-04 11:48:15'),
(90, 14, 'public/gallery/oSKGFne9QnmnxHRasn6HgVXqzODQpw3P0wZeCcSC.png', NULL, '2021-05-04 11:48:15', '2021-05-04 11:48:15'),
(91, 14, 'public/gallery/fyM8v6IxoZetItazb5TD44fJLyHmd938PP9kUxM9.png', NULL, '2021-05-04 11:48:15', '2021-05-04 11:48:15'),
(92, 15, 'public/gallery/SqUULXkmKLu40B4cVnfnYiCFnw44TR1PmZOgWWvf.png', NULL, '2021-05-04 11:49:21', '2021-05-04 11:49:21'),
(93, 15, 'public/gallery/NNwXNbpRtHc5Cbczw1Y2iwbZIERAXtM2BhjUxDhc.png', NULL, '2021-05-04 11:49:21', '2021-05-04 11:49:21'),
(94, 15, 'public/gallery/KXhNCNdbPCNTjbgQX29f7myTL1LnvkzW2zM2vWwm.png', NULL, '2021-05-04 11:49:21', '2021-05-04 11:49:21'),
(95, 15, 'public/gallery/Ga6KcCukUNWmNM5kArfZNi9uqHhaeoUcFUNPZoDZ.png', NULL, '2021-05-04 11:49:21', '2021-05-04 11:49:21'),
(96, 15, 'public/gallery/0uQYkvALkdYdQY7OTmLbDQJIoVL044iqWCGEoCkh.png', NULL, '2021-05-04 11:49:21', '2021-05-04 11:49:21'),
(97, 15, 'public/gallery/UZc0qDBNsKqYHJI4v9adCLKaH3NmFoFaM6FXDbcT.png', NULL, '2021-05-04 11:49:21', '2021-05-04 11:49:21'),
(98, 17, 'public/gallery/w9DhdAdrh5BjTHZawMvonKTzLR9bUWRfUynbeslT.png', NULL, '2021-05-04 11:49:46', '2021-05-04 11:49:46'),
(99, 17, 'public/gallery/YYsmpkkuXNSkxc9lE2JKG64TXY3LgZ72dBhlBrRP.png', NULL, '2021-05-04 11:49:46', '2021-05-04 11:49:46'),
(100, 17, 'public/gallery/JqWUVUrwC8dHm0Kv2hMo6yNdTIrxVtSJqLVDcXOt.png', NULL, '2021-05-04 11:49:46', '2021-05-04 11:49:46'),
(101, 17, 'public/gallery/FwYy22FBuCJMBzg4TTbHZz0LLjYiVsQLhzfB4omC.png', NULL, '2021-05-04 11:49:46', '2021-05-04 11:49:46'),
(102, 17, 'public/gallery/MGRkzQDllJefDpXXBmUE8IxAfe0HAdQzzs3XbkXK.png', NULL, '2021-05-04 11:49:46', '2021-05-04 11:49:46'),
(103, 17, 'public/gallery/MHoxHNpcxGDZTG8f5vlutBG8mxAya0YeDVSqwTfo.png', NULL, '2021-05-04 11:49:46', '2021-05-04 11:49:46'),
(104, 16, 'public/gallery/YfkNtUQcTkiYrjI1NsxbY27Qb0UjchQX0jQeZtym.png', NULL, '2021-05-04 11:50:13', '2021-05-04 11:50:13'),
(105, 16, 'public/gallery/fgwNZHBIaCeWJKCtv7CgibNTQgBXi5FPbJF84O9A.png', NULL, '2021-05-04 11:50:13', '2021-05-04 11:50:13'),
(106, 16, 'public/gallery/QMGe9BsqcOq1UO2qCtj3PuvmpNI3PRPYGM2qf7R1.png', NULL, '2021-05-04 11:50:13', '2021-05-04 11:50:13'),
(107, 16, 'public/gallery/j64FbXsWKJVHyMpZ7TBhxlXme2eKSZ8ETRlfDVuC.png', NULL, '2021-05-04 11:50:13', '2021-05-04 11:50:13'),
(108, 16, 'public/gallery/E5PH9qPFVzKhfKmSeCz70VWCUZjGhl9uF4gXD0l4.png', NULL, '2021-05-04 11:50:13', '2021-05-04 11:50:13'),
(109, 16, 'public/gallery/1CVv4vw7NfXvUPpWsWAvx41KlR1FNKmNT7Nt5Qyu.png', NULL, '2021-05-04 11:50:13', '2021-05-04 11:50:13');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('x2JMmwKQKpYVb05vYSRGLJPr5qYoLidZe9cBA0n7', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVkFCZkNIWjQ4WXBQb3prcEtwRGxtNDJmZXJ5V0cxb0hHbDRJOFR4ViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9lY29tbWVyY2UudGVzdC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1683207890);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `users_id` bigint NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `total_price` double(8,2) NOT NULL DEFAULT '0.00',
  `shipping_price` double(8,2) NOT NULL DEFAULT '0.00',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDING',
  `payment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'MANUAL',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `users_id`, `address`, `total_price`, `shipping_price`, `status`, `payment`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Kota Cimahi', 2000.00, 100.00, 'SUCCESS', 'MANUAL', NULL, '2021-04-15 02:11:14', '2021-04-15 02:11:52'),
(2, 2, 'Kota Cimahi', 2000.00, 100.00, 'PENDING', 'MANUAL', NULL, '2021-04-15 02:30:45', '2021-04-15 02:30:45'),
(3, 2, 'Kota Cimahi', 2000.00, 100.00, 'PENDING', 'MANUAL', NULL, '2021-04-15 02:32:37', '2021-04-15 02:32:37'),
(4, 3, 'Marsemoon', 206.00, 0.00, 'PENDING', 'MANUAL', NULL, '2021-05-05 04:53:30', '2021-05-05 04:53:30'),
(5, 3, 'Marsemoon', 200.00, 0.00, 'PENDING', 'MANUAL', NULL, '2021-05-05 04:54:07', '2021-05-05 04:54:07'),
(6, 3, 'Marsemoon', 285.00, 0.00, 'PENDING', 'MANUAL', NULL, '2021-05-05 05:19:05', '2021-05-05 05:19:05'),
(7, 3, 'Marsemoon', 215.00, 0.00, 'PENDING', 'MANUAL', NULL, '2021-05-05 05:44:39', '2021-05-05 05:44:39'),
(8, 3, 'Marsemoon', 285.00, 0.00, 'PENDING', 'MANUAL', NULL, '2021-05-05 05:48:44', '2021-05-05 05:48:44');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_items`
--

CREATE TABLE `transaction_items` (
  `id` bigint UNSIGNED NOT NULL,
  `users_id` bigint NOT NULL,
  `products_id` bigint NOT NULL,
  `transactions_id` bigint NOT NULL,
  `quantity` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_items`
--

INSERT INTO `transaction_items` (`id`, `users_id`, `products_id`, `transactions_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1, 2, '2021-04-15 02:11:14', '2021-04-15 02:11:14'),
(2, 2, 2, 1, 2, '2021-04-15 02:11:14', '2021-04-15 02:11:14'),
(3, 2, 3, 1, 2, '2021-04-15 02:11:14', '2021-04-15 02:11:14'),
(4, 2, 1, 2, 2, '2021-04-15 02:30:45', '2021-04-15 02:30:45'),
(5, 2, 2, 2, 2, '2021-04-15 02:30:45', '2021-04-15 02:30:45'),
(6, 2, 3, 2, 2, '2021-04-15 02:30:45', '2021-04-15 02:30:45'),
(7, 2, 1, 3, 2, '2021-04-15 02:32:37', '2021-04-15 02:32:37'),
(8, 3, 5, 4, 1, '2021-05-05 04:53:30', '2021-05-05 04:53:30'),
(9, 3, 1, 5, 1, '2021-05-05 04:54:07', '2021-05-05 04:54:07'),
(10, 3, 2, 6, 1, '2021-05-05 05:19:05', '2021-05-05 05:19:05'),
(11, 3, 6, 7, 1, '2021-05-05 05:44:39', '2021-05-05 05:44:39'),
(12, 3, 3, 7, 1, '2021-05-05 05:44:39', '2021-05-05 05:44:39'),
(13, 3, 2, 8, 1, '2021-05-05 05:48:44', '2021-05-05 05:48:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `phone`, `roles`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'trie', 'email@email.com', 'trie', '09812312', 'USER', NULL, '$2y$10$8HjbnTrILifS.GsKSs0nXebsFBcAiZmF24aonHlcfKyZW/1d/7AJa', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-04 06:28:39', '2023-05-04 06:28:39');

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_galleries`
--
ALTER TABLE `product_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_items`
--
ALTER TABLE `transaction_items`
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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_galleries`
--
ALTER TABLE `product_galleries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `transaction_items`
--
ALTER TABLE `transaction_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
