-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2023 at 02:14 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_iworld`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$AIy0X1Ep6alaHDTofiChGeqq7k/d1Kc8vKQf1JZo0mKrzkkj6M626');

-- --------------------------------------------------------

--
-- Table structure for table `bom_produk`
--

CREATE TABLE `bom_produk` (
  `kode_bom` varchar(100) NOT NULL,
  `kode_bk` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(200) NOT NULL,
  `kebutuhan` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bom_produk`
--

INSERT INTO `bom_produk` (`kode_bom`, `kode_bk`, `kode_produk`, `nama_produk`, `kebutuhan`) VALUES
('B0005', 'M0005', 'P0005', 'MacBook Pro M2 512GB Warna Space Gray', '1'),
('B0004', 'M0004', 'P0004', 'AirPods Pro', '1'),
('B0003', 'M0003', 'P0003', 'iPhone 14 Pro Max 1TB Warna Gold', '1'),
('B0002', 'M0002', 'P0002', 'iPhone 11 128GB Warna Putih', '1'),
('B0001', 'M0001', 'P0001', 'iPhone 15 Pro 128GB Warna Natural Titanium', '1'),
('B0006', 'M0006', 'P0006', 'Apple Watch Nike SE', '1');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `kode_customer` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `telp` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`kode_customer`, `nama`, `email`, `username`, `password`, `telp`) VALUES
('C0001', 'Rei', 'reishintapa@gmail.com', 'rei', '$2y$10$zyky3gTBb8HFdpvQr0.4d.yeVL7YG07d4YB3dk0ZOFvOny6O/Hany', '085155299751'),
('C0002', 'Test', 'test@rei.com', 'test', '$2y$10$V8//qHxbpN6olN76HS5kSenfsDHYCc/5RkC2fdT/7XxNgkh.TNGS6', '089111222333');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `kode_bk` varchar(100) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `qty` varchar(200) NOT NULL,
  `harga` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`kode_bk`, `nama`, `qty`, `harga`, `tanggal`) VALUES
