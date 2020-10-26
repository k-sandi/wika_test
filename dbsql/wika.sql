-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2020 at 11:02 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wika`
--

-- --------------------------------------------------------

--
-- Table structure for table `absen`
--

CREATE TABLE `absen` (
  `id_absen` int(11) NOT NULL,
  `tgl_absen` date NOT NULL,
  `nip` char(8) NOT NULL,
  `datang` time NOT NULL,
  `pulang` time DEFAULT NULL,
  `id_status` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `absen`
--

INSERT INTO `absen` (`id_absen`, `tgl_absen`, `nip`, `datang`, `pulang`, `id_status`) VALUES
(1, '2012-09-01', 'tk050505', '08:00:00', '12:00:00', 'h'),
(2, '2012-09-01', 'tk050505', '13:00:00', '17:00:00', 'h'),
(3, '2012-09-01', 'tk050506', '08:00:00', '12:00:00', 'h'),
(4, '2012-09-01', 'tk050506', '13:00:00', '17:00:00', 'i'),
(5, '2012-09-01', 'tk050507', '08:00:00', '12:00:00', 's'),
(6, '2012-09-01', 'tk050507', '13:00:00', '17:00:00', 's'),
(7, '2012-09-02', 'tk050505', '08:00:00', '12:00:00', 'i'),
(8, '2012-09-02', 'tk050505', '13:00:00', '17:00:00', 'h'),
(9, '2012-09-02', 'tk050506', '08:00:00', '12:00:00', 'h'),
(10, '2012-09-02', 'tk050506', '13:00:00', '17:00:00', 'h'),
(11, '2012-09-02', 'tk050507', '08:00:00', '12:00:00', 'h'),
(12, '2012-09-02', 'tk050507', '13:00:00', '17:00:00', 'h');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_kelamin`
--

CREATE TABLE `jenis_kelamin` (
  `kode_jk` char(1) NOT NULL,
  `nama_jk` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_kelamin`
--

INSERT INTO `jenis_kelamin` (`kode_jk`, `nama_jk`) VALUES
('l', 'laki-laki'),
('p', 'perempuan');

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `kode_kota` int(11) NOT NULL,
  `nama_kota` varchar(50) NOT NULL,
  `kode_provinsi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`kode_kota`, `nama_kota`, `kode_provinsi`) VALUES
(1371, 'Kota Padang', 0),
(3101, 'Kota Jakarta Pusat', 0),
(3273, 'Kota Bandung', 0),
(3326, 'Kabupaten Tegal', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `nip` char(8) NOT NULL,
  `nama_depan` varchar(30) NOT NULL,
  `nama_belakang` varchar(30) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `kode_jk` char(1) NOT NULL,
  `kode_kota` int(11) NOT NULL,
  `kode_status` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`nip`, `nama_depan`, `nama_belakang`, `tempat_lahir`, `tgl_lahir`, `kode_jk`, `kode_kota`, `kode_status`) VALUES
