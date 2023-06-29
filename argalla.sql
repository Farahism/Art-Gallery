-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2023 at 10:20 PM
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
-- Database: `argalla`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `name` varchar(75) NOT NULL,
  `password` varchar(320) NOT NULL,
  `email` varchar(320) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `username`, `name`, `password`, `email`) VALUES
(7, 'ruby', 'ruby', '$2y$10$VCTD6lSv/5uYSaDknz7AGuV4m5RVc1l72jSZC7mMoQ5dBlwIFm6Ge', 'ruby@gg.com'),
(8, 'sarh', 'sarh', '$2y$10$IoUl9aE8iGClzqhpY6s8fu0S9E/5gyUBl4JQJo9EBZ599go91CKKa', 'sarh@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `bidding`
--

CREATE TABLE `bidding` (
  `phonenum` int(10) NOT NULL,
  `price` int(10) NOT NULL,
  `paintingID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bidding`
--

INSERT INTO `bidding` (`phonenum`, `price`, `paintingID`) VALUES
(536580215, 2, 1),
(536580215, 3, 1),
(536580215, 3, 1),
(536580215, 3, 1),
(536580215, 3, 1),
(2, 2, 1),
(9999, 3, 1),
(999, 6, 1),
(0, 3, 1),
(7, 3, 3),
(333, 3, 2),
(333, 2, 1),
(22, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `message` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `message`) VALUES
(7, 'sarah', 'great work'),
(8, 'rabab', 'looks ');

-- --------------------------------------------------------

--
-- Table structure for table `proimg`
--

CREATE TABLE `proimg` (
  `id` int(11) NOT NULL,
  `artist_name` varchar(100) NOT NULL,
  `paint_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `bedding` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `proimg`
--

INSERT INTO `proimg` (`id`, `artist_name`, `paint_name`, `description`, `bedding`, `photo`) VALUES
(1, 'Vincent van Gogh', 'The Starry Night.', 'The Starry Night, oil on canvas by Vincent van Gogh, 1889; in the Museum of Modern Art, New York City.', 100, 'pic1.png'),
(2, 'Edvard Munch', 'The Scream.', 'The Scream is one of the most familiar images in modern art. It stemmed from a panic attack that Munch suffered in 1892.', 300, 'pic2.jpg'),
(3, 'Jean Désiré Gustave Courbet ', 'The desperate', 'By the time that he produced this self portrait, it is believed that Gustave Courbet had been rejected several times by the Salon in Paris for other artworks and so the image found in front of us here reflects entirely his frustrations at the time.', 0, 'pic3.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proimg`
--
ALTER TABLE `proimg`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `proimg`
--
ALTER TABLE `proimg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
