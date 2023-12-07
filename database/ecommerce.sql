-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2023 at 09:22 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

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
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(1, 'salizarana@gmail.com', 'php1234'),
(2, 'ashmita@gmail.com', 'ashmita'),
(4, 'smriti@gmail.com', 'smriti');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(5, 'breakfast', '2023-09-01 08:16:27', '2023-09-01 08:16:27'),
(6, 'lunch', '2023-09-01 08:16:36', '2023-09-01 08:16:36'),
(7, 'dinner', '2023-09-01 08:16:44', '2023-09-01 08:16:44'),
(8, 'dessert', '2023-09-01 08:16:52', '2023-09-01 08:16:52');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `msg` mediumtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `email`, `msg`, `created_at`, `updated_at`) VALUES
(1, 'salizarana@gmail.com', 'Is it visible in database?', '2023-08-31 11:00:12', '2023-08-31 11:00:12');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `username`, `password`, `created_at`, `updated_at`) VALUES
(6, 'saliza@gmail.com', '1234', '2023-09-01 16:36:25', '2023-09-01 16:36:25'),
(7, 'neuer@gmail.com', '123456', '2023-09-03 05:05:01', '2023-09-03 05:05:01'),
(8, 'neuer', '123', '2023-09-03 05:06:40', '2023-09-03 05:06:40'),
(9, 'ashmita@gmail.com', '123', '2023-09-19 04:52:24', '2023-09-19 04:52:24');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `total` int(20) NOT NULL,
  `pay_method` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `address`, `phone`, `total`, `pay_method`, `created_at`, `updated_at`) VALUES
(32, 0, 'Lalitpur-19, Lalitpur', '9811111111', 1090, '$khalti', '2023-09-02 19:28:19', '2023-09-02 19:28:19'),
(33, 6, 'Lalitpur-19, Lalitpur', '9811111111', 1030, '$paypal', '2023-09-02 19:46:00', '2023-09-02 19:46:00'),
(34, 6, '', '', 690, '$khalti', '2023-09-03 09:09:09', '2023-09-03 09:09:09'),
(35, 6, '', '', 0, '$khalti', '2023-09-03 09:09:26', '2023-09-03 09:09:26'),
(36, 6, '', '', 210, '$khalti', '2023-09-03 09:10:02', '2023-09-03 09:10:02'),
(37, 6, '', '', 210, '$paypal', '2023-09-03 09:10:29', '2023-09-03 09:10:29'),
(38, 6, '', '', 210, '$khalti', '2023-09-03 12:35:00', '2023-09-03 12:35:00');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(30, 32, 9, 3, '2023-09-02 19:28:19', '2023-09-02 19:28:19'),
(31, 32, 19, 2, '2023-09-02 19:28:19', '2023-09-02 19:28:19'),
(32, 33, 10, 3, '2023-09-02 19:46:00', '2023-09-02 19:46:00'),
(33, 33, 19, 2, '2023-09-02 19:46:00', '2023-09-02 19:46:00'),
(34, 34, 9, 3, '2023-09-03 09:09:09', '2023-09-03 09:09:09'),
(35, 36, 10, 1, '2023-09-03 09:10:02', '2023-09-03 09:10:02'),
(36, 37, 10, 1, '2023-09-03 09:10:29', '2023-09-03 09:10:29'),
(37, 38, 12, 1, '2023-09-03 12:35:00', '2023-09-03 12:35:00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(11) NOT NULL,
  `picture` varchar(30) NOT NULL,
  `description` mediumtext NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `picture`, `description`, `category_id`, `created_at`, `updated_at`) VALUES
(9, 'Alfajores', 230, 'uploads/i01.jpg', 'An alfajor or alajú is a traditional confection typically made of flour, honey, and nuts.', 8, '2023-09-01 08:18:05', '2023-09-01 08:18:05'),
(10, 'Tiramisu', 210, 'uploads/i02.jpg', 'Tiramisu is a coffee-flavoured Italian dessert. It is made of ladyfingers dipped in coffee, layered with a whipped mixture of eggs, sugar, and mascarpone cheese, flavoured with cocoa. ', 8, '2023-09-01 08:20:22', '2023-09-01 08:20:22'),
(11, 'Green tea chocolate lava', 120, 'uploads/b1.jpg', 'Green tea chocolate lava with ice cream and strawberry.', 8, '2023-09-02 18:38:11', '2023-09-02 18:38:11'),
(12, 'Kiwi crepes', 210, 'uploads/b2.jpg', 'Crepes with halves of strawberry and kiwi', 8, '2023-09-02 18:39:41', '2023-09-02 18:39:41'),
(14, 'Toast Sandwich', 150, 'uploads/br1.jpg', 'Toast sandwich with avocado', 5, '2023-09-02 18:44:37', '2023-09-02 18:44:37'),
(15, 'Normal salad', 130, 'uploads/br2.jpg', 'Bowl of salad with herbs tomatoes and almonds  with strawberries and bread slices', 5, '2023-09-02 18:47:14', '2023-09-02 18:47:14'),
(16, 'Salad with Avocado', 160, 'uploads/br3.jpg', 'Salad with Avocado, oranges.', 5, '2023-09-02 18:48:45', '2023-09-02 18:48:45'),
(17, 'Veggie Pizza', 450, 'uploads/l1.jpg', 'Pizza with eggplant, bell pepper, red onion, tomato and mushroom.', 6, '2023-09-02 18:54:05', '2023-09-02 18:54:05'),
(18, 'Penne pasta with pesto', 230, 'uploads/l2.jpg', 'Penne pasta with pesto sauce, zucchini, green peas and basil. italian food. top view', 6, '2023-09-02 18:57:49', '2023-09-02 18:57:49'),
(19, 'Italian pasta', 200, 'uploads/l3.jpg', 'Authentic flavour', 6, '2023-09-02 18:59:53', '2023-09-02 18:59:53'),
(20, 'Mexican taco', 220, 'uploads/l4.jpg', 'Mexican taco', 7, '2023-09-02 19:01:55', '2023-09-02 19:01:55'),
(21, 'Pozole (Deluxe)', 410, 'uploads/l5.jpg', 'Pozole is a traditional soup  from Mexican cuisine. ', 7, '2023-09-02 19:03:29', '2023-09-02 19:03:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