('tk050505', 'meri', 'yanti', 'padang', '1986-03-02', 'p', 1371, 's'),
('tk050506', 'hardiyanto', '', 'jakarta', '1986-05-28', 'l', 3101, 'm'),
('tk050507', 'adityo', 'h sitepu', 'jakarta', '1988-12-12', 'l', 3101, 's'),
('tk110373', 'latip', 'amin', 'tegal', '1988-12-12', 'l', 3326, 's');

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE `provinsi` (
  `kode_provinsi` int(11) NOT NULL,
  `nama_provinsi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provinsi`
--

INSERT INTO `provinsi` (`kode_provinsi`, `nama_provinsi`) VALUES
(31, 'DKI Jakarta'),
(32, 'Jawa Barat'),
(33, 'Jawa Tengah'),
(13, 'Sumatera Barat');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `kode_status` char(1) NOT NULL,
  `jenis_status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`kode_status`, `jenis_status`) VALUES
('m', 'married'),
('s', 'single');

-- --------------------------------------------------------

--
-- Table structure for table `status_absensi`
--

CREATE TABLE `status_absensi` (
  `id_status` char(2) NOT NULL,
  `nama_status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_absensi`
--

INSERT INTO `status_absensi` (`id_status`, `nama_status`) VALUES
('h', 'hadir'),
('i', 'izin'),
('s', 'sakit'),
('tk', 'tanpa keteranga');

-- --------------------------------------------------------

--
-- Stand-in structure for view `vabsen`
-- (See below for the actual view)
--
CREATE TABLE `vabsen` (
`Tgl Absen` date
,`NIP` char(8)
,`nama` varchar(61)
,`Tempat/tgl Lahir` varchar(43)
,`Asal` varchar(50)
,`Datang` time
,`Pulang` time
,`Status` varchar(15)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vpegawai`
-- (See below for the actual view)
--
CREATE TABLE `vpegawai` (
`nip` char(8)
,`nama` varchar(61)
,`tempat_tgl_lahir` varchar(43)
,`nama_jk` varchar(20)
,`nama_kota` varchar(50)
,`jenis_status` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vpegawaisakit`
-- (See below for the actual view)
--
CREATE TABLE `vpegawaisakit` (
`Tgl Absen` date
,`NIP` char(8)
,`Tempat/tgl Lahir` varchar(43)
,`Asal` varchar(50)
,`Datang` time
,`Pulang` time
,`nama_status` varchar(15)
);

-- --------------------------------------------------------

--
-- Structure for view `vabsen`
--
DROP TABLE IF EXISTS `vabsen`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vabsen`  AS  select `a`.`tgl_absen` AS `Tgl Absen`,`a`.`nip` AS `NIP`,`b`.`nama` AS `nama`,`b`.`tempat_tgl_lahir` AS `Tempat/tgl Lahir`,`b`.`nama_kota` AS `Asal`,`a`.`datang` AS `Datang`,`a`.`pulang` AS `Pulang`,`c`.`nama_status` AS `Status` from ((`absen` `a` join `vpegawai` `b` on(`a`.`nip` = `b`.`nip`)) join `status_absensi` `c` on(`a`.`id_status` = `c`.`id_status`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vpegawai`
--
DROP TABLE IF EXISTS `vpegawai`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vpegawai`  AS  select `a`.`nip` AS `nip`,concat_ws(' ',`a`.`nama_depan`,`a`.`nama_belakang`) AS `nama`,concat_ws(' / ',`a`.`tempat_lahir`,`a`.`tgl_lahir`) AS `tempat_tgl_lahir`,`b`.`nama_jk` AS `nama_jk`,`c`.`nama_kota` AS `nama_kota`,`d`.`jenis_status` AS `jenis_status` from (((`pegawai` `a` join `jenis_kelamin` `b` on(`a`.`kode_jk` = `b`.`kode_jk`)) join `kota` `c` on(`a`.`kode_kota` = `c`.`kode_kota`)) join `status` `d` on(`a`.`kode_status` = `d`.`kode_status`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vpegawaisakit`
--
DROP TABLE IF EXISTS `vpegawaisakit`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vpegawaisakit`  AS  select `a`.`tgl_absen` AS `Tgl Absen`,`a`.`nip` AS `NIP`,`b`.`tempat_tgl_lahir` AS `Tempat/tgl Lahir`,`b`.`nama_kota` AS `Asal`,`a`.`datang` AS `Datang`,`a`.`pulang` AS `Pulang`,`c`.`nama_status` AS `nama_status` from ((`absen` `a` join `vpegawai` `b` on(`a`.`nip` = `b`.`nip`)) join `status_absensi` `c` on(`a`.`id_status` = `c`.`id_status`)) where `a`.`id_status` = 's' ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absen`
--
ALTER TABLE `absen`
  ADD PRIMARY KEY (`id_absen`),
  ADD KEY `fk_id_status` (`id_status`);

--
-- Indexes for table `jenis_kelamin`
--
ALTER TABLE `jenis_kelamin`
  ADD PRIMARY KEY (`kode_jk`),
  ADD UNIQUE KEY `uq_nama_jk` (`nama_jk`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`kode_kota`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`nip`),
  ADD KEY `fk_kode_jk` (`kode_jk`),
  ADD KEY `fk_kode_kota` (`kode_kota`),
  ADD KEY `fk_kode_status` (`kode_status`);

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`kode_provinsi`),
  ADD UNIQUE KEY `uq_nama_provinsi` (`nama_provinsi`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`kode_status`),
  ADD UNIQUE KEY `uq_jenis_status` (`jenis_status`);

--
-- Indexes for table `status_absensi`
--
ALTER TABLE `status_absensi`
  ADD PRIMARY KEY (`id_status`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absen`
--
ALTER TABLE `absen`
  MODIFY `id_absen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absen`
--
ALTER TABLE `absen`
  ADD CONSTRAINT `fk_id_status` FOREIGN KEY (`id_status`) REFERENCES `status_absensi` (`id_status`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `fk_kode_jk` FOREIGN KEY (`kode_jk`) REFERENCES `jenis_kelamin` (`kode_jk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_kode_kota` FOREIGN KEY (`kode_kota`) REFERENCES `kota` (`kode_kota`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_kode_status` FOREIGN KEY (`kode_status`) REFERENCES `status` (`kode_status`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
