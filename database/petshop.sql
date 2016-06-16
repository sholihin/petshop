-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 16, 2016 at 04:57 
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `petshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(10) UNSIGNED NOT NULL,
  `name_admin` varchar(50) CHARACTER SET utf8 NOT NULL,
  `address_admin` text CHARACTER SET utf8 NOT NULL,
  `email_admin` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone_admin` varchar(12) CHARACTER SET utf8 NOT NULL,
  `username_admin` varchar(30) CHARACTER SET utf8 NOT NULL,
  `password_admin` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `name_admin`, `address_admin`, `email_admin`, `phone_admin`, `username_admin`, `password_admin`) VALUES
(7, 'admin', 'Citayem', 'qyana@gmail.com', '089678720078', 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `bukutamu`
--

CREATE TABLE `bukutamu` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_member` int(10) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `message` text CHARACTER SET utf8 NOT NULL,
  `status` enum('wait','approve') CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bukutamu`
--

INSERT INTO `bukutamu` (`id`, `id_member`, `date`, `message`, `status`) VALUES
(1, 0, '0000-00-00 00:00:00', 'Baju Batik distro palestina.', 'approve');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(5) NOT NULL,
  `id_user` int(5) UNSIGNED NOT NULL,
  `id_produk` int(5) UNSIGNED NOT NULL,
  `id_header_transaction` int(5) UNSIGNED NOT NULL,
  `qty` int(10) NOT NULL,
  `date` datetime NOT NULL,
  `status_pemesan` enum('buy','checkout') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `id_user`, `id_produk`, `id_header_transaction`, `qty`, `date`, `status_pemesan`) VALUES
(3, 11, 2, 49, 1, '2016-06-08 11:58:04', 'checkout'),
(4, 11, 4, 49, 1, '2016-06-08 11:58:04', 'checkout'),
(5, 11, 2, 49, 1, '2016-06-08 11:58:04', 'checkout'),
(6, 11, 4, 50, 1, '2016-06-08 11:58:19', 'checkout'),
(7, 11, 2, 51, 1, '2016-06-12 12:51:06', 'checkout'),
(8, 11, 4, 51, 1, '2016-06-12 12:51:06', 'checkout'),
(9, 12, 4, 52, 1, '2016-06-15 13:50:35', 'checkout'),
(10, 12, 4, 53, 5, '2016-06-15 13:50:56', 'checkout'),
(11, 12, 4, 54, 9, '2016-06-15 13:53:30', 'checkout'),
(12, 12, 4, 55, 10, '2016-06-15 14:03:05', 'checkout'),
(13, 12, 2, 56, 1, '2016-06-15 14:04:01', 'checkout'),
(14, 12, 2, 57, 1, '2016-06-15 16:35:33', 'checkout'),
(15, 12, 2, 58, 1, '2016-06-15 16:38:26', 'checkout'),
(16, 12, 2, 59, 1, '2016-06-15 16:40:10', 'checkout'),
(17, 11, 3, 60, 10, '2016-06-15 20:24:51', 'checkout'),
(18, 11, 2, 61, 1, '2016-06-16 05:18:40', 'checkout'),
(19, 11, 1, 61, 1, '2016-06-16 05:18:40', 'checkout');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id_category` int(10) UNSIGNED NOT NULL,
  `name_category` varchar(30) CHARACTER SET utf8 NOT NULL,
  `status_category` enum('public','draft') CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id_category`, `name_category`, `status_category`) VALUES
(1, 'Kucing', 'public'),
(2, 'Anjing', 'public'),
(3, 'Hewan Lain', 'public');

-- --------------------------------------------------------

--
-- Table structure for table `header_transaksi`
--

