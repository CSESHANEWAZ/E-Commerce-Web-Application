-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 07, 2021 at 08:28 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_ecom_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'error repellat', 'error-repellat', '2021-08-19 11:30:38', '2021-08-19 11:30:38'),
(2, 'adipisci quo', 'adipisci-quo', '2021-08-19 11:30:38', '2021-08-19 11:30:38'),
(3, 'enim ea', 'enim-ea', '2021-08-19 11:30:38', '2021-08-19 11:30:38'),
(4, 'autem beatae', 'autem-beatae', '2021-08-19 11:30:38', '2021-08-19 11:30:38'),
(5, 'consequatur rerum', 'consequatur-rerum', '2021-08-19 11:30:38', '2021-08-19 11:30:38'),
(6, 'rerum eaque', 'rerum-eaque', '2021-08-19 11:30:38', '2021-08-19 11:30:38');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'doe@gmail.com', '09279450957', 'Test Message', '2021-09-05 14:43:18', '2021-09-05 14:43:18'),
(2, 'Robert Merry', 'marry@gmail.com', '035623645', 'Test Message', '2021-09-05 14:48:32', '2021-09-05 14:48:32');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','percent') COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `cart_value` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expiry_date` date NOT NULL DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `home_categories`
--

CREATE TABLE `home_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sel_categories` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_products` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_categories`
--

INSERT INTO `home_categories` (`id`, `sel_categories`, `no_of_products`, `created_at`, `updated_at`) VALUES
(1, 'adipisci quo', 10, '2021-08-18 20:05:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_07_16_232338_create_sessions_table', 1),
(7, '2021_07_23_195215_create_categories_table', 1),
(8, '2021_07_23_195313_create_products_table', 1),
(9, '2021_08_01_133733_create_home_sliders_table', 1),
(10, '2021_08_06_004912_create_home_categories_table', 1),
(11, '2021_08_08_213130_create_sales_table', 1),
(12, '2021_08_14_184520_create_coupons_table', 1),
(13, '2021_08_16_163146_add_expiry_date_to_coupons_table', 1),
(22, '2021_08_17_092557_create_orders_table', 2),
(23, '2021_08_17_092612_create_order_items_table', 2),
(24, '2021_08_17_092627_create_shippings_table', 2),
(25, '2021_08_17_092644_create_transactions_table', 2),
(26, '2021_09_03_112539_add_delivered_canceled_date_to_orders_table', 3),
(27, '2021_09_03_210203_create_reviews_table', 4),
(28, '2021_09_03_210745_add_rstatus_to_order_items_table', 4),
(29, '2021_09_05_035136_create_contacts_table', 5),
(30, '2021_09_05_205158_create_settings_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('ordered','delivered','canceled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ordered',
  `is_shipping_different` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivered_date` date DEFAULT NULL,
  `canceled_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `subtotal`, `discount`, `tax`, `total`, `first_name`, `last_name`, `mobile`, `email`, `line1`, `line2`, `city`, `province`, `country`, `zip_code`, `status`, `is_shipping_different`, `created_at`, `updated_at`, `delivered_date`, `canceled_date`) VALUES
