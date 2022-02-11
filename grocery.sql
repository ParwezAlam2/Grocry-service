-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2022 at 10:04 AM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grocery`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `phone`, `subject`, `message`) VALUES
(1, 'Swarnav Das', 'swarnavdas97@gmail.com', '9804075173', 'Checking', 'It works correctly. Thank you.'),
(2, 'Imtaj Hossain', 'hossain@gmail.com', '1034567890', 'nothing', 'testing');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `brand` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `category`, `price`, `brand`, `image`) VALUES
(2, 'CauliFlower', 'Vegitables', 15, 'Veg', 'V1.jpg'),
(3, 'Cabbage', 'Vegitables', 18, 'Veg', 'V2.jpg'),
(4, 'Chilli', 'Vegitables', 12, 'Veg', 'V3.jpg'),
(5, 'Carrot', 'Vegitables', 35, 'Veg', 'V4.png'),
(6, 'Tomato', 'Vegitables', 60, 'Veg', 'V5.png'),
(7, 'Ginger', 'Vegitables', 50, 'Veg', 'V6.jpg'),
(8, 'Broccoli', 'Vegitables', 18, 'Veg', 'V7.png'),
(9, 'Corinder Leaf', 'Vegitables', 40, 'Veg', 'V8.jpg'),
(10, 'Onion', 'Vegitables', 80, 'Veg', 'V9.jpg'),
(11, 'Guava', 'Juice', 30, 'Real', 'J10.jpg'),
(12, 'Mango', 'Juice', 35, 'Real', 'J11.jpg'),
(13, 'Pineapple', 'Juice', 40, 'Real', 'J12.jpg'),
(14, 'Apple', 'Juice', 35, 'Tropicana', 'J13.jpg'),
(15, 'Orange', 'Juice', 40, 'Tropicana', 'J15.jpg'),
(16, 'Milk', 'Juice', 25, 'Amul', 'J16.png'),
(17, 'Boneless Chicken', 'Meat-Fish', 320, 'Meat & Fish', 'M17.jpg'),
(18, 'Boneless Mutton', 'Meat-Fish', 760, 'Meat & Fish', 'M18.jpg'),
(19, 'Hilsa', 'Meat-Fish', 800, 'Meat & Fish', 'M20.png'),
(20, 'Mutton', 'Meat-Fish', 630, 'Meat & Fish', 'M21.png'),
(21, 'Prawn', 'Meat-Fish', 550, 'Meat & Fish', 'M22.jpg'),
(22, 'Guava', 'Fruit', 60, 'Fruit', 'F23.jpg'),
(23, 'Pineapple', 'Fruit', 45, 'Fruit', 'F25.png'),
(24, 'Banana', 'Fruit', 48, 'Fruit', 'F26.png'),
(25, 'Orange', 'Fruit', 50, 'Fruit', 'F27.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(100) DEFAULT NULL,
  `role` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'customer'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `role`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2y$10$eIUI0tDGqwqqUIJsH2neFeqd9yG.FoqUw/xC7xHGzpzZGtYHibNh6', 0, 'admin'),
(2, 'User', 'user@gmail.com', '$2y$10$XlaF7VQcd22ZbUJUyyQXbeqIIOBH8f3P6pbsTAgUvN9cI4dys.V8m', NULL, 'customer'),
(3, 'Swarnav Das', 'dasswarnav@gmail.com', '$2y$10$v2xDqFTazwpSegiZjc1Y5eA4vnOkIQjZRi8q9FiQUdEA4OlOL7nJK', NULL, 'customer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

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
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