CREATE TABLE `header_transaksi` (
  `id` int(5) UNSIGNED NOT NULL,
  `status` enum('checkout','konfirmasi','diterima','ditolak','proses','komplain','retur','kembalikan_dana','selesai') COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(5) UNSIGNED NOT NULL,
  `date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `header_transaksi`
--

INSERT INTO `header_transaksi` (`id`, `status`, `user_id`, `date`) VALUES
(49, 'checkout', 11, '2016-06-08 04:58:04'),
(50, 'checkout', 11, '2016-06-08 04:58:19'),
(51, 'checkout', 11, '2016-06-12 05:51:06'),
(52, 'checkout', 12, '2016-06-15 06:50:35'),
(53, 'checkout', 12, '2016-06-15 06:50:56'),
(54, 'checkout', 12, '2016-06-15 06:53:30'),
(55, 'checkout', 12, '2016-06-15 07:03:05'),
(56, 'checkout', 12, '2016-06-15 07:04:01'),
(57, 'checkout', 12, '2016-06-15 09:35:33'),
(58, 'checkout', 12, '2016-06-15 09:38:26'),
(59, 'checkout', 12, '2016-06-15 09:40:10'),
(60, 'checkout', 11, '2016-06-15 13:24:51'),
(61, 'checkout', 11, '2016-06-15 22:18:40');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id_invoice` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('checkout','konfirmasi','diterima','ditolak','proses','komplain','retur','kembalikan_dana','selesai') COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_tagihan` decimal(19,0) DEFAULT '0',
  `id_header_transaction` int(5) UNSIGNED NOT NULL,
  `user_id` int(5) UNSIGNED NOT NULL,
  `date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id_invoice`, `status`, `total_tagihan`, `id_header_transaction`, `user_id`, `date`) VALUES
('INV001', 'ditolak', '520000', 49, 11, '2016-06-08 04:58:04'),
('INV002', 'retur', '100000', 50, 11, '2016-06-08 04:58:19'),
('INV003', 'checkout', '310000', 51, 11, '2016-06-12 05:51:06'),
('INV004', 'checkout', '100000', 52, 12, '2016-06-15 06:50:35'),
('INV005', 'checkout', '500000', 53, 12, '2016-06-15 06:50:56'),
('INV006', 'checkout', '900000', 54, 12, '2016-06-15 06:53:30'),
('INV007', 'checkout', '1000000', 55, 12, '2016-06-15 07:03:05'),
('INV008', 'checkout', '210000', 56, 12, '2016-06-15 07:04:01'),
('INV009', 'checkout', '210000', 57, 12, '2016-06-15 09:35:33'),
('INV010', 'checkout', '210000', 58, 12, '2016-06-15 09:38:26'),
('INV011', 'checkout', '210000', 59, 12, '2016-06-15 09:40:10'),
('INV012', 'checkout', '1000000', 60, 11, '2016-06-15 13:24:51'),
('INV013', 'checkout', '410000', 61, 11, '2016-06-15 22:18:40');

-- --------------------------------------------------------

--
-- Table structure for table `konfirmasi`
--

CREATE TABLE `konfirmasi` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `total_tagihan` decimal(19,0) NOT NULL,
  `nama_bank` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `no_rekening` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `atas_nama` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `rekening_tujuan` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `jumlah_bayar` decimal(19,0) NOT NULL,
  `bukti` text COLLATE utf8_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(5) UNSIGNED NOT NULL,
  `date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `konfirmasi`
--

INSERT INTO `konfirmasi` (`id`, `invoice`, `total_tagihan`, `nama_bank`, `no_rekening`, `atas_nama`, `rekening_tujuan`, `jumlah_bayar`, `bukti`, `keterangan`, `user_id`, `date`) VALUES
(8, 'INV010', '210000', 'sdf', '234', '23423', 'mandiri', '234234', '12a.png', 'adfsdfa', 12, '2016-06-15 09:38:41'),
(9, 'INV011', '210000', 'asdf', 'asd', 'asdf', 'bca', '0', '18.jpg', 'asdfasdf', 12, '2016-06-15 09:40:23'),
(10, 'INV012', '1000000', 'BCA', '32435436467', 'Qyana', 'mandiri', '1000000', '11a.png', 'bayar makanan kucing', 11, '2016-06-15 13:25:33'),
(11, 'INV013', '410000', 'sdf', 'asdf', 'asf', 'mandiri', '0', '', 'adsf', 11, '2016-06-15 22:38:55');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id_post` int(10) UNSIGNED NOT NULL,
  `title_post` varchar(50) CHARACTER SET utf8 NOT NULL,
  `type_post` enum('post','page') CHARACTER SET utf8 NOT NULL,
  `content_post` text CHARACTER SET utf8 NOT NULL,
  `date_post` datetime NOT NULL,
  `author_post` varchar(30) CHARACTER SET utf8 NOT NULL,
  `status_post` enum('public','draft') CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id_post`, `title_post`, `type_post`, `content_post`, `date_post`, `author_post`, `status_post`) VALUES
