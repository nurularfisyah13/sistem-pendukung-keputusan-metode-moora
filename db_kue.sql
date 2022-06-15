-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2022 at 06:56 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kue`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_acc`
--

CREATE TABLE `admin_acc` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(42) NOT NULL,
  `level` enum('admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_acc`
--

INSERT INTO `admin_acc` (`id_admin`, `nama_admin`, `username`, `password`, `level`) VALUES
(2, 'Administrator Petugas 2', 'admin2', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(3, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(4, 'nadya', 'nadya', '1e6eb2590ee576e8f788729ad596403a', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `data_kue`
--

CREATE TABLE `data_kue` (
  `id` int(11) NOT NULL,
  `nama_kue` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `data_siswa`
--

CREATE TABLE `data_siswa` (
  `id_siswa` int(11) NOT NULL,
  `namasiswa` varchar(50) NOT NULL,
  `penghasilan` varchar(100) NOT NULL,
  `jarak` varchar(100) NOT NULL,
  `tanggungan` varchar(100) NOT NULL,
  `pendidikan` varchar(100) NOT NULL,
  `ratanilai` varchar(100) NOT NULL,
  `kehadiran` int(3) NOT NULL,
  `nis` int(50) NOT NULL,
  `nama_ayah` varchar(50) NOT NULL,
  `nama_ibu` varchar(50) NOT NULL,
  `pekerjaan_ayah` varchar(50) NOT NULL,
  `pekerjaan_ibu` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `data_siswa`
--

INSERT INTO `data_siswa` (`id_siswa`, `namasiswa`, `penghasilan`, `jarak`, `tanggungan`, `pendidikan`, `ratanilai`, `kehadiran`, `nis`, `nama_ayah`, `nama_ibu`, `pekerjaan_ayah`, `pekerjaan_ibu`, `alamat`) VALUES
(1, 'Karamel', 'Mahal', 'Sangat Enak', 'Cukup Menarik', 'Lembut', 'Cukup Wangi', 0, 1, '', '', '', '', 'alamat'),
(2, 'Banana Cake', 'Murah', 'Sangat Enak', 'Menarik', 'Lembut', 'Sangat Wangi', 0, 1, '', '', '', '', 'alamat'),
(3, 'Bolu Gulung Ceres Keju', 'Mahal', 'Enak', 'Sangat Menarik', 'Lembut', 'Cukup Wangi', 0, 1, '', '', '', '', 'alamat'),
(4, 'Bolu Gulung Ceres Kacang', 'Mahal', 'Enak', 'Menarik', 'Lembut', 'Cukup Wangi', 0, 1, '', '', '', '', 'alamat'),
(5, 'Bika Ambon Pandan', 'Mahal', 'Cukup Enak', 'Kurang Menarik', 'Lembek', 'Cukup Wangi', 0, 1, '', '', '', '', 'alamat'),
(6, 'Brownies Chocomoist', 'Mahal', 'Sangat Enak', 'Cukup Menarik', 'Lembut', 'Wangi', 0, 1, '', '', '', '', 'alamat'),
(7, 'Brownies Panggang', 'Mahal', 'Sangat Enak', 'Cukup Menarik', 'Lembut', 'Wangi', 0, 1, '', '', '', '', 'alamat'),
(8, 'Pisang Karamel Kecil', 'Mahal', 'Enak', 'Kurang Menarik', 'Lengket', 'Wangi', 0, 1, '', '', '', '', 'alamat'),
(9, 'Roti Butter Coklat', 'Murah', 'Enak', 'Cukup Menarik', 'Gurih', 'Cukup Wangi', 0, 1, '', '', '', '', 'alamat'),
(10, 'Banana Chocomist', 'Mahal', 'Enak', 'Kurang Menarik', 'Lembut', 'Wangi', 0, 1, '', '', '', '', 'alamat'),
(11, 'Bolu Gulung Aneka Rasa', 'Mahal', 'Enak', 'Kurang Menarik', 'Lembut', 'Cukup Wangi', 0, 1, '', '', '', '', 'alamat'),
(12, 'Bika Ambon Original', 'Mahal', 'Enak', 'Cukup Menarik', 'Lengket', 'Cukup Wangi', 0, 1, '', '', '', '', 'alamat'),
(13, 'Pisang Karamel Besar', 'Mahal', 'Sangat Enak', 'Kurang Menarik', 'Lembut', 'Wangi', 0, 1, '', '', '', '', 'alamat'),
(14, 'Cake Labu', 'Mahal', 'Enak', 'Kurang Menarik', 'Lembut', 'Cukup Wangi', 0, 1, '', '', '', '', 'alamat'),
(15, 'Bolu Gulung 3 Rasa', 'Mahal', 'Enak', 'Sangat Menarik', 'Lembut', 'Cukup Wangi', 0, 1, '', '', '', '', 'alamat'),
(16, 'Cake Tape Ubi', 'Mahal', 'Cukup Enak', 'Kurang Menarik', 'Lembut', 'Cukup Wangi', 0, 1, '', '', '', '', 'alamat'),
(17, 'Brownies Kukus', 'Mahal', 'Sangat Enak', 'Cukup Menarik', 'Lembut', 'Wangi', 0, 1, '', '', '', '', 'alamat'),
(18, 'Lapis Legit', 'Sangat Mahal', 'Sangat Enak', 'Cukup Menarik', 'Lembut', 'Wangi', 0, 1, '', '', '', '', 'alamat'),
(19, 'Bolu Gulung Spesial Ceres keju', 'Mahal', 'Enak', 'Sangat Menarik', 'Lembut', 'Cukup Wangi', 0, 1, '', '', '', '', 'alamat'),
(20, 'Sponge Ceres Keju', 'Mahal', 'Enak', 'Sangat Menarik', 'Lembut', 'Cukup Wangi', 0, 1, '', '', '', '', 'alamat'),
(21, 'Lapis Coklat', 'Mahal', 'Enak', 'Menarik', 'Lembut', 'Wangi', 0, 1, '', '', '', '', 'alamat'),
(22, 'Lapis Pandan', 'Mahal', 'Enak', 'Menarik', 'Lembut', 'Wangi', 0, 1, '', '', '', '', 'alamat'),
(23, 'Merbel Cake', 'Mahal', 'Enak', 'Cukup Menarik', 'Lembut', 'Cukup Wangi', 0, 1, '', '', '', '', 'alamat'),
(24, 'Cake Nenas', 'Mahal', 'Enak', 'Cukup Menarik', 'Lembut', 'Sangat Wangi', 0, 1, '', '', '', '', 'alamat'),
(25, 'Brownies Choco Pandan', 'Mahal', 'Enak', 'Menarik', 'Lembut', 'Wangi', 0, 1, '', '', '', '', 'alamat');

-- --------------------------------------------------------

--
-- Table structure for table `kriteriajarak`
--

CREATE TABLE `kriteriajarak` (
  `id_jarak` int(11) NOT NULL,
  `jarak` varchar(50) NOT NULL,
  `nilai` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `kriteriajarak`
--

INSERT INTO `kriteriajarak` (`id_jarak`, `jarak`, `nilai`) VALUES
(1, 'Sangat Enak', '5'),
(2, 'Enak', '4'),
(3, 'Cukup Enak', '3'),
(4, 'Kurang Enak', '2'),
(5, 'Sangat Kurang Enak', '1');

-- --------------------------------------------------------

--
-- Table structure for table `kriteriakehadiran`
--

CREATE TABLE `kriteriakehadiran` (
  `id_kehadiran` int(11) NOT NULL,
  `kehadiran` varchar(20) NOT NULL,
  `nilai` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `kriteriakehadiran`
--

INSERT INTO `kriteriakehadiran` (`id_kehadiran`, `kehadiran`, `nilai`) VALUES
(1, '100', '30'),
(2, '89', '20'),
(3, '69', '10');

-- --------------------------------------------------------

--
-- Table structure for table `kriteriapendidikan`
--

CREATE TABLE `kriteriapendidikan` (
  `id_pendidikan` int(11) NOT NULL,
  `pendidikan` varchar(30) NOT NULL,
  `nilai` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `kriteriapendidikan`
--

INSERT INTO `kriteriapendidikan` (`id_pendidikan`, `pendidikan`, `nilai`) VALUES
(1, 'Lembut', '5'),
(2, 'Gurih', '4'),
(3, 'Renyah', '3'),
(4, 'Lembek', '2'),
(5, 'Lengket', '1');

-- --------------------------------------------------------

--
-- Table structure for table `kriteriapenghasilanortu`
--

CREATE TABLE `kriteriapenghasilanortu` (
  `id_penghasilan` int(11) NOT NULL,
  `penghasilan` varchar(50) NOT NULL,
  `nilai` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `kriteriapenghasilanortu`
--

INSERT INTO `kriteriapenghasilanortu` (`id_penghasilan`, `penghasilan`, `nilai`) VALUES
(1, 'Sangat murah', '5'),
(2, 'Murah', '4'),
(3, 'Cukup murah', '3'),
(4, 'Mahal', '2'),
(5, 'Sangat mahal', '1');

-- --------------------------------------------------------

--
-- Table structure for table `kriteriaratanilai`
--

CREATE TABLE `kriteriaratanilai` (
  `id_ratanilai` int(11) NOT NULL,
  `ratanilai` varchar(20) NOT NULL,
  `nilai` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `kriteriaratanilai`
--

INSERT INTO `kriteriaratanilai` (`id_ratanilai`, `ratanilai`, `nilai`) VALUES
(1, 'Sangat Wangi', '5'),
(2, 'Wangi', '4'),
(3, 'Cukup Wangi', '3'),
(4, 'Kurang Wangi', '2'),
(5, 'Sangat Kurang Wangi', '1');

-- --------------------------------------------------------

--
-- Table structure for table `kriteriatanggungan`
--

CREATE TABLE `kriteriatanggungan` (
  `id_tanggungan` int(11) NOT NULL,
  `tanggungan` varchar(25) NOT NULL,
  `nilai` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `kriteriatanggungan`
--

INSERT INTO `kriteriatanggungan` (`id_tanggungan`, `tanggungan`, `nilai`) VALUES
(1, 'Sangat Menarik', '5'),
(2, 'Menarik', '4'),
(3, 'Cukup Menarik', '3'),
(4, 'Kurang Menarik', '2'),
(5, 'Sangat Kurang Menarik', '1');

-- --------------------------------------------------------

--
-- Table structure for table `moo_alternatif`
--

CREATE TABLE `moo_alternatif` (
  `id_alternatif` tinyint(3) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `alternatif` varchar(50) NOT NULL,
  `jarak` varchar(20) NOT NULL,
  `ratanilai` varchar(20) NOT NULL,
  `penghasilan` varchar(20) NOT NULL,
  `tanggungan` varchar(20) NOT NULL,
  `pendidikan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `moo_alternatif`
--

INSERT INTO `moo_alternatif` (`id_alternatif`, `id_siswa`, `alternatif`, `jarak`, `ratanilai`, `penghasilan`, `tanggungan`, `pendidikan`) VALUES
(1, 1, 'Karamel', 'Sangat Enak', 'Cukup Wangi', 'Mahal', 'Cukup Menarik', 'Lembut'),
(2, 2, 'Banana Cake', 'Sangat Enak', 'Sangat Wangi', 'Murah', 'Menarik', 'Lembut'),
(3, 3, 'Bolu Gulung Ceres Keju', 'Enak', 'Cukup Wangi', 'Mahal', 'Sangat Menarik', 'Lembut'),
(4, 4, 'Bolu Gulung Ceres Kacang', 'Enak', 'Cukup Wangi', 'Mahal', 'Menarik', 'Lembut'),
(5, 5, 'Bika Ambon Pandan', 'Cukup Enak', 'Cukup Wangi', 'Mahal', 'Kurang Menarik', 'Lembek'),
(6, 6, 'Brownies Chocomoist', 'Sangat Enak', 'Wangi', 'Mahal', 'Cukup Menarik', 'Lembut'),
(7, 7, 'Brownies Panggang', 'Sangat Enak', 'Wangi', 'Mahal', 'Cukup Menarik', 'Lembut'),
(8, 8, 'Pisang Karamel Kecil', 'Enak', 'Wangi', 'Mahal', 'Kurang Menarik', 'Lengket'),
(9, 9, 'Roti Butter Coklat', 'Enak', 'Cukup Wangi', 'Murah', 'Cukup Menarik', 'Gurih'),
(10, 10, 'Banana Chocomist', 'Enak', 'Wangi', 'Mahal', 'Kurang Menarik', 'Lembut'),
(11, 11, 'Bolu Gulung Aneka Rasa', 'Enak', 'Cukup Wangi', 'Mahal', 'Kurang Menarik', 'Lembut'),
(12, 12, 'Bika Ambon Original', 'Enak', 'Cukup Wangi', 'Mahal', 'Cukup Menarik', 'Lengket'),
(13, 13, 'Pisang Karamel Besar', 'Sangat Enak', 'Wangi', 'Mahal', 'Kurang Menarik', 'Lembut'),
(14, 14, 'Cake Labu', 'Enak', 'Cukup Wangi', 'Mahal', 'Kurang Menarik', 'Lembut'),
(15, 15, 'Bolu Gulung 3 Rasa', 'Enak', 'Cukup Wangi', 'Mahal', 'Sangat Menarik', 'Lembut'),
(16, 16, 'Cake Tape Ubi', 'Cukup Enak', 'Cukup Wangi', 'Mahal', 'Kurang Menarik', 'Lembut'),
(17, 17, 'Brownies Kukus', 'Sangat Enak', 'Wangi', 'Mahal', 'Cukup Menarik', 'Lembut'),
(18, 18, 'Lapis Legit', 'Sangat Enak', 'Wangi', 'Sangat Mahal', 'Cukup Menarik', 'Lembut'),
(19, 19, 'Bolu Gulung Spesial Ceres keju', 'Enak', 'Cukup Wangi', 'Mahal', 'Sangat Menarik', 'Lembut'),
(20, 20, 'Sponge Ceres Keju', 'Enak', 'Cukup Wangi', 'Mahal', 'Sangat Menarik', 'Lembut'),
(21, 21, 'Lapis Coklat', 'Enak', 'Wangi', 'Mahal', 'Menarik', 'Lembut'),
(22, 22, 'Lapis Pandan', 'Enak', 'Wangi', 'Mahal', 'Menarik', 'Lembut'),
(23, 23, 'Merbel Cake', 'Enak', 'Cukup Wangi', 'Mahal', 'Cukup Menarik', 'Lembut'),
(24, 24, 'Cake Nenas', 'Enak', 'Sangat Wangi', 'Mahal', 'Cukup Menarik', 'Lembut'),
(25, 25, 'Brownies Choco Pandan', 'Enak', 'Wangi', 'Mahal', 'Menarik', 'Lembut');

-- --------------------------------------------------------

--
-- Table structure for table `moo_kriteria`
--

CREATE TABLE `moo_kriteria` (
  `id_kriteria` tinyint(3) UNSIGNED NOT NULL,
  `kode` varchar(5) NOT NULL,
  `kriteria` varchar(100) NOT NULL,
  `type` set('Benefit','Cost') NOT NULL,
  `bobot` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `moo_kriteria`
--

INSERT INTO `moo_kriteria` (`id_kriteria`, `kode`, `kriteria`, `type`, `bobot`) VALUES
(1, 'C1', 'Harga', 'Cost', 0.3),
(2, 'C2', 'Rasa', 'Cost', 0.25),
(3, 'C3', 'Penampilan', 'Cost', 0.2),
(4, 'C4', 'Tekstur', 'Cost', 0.15),
(5, 'C5', 'Aroma', 'Cost', 0.1);

-- --------------------------------------------------------

--
-- Table structure for table `moo_nilai`
--

CREATE TABLE `moo_nilai` (
  `id_nilai` int(11) UNSIGNED NOT NULL,
  `id_alternatif` tinyint(3) UNSIGNED DEFAULT NULL,
  `id_kriteria` tinyint(3) UNSIGNED DEFAULT NULL,
  `nilai` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `moo_nilai`
--

INSERT INTO `moo_nilai` (`id_nilai`, `id_alternatif`, `id_kriteria`, `nilai`) VALUES
(1126, 1, 1, 2),
(1127, 1, 2, 5),
(1128, 1, 3, 3),
(1129, 1, 4, 5),
(1130, 1, 5, 3),
(1131, 15, 1, 2),
(1132, 15, 2, 4),
(1133, 15, 3, 5),
(1134, 15, 4, 5),
(1135, 15, 5, 3),
(1136, 16, 1, 2),
(1137, 16, 2, 3),
(1138, 16, 3, 2),
(1139, 16, 4, 5),
(1140, 16, 5, 3),
(1141, 17, 1, 2),
(1142, 17, 2, 5),
(1143, 17, 3, 3),
(1144, 17, 4, 5),
(1145, 17, 5, 4),
(1146, 18, 1, 1),
(1147, 18, 2, 5),
(1148, 18, 3, 3),
(1149, 18, 4, 5),
(1150, 18, 5, 4),
(1151, 19, 1, 2),
(1152, 19, 2, 4),
(1153, 19, 3, 5),
(1154, 19, 4, 5),
(1155, 19, 5, 3),
(1156, 20, 1, 2),
(1157, 20, 2, 4),
(1158, 20, 3, 5),
(1159, 20, 4, 5),
(1160, 20, 5, 3),
(1161, 21, 1, 2),
(1162, 21, 2, 4),
(1163, 21, 3, 4),
(1164, 21, 4, 5),
(1165, 21, 5, 4),
(1166, 22, 1, 2),
(1167, 22, 2, 4),
(1168, 22, 3, 4),
(1169, 22, 4, 5),
(1170, 22, 5, 4),
(1171, 23, 1, 2),
(1172, 23, 2, 4),
(1173, 23, 3, 3),
(1174, 23, 4, 5),
(1175, 23, 5, 3),
(1176, 24, 1, 2),
(1177, 24, 2, 4),
(1178, 24, 3, 3),
(1179, 24, 4, 5),
(1180, 24, 5, 5),
(1181, 14, 1, 2),
(1182, 14, 2, 4),
(1183, 14, 3, 2),
(1184, 14, 4, 5),
(1185, 14, 5, 3),
(1186, 13, 1, 2),
(1187, 13, 2, 5),
(1188, 13, 3, 2),
(1189, 13, 4, 5),
(1190, 13, 5, 4),
(1191, 12, 1, 2),
(1192, 12, 2, 4),
(1193, 12, 3, 3),
(1194, 12, 4, 1),
(1195, 12, 5, 3),
(1196, 2, 1, 4),
(1197, 2, 2, 5),
(1198, 2, 3, 4),
(1199, 2, 4, 5),
(1200, 2, 5, 5),
(1201, 3, 1, 2),
(1202, 3, 2, 4),
(1203, 3, 3, 5),
(1204, 3, 4, 5),
(1205, 3, 5, 3),
(1206, 4, 1, 2),
(1207, 4, 2, 4),
(1208, 4, 3, 4),
(1209, 4, 4, 5),
(1210, 4, 5, 3),
(1211, 5, 1, 2),
(1212, 5, 2, 3),
(1213, 5, 3, 2),
(1214, 5, 4, 2),
(1215, 5, 5, 3),
(1216, 6, 1, 2),
(1217, 6, 2, 5),
(1218, 6, 3, 3),
(1219, 6, 4, 5),
(1220, 6, 5, 4),
(1221, 7, 1, 2),
(1222, 7, 2, 5),
(1223, 7, 3, 3),
(1224, 7, 4, 5),
(1225, 7, 5, 4),
(1226, 8, 1, 2),
(1227, 8, 2, 4),
(1228, 8, 3, 2),
(1229, 8, 4, 1),
(1230, 8, 5, 4),
(1231, 9, 1, 4),
(1232, 9, 2, 4),
(1233, 9, 3, 3),
(1234, 9, 4, 4),
(1235, 9, 5, 3),
(1236, 10, 1, 2),
(1237, 10, 2, 4),
(1238, 10, 3, 2),
(1239, 10, 4, 5),
(1240, 10, 5, 4),
(1241, 11, 1, 2),
(1242, 11, 2, 4),
(1243, 11, 3, 2),
(1244, 11, 4, 5),
(1245, 11, 5, 3),
(1246, 25, 1, 2),
(1247, 25, 2, 4),
(1248, 25, 3, 4),
(1249, 25, 4, 5),
(1250, 25, 5, 4);

-- --------------------------------------------------------

--
-- Table structure for table `user_acc`
--

CREATE TABLE `user_acc` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(42) NOT NULL,
  `level` enum('User') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_acc`
--

INSERT INTO `user_acc` (`id_user`, `nama_user`, `username`, `password`, `level`) VALUES
(1, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'User'),
(2, 'nurul', 'nurul', '6968a2c57c3a4fee8fadc79a80355e4d', 'User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_siswa`
--
ALTER TABLE `data_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `kriteriajarak`
--
ALTER TABLE `kriteriajarak`
  ADD PRIMARY KEY (`id_jarak`);

--
-- Indexes for table `kriteriakehadiran`
--
ALTER TABLE `kriteriakehadiran`
  ADD PRIMARY KEY (`id_kehadiran`);

--
-- Indexes for table `kriteriapendidikan`
--
ALTER TABLE `kriteriapendidikan`
  ADD PRIMARY KEY (`id_pendidikan`);

--
-- Indexes for table `kriteriapenghasilanortu`
--
ALTER TABLE `kriteriapenghasilanortu`
  ADD PRIMARY KEY (`id_penghasilan`);

--
-- Indexes for table `kriteriaratanilai`
--
ALTER TABLE `kriteriaratanilai`
  ADD PRIMARY KEY (`id_ratanilai`);

--
-- Indexes for table `kriteriatanggungan`
--
ALTER TABLE `kriteriatanggungan`
  ADD PRIMARY KEY (`id_tanggungan`);

--
-- Indexes for table `moo_alternatif`
--
ALTER TABLE `moo_alternatif`
  ADD PRIMARY KEY (`id_alternatif`),
  ADD KEY `id_alat` (`id_siswa`);

--
-- Indexes for table `moo_kriteria`
--
ALTER TABLE `moo_kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `moo_nilai`
--
ALTER TABLE `moo_nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `user_acc`
--
ALTER TABLE `user_acc`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kriteriajarak`
--
ALTER TABLE `kriteriajarak`
  MODIFY `id_jarak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kriteriakehadiran`
--
ALTER TABLE `kriteriakehadiran`
  MODIFY `id_kehadiran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kriteriapendidikan`
--
ALTER TABLE `kriteriapendidikan`
  MODIFY `id_pendidikan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kriteriapenghasilanortu`
--
ALTER TABLE `kriteriapenghasilanortu`
  MODIFY `id_penghasilan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kriteriaratanilai`
--
ALTER TABLE `kriteriaratanilai`
  MODIFY `id_ratanilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kriteriatanggungan`
--
ALTER TABLE `kriteriatanggungan`
  MODIFY `id_tanggungan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `moo_kriteria`
--
ALTER TABLE `moo_kriteria`
  MODIFY `id_kriteria` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `moo_nilai`
--
ALTER TABLE `moo_nilai`
  MODIFY `id_nilai` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1251;

--
-- AUTO_INCREMENT for table `user_acc`
--
ALTER TABLE `user_acc`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `moo_alternatif`
--
ALTER TABLE `moo_alternatif`
  ADD CONSTRAINT `moo_alternatif_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `data_siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