('M0001', 'iPhone 15 Pro 128GB Warna Natural Titanium', '9997', 20999000, '2023-11-05'),
('M0002', 'iPhone 11 128GB Warna Putih', '999', 8999000, '2023-11-05'),
('M0003', 'iPhone 14 Pro Max 1TB Warna Gold', '1000', 29999000, '2023-11-05'),
('M0004', 'AirPods Pro', '100', 4199000, '2023-11-05'),
('M0005', 'MacBook Pro M2 512GB Warna Space Gray', '100', 25499000, '2023-11-05'),
('M0006', 'Apple Watch Nike SE', '10', 3499000, '2023-11-05');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id_keranjang` int(11) NOT NULL,
  `kode_customer` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `kode_produk` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `image` text NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`kode_produk`, `nama`, `image`, `deskripsi`, `harga`) VALUES
('P0001', 'iPhone 15 Pro 128GB Warna Natural Titanium', '65477d56ac170.jpg', '								iPhone 15 Pro. Lahir dari titanium dan dilengkapi chip A17 Pro terobosan, tombol Tindakan yang dapat disesuaikan, dan sistem kamera Pro yang lebih serbaguna.\r\nIsi Kotak :\r\nâ€¢ iPhone dengan iOS 17.\r\nâ€¢ Kabel USB-C ke USB-C.\r\nâ€¢ Buku Manual dan dokumentasi lain.\r\n									', 20999000),
('P0002', 'iPhone 11 128GB Warna Putih', '654786f34c024.jpg', '								Sistem kamera ganda baru merekam lebih banyak lagi hal yang Anda lihat dan sukai. Chip paling cepat yang pernah ada di ponsel pintar dan kekuatan baterai sepanjang hari memungkinkan Anda melakukan lebih banyak hal tanpa perlu sering mengisi daya.\r\nDan kualitas video terbaik di ponsel pintar, jadi kenangan Anda terlihat lebih baik daripada sebelumnya. Layar Liquid Retina sepenuhnya 6,1 inci yang begitu penuh warna. Desain layar sepenuhnya yang begitu nyata menjadikan segalanya terlihat mengagumkan.\r\nDengan material aluminium sekelas industri dirgantara yang kuat dan tahan lama. Membuat iPhone 11 begitu mengagumkan dikelasnya. Dengan Chip A13 Bionic yang begitu andal, semua yang Anda lakukan begitu cepat dan lancar dan juga mampu bekerja dengan cara yang paling menghemat daya, sehingga baterai lebih tahan lama.\r\n						', 8999000),
('P0003', 'iPhone 14 Pro Max 1TB Warna Gold', '65478b6bb0794.jpg', 'iPhone 14 Pro Max. Memotret detail menakjubkan dengan kamera Utama 48 MP. Nikmati iPhone dalam cara yang sepenuhnya baru dengan layar yang Selalu Aktif dan Dynamic Island. Deteksi Tabrakan, sebuah fitur keselamatan baru, memanggil bantuan saat Anda tak bisa.\r\nIsi Kotak :\r\nâ€¢ iPhone dengan iOS 16.\r\nâ€¢ Kabel USB-C ke Lightning.\r\nâ€¢ Buku Manual dan dokumentasi lain.', 29999000),
('P0004', 'AirPods Pro', '65478c7ab57f4.jpg', 'AirPods Pro adalah satu-satunya headphone in-ear dengan Peredam Kebisingan Aktif yang terus beradaptasi dengan telinga Anda dan pas dikenakan â€” mencegah suara luar agar Anda dapat fokus pada apa yang sedang Anda dengarkan. Mikrofon hadap luar mendeteksi suara dari luar. AirPods Pro menghalaunya dengan anti-bising equalizer, mencegah suara luar masuk ke dalam. Mikrofon hadap dalam mendengarkan suara yang tidak diinginkan di dalam telinga Anda, dan juga dihilangkan dengan anti-kebisingan. Pencegahan kebisingan terus melakukan penyesuaian 200 kali per detik untuk menghadirkan suara yang benar-benar impresif, sehingga Anda dapat menikmati musik, podcast, dan panggilan dengan optimal.\r\n', 4199000),
('P0005', 'MacBook Pro M2 512GB Warna Space Gray', '65478ca7e907d.jpg', 'MacBook Pro 13 inci lebih andal dari sebelumnya. Bertenaga super berkat chip M2 generasi berikutnya, MacBook Pro ini merupakan laptop pro Apple yang paling portabel, dengan kekuatan baterai hingga 20 jam\r\n			', 25499000),
('P0006', 'Apple Watch Nike SE', '65478cf7dc418.jpg', 'Dengan Apple Watch Nike SE, Anda dapat melacak olahraga dengan aplikasi Nike Run Club. Selaraskan musik sebagai motivasi ke jam tangan Anda. Aktifkan Twilight Mode Nike untuk visibilitas yang lebih baik.1 Dan pilih wajah dan tali jam Nike eksklusif.\r\n			', 3499000);

-- --------------------------------------------------------

--
-- Table structure for table `produksi`
--

CREATE TABLE `produksi` (
  `id_order` int(11) NOT NULL,
  `invoice` varchar(200) NOT NULL,
  `kode_customer` varchar(200) NOT NULL,
  `kode_produk` varchar(200) NOT NULL,
  `nama_produk` varchar(200) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `status` varchar(200) NOT NULL,
  `tanggal` date NOT NULL,
  `provinsi` varchar(200) NOT NULL,
  `kota` varchar(200) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `kode_pos` varchar(200) NOT NULL,
  `terima` varchar(200) NOT NULL,
  `tolak` varchar(200) NOT NULL,
  `cek` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produksi`
--

