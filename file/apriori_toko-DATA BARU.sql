-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 06, 2021 at 12:11 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apriori_toko`
--

-- --------------------------------------------------------

--
-- Table structure for table `confidence`
--

CREATE TABLE `confidence` (
  `kombinasi1` varchar(255) DEFAULT NULL,
  `kombinasi2` varchar(255) DEFAULT NULL,
  `support_xUy` double DEFAULT NULL,
  `support_x` double DEFAULT NULL,
  `confidence` double DEFAULT NULL,
  `lolos` tinyint(4) DEFAULT NULL,
  `min_support` double DEFAULT NULL,
  `min_confidence` double DEFAULT NULL,
  `nilai_uji_lift` double DEFAULT NULL,
  `korelasi_rule` varchar(100) DEFAULT NULL,
  `id_process` int(11) NOT NULL DEFAULT '0',
  `jumlah_a` int(11) DEFAULT NULL,
  `jumlah_b` int(11) DEFAULT NULL,
  `jumlah_ab` int(11) DEFAULT NULL,
  `px` double DEFAULT NULL,
  `py` double DEFAULT NULL,
  `pxuy` double DEFAULT NULL,
  `from_itemset` int(11) DEFAULT NULL COMMENT 'dari itemset 2/3'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `confidence`
--

INSERT INTO `confidence` (`kombinasi1`, `kombinasi2`, `support_xUy`, `support_x`, `confidence`, `lolos`, `min_support`, `min_confidence`, `nilai_uji_lift`, `korelasi_rule`, `id_process`, `jumlah_a`, `jumlah_b`, `jumlah_ab`, `px`, `py`, `pxuy`, `from_itemset`) VALUES
('KIJANG KOTA', 'Laki-laki , I10', 15, 62, 24.193548387097, 0, 10, 30, 1.1520737327189, 'korelasi positif', 9, 62, 21, 15, 0.62, 0.21, 0.15, 3),
('Laki-laki', 'I10 , KIJANG KOTA', 15, 44, 34.090909090909, 1, 10, 30, 1.0653409090909, 'korelasi positif', 9, 44, 32, 15, 0.44, 0.32, 0.15, 3),
('I10 , Laki-laki', 'KIJANG KOTA', 15, 21, 71.428571428571, 1, 10, 30, 1.1520737327189, 'korelasi positif', 9, 21, 62, 15, 0.21, 0.62, 0.15, 3),
('KIJANG KOTA , I10', 'Laki-laki', 15, 32, 46.875, 1, 10, 30, 1.0653409090909, 'korelasi positif', 9, 32, 44, 15, 0.32, 0.44, 0.15, 3),
('Laki-laki , KIJANG KOTA', 'I10', 15, 27, 55.555555555556, 1, 10, 30, 1.207729468599, 'korelasi positif', 9, 27, 46, 15, 0.27, 0.46, 0.15, 3),
('Lansia Akhir', 'I10', 18, 29, 62.068965517241, 1, 10, 30, 1.3206162876009, 'korelasi positif', 8, 29, 47, 18, 0.29, 0.47, 0.18, 2),
('I10', 'Lansia Akhir', 18, 47, 38.297872340426, 1, 10, 30, 1.3206162876009, 'korelasi positif', 8, 47, 29, 18, 0.47, 0.29, 0.18, 2),
('E11.4', 'I10', 11, 24, 45.833333333333, 1, 10, 30, 0.97517730496454, 'korelasi negatif', 8, 24, 47, 11, 0.24, 0.47, 0.11, 2),
('I10', 'E11.4', 11, 47, 23.404255319149, 0, 10, 30, 0.97517730496454, 'korelasi negatif', 8, 47, 24, 11, 0.47, 0.24, 0.11, 2),
('Lansia Akhir', 'KIJANG KOTA', 22, 29, 75.862068965517, 1, 10, 30, 1.2235817575083, 'korelasi positif', 8, 29, 62, 22, 0.29, 0.62, 0.22, 2),
('KIJANG KOTA', 'Lansia Akhir', 22, 62, 35.483870967742, 1, 10, 30, 1.2235817575083, 'korelasi positif', 8, 62, 29, 22, 0.62, 0.29, 0.22, 2),
('E11.4', 'KIJANG KOTA', 15, 24, 62.5, 1, 10, 30, 1.008064516129, 'korelasi positif', 8, 24, 62, 15, 0.24, 0.62, 0.15, 2),
('KIJANG KOTA', 'E11.4', 15, 62, 24.193548387097, 0, 10, 30, 1.008064516129, 'korelasi positif', 8, 62, 24, 15, 0.62, 0.24, 0.15, 2),
('K30', 'KIJANG KOTA', 10, 20, 50, 1, 10, 30, 0.80645161290323, 'korelasi negatif', 8, 20, 62, 10, 0.2, 0.62, 0.1, 2),
('KIJANG KOTA', 'K30', 10, 62, 16.129032258065, 0, 10, 30, 0.80645161290323, 'korelasi negatif', 8, 62, 20, 10, 0.62, 0.2, 0.1, 2),
('I10', 'KIJANG KOTA', 33, 47, 70.212765957447, 1, 10, 30, 1.1324639670556, 'korelasi positif', 8, 47, 62, 33, 0.47, 0.62, 0.33, 2),
('KIJANG KOTA', 'I10', 33, 62, 53.225806451613, 1, 10, 30, 1.1324639670556, 'korelasi positif', 8, 62, 47, 33, 0.62, 0.47, 0.33, 2),
('I10', 'Lansia Awal', 10, 47, 21.276595744681, 0, 10, 30, 0.85106382978723, 'korelasi negatif', 8, 47, 25, 10, 0.47, 0.25, 0.1, 2),
('Lansia Awal', 'I10', 10, 25, 40, 1, 10, 30, 0.85106382978723, 'korelasi negatif', 8, 25, 47, 10, 0.25, 0.47, 0.1, 2),
('KIJANG KOTA', 'Lansia Awal', 13, 62, 20.967741935484, 0, 10, 30, 0.83870967741935, 'korelasi negatif', 8, 62, 25, 13, 0.62, 0.25, 0.13, 2),
('Lansia Awal', 'KIJANG KOTA', 13, 25, 52, 1, 10, 30, 0.83870967741935, 'korelasi negatif', 8, 25, 62, 13, 0.25, 0.62, 0.13, 2),
('Lansia Akhir', 'Perempuan', 14, 29, 48.275862068966, 1, 10, 30, 0.86206896551724, 'korelasi negatif', 8, 29, 56, 14, 0.29, 0.56, 0.14, 2),
('Perempuan', 'Lansia Akhir', 14, 56, 25, 0, 10, 30, 0.86206896551724, 'korelasi negatif', 8, 56, 29, 14, 0.56, 0.29, 0.14, 2),
('Dewasa Akhir', 'Perempuan', 13, 16, 81.25, 1, 10, 30, 1.4508928571429, 'korelasi positif', 8, 16, 56, 13, 0.16, 0.56, 0.13, 2),
('Perempuan', 'Dewasa Akhir', 13, 56, 23.214285714286, 0, 10, 30, 1.4508928571429, 'korelasi positif', 8, 56, 16, 13, 0.56, 0.16, 0.13, 2),
('E11.4', 'Perempuan', 15, 24, 62.5, 1, 10, 30, 1.1160714285714, 'korelasi positif', 8, 24, 56, 15, 0.24, 0.56, 0.15, 2),
('Perempuan', 'E11.4', 15, 56, 26.785714285714, 0, 10, 30, 1.1160714285714, 'korelasi positif', 8, 56, 24, 15, 0.56, 0.24, 0.15, 2),
('K30', 'Perempuan', 14, 20, 70, 1, 10, 30, 1.25, 'korelasi positif', 8, 20, 56, 14, 0.2, 0.56, 0.14, 2),
('Perempuan', 'K30', 14, 56, 25, 0, 10, 30, 1.25, 'korelasi positif', 8, 56, 20, 14, 0.56, 0.2, 0.14, 2),
('I10', 'Perempuan', 25, 47, 53.191489361702, 1, 10, 30, 0.94984802431611, 'korelasi negatif', 8, 47, 56, 25, 0.47, 0.56, 0.25, 2),
('Perempuan', 'I10', 25, 56, 44.642857142857, 1, 10, 30, 0.94984802431611, 'korelasi negatif', 8, 56, 47, 25, 0.56, 0.47, 0.25, 2),
('KIJANG KOTA', 'Perempuan', 35, 62, 56.451612903226, 1, 10, 30, 1.008064516129, 'korelasi positif', 8, 62, 56, 35, 0.62, 0.56, 0.35, 2),
('Perempuan', 'KIJANG KOTA', 35, 56, 62.5, 1, 10, 30, 1.008064516129, 'korelasi positif', 8, 56, 62, 35, 0.56, 0.62, 0.35, 2),
('Lansia Awal', 'Perempuan', 14, 25, 56, 1, 10, 30, 1, 'tidak ada korelasi', 8, 25, 56, 14, 0.25, 0.56, 0.14, 2),
('Perempuan', 'Lansia Awal', 14, 56, 25, 0, 10, 30, 1, 'tidak ada korelasi', 8, 56, 25, 14, 0.56, 0.25, 0.14, 2),
('I10', 'Manula', 15, 47, 31.914893617021, 1, 10, 30, 1.3876040703053, 'korelasi positif', 8, 47, 23, 15, 0.47, 0.23, 0.15, 2),
('Manula', 'I10', 15, 23, 65.217391304348, 1, 10, 30, 1.3876040703053, 'korelasi positif', 8, 23, 47, 15, 0.23, 0.47, 0.15, 2),
('KIJANG KOTA', 'Manula', 14, 62, 22.58064516129, 0, 10, 30, 0.98176718092567, 'korelasi negatif', 8, 62, 23, 14, 0.62, 0.23, 0.14, 2),
('Manula', 'KIJANG KOTA', 14, 23, 60.869565217391, 1, 10, 30, 0.98176718092567, 'korelasi negatif', 8, 23, 62, 14, 0.23, 0.62, 0.14, 2),
('Perempuan', 'Manula', 13, 56, 23.214285714286, 0, 10, 30, 1.0093167701863, 'korelasi positif', 8, 56, 23, 13, 0.56, 0.23, 0.13, 2),
('Manula', 'Perempuan', 13, 23, 56.521739130435, 1, 10, 30, 1.0093167701863, 'korelasi positif', 8, 23, 56, 13, 0.23, 0.56, 0.13, 2),
('Lansia Akhir', 'Laki-laki', 15, 29, 51.724137931034, 1, 10, 30, 1.1755485893417, 'korelasi positif', 8, 29, 44, 15, 0.29, 0.44, 0.15, 2),
('Laki-laki', 'Lansia Akhir', 15, 44, 34.090909090909, 1, 10, 30, 1.1755485893417, 'korelasi positif', 8, 44, 29, 15, 0.44, 0.29, 0.15, 2),
('I10', 'Laki-laki', 22, 47, 46.808510638298, 1, 10, 30, 1.063829787234, 'korelasi positif', 8, 47, 44, 22, 0.47, 0.44, 0.22, 2),
('Laki-laki', 'I10', 22, 44, 50, 1, 10, 30, 1.063829787234, 'korelasi positif', 8, 44, 47, 22, 0.44, 0.47, 0.22, 2),
('KIJANG KOTA', 'Laki-laki', 27, 62, 43.548387096774, 1, 10, 30, 0.98973607038123, 'korelasi negatif', 8, 62, 44, 27, 0.62, 0.44, 0.27, 2),
('Laki-laki', 'KIJANG KOTA', 27, 44, 61.363636363636, 1, 10, 30, 0.98973607038123, 'korelasi negatif', 8, 44, 62, 27, 0.44, 0.62, 0.27, 2),
('Lansia Awal', 'Laki-laki', 11, 25, 44, 1, 10, 30, 1, 'tidak ada korelasi', 8, 25, 44, 11, 0.25, 0.44, 0.11, 2),
('Laki-laki', 'Lansia Awal', 11, 44, 25, 0, 10, 30, 1, 'tidak ada korelasi', 8, 44, 25, 11, 0.44, 0.25, 0.11, 2),
('Manula', 'Laki-laki', 10, 23, 43.478260869565, 1, 10, 30, 0.98814229249012, 'korelasi negatif', 8, 23, 44, 10, 0.23, 0.44, 0.1, 2),
('Laki-laki', 'Manula', 10, 44, 22.727272727273, 0, 10, 30, 0.98814229249012, 'korelasi negatif', 8, 44, 23, 10, 0.44, 0.23, 0.1, 2),
('Lansia Akhir', 'KIJANG KOTA , I10', 12, 29, 41.379310344828, 1, 10, 30, 1.2539184952978, 'korelasi positif', 8, 29, 33, 12, 0.29, 0.33, 0.12, 3),
('KIJANG KOTA', 'I10 , Lansia Akhir', 12, 62, 19.354838709677, 0, 10, 30, 1.0752688172043, 'korelasi positif', 8, 62, 18, 12, 0.62, 0.18, 0.12, 3),
('I10', 'Lansia Akhir , KIJANG KOTA', 12, 47, 25.531914893617, 0, 10, 30, 1.1605415860735, 'korelasi positif', 8, 47, 22, 12, 0.47, 0.22, 0.12, 3),
('Lansia Akhir , I10', 'KIJANG KOTA', 12, 18, 66.666666666667, 1, 10, 30, 1.0752688172043, 'korelasi positif', 8, 18, 62, 12, 0.18, 0.62, 0.12, 3),
('KIJANG KOTA , Lansia Akhir', 'I10', 12, 22, 54.545454545455, 1, 10, 30, 1.1605415860735, 'korelasi positif', 8, 22, 47, 12, 0.22, 0.47, 0.12, 3),
('I10 , KIJANG KOTA', 'Lansia Akhir', 12, 33, 36.363636363636, 1, 10, 30, 1.2539184952978, 'korelasi positif', 8, 33, 29, 12, 0.33, 0.29, 0.12, 3),
('I10', 'KIJANG KOTA , Perempuan', 17, 47, 36.170212765957, 1, 10, 30, 1.0334346504559, 'korelasi positif', 8, 47, 35, 17, 0.47, 0.35, 0.17, 3),
('KIJANG KOTA', 'Perempuan , I10', 17, 62, 27.41935483871, 0, 10, 30, 1.0967741935484, 'korelasi positif', 8, 62, 25, 17, 0.62, 0.25, 0.17, 3),
('Perempuan', 'I10 , KIJANG KOTA', 17, 56, 30.357142857143, 1, 10, 30, 0.91991341991342, 'korelasi negatif', 8, 56, 33, 17, 0.56, 0.33, 0.17, 3),
('I10 , Perempuan', 'KIJANG KOTA', 17, 25, 68, 1, 10, 30, 1.0967741935484, 'korelasi positif', 8, 25, 62, 17, 0.25, 0.62, 0.17, 3),
('KIJANG KOTA , I10', 'Perempuan', 17, 33, 51.515151515152, 1, 10, 30, 0.91991341991342, 'korelasi negatif', 8, 33, 56, 17, 0.33, 0.56, 0.17, 3),
('Perempuan , KIJANG KOTA', 'I10', 17, 35, 48.571428571429, 1, 10, 30, 1.0334346504559, 'korelasi positif', 8, 35, 47, 17, 0.35, 0.47, 0.17, 3),
('Lansia Akhir', 'KIJANG KOTA , Laki-laki', 13, 29, 44.827586206897, 1, 10, 30, 1.6602809706258, 'korelasi positif', 8, 29, 27, 13, 0.29, 0.27, 0.13, 3),
('KIJANG KOTA', 'Laki-laki , Lansia Akhir', 13, 62, 20.967741935484, 0, 10, 30, 1.3978494623656, 'korelasi positif', 8, 62, 15, 13, 0.62, 0.15, 0.13, 3),
('Laki-laki', 'Lansia Akhir , KIJANG KOTA', 13, 44, 29.545454545455, 0, 10, 30, 1.3429752066116, 'korelasi positif', 8, 44, 22, 13, 0.44, 0.22, 0.13, 3),
('Lansia Akhir , Laki-laki', 'KIJANG KOTA', 13, 15, 86.666666666667, 1, 10, 30, 1.3978494623656, 'korelasi positif', 8, 15, 62, 13, 0.15, 0.62, 0.13, 3),
('KIJANG KOTA , Lansia Akhir', 'Laki-laki', 13, 22, 59.090909090909, 1, 10, 30, 1.3429752066116, 'korelasi positif', 8, 22, 44, 13, 0.22, 0.44, 0.13, 3),
('Laki-laki , KIJANG KOTA', 'Lansia Akhir', 13, 27, 48.148148148148, 1, 10, 30, 1.6602809706258, 'korelasi positif', 8, 27, 29, 13, 0.27, 0.29, 0.13, 3),
('I10', 'Manula , KIJANG KOTA', 10, 47, 21.276595744681, 0, 10, 30, 1.5197568389058, 'korelasi positif', 8, 47, 14, 10, 0.47, 0.14, 0.1, 3),
('Manula', 'KIJANG KOTA , I10', 10, 23, 43.478260869565, 1, 10, 30, 1.3175230566535, 'korelasi positif', 8, 23, 33, 10, 0.23, 0.33, 0.1, 3),
('KIJANG KOTA', 'I10 , Manula', 10, 62, 16.129032258065, 0, 10, 30, 1.0752688172043, 'korelasi positif', 8, 62, 15, 10, 0.62, 0.15, 0.1, 3),
('I10 , KIJANG KOTA', 'Manula', 10, 33, 30.30303030303, 1, 10, 30, 1.3175230566535, 'korelasi positif', 8, 33, 23, 10, 0.33, 0.23, 0.1, 3),
('Manula , I10', 'KIJANG KOTA', 10, 15, 66.666666666667, 1, 10, 30, 1.0752688172043, 'korelasi positif', 8, 15, 62, 10, 0.15, 0.62, 0.1, 3),
('KIJANG KOTA , Manula', 'I10', 10, 14, 71.428571428571, 1, 10, 30, 1.5197568389058, 'korelasi positif', 8, 14, 47, 10, 0.14, 0.47, 0.1, 3),
('I10', 'KIJANG KOTA , Laki-laki', 16, 47, 34.042553191489, 1, 10, 30, 1.2608353033885, 'korelasi positif', 8, 47, 27, 16, 0.47, 0.27, 0.16, 3),
('KIJANG KOTA', 'Laki-laki , I10', 16, 62, 25.806451612903, 0, 10, 30, 1.1730205278592, 'korelasi positif', 8, 62, 22, 16, 0.62, 0.22, 0.16, 3),
('Laki-laki', 'I10 , KIJANG KOTA', 16, 44, 36.363636363636, 1, 10, 30, 1.1019283746556, 'korelasi positif', 8, 44, 33, 16, 0.44, 0.33, 0.16, 3),
('I10 , Laki-laki', 'KIJANG KOTA', 16, 22, 72.727272727273, 1, 10, 30, 1.1730205278592, 'korelasi positif', 8, 22, 62, 16, 0.22, 0.62, 0.16, 3),
('KIJANG KOTA , I10', 'Laki-laki', 16, 33, 48.484848484848, 1, 10, 30, 1.1019283746556, 'korelasi positif', 8, 33, 44, 16, 0.33, 0.44, 0.16, 3),
('Laki-laki , KIJANG KOTA', 'I10', 16, 27, 59.259259259259, 1, 10, 30, 1.2608353033885, 'korelasi positif', 8, 27, 47, 16, 0.27, 0.47, 0.16, 3),
('I10', 'KIJANG KOTA , Laki-laki', 15, 46, 32.608695652174, 1, 10, 30, 1.207729468599, 'korelasi positif', 9, 46, 27, 15, 0.46, 0.27, 0.15, 3),
('KIJANG KOTA , Manula', 'I10', 10, 14, 71.428571428571, 1, 10, 30, 1.5527950310559, 'korelasi positif', 9, 14, 46, 10, 0.14, 0.46, 0.1, 3),
('Manula , I10', 'KIJANG KOTA', 10, 15, 66.666666666667, 1, 10, 30, 1.0752688172043, 'korelasi positif', 9, 15, 62, 10, 0.15, 0.62, 0.1, 3),
('I10 , KIJANG KOTA', 'Manula', 10, 32, 31.25, 1, 10, 30, 1.3586956521739, 'korelasi positif', 9, 32, 23, 10, 0.32, 0.23, 0.1, 3),
('KIJANG KOTA', 'I10 , Manula', 10, 62, 16.129032258065, 0, 10, 30, 1.0752688172043, 'korelasi positif', 9, 62, 15, 10, 0.62, 0.15, 0.1, 3),
('Manula', 'KIJANG KOTA , I10', 10, 23, 43.478260869565, 1, 10, 30, 1.3586956521739, 'korelasi positif', 9, 23, 32, 10, 0.23, 0.32, 0.1, 3),
('I10', 'Manula , KIJANG KOTA', 10, 46, 21.739130434783, 0, 10, 30, 1.5527950310559, 'korelasi positif', 9, 46, 14, 10, 0.46, 0.14, 0.1, 3),
('Laki-laki , KIJANG KOTA', 'Lansia Akhir', 13, 27, 48.148148148148, 1, 10, 30, 1.6602809706258, 'korelasi positif', 9, 27, 29, 13, 0.27, 0.29, 0.13, 3),
('KIJANG KOTA , Lansia Akhir', 'Laki-laki', 13, 22, 59.090909090909, 1, 10, 30, 1.3429752066116, 'korelasi positif', 9, 22, 44, 13, 0.22, 0.44, 0.13, 3),
('Lansia Akhir , Laki-laki', 'KIJANG KOTA', 13, 15, 86.666666666667, 1, 10, 30, 1.3978494623656, 'korelasi positif', 9, 15, 62, 13, 0.15, 0.62, 0.13, 3),
('Laki-laki', 'Lansia Akhir , KIJANG KOTA', 13, 44, 29.545454545455, 0, 10, 30, 1.3429752066116, 'korelasi positif', 9, 44, 22, 13, 0.44, 0.22, 0.13, 3),
('KIJANG KOTA', 'Laki-laki , Lansia Akhir', 13, 62, 20.967741935484, 0, 10, 30, 1.3978494623656, 'korelasi positif', 9, 62, 15, 13, 0.62, 0.15, 0.13, 3),
('Lansia Akhir', 'KIJANG KOTA , Laki-laki', 13, 29, 44.827586206897, 1, 10, 30, 1.6602809706258, 'korelasi positif', 9, 29, 27, 13, 0.29, 0.27, 0.13, 3),
('Perempuan , KIJANG KOTA', 'I10', 17, 35, 48.571428571429, 1, 10, 30, 1.055900621118, 'korelasi positif', 9, 35, 46, 17, 0.35, 0.46, 0.17, 3),
('KIJANG KOTA , I10', 'Perempuan', 17, 32, 53.125, 1, 10, 30, 0.94866071428571, 'korelasi negatif', 9, 32, 56, 17, 0.32, 0.56, 0.17, 3),
('I10 , Perempuan', 'KIJANG KOTA', 17, 25, 68, 1, 10, 30, 1.0967741935484, 'korelasi positif', 9, 25, 62, 17, 0.25, 0.62, 0.17, 3),
('Perempuan', 'I10 , KIJANG KOTA', 17, 56, 30.357142857143, 1, 10, 30, 0.94866071428571, 'korelasi negatif', 9, 56, 32, 17, 0.56, 0.32, 0.17, 3),
('KIJANG KOTA', 'Perempuan , I10', 17, 62, 27.41935483871, 0, 10, 30, 1.0967741935484, 'korelasi positif', 9, 62, 25, 17, 0.62, 0.25, 0.17, 3),
('I10', 'KIJANG KOTA , Perempuan', 17, 46, 36.95652173913, 1, 10, 30, 1.055900621118, 'korelasi positif', 9, 46, 35, 17, 0.46, 0.35, 0.17, 3),
('I10 , KIJANG KOTA', 'Lansia Akhir', 11, 32, 34.375, 1, 10, 30, 1.1853448275862, 'korelasi positif', 9, 32, 29, 11, 0.32, 0.29, 0.11, 3),
('KIJANG KOTA , Lansia Akhir', 'I10', 11, 22, 50, 1, 10, 30, 1.0869565217391, 'korelasi positif', 9, 22, 46, 11, 0.22, 0.46, 0.11, 3),
('Lansia Akhir , I10', 'KIJANG KOTA', 11, 17, 64.705882352941, 1, 10, 30, 1.0436432637571, 'korelasi positif', 9, 17, 62, 11, 0.17, 0.62, 0.11, 3),
('I10', 'Lansia Akhir , KIJANG KOTA', 11, 46, 23.913043478261, 0, 10, 30, 1.0869565217391, 'korelasi positif', 9, 46, 22, 11, 0.46, 0.22, 0.11, 3),
('KIJANG KOTA', 'I10 , Lansia Akhir', 11, 62, 17.741935483871, 0, 10, 30, 1.0436432637571, 'korelasi positif', 9, 62, 17, 11, 0.62, 0.17, 0.11, 3),
('Lansia Akhir', 'KIJANG KOTA , I10', 11, 29, 37.931034482759, 1, 10, 30, 1.1853448275862, 'korelasi positif', 9, 29, 32, 11, 0.29, 0.32, 0.11, 3),
('Laki-laki', 'Manula', 10, 44, 22.727272727273, 0, 10, 30, 0.98814229249012, 'korelasi negatif', 9, 44, 23, 10, 0.44, 0.23, 0.1, 2),
('Manula', 'Laki-laki', 10, 23, 43.478260869565, 1, 10, 30, 0.98814229249012, 'korelasi negatif', 9, 23, 44, 10, 0.23, 0.44, 0.1, 2),
('Laki-laki', 'Lansia Awal', 11, 44, 25, 0, 10, 30, 1, 'tidak ada korelasi', 9, 44, 25, 11, 0.44, 0.25, 0.11, 2),
('Lansia Awal', 'Laki-laki', 11, 25, 44, 1, 10, 30, 1, 'tidak ada korelasi', 9, 25, 44, 11, 0.25, 0.44, 0.11, 2),
('Laki-laki', 'KIJANG KOTA', 27, 44, 61.363636363636, 1, 10, 30, 0.98973607038123, 'korelasi negatif', 9, 44, 62, 27, 0.44, 0.62, 0.27, 2),
('KIJANG KOTA', 'Laki-laki', 27, 62, 43.548387096774, 1, 10, 30, 0.98973607038123, 'korelasi negatif', 9, 62, 44, 27, 0.62, 0.44, 0.27, 2),
('Laki-laki', 'I10', 21, 44, 47.727272727273, 1, 10, 30, 1.0375494071146, 'korelasi positif', 9, 44, 46, 21, 0.44, 0.46, 0.21, 2),
('I10', 'Laki-laki', 21, 46, 45.652173913043, 1, 10, 30, 1.0375494071146, 'korelasi positif', 9, 46, 44, 21, 0.46, 0.44, 0.21, 2),
('Laki-laki', 'Lansia Akhir', 15, 44, 34.090909090909, 1, 10, 30, 1.1755485893417, 'korelasi positif', 9, 44, 29, 15, 0.44, 0.29, 0.15, 2),
('Lansia Akhir', 'Laki-laki', 15, 29, 51.724137931034, 1, 10, 30, 1.1755485893417, 'korelasi positif', 9, 29, 44, 15, 0.29, 0.44, 0.15, 2),
('Manula', 'Perempuan', 13, 23, 56.521739130435, 1, 10, 30, 1.0093167701863, 'korelasi positif', 9, 23, 56, 13, 0.23, 0.56, 0.13, 2),
('Perempuan', 'Manula', 13, 56, 23.214285714286, 0, 10, 30, 1.0093167701863, 'korelasi positif', 9, 56, 23, 13, 0.56, 0.23, 0.13, 2),
('Manula', 'KIJANG KOTA', 14, 23, 60.869565217391, 1, 10, 30, 0.98176718092567, 'korelasi negatif', 9, 23, 62, 14, 0.23, 0.62, 0.14, 2),
('KIJANG KOTA', 'Manula', 14, 62, 22.58064516129, 0, 10, 30, 0.98176718092567, 'korelasi negatif', 9, 62, 23, 14, 0.62, 0.23, 0.14, 2),
('Manula', 'I10', 15, 23, 65.217391304348, 1, 10, 30, 1.4177693761815, 'korelasi positif', 9, 23, 46, 15, 0.23, 0.46, 0.15, 2),
('I10', 'Manula', 15, 46, 32.608695652174, 1, 10, 30, 1.4177693761815, 'korelasi positif', 9, 46, 23, 15, 0.46, 0.23, 0.15, 2),
('Perempuan', 'Lansia Awal', 14, 56, 25, 0, 10, 30, 1, 'tidak ada korelasi', 9, 56, 25, 14, 0.56, 0.25, 0.14, 2),
('Lansia Awal', 'Perempuan', 14, 25, 56, 1, 10, 30, 1, 'tidak ada korelasi', 9, 25, 56, 14, 0.25, 0.56, 0.14, 2),
('Perempuan', 'KIJANG KOTA', 35, 56, 62.5, 1, 10, 30, 1.008064516129, 'korelasi positif', 9, 56, 62, 35, 0.56, 0.62, 0.35, 2),
('KIJANG KOTA', 'Perempuan', 35, 62, 56.451612903226, 1, 10, 30, 1.008064516129, 'korelasi positif', 9, 62, 56, 35, 0.62, 0.56, 0.35, 2),
('Perempuan', 'I10', 25, 56, 44.642857142857, 1, 10, 30, 0.97049689440994, 'korelasi negatif', 9, 56, 46, 25, 0.56, 0.46, 0.25, 2),
('I10', 'Perempuan', 25, 46, 54.347826086957, 1, 10, 30, 0.97049689440994, 'korelasi negatif', 9, 46, 56, 25, 0.46, 0.56, 0.25, 2),
('Perempuan', 'K30', 14, 56, 25, 0, 10, 30, 1.25, 'korelasi positif', 9, 56, 20, 14, 0.56, 0.2, 0.14, 2),
('K30', 'Perempuan', 14, 20, 70, 1, 10, 30, 1.25, 'korelasi positif', 9, 20, 56, 14, 0.2, 0.56, 0.14, 2),
('Perempuan', 'E11.4', 15, 56, 26.785714285714, 0, 10, 30, 1.1160714285714, 'korelasi positif', 9, 56, 24, 15, 0.56, 0.24, 0.15, 2),
('E11.4', 'Perempuan', 15, 24, 62.5, 1, 10, 30, 1.1160714285714, 'korelasi positif', 9, 24, 56, 15, 0.24, 0.56, 0.15, 2),
('Perempuan', 'Dewasa Akhir', 13, 56, 23.214285714286, 0, 10, 30, 1.4508928571429, 'korelasi positif', 9, 56, 16, 13, 0.56, 0.16, 0.13, 2),
('Dewasa Akhir', 'Perempuan', 13, 16, 81.25, 1, 10, 30, 1.4508928571429, 'korelasi positif', 9, 16, 56, 13, 0.16, 0.56, 0.13, 2),
('Perempuan', 'Lansia Akhir', 14, 56, 25, 0, 10, 30, 0.86206896551724, 'korelasi negatif', 9, 56, 29, 14, 0.56, 0.29, 0.14, 2),
('Lansia Akhir', 'Perempuan', 14, 29, 48.275862068966, 1, 10, 30, 0.86206896551724, 'korelasi negatif', 9, 29, 56, 14, 0.29, 0.56, 0.14, 2),
('Lansia Awal', 'KIJANG KOTA', 13, 25, 52, 1, 10, 30, 0.83870967741935, 'korelasi negatif', 9, 25, 62, 13, 0.25, 0.62, 0.13, 2),
('KIJANG KOTA', 'Lansia Awal', 13, 62, 20.967741935484, 0, 10, 30, 0.83870967741935, 'korelasi negatif', 9, 62, 25, 13, 0.62, 0.25, 0.13, 2),
('Lansia Awal', 'I10', 10, 25, 40, 1, 10, 30, 0.8695652173913, 'korelasi negatif', 9, 25, 46, 10, 0.25, 0.46, 0.1, 2),
('I10', 'Lansia Awal', 10, 46, 21.739130434783, 0, 10, 30, 0.8695652173913, 'korelasi negatif', 9, 46, 25, 10, 0.46, 0.25, 0.1, 2),
('KIJANG KOTA', 'I10', 32, 62, 51.612903225806, 1, 10, 30, 1.1220196353436, 'korelasi positif', 9, 62, 46, 32, 0.62, 0.46, 0.32, 2),
('I10', 'KIJANG KOTA', 32, 46, 69.565217391304, 1, 10, 30, 1.1220196353436, 'korelasi positif', 9, 46, 62, 32, 0.46, 0.62, 0.32, 2),
('KIJANG KOTA', 'K30', 10, 62, 16.129032258065, 0, 10, 30, 0.80645161290323, 'korelasi negatif', 9, 62, 20, 10, 0.62, 0.2, 0.1, 2),
('K30', 'KIJANG KOTA', 10, 20, 50, 1, 10, 30, 0.80645161290323, 'korelasi negatif', 9, 20, 62, 10, 0.2, 0.62, 0.1, 2),
('KIJANG KOTA', 'E11.4', 15, 62, 24.193548387097, 0, 10, 30, 1.008064516129, 'korelasi positif', 9, 62, 24, 15, 0.62, 0.24, 0.15, 2),
('E11.4', 'KIJANG KOTA', 15, 24, 62.5, 1, 10, 30, 1.008064516129, 'korelasi positif', 9, 24, 62, 15, 0.24, 0.62, 0.15, 2),
('KIJANG KOTA', 'Lansia Akhir', 22, 62, 35.483870967742, 1, 10, 30, 1.2235817575083, 'korelasi positif', 9, 62, 29, 22, 0.62, 0.29, 0.22, 2),
('Lansia Akhir', 'KIJANG KOTA', 22, 29, 75.862068965517, 1, 10, 30, 1.2235817575083, 'korelasi positif', 9, 29, 62, 22, 0.29, 0.62, 0.22, 2),
('I10', 'E11.4', 10, 46, 21.739130434783, 0, 10, 30, 0.90579710144928, 'korelasi negatif', 9, 46, 24, 10, 0.46, 0.24, 0.1, 2),
('E11.4', 'I10', 10, 24, 41.666666666667, 1, 10, 30, 0.90579710144928, 'korelasi negatif', 9, 24, 46, 10, 0.24, 0.46, 0.1, 2),
('I10', 'Lansia Akhir', 17, 46, 36.95652173913, 1, 10, 30, 1.2743628185907, 'korelasi positif', 9, 46, 29, 17, 0.46, 0.29, 0.17, 2),
('Lansia Akhir', 'I10', 17, 29, 58.620689655172, 1, 10, 30, 1.2743628185907, 'korelasi positif', 9, 29, 46, 17, 0.29, 0.46, 0.17, 2);

-- --------------------------------------------------------

--
-- Table structure for table `itemset1`
--

CREATE TABLE `itemset1` (
  `atribut` varchar(200) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `support` double DEFAULT NULL,
  `lolos` tinyint(4) DEFAULT NULL,
  `id_process` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itemset1`
