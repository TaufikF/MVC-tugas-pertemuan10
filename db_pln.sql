-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2023 at 08:30 AM
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
-- Database: `db_pln`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_golongan`
--

CREATE TABLE `tb_golongan` (
  `gol_id` tinyint(3) NOT NULL,
  `gol_kode` varchar(10) DEFAULT NULL,
  `gol_nama` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_golongan`
--

INSERT INTO `tb_golongan` (`gol_id`, `gol_kode`, `gol_nama`, `created_at`, `updated_at`) VALUES
(1, 'GOL001', 'Rumah Tangga', '2023-11-26 15:37:19', '2023-11-27 00:58:16'),
(3, 'GOL002', 'Pemerintahan', '2023-11-26 17:32:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pelanggan`
--

CREATE TABLE `tb_pelanggan` (
  `pel_id` int(11) NOT NULL,
  `pel_id_gol` tinyint(3) DEFAULT NULL,
  `pel_no` varchar(20) DEFAULT NULL,
  `pel_nama` varchar(50) DEFAULT NULL,
  `pel_alamat` text DEFAULT NULL,
  `pel_hp` varchar(20) DEFAULT NULL,
  `pel_ktp` varchar(50) DEFAULT NULL,
  `pel_seri` varchar(50) DEFAULT NULL,
  `pel_meteran` int(11) DEFAULT NULL,
  `pel_aktif` enum('Y','N') DEFAULT NULL,
  `pel_id_user` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_pelanggan`
--

INSERT INTO `tb_pelanggan` (`pel_id`, `pel_id_gol`, `pel_no`, `pel_nama`, `pel_alamat`, `pel_hp`, `pel_ktp`, `pel_seri`, `pel_meteran`, `pel_aktif`, `pel_id_user`, `created_at`, `updated_at`) VALUES
(1, 1, 'PL001', 'Mutiara Anastasya', 'Sibolangit', '089867872133', '12078819090', '1234567890123456', 1889134812, 'Y', 1, '2023-11-26 16:12:25', '2023-11-27 00:58:49'),
(2, 1, 'PL002', 'Nadia Amanda', 'Beringin', '089812678711', '1207155632', '23129164954555537', 2147483647, 'N', 2, '2023-11-26 17:40:17', '2023-11-27 00:58:44');

-- --------------------------------------------------------

--
-- Table structure for table `tb_users`
--

CREATE TABLE `tb_users` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(50) DEFAULT NULL,
  `user_password` varchar(100) DEFAULT NULL,
  `user_nama` varchar(100) DEFAULT NULL,
  `user_alamat` text DEFAULT NULL,
  `user_hp` varchar(25) DEFAULT NULL,
  `user_pos` varchar(25) DEFAULT NULL,
  `user_role` tinyint(2) DEFAULT NULL,
  `user_aktif` tinyint(2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_users`
--

INSERT INTO `tb_users` (`user_id`, `user_email`, `user_password`, `user_nama`, `user_alamat`, `user_hp`, `user_pos`, `user_role`, `user_aktif`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', '123', 'Admin', 'Medan', '089189667811', '20225', 1, 1, '2023-11-26 15:13:04', '2023-11-26 22:13:57'),
(2, 'taufik@gmail.com', '123', 'Taufik Fadillah', 'Medan', '089012793133', '20012', 1, 1, '2023-11-26 14:09:18', NULL),
(3, 'lianesia@gmail.com', '123', 'Lianesia Chan', 'Lubuk Pakam', '081278991321', '20031', 1, 1, '2023-11-26 15:10:44', '2023-11-26 22:14:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_golongan`
--
ALTER TABLE `tb_golongan`
  ADD PRIMARY KEY (`gol_id`);

--
-- Indexes for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD PRIMARY KEY (`pel_id`),
  ADD KEY `pel_id_user` (`pel_id_user`),
  ADD KEY `pel_id_gol` (`pel_id_gol`);

--
-- Indexes for table `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_golongan`
--
ALTER TABLE `tb_golongan`
  MODIFY `gol_id` tinyint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  MODIFY `pel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD CONSTRAINT `tb_pelanggan_ibfk_1` FOREIGN KEY (`pel_id_user`) REFERENCES `tb_users` (`user_id`),
  ADD CONSTRAINT `tb_pelanggan_ibfk_2` FOREIGN KEY (`pel_id_gol`) REFERENCES `tb_golongan` (`gol_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
