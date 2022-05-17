-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Gegenereerd op: 17 mei 2022 om 23:18
-- Serverversie: 5.7.31
-- PHP-versie: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--
CREATE DATABASE IF NOT EXISTS `shop` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `shop`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Pizzas'),
(2, 'Pasta'),
(3, 'Drinks'),
(4, 'Snacks'),
(5, 'Combobox');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `favorietproducts`
--

DROP TABLE IF EXISTS `favorietproducts`;
CREATE TABLE IF NOT EXISTS `favorietproducts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `favorietproducts`
--

INSERT INTO `favorietproducts` (`id`, `product_id`, `user_id`) VALUES
(12, 4, 2),
(11, 2, 2),
(10, 8, 2),
(9, 3, 2);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_04_07_082421_systemuser', 1),
(3, '2022_04_07_082510_categorie', 1),
(4, '2022_04_07_082549_favorietproducts', 1),
(5, '2022_04_07_082629_products', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `description`, `image`, `category_id`) VALUES
(67, 'pizza margherita', 20, 'Lekker pizza', 'https://beringerzandcatering.nl/wp-content/uploads/2020/03/margherita.png', 1),
(68, 'pizza pepperoni', 20, 'Lekker pizza', 'https://www.dominos.nl/ManagedAssets/NL/product/PPPE/NL_PPPE_all_hero_7823.jpg?v-1169967010', 1),
(2, 'Pizza Kabab', 13, 'Lekker pizza', 'https://media-cdn.tripadvisor.com/media/photo-s/0f/70/d2/91/pizza-kebab-completa.jpg', 1),
(3, 'Cola', 3, 'Doosje cola', 'https://www.kantoorartikelen.nl/autoimg/2444880/1200x1200/resize/coca-cola-regular-frisdrank-0-33-l-blik-pak-24-x-330-milliliter-.jpg', 3),
(4, 'Cola Zero', 2, 'Doosje cola', 'https://www.kantoorartikelen.nl/autoimg/2444889/1024x768/ffffff/coca-cola-zero-frisdrank-0-33-l-blik-pak-24-stuks-.jpg', 3),
(5, 'Pasta Salade', 5, 'Pasta met salade', 'https://miljuschka.nl/wp-content/uploads/2021/02/Pastasalade.jpg', 2),
(6, 'Pasta Carbonara', 6, 'Pasta met carbonara', 'https://www.leukerecepten.nl/wp-content/uploads/2021/11/Lactosevrije-pasta-carbonara-scaled.jpg', 2),
(7, 'Bitterballen', 2, 'Bitterballen', 'https://images.vrt.be/orig/2018/06/13/d283d7de-6f07-11e8-abcc-02b7b76bf47f.png', 4),
(8, 'mini loempia\'s', 2, 'mini loempia', 'https://www.ducafrozenfood.nl/wp-content/uploads/2021/03/AZ_mini-loempias.jpg', 4),
(69, 'CHICKEN COMBOBOX', 15, 'Lekker', 'https://www.dominos.nl/media/1093/chicken-combo_3x4_dominos-pizza.png', 5),
(70, 'CHICKEN COMBOBOX', 15, 'Lekker', 'https://www.dominos.nl/media/1093/chicken-combo_3x4_dominos-pizza.png', 5);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `system_user`
--

DROP TABLE IF EXISTS `system_user`;
CREATE TABLE IF NOT EXISTS `system_user` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rol` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `system_user`
--

INSERT INTO `system_user` (`id`, `name`, `email`, `password`, `rol`) VALUES
(1, 'Hamzah', 'Admin@Admin.nl', '11', 'Admin'),
(2, 'Yazan', 'Klant@Klant.nl', '11', 'Klant'),
(3, 'Stef', 'Stef', '11', 'Klant');


--
-- Metadata
--
USE `phpmyadmin`;

--
-- Metadata voor tabel category
--

--
-- Metadata voor tabel favorietproducts
--

--
-- Metadata voor tabel migrations
--

--
-- Metadata voor tabel personal_access_tokens
--

--
-- Metadata voor tabel products
--

--
-- Metadata voor tabel system_user
--

--
-- Metadata voor database shop
--
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