--

INSERT INTO `itemset1` (`atribut`, `jumlah`, `support`, `lolos`, `id_process`) VALUES
('Laki-laki', 44, 44, 1, 8),
('Manula', 23, 23, 1, 8),
('KELONG', 4, 4, 0, 8),
('I82.9', 1, 1, 0, 8),
('R31', 1, 1, 0, 8),
('Perempuan', 56, 56, 1, 8),
('Lansia Awal', 25, 25, 1, 8),
('KIJANG KOTA', 62, 62, 1, 8),
('M47.8', 2, 2, 0, 8),
('M54.5', 4, 4, 0, 8),
('I10', 47, 47, 1, 8),
('K30', 20, 20, 1, 8),
('SUNGAI LEKOP', 18, 18, 1, 8),
('D07.5', 1, 1, 0, 8),
('Dewasa Awal', 5, 5, 0, 8),
('K80.8', 5, 5, 0, 8),
('E11.4', 24, 24, 1, 8),
('K21.9', 3, 3, 0, 8),
('Dewasa Akhir', 16, 16, 1, 8),
('Lansia Akhir', 29, 29, 1, 8),
('K25.4', 1, 1, 0, 8),
('I25.0', 2, 2, 0, 8),
('I11.0', 3, 3, 0, 8),
('I25.1', 1, 1, 0, 8),
('E10.4', 7, 7, 0, 8),
('N20.0', 4, 4, 0, 8),
('A01.0', 1, 1, 0, 8),
('K35.9', 2, 2, 0, 8),
('N30.9', 4, 4, 0, 8),
('M89.4', 1, 1, 0, 8),
('I11.9', 3, 3, 0, 8),
('S43.4', 1, 1, 0, 8),
('M43.0', 3, 3, 0, 8),
('K85', 1, 1, 0, 8),
('N18.9', 7, 7, 0, 8),
('GUNUNG LENGKUAS', 6, 6, 0, 8),
('M10.9', 2, 2, 0, 8),
('G44.0', 2, 2, 0, 8),
('M17.9', 1, 1, 0, 8),
('N00.4', 1, 1, 0, 8),
('I83.0', 1, 1, 0, 8),
('K51.9', 2, 2, 0, 8),
('R07.4', 1, 1, 0, 8),
('E05.1', 1, 1, 0, 8),
('I95.9', 1, 1, 0, 8),
('E14.5', 1, 1, 0, 8),
('I50.0', 5, 5, 0, 8),
('MALANG RAPAT', 1, 1, 0, 8),
('J20.2', 1, 1, 0, 8),
('J45.9', 1, 1, 0, 8),
('K40.1', 1, 1, 0, 8),
('SUNGAI ENAM', 2, 2, 0, 8),
('R10.0', 1, 1, 0, 8),
('K21.0', 3, 3, 0, 8),
('M79.1', 1, 1, 0, 8),
('A15.5', 1, 1, 0, 8),
('J20.9', 1, 1, 0, 8),
('E78.5', 1, 1, 0, 8),
('TOAPAYA SELATAN', 1, 1, 0, 8),
('H11.0', 1, 1, 0, 8),
('Remaja Akhir', 2, 2, 0, 8),
('D64.9', 1, 1, 0, 8),
('K25.0', 1, 1, 0, 8),
('MANTANG BESAR', 2, 2, 0, 8),
('H81.4', 1, 1, 0, 8),
('G62.9', 2, 2, 0, 8),
('L03.0', 1, 1, 0, 8),
('P39.0', 1, 1, 0, 8),
('M47.9', 1, 1, 0, 8),
('N39.0', 1, 1, 0, 8),
('N30.0', 1, 1, 0, 8),
('TOAPAYA ASRI', 2, 2, 0, 8),
('M06.9', 1, 1, 0, 8),
('NUMBING', 1, 1, 0, 8),
('MAPUR', 1, 1, 0, 8),
('R10.4', 1, 1, 0, 8),
('D44.0', 1, 1, 0, 8),
('G20', 1, 1, 0, 8),
('A27.9', 1, 1, 0, 8),
('Q44.4', 1, 1, 0, 8),
('D13.4', 1, 1, 0, 8),
('B16.9', 1, 1, 0, 8),
('C71.9', 1, 1, 0, 8),
('M25.9', 1, 1, 0, 8),
('G31.9', 1, 1, 0, 8),
('Laki-laki', 44, 44, 1, 9),
('Manula', 23, 23, 1, 9),
('KELONG', 4, 4, 0, 9),
('I82.9', 1, 1, 0, 9),
('R31', 1, 1, 0, 9),
('Perempuan', 56, 56, 1, 9),
('Lansia Awal', 25, 25, 1, 9),
('KIJANG KOTA', 62, 62, 1, 9),
('M47.8', 2, 2, 0, 9),
('M54.5', 4, 4, 0, 9),
('I10', 46, 46, 1, 9),
('K30', 20, 20, 1, 9),
('SUNGAI LEKOP', 18, 18, 1, 9),
('D07.5', 1, 1, 0, 9),
('Dewasa Awal', 5, 5, 0, 9),
('K80.8', 5, 5, 0, 9),
('E11.4', 24, 24, 1, 9),
('K21.9', 3, 3, 0, 9),
('Dewasa Akhir', 16, 16, 1, 9),
('Lansia Akhir', 29, 29, 1, 9),
('K25.4', 1, 1, 0, 9),
('I25.0', 2, 2, 0, 9),
('I11.0', 4, 4, 0, 9),
('I25.1', 1, 1, 0, 9),
('E10.4', 7, 7, 0, 9),
('N20.0', 4, 4, 0, 9),
('A01.0', 1, 1, 0, 9),
('K35.9', 2, 2, 0, 9),
('N30.9', 4, 4, 0, 9),
('M89.4', 1, 1, 0, 9),
('I11.9', 3, 3, 0, 9),
('S43.4', 1, 1, 0, 9),
('M43.0', 3, 3, 0, 9),
('K85', 1, 1, 0, 9),
('N18.9', 7, 7, 0, 9),
('GUNUNG LENGKUAS', 6, 6, 0, 9),
('M10.9', 2, 2, 0, 9),
('G44.0', 2, 2, 0, 9),
('M17.9', 1, 1, 0, 9),
('N00.4', 1, 1, 0, 9),
('I83.0', 1, 1, 0, 9),
('K51.9', 2, 2, 0, 9),
('R07.4', 1, 1, 0, 9),
('E05.1', 1, 1, 0, 9),
('I95.9', 1, 1, 0, 9),
('E14.5', 1, 1, 0, 9),
('I50.0', 5, 5, 0, 9),
('MALANG RAPAT', 1, 1, 0, 9),
('J20.2', 1, 1, 0, 9),
('J45.9', 1, 1, 0, 9),
('K40.1', 1, 1, 0, 9),
('SUNGAI ENAM', 2, 2, 0, 9),
('R10.0', 1, 1, 0, 9),
('K21.0', 3, 3, 0, 9),
('M79.1', 1, 1, 0, 9),
('A15.5', 1, 1, 0, 9),
('J20.9', 1, 1, 0, 9),
('E78.5', 1, 1, 0, 9),
('TOAPAYA SELATAN', 1, 1, 0, 9),
('H11.0', 1, 1, 0, 9),
('Remaja Akhir', 2, 2, 0, 9),
('D64.9', 1, 1, 0, 9),
('K25.0', 1, 1, 0, 9),
('MANTANG BESAR', 2, 2, 0, 9),
('H81.4', 1, 1, 0, 9),
('G62.9', 2, 2, 0, 9),
('L03.0', 1, 1, 0, 9),
('P39.0', 1, 1, 0, 9),
('M47.9', 1, 1, 0, 9),
('N39.0', 1, 1, 0, 9),
('N30.0', 1, 1, 0, 9),
('TOAPAYA ASRI', 2, 2, 0, 9),
('M06.9', 1, 1, 0, 9),
('NUMBING', 1, 1, 0, 9),
('MAPUR', 1, 1, 0, 9),
('R10.4', 1, 1, 0, 9),
('D44.0', 1, 1, 0, 9),
('G20', 1, 1, 0, 9),
('A27.9', 1, 1, 0, 9),
('Q44.4', 1, 1, 0, 9),
('D13.4', 1, 1, 0, 9),
('B16.9', 1, 1, 0, 9),
('C71.9', 1, 1, 0, 9),
('M25.9', 1, 1, 0, 9),
('G31.9', 1, 1, 0, 9);

