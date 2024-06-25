-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2023 at 08:26 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cargosystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_cargo`
--

CREATE TABLE `add_cargo` (
  `id` int(20) NOT NULL,
  `capacity` int(20) NOT NULL,
  `quality` varchar(50) NOT NULL,
  `arrival` varchar(100) NOT NULL,
  `departure` varchar(100) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `Import Location` varchar(50) NOT NULL,
  `Export Location` varchar(50) NOT NULL,
  `Transport Charge` float NOT NULL,
  `Result` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_cargo`
--

INSERT INTO `add_cargo` (`id`, `capacity`, `quality`, `arrival`, `departure`, `Status`, `Import Location`, `Export Location`, `Transport Charge`, `Result`) VALUES
(1, 20, 'Tables', '2 Aug', '6 Aug', 'Approved', 'Goa', 'Chennai', 9000, ''),
(2, 10, 'clothes', '2 Aug', '3 Aug', 'Approved', 'Mumbai', 'Gujrat ', 43000, ''),
(3, 28, 'Goods', '1 Aug', '3 Aug', 'pending', 'Mumbai', 'Tamilnadu', 120000, ''),
(4, 3, 'Bicycle', '20 Aug', '26 Aug', 'Disapproved', 'London', 'Gujrat', 120000, '');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `pass` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `pass`) VALUES
(1, 'cargo@gmail.com', 12345),
(40, 'cargo@gmail.com', 12345),
(41, 'cargo@gmail.com', 12345),
(42, 'cargo@gmail.com', 12345);

-- --------------------------------------------------------

--
-- Table structure for table `cargobook`
--

CREATE TABLE `cargobook` (
  `id` int(20) NOT NULL,
  `quality` varchar(50) NOT NULL,
  `capacity` int(20) NOT NULL,
  `Import From` varchar(50) NOT NULL,
  `Export To` varchar(50) NOT NULL,
  `Transport Charge` int(20) NOT NULL,
  `Status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cargobook`
--

INSERT INTO `cargobook` (`id`, `quality`, `capacity`, `Import From`, `Export To`, `Transport Charge`, `Status`) VALUES
(1, 'Clothes', 5, 'Mumbai', 'Goa', 12000, 'Approved'),
(2, 'Mobiles', 4, 'London', 'Gujrat', 32222, 'Approved'),
(3, 'AC', 26, 'Mumbai', 'Gujrat', 18000, 'Approved'),
(4, 'Headphones', 6, 'Gujrat', 'Goa', 9000, 'Approved'),
(5, 'Books', 10, 'Chennai', 'Tamilnadu', 3000, 'Disapproved'),
(6, 'Tables', 30, 'Gujrat', 'Mumbai', 18000, 'pending'),
(7, 'Sandal Wood', 50, 'Tamilnadu', 'Mumbai', 102000, 'pending'),
(8, 'Tanks', 1200, 'Goa', 'Mumbai', 240000, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `cargouser`
--

CREATE TABLE `cargouser` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` int(20) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `contact` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cargouser`
--

INSERT INTO `cargouser` (`id`, `name`, `email`, `pass`, `city`, `state`, `contact`) VALUES
(1, 'Nikhil', 'Nick@gmail.com', 2023, 'Shahada', 'Maharashtra', 1234567899),
(2, 'Don', 'don@gmail.com', 1222, 'Jalgaon', 'Maharashtra', 1212121233);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `pass` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `pass`) VALUES
(1, 'rao@gmail.com', 123),
(2, 'patil@gmail.com', 111),
(3, 'raj@gmail.com', 222),
(4, 'banti@gmail.com', 333),
(5, 'bablu@gmail.com', 555),
(7, 'rohan@gmail.com', 909),
(11, 'q@gmail.com', 1211),
(15, 'super@gmail.com', 212),
(28, 'rohan@gmail.com', 909),
(29, 'rohan@gmail.com', 909),
(30, 'rohan@gmail.com', 909);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_cargo`
--
ALTER TABLE `add_cargo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cargobook`
--
ALTER TABLE `cargobook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cargouser`
--
ALTER TABLE `cargouser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_cargo`
--
ALTER TABLE `add_cargo`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `cargobook`
--
ALTER TABLE `cargobook`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cargouser`
--
ALTER TABLE `cargouser`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
