-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2021 at 03:33 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pegawai`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi_karyawan`
--

CREATE TABLE `absensi_karyawan` (
  `id` int(11) NOT NULL,
  `nik` int(11) DEFAULT NULL,
  `nama` varchar(255) NOT NULL,
  `absen` int(11) NOT NULL,
  `hadir` int(11) NOT NULL,
  `tidak_hadir` int(11) NOT NULL,
  `izin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `absensi_karyawan`
--

INSERT INTO `absensi_karyawan` (`id`, `nik`, `nama`, `absen`, `hadir`, `tidak_hadir`, `izin`) VALUES
(3, NULL, 'Rosita', 1, 1, 0, 0),
(4, NULL, 'Rosita', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `alasan_karyawan`
--

CREATE TABLE `alasan_karyawan` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alasan` varchar(255) NOT NULL,
  `tanggal` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `alasan_karyawan`
--

INSERT INTO `alasan_karyawan` (`id`, `nama`, `alasan`, `tanggal`) VALUES
(1, 'Kharisma Maulana Pasaribu', 'Sedang Sakit', '22/05/2020');

-- --------------------------------------------------------

--
-- Table structure for table `data_karyawan`
--

CREATE TABLE `data_karyawan` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `salary` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `handphone` varchar(255) NOT NULL,
  `nik` varchar(255) NOT NULL,
  `tentang` varchar(255) NOT NULL,
  `image_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `data_karyawan`
--

INSERT INTO `data_karyawan` (`id`, `name`, `position`, `age`, `start_date`, `salary`, `email`, `handphone`, `nik`, `tentang`, `image_name`) VALUES
(3, 'Rosita', 'Admin', 12, '12/07/2020', 1, 'rosita260796@gmail.com', '2', '2202', '222df', 'gambar-dp-bbm-animasi-lucu-doraemon2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `history_karyawan`
--

CREATE TABLE `history_karyawan` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `info` varchar(255) NOT NULL,
  `tanggal` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `history_karyawan`
--

INSERT INTO `history_karyawan` (`id`, `nama`, `info`, `tanggal`) VALUES
(19, 'Admin', 'Admin telah melakukan login', '07/01/2021 20:03:02'),
(20, 'Rosita', 'Rosita Telah melakukan login', '07/01/2021 20:05:38'),
(21, 'Rosita', 'Rosita telah melakukan absen', '07/01/2021 20:05:58'),
(22, 'Rosita', 'Rosita Telah melakukan login', '07/01/2021 20:05:58'),
(23, 'Rosita', 'Rosita Telah melakukan login', '07/01/2021 20:06:50'),
(24, 'Rosita', 'Rosita Telah melakukan login', '07/01/2021 20:06:53'),
(25, 'Rosita', 'Rosita Telah melakukan login', '07/01/2021 20:47:51'),
(26, 'Rosita', 'Rosita Telah melakukan login', '07/01/2021 20:51:10'),
(27, 'Rosita', 'Rosita Telah melakukan login', '07/01/2021 20:52:09'),
(28, 'Admin', 'Admin telah melakukan login', '07/01/2021 20:52:29'),
(29, 'Admin', 'Admin telah melakukan login', '07/01/2021 20:53:19'),
(30, 'Admin', 'Admin telah melakukan login', '07/01/2021 20:57:09'),
(31, 'Admin', 'Admin telah melakukan login', '07/01/2021 21:28:16'),
(32, 'Admin', 'Admin telah melakukan login', '07/01/2021 21:31:16'),
(33, 'Admin', 'Admin telah melakukan login', '07/01/2021 21:32:16'),
(34, 'Admin', 'Admin telah melakukan login', '07/01/2021 21:33:10');

-- --------------------------------------------------------

--
-- Table structure for table `setting_absensi`
--

CREATE TABLE `setting_absensi` (
  `id` int(11) NOT NULL,
  `mulai_absen` varchar(255) NOT NULL,
  `selesai_absen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `setting_absensi`
--

INSERT INTO `setting_absensi` (`id`, `mulai_absen`, `selesai_absen`) VALUES
(1, '06:00', '24:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_absensi`
--

CREATE TABLE `tbl_absensi` (
  `transid` int(11) UNSIGNED NOT NULL,
  `nik` varchar(255) DEFAULT NULL,
  `waktu` time DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_absensi`
--

INSERT INTO `tbl_absensi` (`transid`, `nik`, `waktu`, `tanggal`) VALUES
(1, '14210028', '14:00:05', '2020-05-22 00:00:00'),
(2, '2202', '20:05:58', '2021-01-07 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users_karyawan`
--

CREATE TABLE `users_karyawan` (
  `id` int(11) NOT NULL,
  `nik` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users_karyawan`
--

INSERT INTO `users_karyawan` (`id`, `nik`, `password`, `level`) VALUES
(1, '14210027', 'admin', 'Admin'),
(4, '2202', 'rosita', 'Karyawan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi_karyawan`
--
ALTER TABLE `absensi_karyawan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `alasan_karyawan`
--
ALTER TABLE `alasan_karyawan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `data_karyawan`
--
ALTER TABLE `data_karyawan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `history_karyawan`
--
ALTER TABLE `history_karyawan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `setting_absensi`
--
ALTER TABLE `setting_absensi`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tbl_absensi`
--
ALTER TABLE `tbl_absensi`
  ADD PRIMARY KEY (`transid`) USING BTREE;

--
-- Indexes for table `users_karyawan`
--
ALTER TABLE `users_karyawan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi_karyawan`
--
ALTER TABLE `absensi_karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `alasan_karyawan`
--
ALTER TABLE `alasan_karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `data_karyawan`
--
ALTER TABLE `data_karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `history_karyawan`
--
ALTER TABLE `history_karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `setting_absensi`
--
ALTER TABLE `setting_absensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_absensi`
--
ALTER TABLE `tbl_absensi`
  MODIFY `transid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users_karyawan`
--
ALTER TABLE `users_karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