INSERT INTO `produksi` (`id_order`, `invoice`, `kode_customer`, `kode_produk`, `nama_produk`, `qty`, `harga`, `status`, `tanggal`, `provinsi`, `kota`, `alamat`, `kode_pos`, `terima`, `tolak`, `cek`) VALUES
(19, 'INV0001', 'C0001', 'P0001', 'iPhone 15 Pro 128GB Warna Natural Titanium', 1, 20999000, '0', '2323-11-05', 'Jawa Barat', 'Subang', 'Pamanukan', '41254', '1', '0', 0),
(23, 'INV0002', 'C0002', 'P0006', 'Apple Watch Nike SE', 2, 3499000, 'Pesanan Baru', '2323-11-05', 'Konoha', 'Amsterdam', 'Jl. Kopi Hitam', '1234', '0', '0', 0),
(24, 'INV0002', 'C0002', 'P0004', 'AirPods Pro', 1, 4199000, 'Pesanan Baru', '2323-11-05', 'Konoha', 'Amsterdam', 'Jl. Kopi Hitam', '1234', '0', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `report_cancel`
--

CREATE TABLE `report_cancel` (
  `id_report_cancel` int(11) NOT NULL,
  `id_order` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `jumlah` varchar(100) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `report_inventory`
--

CREATE TABLE `report_inventory` (
  `id_report_inv` int(11) NOT NULL,
  `kode_bk` varchar(100) NOT NULL,
  `nama_bahanbaku` varchar(100) NOT NULL,
  `jml_stok_bk` int(11) NOT NULL,
  `tanggal` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `report_omset`
--

CREATE TABLE `report_omset` (
  `id_report_omset` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total_omset` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `report _penjualan`
--

CREATE TABLE `report _penjualan` (
  `id_report_sell` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `jumlah_terjual` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `report_produksi`
--

CREATE TABLE `report_produksi` (
  `id_report_prd` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `report_profit`
--

CREATE TABLE `report_profit` (
  `id_report_profit` int(11) NOT NULL,
  `kode_bom` varchar(100) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `jumlah` varchar(11) NOT NULL,
  `total_profit` varchar(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`kode_customer`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`kode_bk`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id_keranjang`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`kode_produk`);

--
-- Indexes for table `produksi`
--
ALTER TABLE `produksi`
  ADD PRIMARY KEY (`id_order`);

--
-- Indexes for table `report_cancel`
--
ALTER TABLE `report_cancel`
  ADD PRIMARY KEY (`id_report_cancel`);

--
-- Indexes for table `report_inventory`
--
ALTER TABLE `report_inventory`
  ADD PRIMARY KEY (`id_report_inv`);

--
-- Indexes for table `report_omset`
--
ALTER TABLE `report_omset`
  ADD PRIMARY KEY (`id_report_omset`);

--
-- Indexes for table `report _penjualan`
--
ALTER TABLE `report _penjualan`
  ADD PRIMARY KEY (`id_report_sell`);

--
-- Indexes for table `report_produksi`
--
ALTER TABLE `report_produksi`
  ADD PRIMARY KEY (`id_report_prd`);

--
-- Indexes for table `report_profit`
--
ALTER TABLE `report_profit`
  ADD PRIMARY KEY (`id_report_profit`),
  ADD UNIQUE KEY `kode_bom` (`kode_bom`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id_keranjang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `produksi`
--
ALTER TABLE `produksi`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `report_cancel`
--
ALTER TABLE `report_cancel`
  MODIFY `id_report_cancel` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report_inventory`
--
ALTER TABLE `report_inventory`
  MODIFY `id_report_inv` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report_omset`
--
ALTER TABLE `report_omset`
  MODIFY `id_report_omset` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report _penjualan`
--
ALTER TABLE `report _penjualan`
  MODIFY `id_report_sell` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report_produksi`
--
ALTER TABLE `report_produksi`
  MODIFY `id_report_prd` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report_profit`
--
ALTER TABLE `report_profit`
  MODIFY `id_report_profit` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