(1, 'Pameran Batik', 'post', '<p>Pameran Batik JE. Distro palestina mengikuti pameran batik dengan penuh semangat dan menawarkan beberapa produk dengan harga terjangkau. Kualitas produk baik dan konsumen diharapkan puas dengan layanan kami.</p>', '2014-10-01 09:27:16', 'admin', 'public'),
(2, 'Profil', 'page', 'Ini merupakan Profil kami', '2006-12-20 01:26:02', 'gng', 'public'),
(8, 'Sejarah', 'page', '<p>Sejarah berdirinya perusahaan ini</p>', '2006-12-20 05:22:21', 'gng', 'public'),
(9, 'Galery', 'page', '<p>Galery Foto usaha ini</p>', '2006-12-20 05:24:39', 'gng', 'public'),
(10, 'Contact US', 'page', '<p>Berisi Kontak Person yang ada/p>', '2006-12-20 05:24:57', 'gng', 'public'),
(11, 'Pertunjukan galery', 'post', '<p>Pertunjukan Galery motiv batik distro palestina dengan berbagai macam warna dan ukuran. Distro Palestina &ndash; Bandung Tanggal: 1 &ndash; 7 Desember 2014 Tempat:&nbsp;BTC FASHION MALL, Bandung Waktu: 10.00 &ndash; 21.00 WIB Pameran ini dielenggarakan sebagai wujud kecintaan&nbsp; kepada budaya sekaligus mencari bakat kreatif dari para pencinta batik, bordir dan tenun nusantara. Diharapkan dengan adanya Pameran Batik di Bandung&nbsp;ini maka batik, bordir dan tenun Indonesia dapat terus lestari sepanjang masa, sehingga karya cipta nusantara ini</p>', '2014-11-29 20:16:45', 'ganang', 'public'),
(12, 'Pemasaran Distrto Palestina', 'post', '<p style="text-align: justify;"><em><strong>Peminat produk distro palestina&nbsp; beragam.</strong></em> Tidak hanya &nbsp;di <span style="color: #ff0000;">Yogyakarta</span> saja, tetapi sudah sampai &nbsp;Jakarta, Bandung, Bali, dan beberapa kota besar lainnya. Seiring dengan perkembangan pasar, saat ini produk distro palestinasudah menembus ke pasar luar negeri.&nbsp; Untuk pasar ekspor misalnya, kap lampu peminatnya terbanyak dari Yunani, kaligrafi dari Turki, sedangkan penyekat buku banyak diminati pasar Jepang dan Amerika.&nbsp;</p>', '2006-12-20 18:13:28', 'gng', 'public'),
(13, 'Distro Palestina Clothing Line', 'post', '<p style="text-align: justify;"><span style="color: #800000;"><strong>Distrto Palestina</strong></span> adalah clothing line yang berdiri sejak tahun 2006. mempunyai semua item yang dibutuhkan seperti kaos , kemeja , tas , jaket , topi , sandal , boxer , celana , dress , dll dengan 114 titik distribusi yang tersebar di 33 provinsi Indonesia dan terus bertambah seiring permintaan pasar. Berawal dari pemikiran edialisme founder yang ingin menghasilkan produk-produk yang kreatif, fleksibel serta bisa mencerminkan gaya hidup anak muda zaman sekarang Untuk menjaga kualitas dan layanan bagi konsumennya, perusahaan mulai melakukan pembenahan manajemen yang lebih efektif karena sudah memiliki tempat produksi, dan gudang serta kantor sendiri. pasar luas kami berkisar dari remaja kepada semua orang bahwa orang-orang berpikiran terbuka, mandiri, dan modern. Selain itu, kami menghasilkan setiap detail produk kami dengan kualitas terbaik dan dirilis setiap produk dalam jumlah dan penawaran eksklusif dengan harga terjangkau.</p>', '2014-11-29 20:12:27', 'gng', 'public');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id_product` int(10) UNSIGNED NOT NULL,
  `code_product` varchar(30) CHARACTER SET utf32 NOT NULL,
  `name_product` varchar(50) CHARACTER SET utf8 NOT NULL,
  `id_category` int(5) UNSIGNED NOT NULL,
  `description_product` text CHARACTER SET utf8 NOT NULL,
  `price_product` decimal(19,0) NOT NULL,
  `status_product` enum('public','draft') NOT NULL,
  `date_product` datetime NOT NULL,
  `stock_product` bigint(10) NOT NULL,
  `picture_product` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id_product`, `code_product`, `name_product`, `id_category`, `description_product`, `price_product`, `status_product`, `date_product`, `stock_product`, `picture_product`) VALUES
