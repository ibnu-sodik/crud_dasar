-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 23, 2020 at 01:18 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_aflah`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_mahasiswa`
--

CREATE TABLE `tb_mahasiswa` (
  `id` int(11) NOT NULL,
  `nim` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `gender` enum('Laki - laki','Perempuan') NOT NULL,
  `jurusan` enum('TEKNIK INFORMATIKA','TEKNIK INDUSTRI') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_mahasiswa`
--

INSERT INTO `tb_mahasiswa` (`id`, `nim`, `nama`, `gender`, `jurusan`) VALUES
(1, 'T1102132', 'AFLAH RAFLI RIZQULLAH', 'Laki - laki', 'TEKNIK INFORMATIKA'),
(2, 'T1102133', 'DEKI ISMIRAWANSYAH', 'Laki - laki', 'TEKNIK INFORMATIKA'),
(3, 'T1102134', 'MOH NUR MAHMUDI', 'Laki - laki', 'TEKNIK INFORMATIKA'),
(4, 'T1102135', 'M IQBAL AINUN NAJIB', 'Laki - laki', 'TEKNIK INFORMATIKA'),
(5, 'T1102136', 'NUR IRMAYANTI', 'Perempuan', 'TEKNIK INFORMATIKA'),
(6, 'T1102137', 'SITI RUDHOTUL HASANAH', 'Perempuan', 'TEKNIK INFORMATIKA'),
(7, 'T1102138', 'RIFKI NUR ZAM ZAMY', 'Laki - laki', 'TEKNIK INFORMATIKA'),
(8, 'T1102139', 'TRI KAROMATUL JANNAH', 'Perempuan', 'TEKNIK INFORMATIKA'),
(9, 'T11021310', 'WAHYU UBAIDILLAH', 'Laki - laki', 'TEKNIK INFORMATIKA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