-- --------------------------------------------------------

--
-- Table structure for table `itemset2`
--

CREATE TABLE `itemset2` (
  `atribut1` varchar(200) DEFAULT NULL,
  `atribut2` varchar(200) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `support` double DEFAULT NULL,
  `lolos` tinyint(4) DEFAULT NULL,
  `id_process` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itemset2`
--

INSERT INTO `itemset2` (`atribut1`, `atribut2`, `jumlah`, `support`, `lolos`, `id_process`) VALUES
('Laki-laki', 'Manula', 10, 10, 1, 8),
('Laki-laki', 'Perempuan', 0, 0, 0, 8),
('Laki-laki', 'Lansia Awal', 11, 11, 1, 8),
('Laki-laki', 'KIJANG KOTA', 27, 27, 1, 8),
('Laki-laki', 'I10', 22, 22, 1, 8),
('Laki-laki', 'K30', 6, 6, 0, 8),
('Laki-laki', 'SUNGAI LEKOP', 9, 9, 0, 8),
('Laki-laki', 'E11.4', 9, 9, 0, 8),
('Laki-laki', 'Dewasa Akhir', 3, 3, 0, 8),
('Laki-laki', 'Lansia Akhir', 15, 15, 1, 8),
('Manula', 'Perempuan', 13, 13, 1, 8),
('Manula', 'Lansia Awal', 0, 0, 0, 8),
('Manula', 'KIJANG KOTA', 14, 14, 1, 8),
('Manula', 'I10', 15, 15, 1, 8),
('Manula', 'K30', 4, 4, 0, 8),
('Manula', 'SUNGAI LEKOP', 4, 4, 0, 8),
('Manula', 'E11.4', 6, 6, 0, 8),
('Manula', 'Dewasa Akhir', 0, 0, 0, 8),
('Manula', 'Lansia Akhir', 0, 0, 0, 8),
('Perempuan', 'Lansia Awal', 14, 14, 1, 8),
('Perempuan', 'KIJANG KOTA', 35, 35, 1, 8),
('Perempuan', 'I10', 25, 25, 1, 8),
('Perempuan', 'K30', 14, 14, 1, 8),
('Perempuan', 'SUNGAI LEKOP', 9, 9, 0, 8),
('Perempuan', 'E11.4', 15, 15, 1, 8),
('Perempuan', 'Dewasa Akhir', 13, 13, 1, 8),
('Perempuan', 'Lansia Akhir', 14, 14, 1, 8),
('Lansia Awal', 'KIJANG KOTA', 13, 13, 1, 8),
('Lansia Awal', 'I10', 10, 10, 1, 8),
('Lansia Awal', 'K30', 5, 5, 0, 8),
('Lansia Awal', 'SUNGAI LEKOP', 5, 5, 0, 8),
('Lansia Awal', 'E11.4', 6, 6, 0, 8),
('Lansia Awal', 'Dewasa Akhir', 0, 0, 0, 8),
('Lansia Awal', 'Lansia Akhir', 0, 0, 0, 8),
('KIJANG KOTA', 'I10', 33, 33, 1, 8),
('KIJANG KOTA', 'K30', 10, 10, 1, 8),
('KIJANG KOTA', 'SUNGAI LEKOP', 0, 0, 0, 8),
('KIJANG KOTA', 'E11.4', 15, 15, 1, 8),
('KIJANG KOTA', 'Dewasa Akhir', 9, 9, 0, 8),
('KIJANG KOTA', 'Lansia Akhir', 22, 22, 1, 8),
('I10', 'K30', 9, 9, 0, 8),
('I10', 'SUNGAI LEKOP', 6, 6, 0, 8),
('I10', 'E11.4', 11, 11, 1, 8),
('I10', 'Dewasa Akhir', 3, 3, 0, 8),
('I10', 'Lansia Akhir', 18, 18, 1, 8),
('K30', 'SUNGAI LEKOP', 4, 4, 0, 8),
('K30', 'E11.4', 0, 0, 0, 8),
('K30', 'Dewasa Akhir', 4, 4, 0, 8),
('K30', 'Lansia Akhir', 4, 4, 0, 8),
('SUNGAI LEKOP', 'E11.4', 4, 4, 0, 8),
('SUNGAI LEKOP', 'Dewasa Akhir', 4, 4, 0, 8),
('SUNGAI LEKOP', 'Lansia Akhir', 3, 3, 0, 8),
('E11.4', 'Dewasa Akhir', 4, 4, 0, 8),
('E11.4', 'Lansia Akhir', 8, 8, 0, 8),
('Dewasa Akhir', 'Lansia Akhir', 0, 0, 0, 8),
('Laki-laki', 'Manula', 10, 10, 1, 9),
('Laki-laki', 'Perempuan', 0, 0, 0, 9),
('Laki-laki', 'Lansia Awal', 11, 11, 1, 9),
('Laki-laki', 'KIJANG KOTA', 27, 27, 1, 9),
('Laki-laki', 'I10', 21, 21, 1, 9),
('Laki-laki', 'K30', 6, 6, 0, 9),
('Laki-laki', 'SUNGAI LEKOP', 9, 9, 0, 9),
('Laki-laki', 'E11.4', 9, 9, 0, 9),
('Laki-laki', 'Dewasa Akhir', 3, 3, 0, 9),
('Laki-laki', 'Lansia Akhir', 15, 15, 1, 9),
('Manula', 'Perempuan', 13, 13, 1, 9),
('Manula', 'Lansia Awal', 0, 0, 0, 9),
('Manula', 'KIJANG KOTA', 14, 14, 1, 9),
('Manula', 'I10', 15, 15, 1, 9),
('Manula', 'K30', 4, 4, 0, 9),
('Manula', 'SUNGAI LEKOP', 4, 4, 0, 9),
('Manula', 'E11.4', 6, 6, 0, 9),
('Manula', 'Dewasa Akhir', 0, 0, 0, 9),
('Manula', 'Lansia Akhir', 0, 0, 0, 9),
('Perempuan', 'Lansia Awal', 14, 14, 1, 9),
('Perempuan', 'KIJANG KOTA', 35, 35, 1, 9),
('Perempuan', 'I10', 25, 25, 1, 9),
('Perempuan', 'K30', 14, 14, 1, 9),
('Perempuan', 'SUNGAI LEKOP', 9, 9, 0, 9),
('Perempuan', 'E11.4', 15, 15, 1, 9),
('Perempuan', 'Dewasa Akhir', 13, 13, 1, 9),
('Perempuan', 'Lansia Akhir', 14, 14, 1, 9),
('Lansia Awal', 'KIJANG KOTA', 13, 13, 1, 9),
('Lansia Awal', 'I10', 10, 10, 1, 9),
('Lansia Awal', 'K30', 5, 5, 0, 9),
('Lansia Awal', 'SUNGAI LEKOP', 5, 5, 0, 9),
('Lansia Awal', 'E11.4', 6, 6, 0, 9),
('Lansia Awal', 'Dewasa Akhir', 0, 0, 0, 9),
('Lansia Awal', 'Lansia Akhir', 0, 0, 0, 9),
('KIJANG KOTA', 'I10', 32, 32, 1, 9),
('KIJANG KOTA', 'K30', 10, 10, 1, 9),
('KIJANG KOTA', 'SUNGAI LEKOP', 0, 0, 0, 9),
('KIJANG KOTA', 'E11.4', 15, 15, 1, 9),
('KIJANG KOTA', 'Dewasa Akhir', 9, 9, 0, 9),
('KIJANG KOTA', 'Lansia Akhir', 22, 22, 1, 9),
('I10', 'K30', 9, 9, 0, 9),
('I10', 'SUNGAI LEKOP', 6, 6, 0, 9),
('I10', 'E11.4', 10, 10, 1, 9),
('I10', 'Dewasa Akhir', 3, 3, 0, 9),
('I10', 'Lansia Akhir', 17, 17, 1, 9),
('K30', 'SUNGAI LEKOP', 4, 4, 0, 9),
('K30', 'E11.4', 0, 0, 0, 9),
('K30', 'Dewasa Akhir', 4, 4, 0, 9),
('K30', 'Lansia Akhir', 4, 4, 0, 9),
('SUNGAI LEKOP', 'E11.4', 4, 4, 0, 9),
('SUNGAI LEKOP', 'Dewasa Akhir', 4, 4, 0, 9),
('SUNGAI LEKOP', 'Lansia Akhir', 3, 3, 0, 9),
('E11.4', 'Dewasa Akhir', 4, 4, 0, 9),
('E11.4', 'Lansia Akhir', 8, 8, 0, 9),
('Dewasa Akhir', 'Lansia Akhir', 0, 0, 0, 9);

-- --------------------------------------------------------

--
-- Table structure for table `itemset3`
--

CREATE TABLE `itemset3` (
  `atribut1` varchar(200) DEFAULT NULL,
  `atribut2` varchar(200) DEFAULT NULL,
  `atribut3` varchar(200) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `support` double DEFAULT NULL,
  `lolos` tinyint(4) DEFAULT NULL,
  `id_process` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itemset3`
--

INSERT INTO `itemset3` (`atribut1`, `atribut2`, `atribut3`, `jumlah`, `support`, `lolos`, `id_process`) VALUES
('Laki-laki', 'Manula', 'Lansia Awal', 0, 0, 0, 8),
('Laki-laki', 'Manula', 'KIJANG KOTA', 5, 5, 0, 8),
('Laki-laki', 'Manula', 'I10', 6, 6, 0, 8),
('Laki-laki', 'Manula', 'Lansia Akhir', 0, 0, 0, 8),
('Laki-laki', 'Manula', 'Perempuan', 0, 0, 0, 8),
('Laki-laki', 'Perempuan', 'Lansia Awal', 0, 0, 0, 8),
('Perempuan', 'Manula', 'Lansia Awal', 0, 0, 0, 8),
('Laki-laki', 'Perempuan', 'KIJANG KOTA', 0, 0, 0, 8),
('Perempuan', 'Manula', 'KIJANG KOTA', 9, 9, 0, 8),
('Laki-laki', 'Perempuan', 'I10', 0, 0, 0, 8),
('Perempuan', 'Manula', 'I10', 9, 9, 0, 8),
('Laki-laki', 'Perempuan', 'K30', 0, 0, 0, 8),
('Laki-laki', 'Manula', 'K30', 0, 0, 0, 8),
('Perempuan', 'Manula', 'K30', 4, 4, 0, 8),
('Laki-laki', 'Perempuan', 'E11.4', 0, 0, 0, 8),
('Laki-laki', 'Manula', 'E11.4', 2, 2, 0, 8),
('Perempuan', 'Manula', 'E11.4', 4, 4, 0, 8),
('Laki-laki', 'Perempuan', 'Dewasa Akhir', 0, 0, 0, 8),
('Laki-laki', 'Manula', 'Dewasa Akhir', 0, 0, 0, 8),
('Perempuan', 'Manula', 'Dewasa Akhir', 0, 0, 0, 8),
('Laki-laki', 'Perempuan', 'Lansia Akhir', 0, 0, 0, 8),
('Perempuan', 'Manula', 'Lansia Akhir', 0, 0, 0, 8),
('Laki-laki', 'Lansia Awal', 'KIJANG KOTA', 5, 5, 0, 8),
('Lansia Awal', 'Manula', 'KIJANG KOTA', 0, 0, 0, 8),
('Laki-laki', 'Lansia Awal', 'I10', 6, 6, 0, 8),
('Lansia Awal', 'Manula', 'I10', 0, 0, 0, 8),
('Laki-laki', 'KIJANG KOTA', 'I10', 16, 16, 1, 8),
('KIJANG KOTA', 'Manula', 'I10', 10, 10, 1, 8),
('Laki-laki', 'KIJANG KOTA', 'K30', 3, 3, 0, 8),
('KIJANG KOTA', 'Manula', 'K30', 3, 3, 0, 8),
('Laki-laki', 'KIJANG KOTA', 'E11.4', 6, 6, 0, 8),
('KIJANG KOTA', 'Manula', 'E11.4', 3, 3, 0, 8),
('Laki-laki', 'KIJANG KOTA', 'Lansia Akhir', 13, 13, 1, 8),
('KIJANG KOTA', 'Manula', 'Lansia Akhir', 0, 0, 0, 8),
('Laki-laki', 'I10', 'E11.4', 5, 5, 0, 8),
('I10', 'Manula', 'E11.4', 2, 2, 0, 8),
('Laki-laki', 'I10', 'Lansia Akhir', 9, 9, 0, 8),
('I10', 'Manula', 'Lansia Akhir', 0, 0, 0, 8),
('Laki-laki', 'Lansia Awal', 'Lansia Akhir', 0, 0, 0, 8),
('Perempuan', 'Lansia Awal', 'KIJANG KOTA', 8, 8, 0, 8),
('Perempuan', 'Lansia Awal', 'I10', 4, 4, 0, 8),
('Laki-laki', 'Lansia Awal', 'K30', 2, 2, 0, 8),
('Perempuan', 'Lansia Awal', 'K30', 3, 3, 0, 8),
('Laki-laki', 'Lansia Awal', 'E11.4', 2, 2, 0, 8),
('Perempuan', 'Lansia Awal', 'E11.4', 4, 4, 0, 8),
('Laki-laki', 'Lansia Awal', 'Dewasa Akhir', 0, 0, 0, 8),
('Perempuan', 'Lansia Awal', 'Dewasa Akhir', 0, 0, 0, 8),
('Perempuan', 'Lansia Awal', 'Lansia Akhir', 0, 0, 0, 8),
('KIJANG KOTA', 'Lansia Awal', 'I10', 8, 8, 0, 8),
('KIJANG KOTA', 'Lansia Awal', 'K30', 3, 3, 0, 8),
('KIJANG KOTA', 'Lansia Awal', 'E11.4', 4, 4, 0, 8),
('KIJANG KOTA', 'Lansia Awal', 'Lansia Akhir', 0, 0, 0, 8),
('I10', 'Lansia Awal', 'E11.4', 3, 3, 0, 8),
('I10', 'Lansia Awal', 'Lansia Akhir', 0, 0, 0, 8),
('Perempuan', 'KIJANG KOTA', 'I10', 17, 17, 1, 8),
('Perempuan', 'KIJANG KOTA', 'K30', 7, 7, 0, 8),
('Perempuan', 'KIJANG KOTA', 'E11.4', 9, 9, 0, 8),
('Laki-laki', 'KIJANG KOTA', 'Dewasa Akhir', 1, 1, 0, 8),
('Perempuan', 'KIJANG KOTA', 'Dewasa Akhir', 8, 8, 0, 8),
('Perempuan', 'KIJANG KOTA', 'Lansia Akhir', 9, 9, 0, 8),
('I10', 'KIJANG KOTA', 'E11.4', 8, 8, 0, 8),
('I10', 'KIJANG KOTA', 'Lansia Akhir', 12, 12, 1, 8),
('Laki-laki', 'I10', 'K30', 1, 1, 0, 8),
('Perempuan', 'I10', 'K30', 8, 8, 0, 8),
('Perempuan', 'I10', 'E11.4', 6, 6, 0, 8),
('Laki-laki', 'I10', 'Dewasa Akhir', 0, 0, 0, 8),
('Perempuan', 'I10', 'Dewasa Akhir', 3, 3, 0, 8),
('Perempuan', 'I10', 'Lansia Akhir', 9, 9, 0, 8),
('KIJANG KOTA', 'I10', 'K30', 7, 7, 0, 8),
('Laki-laki', 'Lansia Akhir', 'K30', 2, 2, 0, 8),
('Perempuan', 'Lansia Akhir', 'K30', 2, 2, 0, 8),
('Laki-laki', 'Lansia Akhir', 'E11.4', 4, 4, 0, 8),
('Perempuan', 'Lansia Akhir', 'E11.4', 4, 4, 0, 8),
('Laki-laki', 'Lansia Akhir', 'Dewasa Akhir', 0, 0, 0, 8),
('Perempuan', 'Lansia Akhir', 'Dewasa Akhir', 0, 0, 0, 8),
('KIJANG KOTA', 'Lansia Akhir', 'K30', 3, 3, 0, 8),
('KIJANG KOTA', 'Lansia Akhir', 'E11.4', 5, 5, 0, 8),
('I10', 'Lansia Akhir', 'E11.4', 4, 4, 0, 8),
('Manula', 'KIJANG KOTA', 'Dewasa Akhir', 0, 0, 0, 8),
('Manula', 'I10', 'K30', 4, 4, 0, 8),
('Manula', 'I10', 'Dewasa Akhir', 0, 0, 0, 8),
('Perempuan', 'K30', 'E11.4', 0, 0, 0, 8),
('Perempuan', 'K30', 'Dewasa Akhir', 3, 3, 0, 8),
('Lansia Awal', 'K30', 'I10', 2, 2, 0, 8),
('KIJANG KOTA', 'K30', 'E11.4', 0, 0, 0, 8),
('I10', 'K30', 'E11.4', 0, 0, 0, 8),
('I10', 'K30', 'Lansia Akhir', 3, 3, 0, 8),
('Perempuan', 'E11.4', 'Dewasa Akhir', 3, 3, 0, 8),
('Lansia Awal', 'Dewasa Akhir', 'KIJANG KOTA', 0, 0, 0, 8),
('Lansia Awal', 'Dewasa Akhir', 'I10', 0, 0, 0, 8),
('KIJANG KOTA', 'Dewasa Akhir', 'I10', 3, 3, 0, 8),
('KIJANG KOTA', 'Dewasa Akhir', 'K30', 0, 0, 0, 8),
('KIJANG KOTA', 'Dewasa Akhir', 'E11.4', 3, 3, 0, 8),
('KIJANG KOTA', 'Dewasa Akhir', 'Lansia Akhir', 0, 0, 0, 8),
('I10', 'Dewasa Akhir', 'E11.4', 2, 2, 0, 8),
('I10', 'Dewasa Akhir', 'Lansia Akhir', 0, 0, 0, 8),
('Laki-laki', 'Manula', 'Lansia Awal', 0, 0, 0, 9),
('Laki-laki', 'Manula', 'KIJANG KOTA', 5, 5, 0, 9),
('Laki-laki', 'Manula', 'I10', 6, 6, 0, 9),
('Laki-laki', 'Manula', 'Lansia Akhir', 0, 0, 0, 9),
('Laki-laki', 'Manula', 'Perempuan', 0, 0, 0, 9),
('Laki-laki', 'Perempuan', 'Lansia Awal', 0, 0, 0, 9),
('Perempuan', 'Manula', 'Lansia Awal', 0, 0, 0, 9),
('Laki-laki', 'Perempuan', 'KIJANG KOTA', 0, 0, 0, 9),
('Perempuan', 'Manula', 'KIJANG KOTA', 9, 9, 0, 9),
('Laki-laki', 'Perempuan', 'I10', 0, 0, 0, 9),
('Perempuan', 'Manula', 'I10', 9, 9, 0, 9),
('Laki-laki', 'Perempuan', 'K30', 0, 0, 0, 9),
('Laki-laki', 'Manula', 'K30', 0, 0, 0, 9),
('Perempuan', 'Manula', 'K30', 4, 4, 0, 9),
('Laki-laki', 'Perempuan', 'E11.4', 0, 0, 0, 9),
('Laki-laki', 'Manula', 'E11.4', 2, 2, 0, 9),
('Perempuan', 'Manula', 'E11.4', 4, 4, 0, 9),
('Laki-laki', 'Perempuan', 'Dewasa Akhir', 0, 0, 0, 9),
('Laki-laki', 'Manula', 'Dewasa Akhir', 0, 0, 0, 9),
('Perempuan', 'Manula', 'Dewasa Akhir', 0, 0, 0, 9),
('Laki-laki', 'Perempuan', 'Lansia Akhir', 0, 0, 0, 9),
('Perempuan', 'Manula', 'Lansia Akhir', 0, 0, 0, 9),
('Laki-laki', 'Lansia Awal', 'KIJANG KOTA', 5, 5, 0, 9),
('Lansia Awal', 'Manula', 'KIJANG KOTA', 0, 0, 0, 9),
('Laki-laki', 'Lansia Awal', 'I10', 6, 6, 0, 9),
('Lansia Awal', 'Manula', 'I10', 0, 0, 0, 9),
('Laki-laki', 'KIJANG KOTA', 'I10', 15, 15, 1, 9),
('KIJANG KOTA', 'Manula', 'I10', 10, 10, 1, 9),
('Laki-laki', 'KIJANG KOTA', 'K30', 3, 3, 0, 9),
('KIJANG KOTA', 'Manula', 'K30', 3, 3, 0, 9),
('Laki-laki', 'KIJANG KOTA', 'E11.4', 6, 6, 0, 9),
('KIJANG KOTA', 'Manula', 'E11.4', 3, 3, 0, 9),
('Laki-laki', 'KIJANG KOTA', 'Lansia Akhir', 13, 13, 1, 9),
('KIJANG KOTA', 'Manula', 'Lansia Akhir', 0, 0, 0, 9),
('Laki-laki', 'I10', 'E11.4', 4, 4, 0, 9),
('I10', 'Manula', 'E11.4', 2, 2, 0, 9),
('Laki-laki', 'I10', 'Lansia Akhir', 8, 8, 0, 9),
('I10', 'Manula', 'Lansia Akhir', 0, 0, 0, 9),
('Laki-laki', 'Lansia Awal', 'Lansia Akhir', 0, 0, 0, 9),
('Perempuan', 'Lansia Awal', 'KIJANG KOTA', 8, 8, 0, 9),
('Perempuan', 'Lansia Awal', 'I10', 4, 4, 0, 9),
('Laki-laki', 'Lansia Awal', 'K30', 2, 2, 0, 9),
('Perempuan', 'Lansia Awal', 'K30', 3, 3, 0, 9),
('Laki-laki', 'Lansia Awal', 'E11.4', 2, 2, 0, 9),
('Perempuan', 'Lansia Awal', 'E11.4', 4, 4, 0, 9),
('Laki-laki', 'Lansia Awal', 'Dewasa Akhir', 0, 0, 0, 9),
('Perempuan', 'Lansia Awal', 'Dewasa Akhir', 0, 0, 0, 9),
('Perempuan', 'Lansia Awal', 'Lansia Akhir', 0, 0, 0, 9),
('KIJANG KOTA', 'Lansia Awal', 'I10', 8, 8, 0, 9),
('KIJANG KOTA', 'Lansia Awal', 'K30', 3, 3, 0, 9),
('KIJANG KOTA', 'Lansia Awal', 'E11.4', 4, 4, 0, 9),
('KIJANG KOTA', 'Lansia Awal', 'Lansia Akhir', 0, 0, 0, 9),
('I10', 'Lansia Awal', 'E11.4', 3, 3, 0, 9),
('I10', 'Lansia Awal', 'Lansia Akhir', 0, 0, 0, 9),
('Perempuan', 'KIJANG KOTA', 'I10', 17, 17, 1, 9),
('Perempuan', 'KIJANG KOTA', 'K30', 7, 7, 0, 9),
('Perempuan', 'KIJANG KOTA', 'E11.4', 9, 9, 0, 9),
('Laki-laki', 'KIJANG KOTA', 'Dewasa Akhir', 1, 1, 0, 9),
('Perempuan', 'KIJANG KOTA', 'Dewasa Akhir', 8, 8, 0, 9),
('Perempuan', 'KIJANG KOTA', 'Lansia Akhir', 9, 9, 0, 9),
('I10', 'KIJANG KOTA', 'E11.4', 7, 7, 0, 9),
('I10', 'KIJANG KOTA', 'Lansia Akhir', 11, 11, 1, 9),
('Laki-laki', 'I10', 'K30', 1, 1, 0, 9),
('Perempuan', 'I10', 'K30', 8, 8, 0, 9),
('Perempuan', 'I10', 'E11.4', 6, 6, 0, 9),
('Laki-laki', 'I10', 'Dewasa Akhir', 0, 0, 0, 9),
('Perempuan', 'I10', 'Dewasa Akhir', 3, 3, 0, 9),
('Perempuan', 'I10', 'Lansia Akhir', 9, 9, 0, 9),
('KIJANG KOTA', 'I10', 'K30', 7, 7, 0, 9),
('Laki-laki', 'Lansia Akhir', 'K30', 2, 2, 0, 9),
('Perempuan', 'Lansia Akhir', 'K30', 2, 2, 0, 9),
('Laki-laki', 'Lansia Akhir', 'E11.4', 4, 4, 0, 9),
('Perempuan', 'Lansia Akhir', 'E11.4', 4, 4, 0, 9),
('Laki-laki', 'Lansia Akhir', 'Dewasa Akhir', 0, 0, 0, 9),
('Perempuan', 'Lansia Akhir', 'Dewasa Akhir', 0, 0, 0, 9),
('KIJANG KOTA', 'Lansia Akhir', 'K30', 3, 3, 0, 9),
('KIJANG KOTA', 'Lansia Akhir', 'E11.4', 5, 5, 0, 9),
('I10', 'Lansia Akhir', 'E11.4', 3, 3, 0, 9),
('Manula', 'KIJANG KOTA', 'Dewasa Akhir', 0, 0, 0, 9),
('Manula', 'I10', 'K30', 4, 4, 0, 9),
('Manula', 'I10', 'Dewasa Akhir', 0, 0, 0, 9),
('Perempuan', 'K30', 'E11.4', 0, 0, 0, 9),
('Perempuan', 'K30', 'Dewasa Akhir', 3, 3, 0, 9),
('Lansia Awal', 'K30', 'I10', 2, 2, 0, 9),
('KIJANG KOTA', 'K30', 'E11.4', 0, 0, 0, 9),
('I10', 'K30', 'E11.4', 0, 0, 0, 9),
('I10', 'K30', 'Lansia Akhir', 3, 3, 0, 9),
('Perempuan', 'E11.4', 'Dewasa Akhir', 3, 3, 0, 9),
('Lansia Awal', 'Dewasa Akhir', 'KIJANG KOTA', 0, 0, 0, 9),
('Lansia Awal', 'Dewasa Akhir', 'I10', 0, 0, 0, 9),
('KIJANG KOTA', 'Dewasa Akhir', 'I10', 3, 3, 0, 9),
('KIJANG KOTA', 'Dewasa Akhir', 'K30', 0, 0, 0, 9),
('KIJANG KOTA', 'Dewasa Akhir', 'E11.4', 3, 3, 0, 9),
('KIJANG KOTA', 'Dewasa Akhir', 'Lansia Akhir', 0, 0, 0, 9),
('I10', 'Dewasa Akhir', 'E11.4', 2, 2, 0, 9),
('I10', 'Dewasa Akhir', 'Lansia Akhir', 0, 0, 0, 9);

-- --------------------------------------------------------

--
-- Table structure for table `process_log`
--

CREATE TABLE `process_log` (
  `id` int(11) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `min_support` double DEFAULT NULL,
  `min_confidence` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `process_log`
--

INSERT INTO `process_log` (`id`, `start_date`, `end_date`, `min_support`, `min_confidence`) VALUES
(8, '2021-06-06', '2021-06-06', 10, 30),
(9, '2021-06-06', '2021-06-06', 10, 30);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` varchar(225) NOT NULL,
  `kategori` varchar(225) DEFAULT NULL,
  `nama_produk` varchar(225) DEFAULT NULL,
  `harga_beli` int(11) DEFAULT NULL,
  `harga_jual` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `kategori`, `nama_produk`, `harga_beli`, `harga_jual`) VALUES
('01', 'Jenis Kelamin', 'Laki-laki', NULL, NULL),
('02', 'Jenis Kelamin', 'Perempuan', NULL, NULL),
('03', 'Umur', 'Remaja Akhir', NULL, NULL),
('04', 'Umur', 'Dewasa Awal', NULL, NULL),
('05', 'Umur', 'Dewasa Akhir', NULL, NULL),
('06', 'Umur', 'Lansia Awal', NULL, NULL),
('07', 'Umur', 'Lansia Akhir', NULL, NULL),
('08', 'Umur', 'Manula', NULL, NULL),
('09', 'Kelurahan', 'GUNUNG LENGKUAS', NULL, NULL),
('10', 'Kelurahan', 'KELONG', NULL, NULL),
('11', 'Kelurahan', 'KIJANG KOTA', NULL, NULL),
('12', 'Kelurahan', 'MALANG RAPAT', NULL, NULL),
('13', 'Kelurahan', 'MANTANG BESAR', NULL, NULL),
('14', 'Kelurahan', 'MAPUR', NULL, NULL),
('15', 'Kelurahan', 'NUMBING', NULL, NULL),
('16 ', 'Kelurahan', 'SUNGAI ENAM', NULL, NULL),
('17', 'Kelurahan', 'SUNGAI LEKOP', NULL, NULL),
('18', 'Kelurahan', 'TOAPAYA ASRI', NULL, NULL),
('19', 'Kelurahan', 'TOAPAYA SELATAN', NULL, NULL),
('20', 'ICD', 'A01.0', NULL, NULL),
('21', 'ICD', 'A15.5', NULL, NULL),
('22', 'ICD', 'A27.9', NULL, NULL),
('23', 'ICD', 'B16.9', NULL, NULL),
('24', 'ICD', 'C71.9', NULL, NULL),
('25', 'ICD', 'D07.5', NULL, NULL),
('26', 'ICD', 'D13.4', NULL, NULL),
('27', 'ICD', 'D44.0', NULL, NULL),
('28', 'ICD', 'D64.9', NULL, NULL),
('29', 'ICD', 'E05.1', NULL, NULL),
('30', 'ICD', 'E10.4', NULL, NULL),
('31', 'ICD', 'E11.4', NULL, NULL),
('32', 'ICD', 'E14.5', NULL, NULL),
('33', 'ICD', 'E78.5', NULL, NULL),
('34', 'ICD', 'G20', NULL, NULL),
('35', 'ICD', 'G31.9', NULL, NULL),
('36', 'ICD', 'G44.0', NULL, NULL),
('37', 'ICD', 'G62.9', NULL, NULL),
('38', 'ICD', 'H11.0', NULL, NULL),
('39', 'ICD', 'H81.4', NULL, NULL),
('40', 'ICD', 'I10', NULL, NULL),
('41', 'ICD', 'I11.0', NULL, NULL),
('42', 'ICD', 'I11.9', NULL, NULL),
('43', 'ICD', 'I25.0', NULL, NULL),
('44', 'ICD', 'I25.1', NULL, NULL),
('45', 'ICD', 'I50.0', NULL, NULL),
('46', 'ICD', 'I82.9', NULL, NULL),
('47', 'ICD', 'I83.0', NULL, NULL),
('48', 'ICD', 'I95.9', NULL, NULL),
('49', 'ICD', 'J20.2', NULL, NULL),
('50', 'ICD', 'J20.9', NULL, NULL),
('51', 'ICD', 'J45.9', NULL, NULL),
('52', 'ICD', 'K21.0', NULL, NULL),
('53', 'ICD', 'K21.9', NULL, NULL),
('54', 'ICD', 'K25.0', NULL, NULL),
('55', 'ICD', 'K25.4', NULL, NULL),
('56', 'ICD', 'K30', NULL, NULL),
('57', 'ICD', 'K35.9', NULL, NULL),
('58', 'ICD', 'K40.1', NULL, NULL),
('59', 'ICD', 'K51.9', NULL, NULL),
('60', 'ICD', 'K80.8', NULL, NULL),
('61', 'ICD', 'K85', NULL, NULL),
('62', 'ICD', 'L03.0', NULL, NULL),
('63', 'ICD', 'M06.9', NULL, NULL),
('64', 'ICD', 'M10.9', NULL, NULL),
('65', 'ICD', 'M17.9', NULL, NULL),
('66', 'ICD', 'M25.9', NULL, NULL),
('67', 'ICD', 'M43.0', NULL, NULL),
('68', 'ICD', 'M47.8', NULL, NULL),
('69', 'ICD', 'M47.9', NULL, NULL),
('70', 'ICD', 'M54.5', NULL, NULL),
('71', 'ICD', 'M79.1', NULL, NULL),
('72', 'ICD', 'M89.4', NULL, NULL),
('73', 'ICD', 'N00.4', NULL, NULL),
('74', 'ICD', 'N18.9', NULL, NULL),
('75', 'ICD', 'N20.0', NULL, NULL),
('76', 'ICD', 'N30.0', NULL, NULL),
('77', 'ICD', 'N30.9', NULL, NULL),
('78', 'ICD', 'N39.0', NULL, NULL),
('79', 'ICD', 'P39.0', NULL, NULL),
('80', 'ICD', 'Q44.4', NULL, NULL),
('81', 'ICD', 'R07.4', NULL, NULL),
('82', 'ICD', 'R10.0', NULL, NULL),
('83', 'ICD', 'R10.4', NULL, NULL),
('84', 'ICD', 'R31', NULL, NULL),
('85', 'ICD', 'S43.4', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `transaction_date` date DEFAULT NULL,
  `produk` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `transaction_date`, `produk`) VALUES
(230, '2021-06-06', 'Laki-laki,Manula,KELONG,I82.9,R31,'),
(233, '2021-06-06', 'Perempuan,Lansia Awal,KIJANG KOTA,M47.8,M54.5,'),
(234, '2021-06-06', 'Perempuan,Manula,KIJANG KOTA,I10,K30,'),
(235, '2021-06-06', 'Laki-laki,Manula,SUNGAI LEKOP,D07.5,I10,'),
(236, '2021-06-06', 'Perempuan,Dewasa Awal,KIJANG KOTA,K30,K80.8,'),
(237, '2021-06-06', 'Perempuan,Manula,KELONG,E11.4,K21.9,'),
(238, '2021-06-06', 'Perempuan,Dewasa Akhir,KIJANG KOTA,E11.4,I10,'),
(239, '2021-06-06', 'Perempuan,Manula,KIJANG KOTA,I10,K30,'),
(240, '2021-06-06', 'Perempuan,Manula,KIJANG KOTA,E11.4,M54.5,'),
(241, '2021-06-06', 'Laki-laki,Lansia Akhir,KIJANG KOTA,I10,K25.4,'),
(242, '2021-06-06', 'Laki-laki,Lansia Akhir,KIJANG KOTA,I10,I25.0,'),
(243, '2021-06-06', 'Laki-laki,Lansia Akhir,KIJANG KOTA,I11.0,I25.1,'),
(244, '2021-06-06', 'Perempuan,Lansia Akhir,KIJANG KOTA,E10.4,E11.4,'),
(245, '2021-06-06', 'Laki-laki,Lansia Akhir,KIJANG KOTA,I10,N20.0,'),
(246, '2021-06-06', 'Laki-laki,Dewasa Awal,KIJANG KOTA,A01.0,K35.9,'),
(247, '2021-06-06', 'Laki-laki,Lansia Akhir,KIJANG KOTA,K30,N30.9,'),
(248, '2021-06-06', 'Laki-laki,Manula,KIJANG KOTA,I10,M89.4,'),
(249, '2021-06-06', 'Perempuan,Manula,SUNGAI LEKOP,E10.4,I10,'),
(250, '2021-06-06', 'Perempuan,Manula,SUNGAI LEKOP,I10,K30,'),
(251, '2021-06-06', 'Perempuan,Lansia Awal,KIJANG KOTA,E10.4,E11.4,'),
(252, '2021-06-06', 'Laki-laki,Lansia Awal,KIJANG KOTA,E11.4,I10,'),
(253, '2021-06-06', 'Laki-laki,Lansia Akhir,KIJANG KOTA,I10,I11.9,'),
(254, '2021-06-06', 'Perempuan,Lansia Akhir,KIJANG KOTA,I10,S43.4,'),
(255, '2021-06-06', 'Perempuan,Manula,KIJANG KOTA,I10,I11.0,'),
(256, '2021-06-06', 'Laki-laki,Manula,KIJANG KOTA,I10,M43.0,'),
(257, '2021-06-06', 'Laki-laki,Lansia Akhir,KIJANG KOTA,E10.4,E11.4,'),
(258, '2021-06-06', 'Perempuan,Lansia Akhir,KIJANG KOTA,E11.4,N20.0,'),
(259, '2021-06-06', 'Laki-laki,Lansia Akhir,SUNGAI LEKOP,E11.4,K85,'),
(260, '2021-06-06', 'Perempuan,Manula,KIJANG KOTA,E11.4,N18.9,'),
(261, '2021-06-06', 'Laki-laki,Lansia Awal,KIJANG KOTA,E11.4,I10,'),
(262, '2021-06-06', 'Laki-laki,Manula,KIJANG KOTA,I10,N18.9,'),
(263, '2021-06-06', 'Laki-laki,Lansia Akhir,KIJANG KOTA,I10,K30,'),
(264, '2021-06-06', 'Perempuan,Dewasa Akhir,GUNUNG LENGKUAS,K30,N30.9,'),
(265, '2021-06-06', 'Laki-laki,Lansia Akhir,KIJANG KOTA,M10.9,N18.9,'),
(266, '2021-06-06', 'Laki-laki,Dewasa Akhir,GUNUNG LENGKUAS,K30,N30.9,'),
(267, '2021-06-06', 'Laki-laki,Dewasa Awal,SUNGAI LEKOP,G44.0,K30,'),
(268, '2021-06-06', 'Laki-laki,Lansia Awal,KIJANG KOTA,K30,M47.8,'),
(269, '2021-06-06', 'Laki-laki,Dewasa Akhir,SUNGAI LEKOP,E11.4,N20.0,'),
(270, '2021-06-06', 'Laki-laki,Manula,KIJANG KOTA,E11.4,I10,'),
(271, '2021-06-06', 'Perempuan,Lansia Akhir,KIJANG KOTA,M17.9,N00.4,'),
(272, '2021-06-06', 'Laki-laki,Dewasa Akhir,KIJANG KOTA,I83.0,K51.9,'),
(273, '2021-06-06', 'Perempuan,Lansia Awal,KIJANG KOTA,M43.0,R07.4,'),
(274, '2021-06-06', 'Perempuan,Lansia Awal,SUNGAI LEKOP,E05.1,E11.4,'),
(275, '2021-06-06', 'Perempuan,Lansia Awal,GUNUNG LENGKUAS,I95.9,K51.9,'),
(276, '2021-06-06', 'Perempuan,Lansia Awal,KIJANG KOTA,E10.4,E14.5,'),
(277, '2021-06-06', 'Laki-laki,Manula,KELONG,I10,I50.0,'),
(278, '2021-06-06', 'Laki-laki,Lansia Awal,MALANG RAPAT,J20.2,J45.9,'),
(279, '2021-06-06', 'Laki-laki,Lansia Awal,KELONG,I10,K40.1,'),
(280, '2021-06-06', 'Perempuan,Lansia Awal,KIJANG KOTA,I10,K30,'),
(281, '2021-06-06', 'Perempuan,Manula,SUNGAI ENAM,E11.4,I10,'),
(282, '2021-06-06', 'Perempuan,Lansia Awal,KIJANG KOTA,I10,I50.0,'),
(283, '2021-06-06', 'Perempuan,Manula,KIJANG KOTA,I10,K30,'),
(284, '2021-06-06', 'Laki-laki,Manula,SUNGAI LEKOP,E11.4,N18.9,'),
(285, '2021-06-06', 'Perempuan,Dewasa Akhir,KIJANG KOTA,E11.4,R10.0,'),
(286, '2021-06-06', 'Perempuan,Dewasa Akhir,SUNGAI LEKOP,G44.0,K30,'),
(287, '2021-06-06', 'Perempuan,Lansia Awal,SUNGAI LEKOP,K21.0,M79.1,'),
(288, '2021-06-06', 'Laki-laki,Dewasa Awal,KIJANG KOTA,A15.5,J20.9,'),
(289, '2021-06-06', 'Perempuan,Dewasa Akhir,KIJANG KOTA,E78.5,M43.0,'),
(290, '2021-06-06', 'Perempuan,Lansia Awal,TOAPAYA SELATAN,H11.0,K30,'),
(291, '2021-06-06', 'Laki-laki,Remaja Akhir,KIJANG KOTA,D64.9,K25.0,'),
(292, '2021-06-06', 'Perempuan,Lansia Akhir,MANTANG BESAR,E11.4,I10,'),
(293, '2021-06-06', 'Perempuan,Manula,KIJANG KOTA,E10.4,I50.0,'),
(294, '2021-06-06', 'Laki-laki,Lansia Akhir,KIJANG KOTA,E11.4,I10,'),
(295, '2021-06-06', 'Perempuan,Lansia Akhir,KIJANG KOTA,H81.4,I11.0,'),
(296, '2021-06-06', 'Perempuan,Dewasa Akhir,KIJANG KOTA,G62.9,M54.5,'),
(297, '2021-06-06', 'Perempuan,Manula,KIJANG KOTA,I10,I11.9,'),
(298, '2021-06-06', 'Perempuan,Manula,KIJANG KOTA,I10,L03.0,'),
(299, '2021-06-06', 'Perempuan,Dewasa Akhir,SUNGAI LEKOP,K35.9,P39.0,'),
(300, '2021-06-06', 'Perempuan,Lansia Akhir,KIJANG KOTA,I10,K30,'),
(301, '2021-06-06', 'Perempuan,Lansia Akhir,KIJANG KOTA,I10,K21.0,'),
(302, '2021-06-06', 'Laki-laki,Lansia Akhir,KIJANG KOTA,I10,N18.9,'),
(303, '2021-06-06', 'Perempuan,Lansia Awal,KIJANG KOTA,I10,K30,'),
(304, '2021-06-06', 'Perempuan,Dewasa Akhir,KIJANG KOTA,M47.9,M54.5,'),
(305, '2021-06-06', 'Perempuan,Dewasa Akhir,GUNUNG LENGKUAS,K30,N39.0,'),
(306, '2021-06-06', 'Laki-laki,Lansia Awal,KIJANG KOTA,I10,I11.9,'),
(307, '2021-06-06', 'Perempuan,Dewasa Akhir,SUNGAI LEKOP,K21.9,N30.0,'),
(308, '2021-06-06', 'Perempuan,Lansia Akhir,TOAPAYA ASRI,I10,M06.9,'),
(309, '2021-06-06', 'Perempuan,Lansia Akhir,KIJANG KOTA,I10,K80.8,'),
(310, '2021-06-06', 'Perempuan,Lansia Awal,NUMBING,E11.4,I50.0,'),
(311, '2021-06-06', 'Perempuan,Lansia Awal,SUNGAI LEKOP,K21.0,N20.0,'),
(312, '2021-06-06', 'Perempuan,Dewasa Akhir,KIJANG KOTA,I10,I25.0,'),
(313, '2021-06-06', 'Perempuan,Remaja Akhir,MAPUR,K30,R10.4,'),
(314, '2021-06-06', 'Perempuan,Lansia Akhir,MANTANG BESAR,I10,K30,'),
(315, '2021-06-06', 'Perempuan,Lansia Awal,KIJANG KOTA,E11.4,I10,'),
(316, '2021-06-06', 'Perempuan,Lansia Akhir,KIJANG KOTA,D44.0,G20,'),
(317, '2021-06-06', 'Laki-laki,Lansia Awal,SUNGAI LEKOP,A27.9,K80.8,'),
(318, '2021-06-06', 'Perempuan,Dewasa Akhir,KIJANG KOTA,E11.4,I10,'),
(319, '2021-06-06', 'Perempuan,Lansia Akhir,SUNGAI ENAM,E11.4,I10,'),
(320, '2021-06-06', 'Laki-laki,Lansia Awal,KIJANG KOTA,I10,N18.9,'),
(321, '2021-06-06', 'Laki-laki,Dewasa Awal,SUNGAI LEKOP,I10,M10.9,'),
(322, '2021-06-06', 'Laki-laki,Lansia Awal,TOAPAYA ASRI,E10.4,N18.9,'),
(324, '2021-06-06', 'Laki-laki,Manula,KIJANG KOTA,I50.0,K80.8,'),
(325, '2021-06-06', 'Perempuan,Dewasa Akhir,KIJANG KOTA,G62.9,K21.9,'),
(326, '2021-06-06', 'Laki-laki,Manula,GUNUNG LENGKUAS,N30.9,Q44.4,'),
(327, '2021-06-06', 'Laki-laki,Lansia Awal,SUNGAI LEKOP,D13.4,K30,'),
(328, '2021-06-06', 'Laki-laki,Lansia Akhir,KIJANG KOTA,B16.9,C71.9,'),
(329, '2021-06-06', 'Perempuan,Lansia Akhir,SUNGAI LEKOP,I10,M25.9,'),
(330, '2021-06-06', 'Laki-laki,Lansia Awal,GUNUNG LENGKUAS,I10,K80.8,'),
(331, '2021-06-06', 'Laki-laki,Lansia Akhir,SUNGAI LEKOP,G31.9,I10,'),
(332, '2021-06-06', 'Laki-laki,Lansia Akhir,KIJANG KOTA,E11.4,I11.0,');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_old`
--

CREATE TABLE `transaksi_old` (
  `id` int(11) NOT NULL,
  `transaction_date` date DEFAULT NULL,
  `produk` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(200) DEFAULT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `password` text,
  `level` tinyint(4) NOT NULL DEFAULT '0',
  `last_login` datetime DEFAULT NULL,
  `inactive` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `nama`, `password`, `level`, `last_login`, `inactive`) VALUES
(1, 'admin', 'Administrator', '21232f297a57a5a743894a0e4a801fc3', 1, '2017-02-22 01:49:04', 0),
(2, 'user', 'User Direktur', 'ee11cbb19052e40b07aac0ca060c23ee', 2, '2016-05-22 09:19:02', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `process_log`
--
ALTER TABLE `process_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi_old`
--
ALTER TABLE `transaksi_old`
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
-- AUTO_INCREMENT for table `process_log`
--
ALTER TABLE `process_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=333;

--
-- AUTO_INCREMENT for table `transaksi_old`
--
ALTER TABLE `transaksi_old`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
