-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Gegenereerd op: 07 apr 2022 om 08:09
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

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Gegevens worden geëxporteerd voor tabel `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Pizzas'),
(2, 'Pasta'),
(3, 'Drinks'),
(4, 'Snacks'),
(5, 'Combo Set');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `favorietproducts`
--

DROP TABLE IF EXISTS `favorietproducts`;
CREATE TABLE IF NOT EXISTS `favorietproducts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Gegevens worden geëxporteerd voor tabel `favorietproducts`
--

INSERT INTO `favorietproducts` (`id`, `user_id`, `product_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `price` int(10) NOT NULL,
  `category_id` int(10) NOT NULL,
  `description` varchar(255) COLLATE utf8_bin NOT NULL,
  `img` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_fk` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Gegevens worden geëxporteerd voor tabel `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `category_id`, `description`, `img`) VALUES
(1, '9\' Round Meat Lover\'s', 50, 1, 'Latest 9\' round pizza', '/img/pizza.jpg'),
(2, '12\' Round Meat Lover\'s', 80, 1, 'Latest 12\' round pizza', '/img/pizza.jpg'),
(3, '9\' Round Meat Lover\'s', 50, 1, 'Latest 9\' round pizza', '/img/pizza.jpg'),
(4, '12\' Round Meat Lover\'s', 80, 1, 'Latest 12\' round pizza', '/img/pizza.jpg'),
(5, '8\'x9\' Rect Meat Lover\'s', 120, 1, 'Latest 8\'x9\'rectangular pizza', '/img/pizza3.jpg'),
(6, '8\'x9\' Rect Meat Lover\'s', 70, 1, 'Latest 8\'x9\'rectangular pizza', '/img/pizza3.jpg'),
(7, '9\' Round Salmon Island', 45, 1, 'Latest 9\' round pizza', '/img/pizza2.jpg'),
(8, 'Salmon with Herb', 30, 2, 'Super Value', '/img/pasta.jpg'),
(9, 'Meat Sauce', 40, 2, 'Super Value', '/img/pasta2.jpg'),
(10, 'Coca Cola', 10, 3, 'Good', '/img/drink.jpg'),
(11, 'Sprite', 10, 3, 'Good', '/img/drink2.jpg'),
(12, 'Fried Chicken', 25, 4, 'Very Good', '/img/snack4.jpg'),
(13, 'Potato Wedge', 25, 4, 'Very Good', '/img/snack.jpg'),
(14, 'Serradura', 15, 4, 'Very Good', '/img/snack2.jpg'),
(15, 'Combo Set A', 120, 5, 'Super Valuable', '/img/ComboSet.jpg'),
(25, 'Combo Set C', 120, 5, 'Super Valuable', '/img/ComboSet.jpg'),
(26, 'Combo Set B', 180, 5, 'Super Good', '/img/ComboSet.jpg'),
(27, 'Combo Set D', 180, 5, 'Super Good', '/img/ComboSet.jpg');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `system_user`
--

DROP TABLE IF EXISTS `system_user`;
CREATE TABLE IF NOT EXISTS `system_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `rool` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Gegevens worden geëxporteerd voor tabel `system_user`
--

INSERT INTO `system_user` (`id`, `name`, `email`, `password`, `rool`) VALUES
(1, 'C', 'Admin', '123456', 'Admin'),
(2, 'M', 'Klant', '123456', 'Klant');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
