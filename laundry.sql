-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2020 at 04:09 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laundry`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku_besar`
--

CREATE TABLE `buku_besar` (
  `id` int(11) NOT NULL,
  `nomor` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku_besar`
--

INSERT INTO `buku_besar` (`id`, `nomor`, `nama`, `keterangan`) VALUES
(111, 100, 'Kas', 'Asset'),
(112, 100, 'Piutang usaha', 'Asset'),
(113, 100, 'Sewa dibayar dimuka', 'Asset'),
(114, 100, 'Perlengkapan', 'Asset'),
(115, 100, 'Peralatan', 'Asset'),
(201, 200, 'Utang usaha', 'Kewajiban'),
(202, 200, 'Utang gaji', 'Kewajiban'),
(301, 300, 'Modal usaha', 'Modal'),
(302, 300, 'Prive', 'Modal'),
(401, 400, 'Pendapatan usaha', 'Pendapatan'),
(501, 500, 'Beban gaji', 'Beban'),
(502, 500, 'Beban listrik', 'Beban'),
(503, 500, 'Beban air', 'Beban'),
(504, 500, 'Beban telepon', 'Beban'),
(505, 500, 'Beban media cetak', 'Beban'),
(506, 500, 'Beban bensin', 'Beban'),
(507, 500, 'Beban plastik', 'Beban'),
(508, 500, 'Beban plastik', 'Beban'),
(509, 500, 'Beban sewa', 'Beban');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_jurnalpenyesuaian`
--

CREATE TABLE `tabel_jurnalpenyesuaian` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `ref` int(11) NOT NULL,
  `debit` varchar(255) NOT NULL,
  `kredit` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_jurnalumum`
--

CREATE TABLE `tabel_jurnalumum` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `ref` int(11) NOT NULL,
  `debit` varchar(255) NOT NULL,
  `kredit` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_paket`
--

CREATE TABLE `tabel_paket` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kuantitas` varchar(255) NOT NULL,
  `hargab` varchar(255) NOT NULL,
  `hargas` varchar(255) NOT NULL,
  `Keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_paket`
--

INSERT INTO `tabel_paket` (`id`, `nama`, `kuantitas`, `hargab`, `hargas`, `Keterangan`) VALUES
(1, 'Kiloan', '1Kg', '6000', '7000', ''),
(2, 'Blouse', '', '6000', '7000', ''),
(3, 'T-Shirt', '', '6000', '7000', ''),
(4, 'Kemeja', '', '6000', '7000', ''),
(5, 'Celana Panjang', '', '6000', '7000', ''),
(6, 'Baju Safari', '', '10000', '12000', ''),
(7, 'Setelan Safari', '', '15000', '17000', ''),
(8, 'Jacket Biasa', '', '9000', '10000', ''),
(9, 'Jas', '', '20000', '22000', ''),
(10, 'Setelan Jas', '', '25000', '27000', ''),
(11, 'Kebaya', '', '40000', '42000', ''),
(12, 'Wearpack', '', '8000', '9000', ''),
(13, 'Blazer', '', '15000', '17000', ''),
(14, 'Setelan Blazer', '', '20000', '22000', ''),
(15, 'Kain Songket/Ulos', '', '25000', '27000', ''),
(16, 'Sprei Single', '', '8000', '9000', ''),
(17, 'Sprei Single Set', '', '12000', '14000', ''),
(18, 'Sprei Double', '', '12000', '14000', ''),
(19, 'Sprei Double Set', '', '18000', '20000', ''),
(20, 'Dasi', '', '9000', '10000', ''),
(21, 'Bedcover Single', '', '17000', '19000', ''),
(22, 'Bedcover Single Set', '', '25000', '27000', ''),
(23, 'Bedcover Double', '', '22000', '24000', ''),
(24, 'Bedcover Double Set', '', '35000', '37000', ''),
(25, 'Tas Kecil', '', '15000', '17000', ''),
(26, 'Tas Sedang', '', '20000', '22000', ''),
(27, 'Tas Besar', '', '25000', '27000', ''),
(28, 'Boneka Mini', '', '7000', '8000', ''),
(29, 'Boneka Kecil', '', '15000', '17000', ''),
(30, 'Boneka Sedang', '', '20000', '22000', ''),
(31, 'Boneka Besar', '', '25000', '27000', ''),
(32, 'Boneka Jumbo', '', '40000', '42000', ''),
(33, 'Sepatu', '', '10000', '12000', ''),
(34, 'Topi', '', '6000', '7000', ''),
(35, 'Gorden ', '', '8000', '9000', '/Meter'),
(36, 'Handuk', '', '6000', '7000', ''),
(37, 'Selimut Biasa', '', '15000', '16000', ''),
(38, 'Karpet Biasa', '', '13000', '14000', '/Meter'),
(39, 'Karpet Sedang', '', '15000', '16000', '/Meter'),
(40, 'Karpet Besar', '', '17000', '18000', '/Meter');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_pembelian`
--

CREATE TABLE `tabel_pembelian` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `kuantitas` varchar(255) NOT NULL,
  `harga` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_pembelian`
--

INSERT INTO `tabel_pembelian` (`id`, `tanggal`, `keterangan`, `kuantitas`, `harga`) VALUES
(1, '2020-01-09', 'qwe', 'asd', 'zxc'),
(2, '2020-01-21', 'fgh', 'rty', 'uyuit');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_pengeluaran`
--

CREATE TABLE `tabel_pengeluaran` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `kuantitas` varchar(255) NOT NULL,
  `harga` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_pengeluaran`
--

INSERT INTO `tabel_pengeluaran` (`id`, `tanggal`, `keterangan`, `kuantitas`, `harga`) VALUES
(1, '2020-01-15', 'aaa', 'sss', 'ddd'),
(2, '2020-01-05', 'qqq', 'www', 'eee');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_peralatan`
--

CREATE TABLE `tabel_peralatan` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `kuantitas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_peralatan`
--

INSERT INTO `tabel_peralatan` (`id`, `nama`, `keterangan`, `kuantitas`) VALUES
(1, 'Mesin cuci', 'Mesin Cuci', '3'),
(2, 'Mesin Pengering', 'Mesin Pengering', '2'),
(3, 'Mesin Setrika', 'Mesin Setrika', '2'),
(4, 'Motor', 'Kendaraan', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_perlengkapan`
--

CREATE TABLE `tabel_perlengkapan` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `kuantitas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_perlengkapan`
--

INSERT INTO `tabel_perlengkapan` (`id`, `nama`, `keterangan`, `kuantitas`) VALUES
(1, 'Deterjen', 'Perlengkapan mencuci', '70Kg'),
(2, 'Kantong Plastik', 'Plastik bungkus', '50Pck');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_transaksipos`
--

CREATE TABLE `tabel_transaksipos` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `nama` varchar(255) NOT NULL,
  `keterangan` varchar(500) NOT NULL,
  `kuantitas` varchar(255) NOT NULL,
  `harga` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_transaksipos`
--

INSERT INTO `tabel_transaksipos` (`id`, `tanggal`, `nama`, `keterangan`, `kuantitas`, `harga`, `status`) VALUES
(1, '2020-01-15', 'Aboy', 'asdasdasd', '30', '500000', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE `user_data` (
  `id` int(11) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku_besar`
--
ALTER TABLE `buku_besar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabel_jurnalpenyesuaian`
--
ALTER TABLE `tabel_jurnalpenyesuaian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabel_jurnalumum`
--
ALTER TABLE `tabel_jurnalumum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabel_paket`
--
ALTER TABLE `tabel_paket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabel_pembelian`
--
ALTER TABLE `tabel_pembelian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabel_pengeluaran`
--
ALTER TABLE `tabel_pengeluaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabel_peralatan`
--
ALTER TABLE `tabel_peralatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabel_perlengkapan`
--
ALTER TABLE `tabel_perlengkapan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabel_transaksipos`
--
ALTER TABLE `tabel_transaksipos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku_besar`
--
ALTER TABLE `buku_besar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=510;
--
-- AUTO_INCREMENT for table `tabel_jurnalpenyesuaian`
--
ALTER TABLE `tabel_jurnalpenyesuaian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tabel_jurnalumum`
--
ALTER TABLE `tabel_jurnalumum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tabel_paket`
--
ALTER TABLE `tabel_paket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `tabel_pembelian`
--
ALTER TABLE `tabel_pembelian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tabel_pengeluaran`
--
ALTER TABLE `tabel_pengeluaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tabel_peralatan`
--
ALTER TABLE `tabel_peralatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tabel_perlengkapan`
--
ALTER TABLE `tabel_perlengkapan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tabel_transaksipos`
--
ALTER TABLE `tabel_transaksipos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_data`
--
ALTER TABLE `user_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
