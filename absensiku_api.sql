-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 28, 2024 at 01:47 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absensiku_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` bigint UNSIGNED NOT NULL,
  `classname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `code_class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `classname`, `description`, `user_id`, `code_class`, `created_at`, `updated_at`) VALUES
(1, 'Voluptatibus cupiditate perferendis quia sed.', 'Et iusto accusamus est quo.', 52, 'DKX841', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(2, 'Facere totam dolore aut.', 'Aut et error et ipsam placeat dolore ullam.', 54, 'JAU750', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(3, 'Error itaque culpa sit.', 'Impedit iste doloremque voluptas.', 56, 'AYU061', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(4, 'Rerum ut et vel.', 'Eos sit labore illum fugit occaecati.', 58, 'TBM056', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(5, 'Iusto tenetur rerum.', 'Ut iusto et sint.', 60, 'ORA556', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(6, 'Error vitae alias ipsam.', 'Ut molestiae eius autem veniam voluptate id dolor.', 62, 'OXG978', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(7, 'Non at praesentium.', 'Quia dolore distinctio ratione nesciunt quaerat non molestias.', 64, 'VRL591', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(8, 'Porro neque ratione.', 'Officia sint modi velit occaecati.', 66, 'AGX761', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(9, 'Eius quibusdam quaerat.', 'Reprehenderit sit tempora dolorem corrupti non cum facilis iure.', 68, 'SGX558', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(10, 'Quasi quia consequatur incidunt.', 'Accusamus accusantium voluptas sed impedit rem consequatur dolor.', 70, 'GAV838', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(11, 'Repudiandae doloremque quia unde.', 'Et et quas quis quod rem minima.', 48, 'ZAP796', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(12, 'Est soluta voluptas iste.', 'Praesentium neque qui quos dolores adipisci ab ratione.', 6, 'AHK725', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(13, 'Ut quos doloribus.', 'Et tenetur provident maiores deserunt ullam.', 8, 'MFU780', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(14, 'Facilis saepe facilis.', 'Amet odit eius dicta excepturi accusamus et quia.', 2, 'TFT798', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(15, 'Et at accusamus animi ea.', 'Sunt beatae eveniet commodi dolores.', 42, 'GTV525', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(16, 'Hic in sunt neque quia.', 'Ea qui accusantium quo perferendis.', 29, 'WUN576', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(17, 'Similique sunt sint.', 'Quaerat consectetur dolores non sit.', 10, 'SDY661', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(18, 'Itaque cupiditate modi.', 'Voluptatibus temporibus est ex unde.', 49, 'CDA070', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(19, 'Est impedit non expedita.', 'A dolores consequatur quibusdam temporibus voluptatem assumenda velit.', 25, 'XVV765', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(20, 'Temporibus qui numquam fugiat.', 'Reiciendis excepturi qui placeat minus sed id.', 28, 'KUV721', '2024-12-20 16:47:26', '2024-12-20 16:47:26');

-- --------------------------------------------------------

--
-- Table structure for table `class_members`
--

CREATE TABLE `class_members` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `class_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class_members`
--

INSERT INTO `class_members` (`id`, `user_id`, `class_id`, `created_at`, `updated_at`) VALUES
(1, 51, 1, '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(2, 53, 2, '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(3, 55, 3, '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(4, 57, 4, '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(5, 59, 5, '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(6, 61, 6, '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(7, 63, 7, '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(8, 65, 8, '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(9, 67, 9, '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(10, 69, 10, '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(11, 1, 19, NULL, NULL),
(12, 1, 10, '2024-12-22 05:50:20', NULL),
(13, 1, 10, '2024-12-22 05:50:21', NULL),
(14, 1, 10, NULL, NULL),
(15, 1, 10, NULL, NULL),
(16, 1, 10, NULL, NULL),
(17, 2, 10, NULL, NULL),
(18, 20, 10, NULL, NULL),
(19, 27, 10, NULL, NULL),
(20, 29, 10, NULL, NULL),
(21, 71, 10, NULL, NULL),
(22, 71, 17, NULL, NULL),
(23, 71, 19, NULL, NULL),
(24, 71, 3, NULL, NULL),
(25, 71, 2, NULL, NULL),
(26, 71, 14, NULL, NULL),
(27, 71, 18, NULL, NULL),
(28, 71, 6, NULL, NULL);

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_12_08_153729_create_personal_access_tokens_table', 1),
(5, '2024_12_08_154018_create_classses_table', 1),
(6, '2024_12_08_154139_create_class_members_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Augustus Block', 'gleichner.davonte', 'romaguera.freida@example.org', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(2, 'Mrs. Yasmeen Haley IV', 'jemard', 'jazmyne98@example.com', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(3, 'Jaylon Corkery MD', 'gottlieb.jessica', 'blanda.deanna@example.com', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(4, 'Hope Ryan', 'halvorson.luz', 'michel.kohler@example.org', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(5, 'Bianka Koss Jr.', 'hailie.christiansen', 'robyn.hills@example.net', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(6, 'Edyth Schamberger', 'madelynn.langworth', 'glakin@example.net', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(7, 'Elfrieda Mueller', 'wehner.elvera', 'vhyatt@example.net', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(8, 'Uriel Becker', 'prosacco.barton', 'rita34@example.org', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(9, 'Shanel D\'Amore', 'nitzsche.camryn', 'hansen.hollie@example.org', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(10, 'Prof. Samson Steuber DDS', 'wdaniel', 'lvon@example.com', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(11, 'Malcolm Mayer Sr.', 'demetrius64', 'chloe12@example.com', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(12, 'Carmen Windler DDS', 'bailey.keyshawn', 'princess93@example.net', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(13, 'Mrs. Annie Sanford', 'jbins', 'emily.bode@example.com', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(14, 'Curtis Jacobson PhD', 'philip.connelly', 'hahn.elody@example.com', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(15, 'Blaze Dicki', 'zora57', 'qdaugherty@example.net', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(16, 'Alex Cole IV', 'lindgren.juliet', 'qbauch@example.org', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(17, 'Alphonso Murphy', 'balistreri.jake', 'friesen.cameron@example.com', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(18, 'Jakayla Kling', 'marcelo62', 'lwuckert@example.com', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(19, 'Dr. Nyah Koelpin', 'dstreich', 'krajcik.jackeline@example.net', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(20, 'Barton Wiza', 'julianne77', 'jacquelyn88@example.net', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(21, 'Miss Mossie McLaughlin', 'breitenberg.lessie', 'heller.colin@example.net', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(22, 'Sedrick Eichmann Jr.', 'macy13', 'alba.leuschke@example.net', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(23, 'Junius O\'Reilly', 'ephraim.leffler', 'zwaters@example.com', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(24, 'Kellen Blanda', 'suzanne.pfeffer', 'zyundt@example.net', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(25, 'Terrell Johnson', 'asia59', 'maryjane.murphy@example.com', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(26, 'Tracey Sipes', 'isadore78', 'betsy.orn@example.net', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(27, 'Dr. Jarod Carroll DDS', 'ikovacek', 'murazik.cameron@example.com', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(28, 'Shaina Pacocha', 'providenci58', 'zmueller@example.net', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(29, 'Prof. Carissa Jakubowski', 'huels.michelle', 'qcarroll@example.net', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(30, 'Mr. Chet McClure', 'cleora76', 'stiedemann.jeffery@example.net', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(31, 'Ms. Lizzie Kohler', 'roob.erick', 'kulas.vern@example.net', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(32, 'Seamus Huels', 'lhodkiewicz', 'russel.whitney@example.com', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(33, 'Irving Block', 'archibald53', 'wcassin@example.com', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(34, 'Armani Turner', 'nmurazik', 'vita17@example.com', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(35, 'Rickey Walsh', 'norbert.stiedemann', 'aliza.douglas@example.com', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(36, 'Dr. Grady Williamson', 'cbecker', 'adaline22@example.net', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(37, 'Wilfrid Durgan', 'eunice.dubuque', 'lizeth.beahan@example.net', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(38, 'Bryana Gusikowski', 'jacklyn.collins', 'damore.keyon@example.net', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(39, 'Prof. Hailie Casper Sr.', 'hermiston.baby', 'dwyman@example.com', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(40, 'Jaime Beatty', 'cecile29', 'fidel61@example.org', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(41, 'Else Cronin', 'oconnell.darwin', 'idurgan@example.net', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(42, 'Miss Hanna Koepp MD', 'angie.kuvalis', 'martin.bayer@example.com', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(43, 'Amelia Fadel', 'fbraun', 'daniella.green@example.net', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(44, 'Jaclyn Botsford', 'homenick.maeve', 'cummerata.dorian@example.net', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(45, 'Antoinette Spinka', 'darlene.crist', 'parisian.gilda@example.com', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(46, 'Sammie Leuschke', 'bettye66', 'rath.madie@example.org', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(47, 'Mrs. Trudie Volkman II', 'thomas.johns', 'schoen.katarina@example.org', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(48, 'Prof. Onie Bode PhD', 'harry.dietrich', 'vdouglas@example.com', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(49, 'Tressie Robel', 'flossie50', 'tzieme@example.com', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(50, 'Miss Carlee Hagenes V', 'wilderman.uriah', 'eblock@example.com', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(51, 'Nannie Schneider', 'wilkinson.gail', 'donnelly.georgette@example.net', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(52, 'Yasmeen Schumm', 'isadore26', 'mante.dixie@example.net', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(53, 'Ima Jacobi', 'pjast', 'allison.littel@example.org', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(54, 'Miss Andreane Gutmann', 'greta76', 'rosemary.brekke@example.net', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(55, 'Shana Zboncak', 'ostark', 'kbarton@example.com', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(56, 'Stanton Nitzsche V', 'streich.mckenna', 'twunsch@example.com', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(57, 'Tyrell Gutmann', 'leonie69', 'kaylah84@example.net', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(58, 'Flossie Ratke', 'ogutkowski', 'zhilpert@example.net', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(59, 'Dedric Ryan', 'ibrekke', 'iva.kub@example.net', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(60, 'Kyler Spencer', 'aylin18', 'presley.howell@example.net', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(61, 'Mr. Eldon Beatty', 'laverna60', 'janiya70@example.com', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(62, 'Damien Gislason', 'pcremin', 'rosalia.smith@example.com', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(63, 'Mellie Corkery', 'timmothy51', 'casimer.goyette@example.com', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(64, 'Tracy Abernathy', 'isidro87', 'kstark@example.org', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(65, 'Minnie O\'Hara PhD', 'ophelia68', 'grady.arely@example.com', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(66, 'Jesus Hagenes', 'salma.quigley', 'giles.kiehn@example.net', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(67, 'Ulices Dach', 'jast.asia', 'borer.mary@example.com', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(68, 'Dr. Jess Hettinger', 'samantha65', 'qmueller@example.org', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(69, 'Dr. Norbert Borer', 'oratke', 'jakob.treutel@example.org', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(70, 'Leone Mann', 'fatima12', 'reece.predovic@example.net', '$2y$12$gnpiGJWUn1h6CGPp3W5Ou.hFYeiUC1pSAbiJ8dSUFhz2OHVtPW1GW', '2024-12-20 16:47:26', '2024-12-20 16:47:26'),
(71, 'Ilham Muhammad Yunan', 'yunan909', 'yunan@gmail.com', '$2b$10$1oEwbQ5aj.q1fR9vyktlIOwbdG0fpUXF0srV7IqgwlsGZ.Wov968K', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_user_id` (`user_id`);

--
-- Indexes for table `class_members`
--
ALTER TABLE `class_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `classMember_user_id` (`user_id`),
  ADD KEY `classMember_class_id` (`class_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `class_members`
--
ALTER TABLE `class_members`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `class_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `class_members`
--
ALTER TABLE `class_members`
  ADD CONSTRAINT `classMember_class_id` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`),
  ADD CONSTRAINT `classMember_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
