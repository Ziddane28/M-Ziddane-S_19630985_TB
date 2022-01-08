-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2022 at 10:32 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbinventaris`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kd_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `kategori_barang` varchar(20) NOT NULL,
  `merek` varchar(50) DEFAULT NULL,
  `ukuran` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kd_barang`, `nama_barang`, `kategori_barang`, `merek`, `ukuran`) VALUES
('123', 'Laptop Asus', 'Laptop', 'Asus', '15inch');

-- --------------------------------------------------------

--
-- Table structure for table `inventaris_keluar`
--

CREATE TABLE `inventaris_keluar` (
  `kd_inventaris_keluar` varchar(15) NOT NULL,
  `kd_inventaris_masuk` varchar(15) NOT NULL,
  `jumlah` varchar(20) NOT NULL,
  `keterangan` varchar(20) NOT NULL,
  `id_user` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventaris_keluar`
--

INSERT INTO `inventaris_keluar` (`kd_inventaris_keluar`, `kd_inventaris_masuk`, `jumlah`, `keterangan`, `id_user`) VALUES
('198212', '12313', '150000', 'Lunas', '9212');

-- --------------------------------------------------------

--
-- Table structure for table `inventaris_masuk`
--

CREATE TABLE `inventaris_masuk` (
  `kd_inventaris_masuk` varchar(15) NOT NULL,
  `kd_barang` varchar(10) NOT NULL,
  `jumlah` varchar(15) NOT NULL,
  `nilai_barang` varchar(20) NOT NULL,
  `id_user` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventaris_masuk`
--

INSERT INTO `inventaris_masuk` (`kd_inventaris_masuk`, `kd_barang`, `jumlah`, `nilai_barang`, `id_user`) VALUES
('123123', '213', '323', '2121', '000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kd_barang`);

--
-- Indexes for table `inventaris_keluar`
--
ALTER TABLE `inventaris_keluar`
  ADD PRIMARY KEY (`kd_inventaris_keluar`);

--
-- Indexes for table `inventaris_masuk`
--
ALTER TABLE `inventaris_masuk`
  ADD PRIMARY KEY (`kd_inventaris_masuk`,`kd_barang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
