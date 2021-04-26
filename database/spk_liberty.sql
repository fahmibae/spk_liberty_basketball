-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2020 at 12:26 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `spk_liberty`
--

-- --------------------------------------------------------

--
-- Table structure for table `alternatif`
--

CREATE TABLE IF NOT EXISTS `alternatif` (
`id_alternatif` int(11) NOT NULL,
  `id_peserta` int(11) DEFAULT NULL,
  `id_kriteria` int(11) DEFAULT NULL,
  `nilai` varchar(50) NOT NULL DEFAULT '0',
  `keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alternatif`
--

INSERT INTO `alternatif` (`id_alternatif`, `id_peserta`, `id_kriteria`, `nilai`, `keterangan`) VALUES
(31, 1, 1, '90', 'Sangat Bagus'),
(32, 1, 2, '89', 'Sangat Bagus'),
(33, 1, 3, '92', 'Sangat Bagus'),
(34, 1, 4, '85', 'Sangat Bagus'),
(35, 1, 5, '88', 'Sangat Bagus'),
(36, 1, 6, '85', 'Sangat Bagus'),
(37, 2, 1, '88', 'Sangat Bagus'),
(38, 2, 2, '84', 'Sangat Bagus'),
(39, 2, 3, '90', 'Sangat Bagus'),
(40, 2, 4, '86', 'Sangat Bagus'),
(41, 2, 5, '85', 'Sangat Bagus'),
(42, 2, 6, '80', 'Sangat Bagus'),
(43, 3, 1, '85', 'Sangat Bagus'),
(44, 3, 2, '85', 'Sangat Bagus'),
(45, 3, 3, '84', 'Sangat Bagus'),
(46, 3, 4, '92', 'Sangat Bagus'),
(47, 3, 5, '89', 'Sangat Bagus'),
(48, 3, 6, '80', 'Sangat Bagus'),
(49, 4, 1, '86', 'Sangat Bagus'),
(50, 4, 2, '84', 'Sangat Bagus'),
(51, 4, 3, '88', 'Sangat Bagus'),
(52, 4, 4, '83', 'Sangat Bagus'),
(53, 4, 5, '89', 'Sangat Bagus'),
(54, 4, 6, '82', 'Sangat Bagus'),
(55, 5, 1, '88', 'Sangat Bagus'),
(56, 5, 2, '86', 'Sangat Bagus'),
(57, 5, 3, '89', 'Sangat Bagus'),
(58, 5, 4, '90', 'Sangat Bagus'),
(59, 5, 5, '89', 'Sangat Bagus'),
(60, 5, 6, '81', 'Sangat Bagus');

-- --------------------------------------------------------

--
-- Table structure for table `analisa`
--

CREATE TABLE IF NOT EXISTS `analisa` (
`id_analisa` int(11) NOT NULL,
  `id_peserta` int(11) DEFAULT NULL,
  `id_kriteria` int(11) DEFAULT NULL,
  `nilai_analisa` varchar(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `analisa`
--

INSERT INTO `analisa` (`id_analisa`, `id_peserta`, `id_kriteria`, `nilai_analisa`) VALUES
(1, 1, 1, '35.00'),
(2, 1, 2, '20.00'),
(3, 1, 3, '15.00'),
(4, 1, 4, '18.40'),
(5, 1, 5, '9.90'),
(6, 1, 6, '10.00'),
(7, 2, 1, '34.30'),
(8, 2, 2, '18.80'),
(9, 2, 3, '14.70'),
(10, 2, 4, '18.60'),
(11, 2, 5, '9.60'),
(12, 2, 6, '9.40'),
(13, 3, 1, '32.90'),
(14, 3, 2, '19.20'),
(15, 3, 3, '13.65'),
(16, 3, 4, '20.00'),
(17, 3, 5, '10.00'),
(18, 3, 6, '9.40'),
(19, 4, 1, '33.60'),
(20, 4, 2, '18.80'),
(21, 4, 3, '14.40'),
(22, 4, 4, '18.00'),
(23, 4, 5, '10.00'),
(24, 4, 6, '9.60'),
(25, 5, 1, '34.30'),
(26, 5, 2, '19.40'),
(27, 5, 3, '14.55'),
(28, 5, 4, '19.60'),
(29, 5, 5, '10.00'),
(30, 5, 6, '9.50');

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE IF NOT EXISTS `kriteria` (
`id_kriteria` int(11) NOT NULL,
  `kriteria` varchar(255) DEFAULT NULL,
  `bobot` varchar(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `kriteria`, `bobot`) VALUES
(1, 'Agility', '35'),
(2, 'shooting', '20'),
(3, 'dribbling', '15'),
(4, 'body balance', '20'),
(5, 'running', '10'),
(6, 'teamwork', '10');

-- --------------------------------------------------------

--
-- Table structure for table `normalisasi`
--

CREATE TABLE IF NOT EXISTS `normalisasi` (
`id_normalisasi` int(11) NOT NULL,
  `id_peserta` int(11) DEFAULT NULL,
  `id_kriteria` int(11) DEFAULT NULL,
  `normalisasi` varchar(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `normalisasi`
--

INSERT INTO `normalisasi` (`id_normalisasi`, `id_peserta`, `id_kriteria`, `normalisasi`) VALUES
(1, 1, 1, '1.00'),
(2, 1, 2, '1.00'),
(3, 1, 3, '1.00'),
(4, 1, 4, '0.92'),
(5, 1, 5, '0.99'),
(6, 1, 6, '1.00'),
(7, 2, 1, '0.98'),
(8, 2, 2, '0.94'),
(9, 2, 3, '0.98'),
(10, 2, 4, '0.93'),
(11, 2, 5, '0.96'),
(12, 2, 6, '0.94'),
(13, 3, 1, '0.94'),
(14, 3, 2, '0.96'),
(15, 3, 3, '0.91'),
(16, 3, 4, '1.00'),
(17, 3, 5, '1.00'),
(18, 3, 6, '0.94'),
(19, 4, 1, '0.96'),
(20, 4, 2, '0.94'),
(21, 4, 3, '0.96'),
(22, 4, 4, '0.90'),
(23, 4, 5, '1.00'),
(24, 4, 6, '0.96'),
(25, 5, 1, '0.98'),
(26, 5, 2, '0.97'),
(27, 5, 3, '0.97'),
(28, 5, 4, '0.98'),
(29, 5, 5, '1.00'),
(30, 5, 6, '0.95');

-- --------------------------------------------------------

--
-- Table structure for table `peserta`
--

CREATE TABLE IF NOT EXISTS `peserta` (
`id_peserta` int(11) NOT NULL,
  `nama_peserta` varchar(255) DEFAULT NULL,
  `umur` varchar(50) DEFAULT NULL,
  `alamat` text,
  `jenis_kelamin` enum('laki-laki','perempuan') DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peserta`
--

INSERT INTO `peserta` (`id_peserta`, `nama_peserta`, `umur`, `alamat`, `jenis_kelamin`, `image`) VALUES
(1, 'Firman', '19 Tahun', 'Arjawinangun', 'laki-laki', '431434.jpg'),
(2, 'Manaf', '19 Tahun', 'Panguragan', 'laki-laki', '713941.jpg'),
(3, 'Cashadi', '19 Tahun', 'Susukan', 'laki-laki', '969454.jpg'),
(4, 'Mansyur', '19', 'Tegalgubug', 'laki-laki', '969454.jpg'),
(5, 'Hadi', '19 Tahun', 'Panguragan', 'laki-laki', '969454.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `rangking`
--

CREATE TABLE IF NOT EXISTS `rangking` (
`id_rangking` int(11) NOT NULL,
  `id_peserta` int(11) DEFAULT NULL,
  `nama_peserta` varchar(255) DEFAULT NULL,
  `nilai_rangking` varchar(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rangking`
--

INSERT INTO `rangking` (`id_rangking`, `id_peserta`, `nama_peserta`, `nilai_rangking`) VALUES
(1, 1, 'Firman', '108.3'),
(2, 2, 'Manaf', '105.4'),
(3, 3, 'Cashadi', '105.15'),
(4, 4, 'Mansyur', '104.4'),
(5, 5, 'Hadi', '107.35');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id_user` int(11) NOT NULL,
  `nama_user` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `level` enum('admin','user') DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `email`, `password`, `image`, `level`) VALUES
(1, 'fahminudin', 'nudinfahmi04@gmail.com', '1ab7c96fa289f4a317ea2780d8b312bd', 'KTP.jpeg', 'admin'),
(2, 'Ibnu Abbas', 'ibnuabbas19@gmail.com', '4c76fe14f03682c862fd985368d816cc', '547711.jpg', 'user'),
(3, 'Solekhudin', 'solekhudin1992@gmail.com', '76fea4f016ba7dc0c27ab856460fb292', '683740.jpg', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alternatif`
--
ALTER TABLE `alternatif`
 ADD PRIMARY KEY (`id_alternatif`);

--
-- Indexes for table `analisa`
--
ALTER TABLE `analisa`
 ADD PRIMARY KEY (`id_analisa`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
 ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `normalisasi`
--
ALTER TABLE `normalisasi`
 ADD PRIMARY KEY (`id_normalisasi`);

--
-- Indexes for table `peserta`
--
ALTER TABLE `peserta`
 ADD PRIMARY KEY (`id_peserta`);

--
-- Indexes for table `rangking`
--
ALTER TABLE `rangking`
 ADD PRIMARY KEY (`id_rangking`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alternatif`
--
ALTER TABLE `alternatif`
MODIFY `id_alternatif` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `analisa`
--
ALTER TABLE `analisa`
MODIFY `id_analisa` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `kriteria`
--
ALTER TABLE `kriteria`
MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `normalisasi`
--
ALTER TABLE `normalisasi`
MODIFY `id_normalisasi` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `peserta`
--
ALTER TABLE `peserta`
MODIFY `id_peserta` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `rangking`
--
ALTER TABLE `rangking`
MODIFY `id_rangking` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