(1, 'bj01', 'Manhattan Man Leather Bag', 3, 'Ukobag berkomitmen untuk membuat tas dengan kualitas terbaik dan juga mendukung global worming, oleh sebab itu tas yang anda beli hanya di buat saat di pesan tidak menggunakan sistem stok barang. Lamanya proses kerja adalah sekitar 5 minggu setelah pembayaran Anda dikonfirmasi.', '200000', 'public', '2006-12-20 00:21:19', 9, '10.jpg'),
(2, 'bj02', 'Baju Hem Pria', 4, 'Ukobag berkomitmen untuk membuat tas dengan kualitas terbaik dan juga mendukung global worming, oleh sebab itu tas yang anda beli hanya di buat saat di pesan tidak menggunakan sistem stok barang. Lamanya proses kerja adalah sekitar 5 minggu setelah pembayaran Anda dikonfirmasi.', '210000', 'public', '2014-10-01 08:12:55', 5, '11.png'),
(3, 'bj03', 'Baju Wanita', 4, 'Ukobag berkomitmen untuk membuat tas dengan kualitas terbaik dan juga mendukung global worming, oleh sebab itu tas yang anda beli hanya di buat saat di pesan tidak menggunakan sistem stok barang. Lamanya proses kerja adalah sekitar 5 minggu setelah pembayaran Anda dikonfirmasi.', '100000', 'public', '2014-10-01 08:16:28', 0, '5.jpg'),
(4, 'bj04', 'Baju Wanita', 4, 'Ukobag berkomitmen untuk membuat tas dengan kualitas terbaik dan juga mendukung global worming, oleh sebab itu tas yang anda beli hanya di buat saat di pesan tidak menggunakan sistem stok barang. Lamanya proses kerja adalah sekitar 5 minggu setelah pembayaran Anda dikonfirmasi.', '100000', 'public', '2014-10-01 09:08:40', 0, '8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sub-category`
--

CREATE TABLE `sub-category` (
  `id_sub` int(10) UNSIGNED NOT NULL,
  `id_category` int(10) UNSIGNED NOT NULL,
  `name_sub` varchar(30) CHARACTER SET utf8 NOT NULL,
  `status` enum('public','draft') CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub-category`
--

INSERT INTO `sub-category` (`id_sub`, `id_category`, `name_sub`, `status`) VALUES
(4, 1, 'Makanan', 'public'),
(5, 1, 'Suplemen', 'public'),
(6, 1, 'Perawatan', 'public'),
(7, 1, 'Aksesoris', 'public'),
(8, 2, 'Makanan', 'public'),
(9, 2, 'Suplemen', 'public'),
(10, 2, 'Perawatan', 'public'),
(11, 2, 'Aksesoris', 'public'),
(12, 3, 'Makanan', 'public'),
(13, 3, 'Suplemen', 'public'),
(14, 3, 'Perawatan', 'public'),
(15, 3, 'Aksesoris', 'public');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `fullname` varchar(50) CHARACTER SET utf8 NOT NULL,
  `password` varchar(100) NOT NULL,
  `city` varchar(20) CHARACTER SET utf8 NOT NULL,
  `country` varchar(20) NOT NULL,
  `address` text CHARACTER SET utf8 NOT NULL,
  `poscode` varchar(10) NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8 NOT NULL,
  `date` datetime NOT NULL,
  `status` enum('aktif','blokir') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fullname`, `password`, `city`, `country`, `address`, `poscode`, `email`, `phone`, `date`, `status`) VALUES
(11, 'Qyana', 'ee11cbb19052e40b07aac0ca060c23ee', 'bogor', 'indonesia', 'jl. bambu kuning', '16922', 'user@user.com', '0857110', '2016-06-04 23:58:11', 'aktif'),
(12, 'Mohamad Sholihin', '6a204bd89f3c8348afd5c77c717a097a', 'bogor', 'indonesia', 'bojong', '16922', 'mohamad.sholihin.it@gmail.com', '04576895678', '2016-06-15 13:00:30', 'aktif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `bukutamu`
--
ALTER TABLE `bukutamu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `header_transaksi`
--
ALTER TABLE `header_transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id_invoice`);

--
-- Indexes for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id_post`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_product`);

--
-- Indexes for table `sub-category`
--
ALTER TABLE `sub-category`
  ADD PRIMARY KEY (`id_sub`),
  ADD KEY `id_category` (`id_category`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `bukutamu`
--
ALTER TABLE `bukutamu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `header_transaksi`
--
ALTER TABLE `header_transaksi`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id_post` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id_product` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sub-category`
--
ALTER TABLE `sub-category`
  MODIFY `id_sub` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `sub-category`
--
ALTER TABLE `sub-category`
  ADD CONSTRAINT `sub-category_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `category` (`id_category`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