(3, 3, '407.00', '0.00', '85.47', '492.47', 'first name', 'last name', '01790010792', 'admin@myshop.com', 'line1', 'line1', 'USA', 'USA', 'USA', '1234', 'delivered', 0, '2021-08-27 12:12:45', '2021-09-03 05:47:16', '2021-09-03', NULL),
(4, 3, '407.00', '0.00', '85.47', '492.47', 'first name', 'last name', '01790010792', 'admin@myshop.com', 'line1', 'line1', 'USA', 'USA', 'USA', '1234', 'canceled', 0, '2021-08-27 12:13:19', '2021-09-03 05:59:30', NULL, '2021-09-03'),
(5, 3, '338.00', '0.00', '70.98', '408.98', 'Md.', 'Showkat Ali', '01873489745', 'ali@gmail.com', 'Bohaddarhat, Khaza Road', NULL, 'Chittagong', 'Bangladesh', 'Bangladesh', '4212', 'ordered', 0, '2021-09-02 15:25:05', '2021-09-02 15:25:05', NULL, NULL),
(6, 4, '166.00', '0.00', '34.86', '200.86', 'User', '1', '01873489745', 'user@gmail.com', 'Bohaddarhat, Khaza Road', NULL, 'Chittagong', 'Bangladesh', 'Bangladesh', '4212', 'canceled', 0, '2021-09-02 23:57:12', '2021-09-03 14:16:23', NULL, '2021-09-04'),
(7, 4, '342.00', '0.00', '71.82', '413.82', 'John', 'Doe', '09279450957', 'doe@gmail.com', 'Road-11', NULL, 'London', 'UK', 'UK', '3425', 'ordered', 0, '2021-09-03 14:10:45', '2021-09-03 14:10:45', NULL, NULL),
(8, 4, '289.00', '0.00', '60.69', '349.69', 'Robert', 'Marry', '35623645', 'marry@gmail.com', 'Berlin', NULL, 'Berlin', 'Germany', 'Germany', '2451', 'ordered', 0, '2021-09-03 23:03:20', '2021-09-03 23:03:20', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rstatus` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `product_id`, `order_id`, `price`, `quantity`, `created_at`, `updated_at`, `rstatus`) VALUES
(3, 3, 3, '407.00', 1, '2021-08-27 12:12:45', '2021-08-27 12:12:45', 1),
(4, 3, 3, '407.00', 1, '2021-08-27 12:13:19', '2021-08-27 12:13:19', 0),
(6, 5, 5, '166.00', 1, '2021-09-02 23:57:13', '2021-09-02 23:57:13', 0);

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
  `short_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outofstock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'ut et eum perspiciatis', 'ut-et-eum-perspiciatis', 'Ratione sint praesentium temporibus qui sunt qui voluptatem. Quasi quo ab voluptatibus voluptatem. Labore quod architecto unde harum voluptas soluta. Dolore rerum pariatur aut repellendus eos.', 'Laborum quae at a et. Rem ut ut aut ullam dolorem tenetur autem error. Amet et hic consectetur eveniet impedit natus. Iste laudantium ipsam perspiciatis est. Quo consequatur dolorem quibusdam. Molestias sequi adipisci nihil qui ullam qui. Quam laboriosam aut quia veniam impedit inventore. Molestias sit doloribus quia dignissimos. Quaerat sit maiores eaque et nisi quis rerum fugiat. Ea et beatae velit voluptatibus ipsam esse minus.', '19.00', NULL, 'DIGI400', 'instock', 0, 144, 'digital_22.jpg', NULL, 3, '2021-08-19 11:30:38', '2021-08-19 11:30:38'),
