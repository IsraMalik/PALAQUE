-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2023 at 10:12 AM
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
-- Database: `db_parkir`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_akses_admin`
--

CREATE TABLE `tb_akses_admin` (
  `username` varchar(50) NOT NULL,
  `jam_login` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_akses_admin`
--

INSERT INTO `tb_akses_admin` (`username`, `jam_login`) VALUES
('alex', '20:03'),
('alex', '14:11'),
('admin', '15:41'),
('admin', '21:39'),
('admin', '09:08'),
('admin', '09:09'),
('admin', '17:20'),
('admin', '22:50'),
('admin', '23:05'),
('admin', '23:48'),
('admin', '02:17'),
('admin', '04:19'),
('admin', '20:28'),
('admin', '15:30'),
('admin', '18:32'),
('admin', '23:43'),
('admin', '13:38'),
('admin', '02:14'),
('admin', '09:24'),
('admin', '14:04'),
('palaque', '14:07'),
('palaque', '14:15'),
('palaque', '05:32'),
('Wakanda', '14:57');

-- --------------------------------------------------------

--
-- Table structure for table `tb_daftar_parkir`
--

CREATE TABLE `tb_daftar_parkir` (
  `kode` varchar(5) NOT NULL,
  `plat_nomor` varchar(10) NOT NULL,
  `jenis` varchar(22) NOT NULL,
  `merk` varchar(30) NOT NULL,
  `jam_masuk` varchar(9) NOT NULL,
  `hitung_jam_masuk` int(2) NOT NULL,
  `status` varchar(2) NOT NULL,
  `jam_keluar` varchar(9) NOT NULL,
  `Harga` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_daftar_parkir`
--

INSERT INTO `tb_daftar_parkir` (`kode`, `plat_nomor`, `jenis`, `merk`, `jam_masuk`, `hitung_jam_masuk`, `status`, `jam_keluar`, `Harga`) VALUES
('EP380', 'N0V3124', 'Mobil', 'Kijang', '13:05', 13, '2', '13', 2000),
('EP383', 'GFTYA6', 'Mobil', 'faf', '01:16', 1, '2', '1', 2000),
('EP389', 'DD3354MQ', 'Motor', 'Honda', '13:16', 13, '1', '', 0),
('EP687', 'TRGG', 'Motor', 'HHH', '13:35', 13, '2', '13', 1000),
('EP765', 'DN29810F', 'Motor', 'roiasdi', '01:15', 1, '2', '1', 1000),
('EP768', 'ggt', 'Motor', 'hhy', '08:59', 8, '1', '', 0),
('EP777', 'HHGT', 'Motor', 'JY', '13:32', 13, '2', '', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_login`
--

CREATE TABLE `tb_login` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_login`
--

INSERT INTO `tb_login` (`username`, `password`) VALUES
('palaque', 'admin'),
('Wakanda', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_daftar_parkir`
--
ALTER TABLE `tb_daftar_parkir`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `tb_login`
--
ALTER TABLE `tb_login`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