(2, 'et vitae voluptatem rerum', 'et-vitae-voluptatem-rerum', 'Cupiditate ea aut delectus eius et. Modi excepturi recusandae quam modi voluptates aut. Ipsam adipisci quo doloribus sed. Ad animi dolor repudiandae sed quia molestias. Reiciendis qui aut quas.', 'Rerum dolores blanditiis et sunt omnis a vitae. Quidem fugiat nisi quasi quidem vel voluptate molestiae quae. Mollitia modi doloremque aliquam ut. Velit fuga aut asperiores veniam non quae. Voluptatem dolorem voluptatem sint nemo nostrum. Officiis repudiandae voluptas harum quia. Est ex quasi occaecati autem consequuntur veritatis quos. Eligendi aliquid nihil cum repudiandae. Ad similique voluptates omnis expedita sequi. Debitis est repudiandae dolorum.', '289.00', NULL, 'DIGI169', 'instock', 0, 150, 'digital_2.jpg', NULL, 2, '2021-08-19 11:30:39', '2021-08-19 11:30:39'),
(3, 'ut esse explicabo pariatur', 'ut-esse-explicabo-pariatur', 'Quisquam quis dolores repellendus ut eaque est. Atque esse nulla eveniet ut voluptates natus saepe. Quod sequi sit quia aut.', 'Quidem quos dolor perferendis ad. Fugiat natus ut quia libero. Voluptatem fugit ex iusto soluta dolorum sit. At occaecati minus molestias quidem. Possimus nesciunt eum sequi enim. Illo ut quod veniam nostrum quam reprehenderit. Id quo quibusdam eaque in at aut excepturi. Ea quas unde aspernatur repellendus praesentium quod unde. Adipisci rerum animi beatae sunt ut quis voluptatem. Fugit rem non et consequatur dolorum eligendi nihil. In ea nesciunt quaerat eum. Iure et praesentium at.', '407.00', NULL, 'DIGI297', 'instock', 0, 120, 'digital_21.jpg', NULL, 1, '2021-08-19 11:30:39', '2021-08-19 11:30:39'),
(4, 'dolor autem eos mollitia', 'dolor-autem-eos-mollitia', 'Aut aut expedita odio explicabo aspernatur dolor. Quibusdam non saepe dolor rem aut eos facilis excepturi. Assumenda aliquam iusto et at.', 'Tenetur quis quod qui enim ea. Id id est eaque voluptatem dicta libero. Omnis non dolores totam aliquid nulla id. Nemo est ex recusandae soluta dolor. Qui excepturi officiis delectus mollitia. Sapiente non aperiam qui ullam ut quod. Perferendis et sed impedit qui tempora atque. Est unde aut dolorum. Ratione quia suscipit voluptate voluptatibus aut est tempora mollitia. Placeat id omnis architecto. Accusamus quos et iure. Voluptas eos saepe numquam vel aut libero.', '19.00', NULL, 'DIGI196', 'instock', 0, 198, 'digital_8.jpg', NULL, 2, '2021-08-19 11:30:39', '2021-08-19 11:30:39'),
(5, 'deleniti corporis hic et', 'deleniti-corporis-hic-et', 'Qui repellat nihil atque est aut. Consectetur provident nostrum voluptas deleniti eligendi cumque. Quia aut ea et labore atque laboriosam ipsam.', 'Id qui optio nihil animi. Atque provident necessitatibus nulla sunt voluptatem ea. Ab consequuntur inventore velit dignissimos. Praesentium aut aut et officia alias incidunt. Explicabo optio rem nihil odio mollitia officiis ut quo. Adipisci aperiam fugit nihil aspernatur aut et. Tempore voluptas nobis minus ut a perspiciatis blanditiis quo. Laboriosam animi a harum non tempora nisi. Sequi officiis quaerat deserunt quidem ratione fugit inventore.', '166.00', NULL, 'DIGI260', 'instock', 0, 134, 'digital_16.jpg', NULL, 3, '2021-08-19 11:30:39', '2021-08-19 11:30:39'),
(6, 'hic eius esse corrupti', 'hic-eius-esse-corrupti', 'Enim consequatur incidunt incidunt explicabo voluptatum doloribus quia. Et labore maiores vero animi.', 'Aperiam magnam dolores perferendis nemo aut dolorem. Laudantium voluptas facilis perspiciatis cupiditate repudiandae et. Sint qui labore ea nemo. Sunt maiores voluptas reprehenderit non aliquam cupiditate aspernatur. Eligendi in ad explicabo voluptate culpa animi necessitatibus quia. Animi harum quia quia atque labore reprehenderit sapiente. Unde deleniti et et dolore deserunt.', '338.00', NULL, 'DIGI317', 'instock', 0, 154, 'digital_19.jpg', NULL, 5, '2021-08-19 11:30:39', '2021-08-19 11:30:39'),
(7, 'enim doloremque neque quidem', 'enim-doloremque-neque-quidem', 'Nihil enim similique soluta exercitationem. Est molestias non eum. Impedit non aut beatae.', 'Quia corporis nobis neque et ut expedita. Deleniti quas sit soluta quo quisquam velit. Ullam quo animi sunt. Veniam repellat et sit aut dicta voluptatibus fugit et. Dolor minima dicta deleniti veritatis ipsa ipsum. Tempora quisquam ea qui reiciendis reiciendis dolor. Autem ea autem voluptatem esse. Animi occaecati enim quae quia asperiores. Libero laborum occaecati debitis neque debitis necessitatibus. Quae in maiores qui laboriosam error.', '417.00', NULL, 'DIGI330', 'instock', 0, 132, 'digital_5.jpg', NULL, 2, '2021-08-19 11:30:39', '2021-08-19 11:30:39'),
(8, 'repellendus vero ut molestiae', 'repellendus-vero-ut-molestiae', 'Libero ab quaerat vitae qui optio. Nostrum libero voluptas aliquam sed soluta similique.', 'Amet est pariatur excepturi non quaerat in. Ea dolor velit ex occaecati alias. Molestias ipsum ratione saepe aut. Aliquid explicabo quod dolorum. Numquam deserunt quisquam eaque quia voluptatem quos nemo. Quod iure fugiat dolore officiis quia beatae. Aut et dolorem et nihil dolores voluptatem debitis. Minus magnam accusantium magni ab quibusdam et. Velit voluptas nobis eum ad quidem distinctio ut.', '359.00', NULL, 'DIGI247', 'instock', 0, 163, 'digital_1.jpg', NULL, 1, '2021-08-19 11:30:39', '2021-08-19 11:30:39'),
(9, 'porro quia dolor distinctio', 'porro-quia-dolor-distinctio', 'Nihil consectetur maxime fugiat illum sed occaecati vel. Ut a labore incidunt velit sed voluptatem. Est aut aliquam sapiente id eos.', 'Possimus nobis ab voluptatem culpa vero laboriosam veritatis est. Sequi molestias tempore quaerat autem est est qui. Ad libero deserunt officia omnis repellat quae optio. Est qui consectetur dolores ipsam. Et ipsum dolorem quisquam aspernatur neque neque magni. Eum assumenda ad modi provident. Illum quis aut delectus impedit voluptas nostrum deserunt. Commodi velit quo dolor modi tempore dolor autem. Aliquid numquam nihil accusamus officiis ipsum veniam quia ut.', '342.00', NULL, 'DIGI287', 'instock', 0, 167, 'digital_4.jpg', NULL, 5, '2021-08-19 11:30:39', '2021-08-19 11:30:39'),
(10, 'non odio sit eos', 'non-odio-sit-eos', 'Voluptatum ut in quia sint. Ullam sapiente maxime cumque. Voluptatem minima molestiae repudiandae sed totam unde. Et id voluptatem iure perferendis odit minus sunt.', 'Saepe vero illo delectus minus animi rerum provident soluta. Similique quaerat ut consequatur saepe saepe atque. Ut recusandae dolorem voluptatem ex. Quas est odit ut molestiae repudiandae accusantium qui. Similique non repellat ea cupiditate tempore. Nulla quo eos nulla dolorem ad dolorem. Dolores neque laboriosam fugiat eaque ratione ut consequuntur nesciunt.', '45.00', NULL, 'DIGI463', 'instock', 0, 141, 'digital_9.jpg', NULL, 4, '2021-08-19 11:30:39', '2021-08-19 11:30:39'),
(11, 'labore sed autem alias', 'labore-sed-autem-alias', 'Exercitationem quas corrupti voluptatem vel quam. Quia dolor et ab. Facilis molestias consequatur et perspiciatis aperiam.', 'Alias excepturi placeat enim unde reprehenderit. Quia atque aut quibusdam. Aperiam aspernatur est quo quasi. Maiores dolor et aliquid eum aspernatur earum quos. Neque iure et quis in aut iure tempore. Consequuntur sit sit rerum in voluptas ab. Quo ea quia est odit atque. Minus aut voluptatem hic provident. Consectetur illum ut error est. Et distinctio commodi ut odit.', '78.00', NULL, 'DIGI334', 'instock', 0, 165, 'digital_13.jpg', NULL, 1, '2021-08-19 11:30:39', '2021-08-19 11:30:39'),
(12, 'ipsum aut cum sed', 'ipsum-aut-cum-sed', 'Harum est animi id aliquam. Optio aut unde nihil. Animi ut ut dolores pariatur delectus fugit velit. Ea ut quia nostrum.', 'Est quisquam sunt modi aut ab nam et quaerat. Repudiandae culpa beatae quaerat amet quasi. Est voluptas architecto labore laboriosam debitis illum aspernatur. Repudiandae nam error sequi quo repudiandae ea maxime vero. Tempore sed ducimus ipsa doloremque. Aut perferendis commodi mollitia dicta. Minus et aut reiciendis et. Ea fugiat provident cumque possimus. Aut ut non distinctio sint ipsum voluptatem asperiores labore. Aut et nihil hic velit officia aspernatur et. Et cupiditate in harum aut.', '477.00', NULL, 'DIGI259', 'instock', 0, 196, 'digital_20.jpg', NULL, 4, '2021-08-19 11:30:39', '2021-08-19 11:30:39'),
(13, 'consectetur harum autem nulla', 'consectetur-harum-autem-nulla', 'Nemo quaerat tenetur ex aut sed dicta. Praesentium dolores dolores maiores adipisci soluta est fugit sed. Natus rem perferendis beatae ducimus.', 'Doloribus harum maiores sed non minus. A alias praesentium enim dolorem eos sit. Non qui amet dignissimos. Ducimus eveniet quo fuga repellendus. Vel veritatis dolores quisquam commodi sint cupiditate occaecati. In quia voluptatem est quis. Rem optio voluptas temporibus. In et error doloremque omnis ipsum animi. Consequatur minus at rerum minus nam ut. Quia minima quo nihil sunt ut.', '245.00', NULL, 'DIGI449', 'instock', 0, 143, 'digital_14.jpg', NULL, 3, '2021-08-19 11:30:39', '2021-08-19 11:30:39'),
(14, 'in nobis aut voluptatibus', 'in-nobis-aut-voluptatibus', 'Ipsam quos qui delectus et. Et vel sit porro praesentium. Natus nostrum natus expedita quis eum praesentium.', 'Quis hic est delectus molestiae perspiciatis quisquam. Sed quos saepe temporibus reiciendis rerum doloribus atque aut. Magnam eaque harum ipsa error. Soluta iste facere tempore et vel vel totam. Ratione reiciendis ratione quidem quo tenetur adipisci modi. Non molestiae dolores quisquam. Non id qui hic quod similique suscipit. Dolorum voluptatem nobis rerum et blanditiis beatae animi. Est numquam aliquam dolore facere ratione autem.', '257.00', NULL, 'DIGI193', 'instock', 0, 135, 'digital_18.jpg', NULL, 3, '2021-08-19 11:30:39', '2021-08-19 11:30:39'),
(15, 'aliquam quis fuga aliquam', 'aliquam-quis-fuga-aliquam', 'Corrupti dignissimos et vero laborum reiciendis. Enim necessitatibus nihil molestias quos quidem molestias. Repellendus iusto sunt veniam quod aut voluptas.', 'Reprehenderit dolores aut eaque voluptatem nisi qui facilis. Soluta temporibus quam provident. Vel et labore vel dignissimos. Eos in ut et aperiam molestiae. Consequatur nemo cumque voluptate. Beatae fugit id rerum et veritatis autem occaecati. Eius ducimus qui est doloribus ipsum possimus delectus. Reiciendis placeat reprehenderit est quis. Eius iste explicabo sint magni maiores pariatur fugit ullam. Ad ut quo nam eligendi. Maiores qui sunt rerum vel.', '412.00', NULL, 'DIGI302', 'instock', 0, 135, 'digital_17.jpg', NULL, 2, '2021-08-19 11:30:39', '2021-08-19 11:30:39'),
(16, 'accusamus mollitia pariatur nesciunt', 'accusamus-mollitia-pariatur-nesciunt', 'Nemo magnam minima corporis sunt illum minus laudantium. Quaerat quia rerum dolores praesentium quis amet. Iure aut ea ut facilis. Sint in ut asperiores et.', 'Id repudiandae sed ut vel. Totam est expedita ipsa. Nulla atque pariatur velit voluptatibus explicabo. Voluptas sed iusto officiis inventore non est. Voluptatem sit quia eum ut magni qui. Quae dolores maiores facilis nisi libero. Eaque quod vitae dolore sed distinctio. Perferendis ea optio rerum maiores eum voluptate tempore. Rerum sit aspernatur repellendus sit itaque dolores molestiae. Adipisci enim perferendis nisi ex autem sapiente. Sed sunt fuga quam modi.', '272.00', NULL, 'DIGI234', 'instock', 0, 132, 'digital_15.jpg', NULL, 2, '2021-08-19 11:30:39', '2021-08-19 11:30:39'),
(17, 'eos officia occaecati sed', 'eos-officia-occaecati-sed', 'In blanditiis fugiat quaerat nesciunt libero debitis. Magnam aliquam magni ullam nobis. Facilis et at impedit sunt libero.', 'Non qui molestiae voluptatem accusamus enim. Ut esse deserunt repellendus numquam. Eum dolores aperiam voluptates inventore ab iure. Ipsam necessitatibus cupiditate autem molestias molestiae voluptatem. Facere qui possimus sed aut. Doloremque vel facere voluptatem sunt sapiente. Possimus praesentium delectus odio cupiditate iste deleniti est. At in nemo animi ad ut eum explicabo culpa.', '317.00', NULL, 'DIGI373', 'instock', 0, 119, 'digital_3.jpg', NULL, 1, '2021-08-19 11:30:39', '2021-08-19 11:30:39'),
(18, 'eaque et illum sed', 'eaque-et-illum-sed', 'In nostrum eos est eveniet totam expedita. Molestias corrupti facilis veniam similique dolore. Pariatur officia et eum qui repellendus voluptatibus. Omnis fugiat expedita et amet dolor quia fugit.', 'Sed enim minima aperiam dolores consequatur. Sunt provident facilis veniam non veritatis qui. Qui eius ut aut. Dolor dolore hic alias ut laborum ut. Veritatis qui enim quis suscipit voluptatem quam voluptatem. Eaque dicta et odio. Dolore reiciendis cum est ut. Rerum et nihil odio.', '237.00', NULL, 'DIGI480', 'instock', 0, 156, 'digital_11.jpg', NULL, 5, '2021-08-19 11:30:39', '2021-08-19 11:30:39'),
(19, 'qui dicta velit nemo', 'qui-dicta-velit-nemo', 'Error impedit vero ut vel. Est reiciendis fugiat pariatur eius. Provident occaecati nesciunt consectetur ratione non nostrum. Nobis numquam asperiores occaecati et optio.', 'Quod earum consequuntur perferendis recusandae. Doloremque excepturi praesentium earum ut. Qui sint enim mollitia facilis. Voluptas non quisquam nihil veniam. Non voluptatem ea saepe architecto voluptatem. Magni soluta quam voluptates ducimus est temporibus blanditiis est. Aut veniam autem qui iusto labore rem voluptates itaque. Voluptates dignissimos voluptas non ut voluptas expedita tempore. Id ex ab eos.', '282.00', '200.00', 'DIGI282', 'instock', 0, 180, 'digital_7.jpg', ',16310387230.jpg,16310387231.jpg,16310387232.jpg,16310387233.jpg', 2, '2021-08-19 11:30:39', '2021-09-07 12:18:43'),
(20, 'officia ut sunt odio', 'officia-ut-sunt-odio', 'Eos placeat assumenda laboriosam non. Velit cum accusantium est harum voluptas doloremque occaecati. Dolorum similique cupiditate consequuntur aut neque unde consequatur.', 'Ab in et veritatis aspernatur molestiae sapiente. Architecto necessitatibus voluptas rerum ipsam. Facilis quia fugiat temporibus et eos voluptas saepe. Eos esse deserunt ea officia. Molestias officiis adipisci ad minima. Excepturi quis qui est et quia inventore quidem dolor. Quis voluptates non itaque at libero. Dolores eos inventore libero iure et aut. Est placeat expedita tenetur dolor ut.', '14.00', NULL, 'DIGI381', 'instock', 0, 102, 'digital_6.jpg', NULL, 5, '2021-08-19 11:30:39', '2021-08-19 11:30:39'),
(21, 'qui quod reprehenderit impedit', 'qui-quod-reprehenderit-impedit', 'Ullam omnis sapiente dolorem eligendi necessitatibus. Similique itaque eligendi officiis accusamus a minus. Est consequuntur et aliquam rerum sed illo architecto. Rerum quae animi autem et.', 'Unde repellat sit atque provident. Non repudiandae enim commodi amet quia tempora. Doloremque dolor alias harum totam. Consectetur ipsum odio aut et quaerat optio. Quidem occaecati quia ea est. Et eius laborum illo quaerat quia blanditiis quod. Assumenda qui et aliquid mollitia quisquam temporibus enim. Et quae minus totam. Nihil omnis vero quam magni quam maxime consequuntur. Et nulla sequi aliquam nobis voluptatibus laudantium optio.', '424.00', NULL, 'DIGI494', 'instock', 0, 125, 'digital_10.jpg', NULL, 3, '2021-08-19 11:30:39', '2021-08-19 11:30:39'),
(23, 'Test Product 1', 'test-product-1', '<p>Test Product 1 short description</p>', '<p>Test Product 1 description</p>', '500.00', '400.00', 'DIGI3345', 'instock', 0, 20, '1630955934.jpg', ',16309559340.jpg,16309559341.jpg,16309559342.jpg', 2, '2021-09-06 13:18:54', '2021-09-06 13:18:54');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `rating`, `comment`, `order_item_id`, `created_at`, `updated_at`) VALUES
(3, 3, 'Good', 3, '2021-09-04 17:14:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Ap5xdiS4Pp4RxBX8HXsQDvFfvBbecdc8PeHDZhba', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid1lqRFRNRHNYa0lCVVRERVNmN3hCZXFlcFFkWnJoR1BGbk9JSlB1NyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9mb3Jnb3QtcGFzc3dvcmQiO319', 1630957741),
('k8W1fqRSBp3p36xXnojMJkh9IkMjV8LOmgvEIHcj', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWHJBb1E0aklEV0RkNjVEYk41SVpheVhpRjloV094cjJMYUdUQmxCUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9mb3Jnb3QtcGFzc3dvcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1630962167),
('RM31cbJVOpQxKMQncKUtl9y2RguHz6MQDoCpXNM8', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR0pCaWJmZElkYTRwN3B4d2d3TnVvc3BVZ2dRdTlOeFloTHIwUkFUQyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fX0=', 1630963152),
('u2eR6eulhPWJliUoNHqcIMeHuRTe94ETPGbAd7Ff', 3, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoieXMxem9CVFBLZlFvb3B3dGlTVUFQbUhXc3RTc0FUTHJXTkFRaGRIcyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9wcm9kdWN0L3F1aS1kaWN0YS12ZWxpdC1uZW1vIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MztzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJFhyS0xCMkVTOVNuY2VwamF3TVRyUi5oMEw0VWFGYVdydjAuei83cmxYRURGRWdJOTVhaDc2IjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRYcktMQjJFUzlTbmNlcGphd01UclIuaDBMNFVhRmFXcnYwLnovN3JsWEVERkVnSTk1YWg3NiI7fQ==', 1631039232),
('ZzCIduJH4rQbOOtcvbXYmtzvFGhBN6pQOOWe613q', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU0tnaVF3djdRSFJ1Rk1FMzd6M3hyMkg1czllYjdTMk16NDVUUHVYVSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9zZWFyY2g/cHJvZHVjdF9jYXQ9QWxsJTIwQ2F0ZWdvcnkmcHJvZHVjdF9jYXRfaWQ9JnNlYXJjaD1hYiI7fX0=', 1631012762);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinterest` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `email`, `phone`, `phone2`, `address`, `map`, `twitter`, `facebook`, `pinterest`, `instagram`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'doe@gmail.com', '09279450957', '09279450958', 'Road-11', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14759.862481731749!2d91.83818109999999!3d22.354926950000003!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30acd89e1a92c4b9%3A0xa6819d9009884ddb!2sChawk%20Bazar%2C%20Chattogram!5e0!3m2!1sen!2sbd!4v1630934779748!5m2!1sen!2sbd', '#', '#', '#', '#', '#', '2021-09-05 22:58:39', '2021-09-06 07:31:53');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `mode` enum('cod','card','paypal','bkash') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','approved','declined','refunded') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `order_id`, `mode`, `status`, `created_at`, `updated_at`) VALUES
(2, 3, 4, 'cod', 'pending', '2021-08-27 12:13:19', '2021-08-27 12:13:19'),
(3, 4, 6, 'cod', 'pending', '2021-09-02 23:57:13', '2021-09-02 23:57:13');

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
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for Admin and USR for User or Customer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `utype`, `created_at`, `updated_at`) VALUES
(3, 'Admin', 'admin@myshop.com', NULL, '$2y$10$XrKLB2ES9SncepjawMTrR.h0L4UaFaWrv0.z/7rlXEDFEgI95ah76', NULL, NULL, NULL, NULL, NULL, 'ADM', '2021-08-27 12:08:32', '2021-08-27 12:08:32'),
(4, 'User', 'user@gmail.com', NULL, '$2y$10$R.aHm5hViOU1iM7Y3tcdYul4Ueb0HZH.XrpP.dbIJjKARKyijAN5u', NULL, NULL, NULL, NULL, NULL, 'USR', '2021-08-27 12:21:38', '2021-08-27 12:21:38'),
(5, 'User2', 'projects2411@gmail.com', NULL, '$2y$10$zqQQKmOaVOH5U.n2hiD3ju3YzE5HvZHPWKy2q0u7woSMQ54JYJ8Mm', NULL, NULL, 'L1lKk5tnjT8ANeTJNejeMShZiHiAxKsh3hDK5HSeFVJ6Q5Kxd59IFWbeSzH6', NULL, NULL, 'USR', '2021-09-06 14:24:50', '2021-09-06 15:18:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_categories`
--
ALTER TABLE `home_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_order_item_id_foreign` (`order_item_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shippings_order_id_foreign` (`order_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_categories`
--
ALTER TABLE `home_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shippings`
--
ALTER TABLE `shippings`
  ADD CONSTRAINT `shippings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
