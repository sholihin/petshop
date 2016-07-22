-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 22, 2016 at 05:06 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `petshopku`
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
(19, 11, 1, 61, 1, '2016-06-16 05:18:40', 'checkout'),
(20, 11, 11, 62, 1, '2016-06-16 15:20:28', 'checkout'),
(21, 11, 10, 63, 1, '2016-06-16 19:49:20', 'checkout'),
(22, 11, 10, 63, 1, '2016-06-16 19:49:20', 'checkout'),
(23, 11, 10, 63, 1, '2016-06-16 19:49:20', 'checkout'),
(24, 11, 3, 64, 1, '2016-06-19 22:16:06', 'checkout'),
(25, 11, 9, 65, 1, '2016-06-20 01:59:07', 'checkout'),
(26, 11, 4, 66, 1, '2016-06-20 02:12:04', 'checkout'),
(27, 11, 2, 67, 1, '2016-06-20 03:01:42', 'checkout'),
(28, 11, 8, 68, 1, '2016-06-21 00:53:07', 'buy'),
(29, 11, 1, 69, 1, '2016-06-21 04:12:49', 'checkout'),
(30, 11, 7, 70, 1, '2016-06-21 04:31:38', 'checkout'),
(31, 11, 10, 71, 1, '2016-06-23 23:57:28', 'checkout'),
(32, 11, 53, 72, 1, '2016-07-19 05:15:15', 'checkout'),
(33, 11, 1, 73, 1, '2016-07-19 05:41:46', 'checkout'),
(34, 11, 53, 73, 1, '2016-07-19 05:41:46', 'checkout'),
(35, 11, 53, 76, 1, '2016-07-19 05:51:00', 'checkout'),
(36, 11, 52, 77, 1, '2016-07-19 05:56:18', 'checkout'),
(37, 11, 52, 78, 1, '2016-07-19 06:02:40', 'checkout'),
(38, 11, 53, 79, 1, '2016-07-19 13:10:01', 'checkout'),
(39, 11, 53, 80, 1, '2016-07-19 13:10:54', 'checkout'),
(40, 11, 53, 81, 1, '2016-07-19 13:13:24', 'checkout'),
(41, 11, 52, 81, 1, '2016-07-19 13:13:24', 'checkout'),
(42, 11, 53, 82, 1, '2016-07-19 13:14:34', 'checkout'),
(43, 11, 52, 82, 1, '2016-07-19 13:14:34', 'checkout'),
(44, 11, 53, 83, 1, '2016-07-19 13:15:10', 'checkout'),
(45, 11, 52, 83, 1, '2016-07-19 13:15:10', 'checkout'),
(46, 11, 53, 84, 1, '2016-07-19 13:15:51', 'checkout'),
(47, 11, 52, 84, 1, '2016-07-19 13:15:51', 'checkout'),
(48, 11, 52, 85, 1, '2016-07-19 13:16:07', 'checkout'),
(49, 11, 52, 86, 1, '2016-07-19 13:18:12', 'checkout'),
(50, 11, 52, 87, 1, '2016-07-19 13:25:14', 'checkout'),
(51, 11, 52, 88, 1, '2016-07-19 13:26:44', 'checkout'),
(52, 11, 52, 89, 1, '2016-07-19 13:28:14', 'checkout'),
(53, 11, 52, 90, 1, '2016-07-19 13:29:51', 'checkout'),
(54, 11, 52, 96, 1, '2016-07-19 13:33:57', 'checkout'),
(55, 11, 52, 97, 1, '2016-07-19 13:37:18', 'checkout'),
(56, 11, 53, 98, 1, '2016-07-19 13:39:07', 'checkout'),
(57, 11, 52, 99, 1, '2016-07-19 13:41:10', 'checkout'),
(58, 11, 53, 100, 1, '2016-07-19 13:42:04', 'checkout'),
(59, 11, 53, 101, 1, '2016-07-19 13:45:37', 'checkout'),
(60, 11, 53, 102, 1, '2016-07-19 13:54:21', 'checkout'),
(61, 11, 53, 103, 1, '2016-07-19 13:54:43', 'checkout'),
(62, 11, 53, 104, 1, '2016-07-19 13:55:01', 'checkout'),
(63, 11, 53, 105, 1, '2016-07-19 13:55:29', 'checkout'),
(64, 11, 52, 106, 1, '2016-07-19 21:05:16', 'checkout'),
(65, 11, 53, 107, 1, '2016-07-22 21:56:51', 'checkout');

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
(61, 'checkout', 11, '2016-06-15 22:18:40'),
(62, 'checkout', 11, '2016-06-16 08:20:28'),
(63, 'checkout', 11, '2016-06-16 12:49:20'),
(64, 'checkout', 11, '2016-06-19 15:16:06'),
(65, 'checkout', 11, '2016-06-19 18:59:07'),
(66, 'checkout', 11, '2016-06-19 19:12:04'),
(67, 'checkout', 11, '2016-06-19 20:01:42'),
(68, 'checkout', 11, '2016-06-20 17:53:07'),
(69, 'checkout', 11, '2016-06-20 21:12:49'),
(70, 'checkout', 11, '2016-06-20 21:31:38'),
(71, 'checkout', 11, '2016-06-23 16:57:28'),
(72, 'checkout', 11, '2016-07-18 22:15:15'),
(73, 'checkout', 11, '2016-07-18 22:41:46'),
(74, 'checkout', 11, '2016-07-18 22:41:53'),
(75, 'checkout', 11, '2016-07-18 22:47:07'),
(76, 'checkout', 11, '2016-07-18 22:51:00'),
(77, 'checkout', 11, '2016-07-18 22:56:18'),
(78, 'checkout', 11, '2016-07-18 23:02:40'),
(79, 'checkout', 11, '2016-07-19 06:10:01'),
(80, 'checkout', 11, '2016-07-19 06:10:54'),
(81, 'checkout', 11, '2016-07-19 06:13:24'),
(82, 'checkout', 11, '2016-07-19 06:14:34'),
(83, 'checkout', 11, '2016-07-19 06:15:10'),
(84, 'checkout', 11, '2016-07-19 06:15:51'),
(85, 'checkout', 11, '2016-07-19 06:16:07'),
(86, 'checkout', 11, '2016-07-19 06:18:12'),
(87, 'checkout', 11, '2016-07-19 06:25:14'),
(88, 'checkout', 11, '2016-07-19 06:26:44'),
(89, 'checkout', 11, '2016-07-19 06:28:14'),
(90, 'checkout', 11, '2016-07-19 06:29:51'),
(91, 'checkout', 11, '2016-07-19 06:30:29'),
(92, 'checkout', 11, '2016-07-19 06:32:55'),
(93, 'checkout', 11, '2016-07-19 06:33:09'),
(94, 'checkout', 11, '2016-07-19 06:33:24'),
(95, 'checkout', 11, '2016-07-19 06:33:41'),
(96, 'checkout', 11, '2016-07-19 06:33:57'),
(97, 'checkout', 11, '2016-07-19 06:37:18'),
(98, 'checkout', 11, '2016-07-19 06:39:07'),
(99, 'checkout', 11, '2016-07-19 06:41:10'),
(100, 'checkout', 11, '2016-07-19 06:42:04'),
(101, 'checkout', 11, '2016-07-19 06:45:37'),
(102, 'checkout', 11, '2016-07-19 06:54:21'),
(103, 'checkout', 11, '2016-07-19 06:54:43'),
(104, 'checkout', 11, '2016-07-19 06:55:01'),
(105, 'checkout', 11, '2016-07-19 06:55:29'),
(106, 'checkout', 11, '2016-07-19 14:05:16'),
(107, 'checkout', 11, '2016-07-22 14:56:51');

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
('INV001', 'checkout', '23000', 101, 11, '2016-07-19 06:45:37'),
('INV002', 'checkout', '23000', 102, 11, '2016-07-19 06:54:21'),
('INV003', 'checkout', '23000', 103, 11, '2016-07-19 06:54:43'),
('INV004', 'checkout', '23000', 104, 11, '2016-07-19 06:55:01'),
('INV005', 'checkout', '23000', 105, 11, '2016-07-19 06:55:29'),
('INV006', 'checkout', '118000', 106, 11, '2016-07-19 14:05:16'),
('INV007', 'checkout', '23000', 107, 11, '2016-07-22 14:56:51');

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
(1, 'INV001', '23000', 'BCA', '213123123', 'Mohamad Sholihin', 'mandiri', '90000', '', 'BUat gaduh', 11, '2016-07-19 14:19:02');

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
  `weight` int(10) NOT NULL,
  `status_product` enum('public','draft') NOT NULL,
  `date_product` datetime NOT NULL,
  `stock_product` bigint(10) NOT NULL,
  `picture_product` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id_product`, `code_product`, `name_product`, `id_category`, `description_product`, `price_product`, `weight`, `status_product`, `date_product`, `stock_product`, `picture_product`) VALUES
(1, 'MK001', 'Equilibrio kittens all breed - Makanan Kucing', 4, '<p>\r\n<br /><strong> Equilibrio</strong> merupakan makanan hewan yang diolah dari bahan-bahan kualitas terbaik. Dengan kualitas super premium, Equilibrio menjadi makanan hewan dengan pertimbangan kesempurnaan nutrisi seimbang yang dibutuhkan oleh hewan. Equilibrio telah teruji menjadi makanan anjing dan kucing dengan kandungan nutrisi dan gizi yang baik oleh para dokter hewan.\r\n<br /><strong>Mengontrol pH Urine</strong>\r\n<br />Kelancaran pembuangan urine dapat menjaga kesehatan pada hewan. Equilibrio diproduksi dengan bahan yang aman dan berkualitas, sehingga dapat mengontrol pH Urine pada hewan dan menjaga agar saluran urine tetap lancar dan menjaga kesehatan hewan.\r\n<br /><strong>Mengurangi Bau Kotoran</strong>\r\n<br />Bau kotoran hewan yang tidak sedap akan sangat mengganggu jika terus dibiarkan. Bau kotoran tersebut dipengaruhi oleh kualitas makanan yang dimakan oleh hewan. Oleh karena itu, Equilibrio mengatasi masalah bau kotoran hewan dengan memproduksi makanan hewan yang dapat mengurangi bau kotoran. Kandungan Yucca Schidigera pada Equilibrio membantu mengurangi bau kotoran pada hewan.\r\n<br /><strong>Memperlancar Pencernaan</strong>\r\n<br />Equilibrio diolah dengan bahan kualitas terbaik pilihan, sehingga menjadikannya makanan yang sehat dan bergizi untuk hewan. Selain itu, kandungan prebiotik dan probiotik didalamnya berfungsi memperlancar sistem pencernaan pada hewan. Sistem pencernaan yang baik membuat hewan tetap sehat dan bugar.\r\n<br /><strong>Bulu Halus dan Berkilau</strong>\r\n<br />Bulu yang halus dan berkilau juga menjadi penanda hewan yang sehat. Memiliki bulu halus dan sehat, tidak hanya memerlukan perawatan dari luar saja, tapi juga dalam diri hewan. Oleh karena itu, hewan memerlukan makanan yang membantu menjaga kesehatan bulunya. Equilibrio, dengan kandungan omega 3 dan 6 yang seimbang, membantu menjaga kesehatan bulu hewan. Menjadikan bulu hewan halus dan berkilau.\r\n<br /><strong>Mengontrol Tartar</strong>\r\n<br />Equilibrio membantu mengontrol kadar tartar atau karang pada gigi hewan. Kandungan sodium hexametaphospate pada Equilibrio membantu mengurangi gigi yang berkarang akibat sisa-sisa makanan. Menjaga kesehatan gigi hewan.\r\n<br />\r\n</p>', '165000', 0, 'public', '2016-06-06 00:21:19', -1, '1.jpg'),
(2, 'MK002', 'Royal Canin Kitten Maine Coon - Makanan Kucing', 4, '<p>\r\n<br /><strong>Royal Canin Kitten Maine Coon 36</strong> adalah makanan untuk anak kucing dalam fase pertumbuhan pertama (sampai 4 bulan), Royal Canin mempertahankan bahwa diet kucing harus memperhitungkan semua parameter kehidupan seperti usia, ras, gaya hidup, dan keadaan individual.\r\n<br /><strong>Tekstur dan Formula Unik</strong>\r\n<br />Royal Canin Kitten Maine Coon adalah formula yang dengan ultra lembut yang membantu transisi kucing muda, dari kucing yang hanya dapat meminum susu ke makanan padat. Masa transisi anak kucing dari susu ke makanan padat adalah fase sensitif dan dapat menyebabkan masalah pencernaan. Royal Canin Kitten 36 makanan yang menyediakan semua nutrisi yang dibutuhkan untuk kesehatan kucing yang optimal. Tekstur dari Royal Canin Kitten Maine Coon akan memudahkan anak kucing untuk beralih dari susu ke makanan padat.\r\n<br /><strong>Meningkatkan Sistem Kekebalan Tubuh</strong>\r\n<br />Royal Canin Kitten mempunyai mannan-oligosakarida dan antioksidan kompleks (vitamin E dan C, taurin, dan lutein) yang membantu membangun pertahanan kekebalan dari kucing pada tahap pertama.\r\n<br /><strong>Menjaga Kesehatan Gigi</strong>\r\n<br />Nutrisi tertentu di dalam Royal Canin Kitten dapat membantu pengisian kalsium dalam mulut, sehingga kalsium dapat menempel pada gigi dan dapat berkontribusi pada tartar. Hal tersebut baik untuk kesehatan gigi kucing.\r\n<br /><strong>Meningkatkan Sistem Kekebalan Tubuh</strong>\r\n<br />Kucing yang aktif memerlukan pasokan kalori yang lebih tinggi, sesuai dengan aktifitas mereka. Royal Canin mempunyai mannan-oligosakarida dan antioksidan kompleks (vitamin E dan C, taurin, dan lutein) yang membantu membangun pertahanan kekebalan dari kucing dari bahaya radikal bebas.\r\n<br />\r\n</p>', '255000', 0, 'public', '2016-06-06 08:12:55', 0, '2.jpg'),
(3, 'MK003', 'Cat''s Agree Whole Fish in Shrimp-Makanan Kucing', 4, '<p>\r\n<br /><strong>Cat''s Agree</strong> merupakan makanan kucing yang diolah dari bahan-bahan kualitas terbaik yang dikemas dalam sebuah kaleng dan dimasak dengan kesempurnaan. Dengan nama Cat''s Agree, kucing setuju akan kelezatan rasa makanan super lezat ini. Selain rasanya yang lezat, Cat''s Agree mengandung vitamin esensial, mineral, karbohidrat, dan protein yang dibutuhkan oleh kucing kesayangan Anda.\r\n<br /><strong>Nutrisi Lengkap dan Seimbang</strong>\r\n<br />Nutrisi sangat penting bagi semua makhluk hidup. Asupan makanan yang bergizi setiap harinya sangat berpengaruh terhadap keseimbangan nutrisi yang diperlukan. Cat''s Agree terbuat dari bahan pilihan berkualitas tinggi. Diolah dari daging dan bumbu pilihan, sehingga menyediakan nutrisi yang tepat bagi kucing.\r\n<br /><strong>Kaya Vitamin dan Mineral</strong>\r\n<br />Banyak para dokter hewan yang mengkhawatirkan kurangnya vitamin dan mineral yang dibutuhkan oleh hewan. Oleh karena itu, Cat''s Agree menciptakan makanan sehat untuk kucing dengan mempertimbangkan keselarasan vitamin dan mineral yang dibutuhkan oleh kucing.\r\n<br /><strong>Bebas Pengawet</strong>\r\n<br />Kini Anda tidak perlu khawatir akan bahaya bahan pewarna dan bahan pengawet yang terdapat pada makanan hewan. Karena Cat''s Agree merupakan makanan hewan yang terbuat dari bahan alami. Cat''s Agree tidak menggunakan bahan pengawet dan pewarna buatan yang dapat membahayakan kesehatan hewan peliharaan kesayangan Anda. Baik dikonsumsi setiap saat.\r\n<br />\r\n</p>\r\n', '18500', 0, 'public', '2016-06-01 08:16:28', 0, '3.jpg'),
(4, 'MK004', 'Royal Canin Adult Persian 30-Makanan Kucing', 4, '<p>\r\n<br /><strong>Royal Canin Persian 30</strong> adalah produk makanan kering yang dirancang khusus untuk kebutuhan kucing Persia, Himalaya, dan Burma. Royal Canin Persian 30 memiliki bentuk khusus buah almond untuk kucing Persia yang dikenal berbulu indah dan memiliki wajah yang lebar. Royal Canin Persian 30 diformulasikan khusus untuk kesehatan kulit, bulu, dan pencernaan.\r\n<br /><strong>Mengurangi Hairballs</strong>\r\n<br />Kucing Persia rentan terhadap hairballs yang disebabkan oleh banyaknya perawatan bulu yang berlebihan. Royal Canin Persian 30 secara spesifik diformulasikan untuk menjaga dan merawat kesehatan kucing, mengurangi hairballs dengan kandungan serat larut dan tidak larut alami.\r\n<br /><strong>Untuk Memperlancar Pencernaan</strong>\r\n<br />Kucing Persia memiliki sistem pencernaan yang sensitif. Untuk itu dibutuhkan nutrisi khusus untuk merangsang bakteri yang menguntungkan, dan memblokir bakteri berbahaya dalam saluran pencernaan. Royal Canin Persian 30 diformulasikan secara khusus untuk memperlancar pencernaan kucing Persia yang sensitif.\r\n<br /><strong>Melindungi Kulit dan Bulu</strong>\r\n<br />Kombinasi dari asam lemak esensial, vitamin dan mineral dapat membantu regenerasi sel kulit lebih cepat. Sedangkan antioksidan dari vitamin dan ekstrak tumbuh-tumbuhan dapat mendukung kesehatan kekebalan tubuh dengan mengurangi dampak radikal bebas pada kulit dan sel-sel rambut. Perpaduan dari asam amino, vitamin B, Omega 6, Omega 3 serta mineral bermanfaat untuk memelihara dan menjaga kemilau kulit dan bulu yang sehat.\r\n<br />\r\n</p>', '425000', 0, 'public', '2016-06-01 09:08:40', 0, '6.jpg'),
(5, 'OK001', 'Bisfront For Dog & Cat Spray', 5, '<br />\r\n<b>Bisfront Spray</b> sangat baik digunakan untuk membasmi kutu anjing dan kucing kesayangan Anda. Bisfront ini sangat membantu Anda dalam membasmi kutu-kutu anjing dan kucing kesayangan Anda. Bisfornt spray ini merupakan spray anti kutu yang diformulasikan khusus untuk anjing dan kucing. Terbuat dari bahan pilihan sehingga aman digunakan, dan dapat membasmi kutu yang ada pada bulu pada hewan kesayangan Anda. Dikemas dalam bentuk spray sehingga memudahkan Anda menggunakannya pada anjing dan kucing Anda. Bisfront Spray bisa juga digunakan untuk mengepel lantai sehingga membasmi tempat kutu bersarang!\r\n<br />\r\n<br /><strong>Membasmi Kutu</strong>\r\n<br />Bisfront spray menghilangkan kutu yang bersarang pada bulu anjing. Kutu yang bersarang dapat membuat bulu dan kulit pada anjing menjadi tidak sehat. Oleh karena itu Bisfront spray merupakan solusi yang tepat untuk anjing tanpa kutu.\r\n<br />\r\n<br /><strong>Baik Untuk Kulit</strong>\r\n<br />Bisfront spray diformulasikan khusus untuk hewan. Terbuat dari bahan alami pilihan sehingga aman digunakan untuk hewan peliharaan kesayangan Anda. Bisfront spray sangat aman digunakan setiap hari untuk mendapatkan aroma segar menenangkan dan bulu sehat bagi anjing atau kucing peliharaan Anda.\r\n<br />\r\n<br /><strong>Cara Pakai</strong>\r\n<br />Semprotkan BisFront Spray ke daerah - daerah yang sering dihinggapi kutu lalu gosok dengan perlahan agar cairan meresap ke dalam kulit anjing dan kucing kesayangan Anda.\r\n<br />\r\n</p>', '202000', 0, 'public', '2016-06-06 00:00:00', 1, '57.jpg'),
(6, 'OK002', 'Triforce Flea & Tick Cat', 5, '<p>\r\n<br /><strong>Fleas</strong>\r\n<br />Triforce merupakan obat tetes kutu yang dapat memberikan perlindungan lengkap terhadap kutu. Triforce dapat membunuh dan mengusir kutu (fleas) hanya dalam 1 jam. Diformulasikan secara khusus untuk memutus siklus hidup kutu. TriForce mengontrol 3 tahap pertumbuhan kutu (dewasa, telur dan larva). Setiap pengobatan akan membunuh kutu dan mencegahnya datang kembali hingga 4 minggu, serta membunuh telur kutu dan larva selama 9 minggu. TriForce sangat efektif memutus siklus hidup flea-tapeworm, melindungi anjing dari Dipylidium caninum, spesies umum tapeworm. Dianjurkan mengaplikasikan Canine Tri Force setiap bulannya.\r\n<br />\r\n<br /><strong>Ticks</strong>\r\n<br />TriForce membunuh dan mengusir kutu(Tick) dalam waktu 3 jam setelah aplikasi hingga 4 minggu. Setiap penggunaan juga membantu mengusir kutu. Penyakit Lyme, ancaman yang paling umum yang terkait dengan Tick, ditularkan oleh gigitan dari rusa yang terinfeksi dan kutu berkaki hitam. Hewan Peliharaan didiagnosis dengan penyakit Lyme biasanya menunjukkan tanda-tanda sakit, kepincangan, demam dan pembengkakan kelenjar getah bening di anggota badan yang terkena. Penyakit ini dapat berkembang dari ketidaknyamanan ringan sampai parah pada sendi dan nyeri otot, dan bahkan mempengaruhi otot jantung dan jaringan saraf.\r\n<br />\r\n<br /><strong>Nyamuk</strong>\r\n<br />TriForce juga membunuh dan mengusir nyamuk, meminimalkan ancaman West Nile Virus. Walaupun kuda dan manusia sangat rentan terhadap virus West Nile, penyakit juga dapat menginfeksi kucing, menyebabkan pembengkakan otak dan gejala yang mengancam nyawa. Nyamuk juga berkontribusi terhadap terjadinya cacing hati, dimana terambil oleh gigitan nyamuk dan ditularkan ke lainnya, anjing sehat. Material Safety Data Sheet (MSDS)\r\n<br />\r\n<br /><strong>Cara memakai Triforce Squeeze-On</strong>\r\n<br />* Sebelum pemakaian Triforce, sebaiknya anjing atau kucing dimandikan terlebih dahulu 2 hari sebelum pemakaian Triforce Squeeze-On.\r\n<br />* Gunting sisi ujung atas Triforce.\r\n<br />* Belah bulu anjing pada tengkuk leher menjadi 2 bagian sampai kulit terlihat.\r\n<br />* Tempatkan ujung pipet pada kulit kucing (bagian tengkuk) dan tetesin Triforcee sedikit demi sedikit pada satu atau dua tempat (area tetesan obat bisa diturunin agak ke belakang segaris/sejajar dengan ekor kucing tapi jangan melebihin batas setengah badan anjing) di mana binatang tidak dapat menjilat obat Triforce.\r\n<br />* Pemakaian ulang bisa dilakukan bila diperlukan tapi jangan dipakai ulang minimum empat minggu.\r\n<br />* Untuk pencegahan/mengontrolan rutin sebaiknya dipakai setiap 2 bulan. Jika hewan Anda terkena kutu parah sebaiknya dipakai setiap bulannya sampai kutu benar-benar tuntas.\r\n<br />* Anda dapat memandikan anjing/kucing setelah 48 jam pemberian obat. Pakaikan kembali setelah 6 mingguan jika hewan peliharaan anda di keramas dengan shampoo setiap minggunya.\r\n<br />\r\n<br /><strong>Peringatan</strong>\r\n<br />• Triforce Squeeze-On hanya untuk pengobatan pada kucing dan untuk pemakaian luar.\r\n<br />• Dapatkan saran dari Dokter Hewan atau Petshop sebelum menggunakan Triforce Squeeze-On pada anjing hamil, menyusui, tua, perawatan sakit/penyembuhan dan yang ada tanda-tanda iritasi kulit.\r\n<br />• Interval (jarak pemakaian) minimal 4 minggu pengobatan.\r\n<br />• Jangan digunakan pada anak anjing kurang dari usia 12 minggu.\r\n<br />• Jangan overdosis.\r\n<br />• Hewan Peliharaan dengan hipersensitivitas terhadap insektisida atau alkohol harus menghindari kontak dengan Triforce Squeeze-On.\r\n<br />• Hindari kontak dengan mata hewan.\r\n<br />• Adalah penting untuk menerapkan dosis untuk area di mana binatang tidak dapat menjilat Triforce Squeeze-On. Jika jilatan terjadi, periode singkat keluaranin air liur dapat terjadi, terutama karena sifat bawaan.\r\n<br />• Tidak dianjurkan untuk mandi atau shampoo pada hewan selama 48 jam sebelum atau setelah pengobatan dengan Triforce Squeeze-On.\r\n<br />• Kepekaan mungkin terjadi setelah menggunakan produk pestisida pada hewan peliharaan seperti kucing jadi agresif, loncat-loncat,dsb. Jika tanda sensitivitas terjadi, mandikan kucing anda dengan sabun ringan dan bilas dengan air dalam jumlah besar. Bila tanda-tanda masih berlanjut, segera konsultasi dengan dokter hewan.\r\n<br />\r\n</p>', '205000', 0, 'public', '2016-06-07 00:00:00', 1, '58.jpg'),
(7, 'PK001', 'Armani Pet Fresh Cologne', 6, 'Jauhkan hewan peliharaan Anda dari bau yang tidak sedap! Kini hadir Armani Pet Fresh Cologne, yaitu parfum khusus untuk kucing dan anjing kesayangan Anda yang akan memberikan kesegaran dan keharuman sempurna sepanjang hari! Parfum ini aman karena diformulasikan khusus untuk hewan peliharaan. Parfum ini dikemas sangat praktis dengan botol semprot yang akan memudahkan Anda menggunakannya. Cukup semprotkan parfum ini ke kucing kesayangan Anda, maka Anda dapat mencium hewan peliharaan Anda wangi sepanjang hari!\r\n<br />\r\n<br /><b>Bebas Iritasi dan Mencegah Kulit Kering</b>\r\n<br />Armani Pet Fresh Cologne diformulasikan dengan sangat baik sehingga membuat bulu hewan peliharaan Anda tidak kering dan iritasi namun akan menjadikannya "mantel" yang berkilau dan sehat. Nikmati keharuman dan kesegaran yang tahan lama sepanjang hari dan dapatkan kulit sehat berkilau pada anjing dan kucing kesayangan Anda!\r\n<br />\r\n<br /><strong>Harum Segar Tahan Lama</strong>\r\n<br />Armani Pet Fresh Cologne sangat efektif memberikan kesegaran yang tahan lama. Parfum untuk segala jenis hewan ini memiliki aroma yang lembut, ramah lingkungan, dan baik untuk kulit. Tersedia dalam empat pilihan keharuman yang menyegarkan diantaranya swety peach, fresh melon, floral blue, dan sweet strawberry.\r\n<br />\r\n</p>', '44800', 0, 'public', '2016-06-07 00:00:00', 10, '48.jpg'),
(8, 'PK002', 'Sisir Luve 1 - Sisir untuk Hewan', 6, '<p>\r\n<br /><strong>Fungsi</strong>\r\n<br />Sisir 112 berfungsi sebagai alat yang digunakan untuk menyisir bulu hewan agar tampak halus, mengangkat kotoran yang menempel dipermukaan dan mengangkat bulu mati atau rontok.\r\n<br />\r\n<br /><strong>Cara Menggunakan</strong>\r\n<br />Sisirkan saat bulu hewan Anda kering untuk menghindari gumpalan bulu agar tidak rontok.\r\n<br />', '75000', 0, 'public', '2016-06-07 00:00:00', 0, '50.jpg'),
(9, 'AK001', 'Pet House - Kandang Hewan', 7, '<p>\r\n<br /><strong>Pet House</strong> merupakan kandang untuk hewan peliharaan Anda. Kandang ini bisa digunakan untuk Kucing, Anjing berukuran kecil dan sedang, ataupun Kelinci. Pet House memiliki kelebihan yaitu dapat disesuaikan ukuran dan tingkatannya. Kandang ini dapat dibongkar pasang serta dilipat sehingga mudah dibawa bepergian.\r\n<br /><strong>Kokoh, Kuat, dan Tahan Lama</strong>\r\n<br />Pet House terbuat dari bahan plastik berkualitas yang kuat, kokoh, dan tahan lama sehingga tidak mudah rusak dan sangat mudah dibersihkan.\r\n<br /><strong>Desain Menarik</strong>\r\n<br />Kandang kucing, kelinci, atau anjing ini didesain menarik dengan warna warna yang cerah sehingga dapat tampil cantik menghiasi sudut didalam rumah ataupun diluar ruangan. Kandang berukuran sedang ini dapat dipilih sebagai alternatif rumah yang nyaman untuk kucing, kelinci atau anjing kesayangan Anda.\r\n<br />\r\n<br /><strong>Tips Perawatan</strong>\r\n<br />Untuk perawatan kandang, sebaiknya kandang dibersihkan sehari sekali atau minimal dua hingga tiga hari sekali untuk menghindari bibit penyakit yang bersarang di sela-sela kandang atau tempat pup-nya dengan cairan khusus mengandung disinfektan. Dengan rutin membersihkan kandang, makan hewan peliharaan Anda akan nyaman berada didalamnya.\r\n<br />\r\n</p>', '1299000', 0, 'public', '2016-06-08 00:00:00', 0, '26.jpg'),
(10, 'MA001', 'Dream Bone Chicken - Cemilan Anjing', 8, '<p>\r\n<br /><strong>Dream Bone</strong> adalah cemilan sehat dan bergizi untuk anjing. Terbuat dari sayuran dan daging ayam asli pilihan sehingga menghasilkan cemilan generasi baru yang menyediakan keuntungan dari vegetable outside, real chicken inside. Dream Bone kaya akan vitamin dan mineral, sehingga sangat baik untuk dikonsumsi anjing kesayangan Anda.\r\n<br /><strong>99% Bebas Lemak</strong>\r\n<br />Dream Bone diformulasikan khusus sebagai cemilan sehat dan bergizi untuk anjing. Diolah dengan bahan pilihan, sayuran dan daging ayam asli. Untuk memperhatikan kesehatan anjing, Dream Bone menjamin mutu 99% bebas lemak, sehingga membantu anjing agar tetap sehat dan seimbang.\r\n<br /><strong>Aktifitas Mengunyah Menjaga Kesehatan Gigi</strong>\r\n<br />Dream Bone mengandung kalsium dan protein yang dibutuhkan oleh anjing untuk kesehatan giginya. Gigi anjing yang rapuh dapat berbahaya, karena anjing tidak dapat menikmati makanan dan akhirnya tidak punya selera untuk makan. Karena itu, Dream Bone menyediakan cemilan dengan bentuk yang disukai anjing untuk terus menggigit. Aktifitas mengunyah dapat memperkuat gigi dan gusi anjing. Dream Bone sangat baik dikonsumsi untuk menjaga kesehatan gigi anjing.\r\n<br /><strong>100% Disukai Anjing</strong>\r\n<br />Cemilan yang sehat dan bergizi tidak harus mengurangi kelezatan rasa didalamnya. Dream Bone selain diolah dari bahan alami pilihan, sayuran dan daging ayam asli, dibuat dengan cita rasa yang lezat dan pasti sangat disukai oleh anjing kesayangan Anda.\r\n<br /><strong>Kaya Vitamin dan Mineral</strong>\r\n<br />Banyak para dokter hewan yang mengkhawatirkan kurangnya vitamin dan mineral yang dibutuhkan oleh hewan. Oleh karena itu, Dream Bone menciptakan cemilan sehat untuk anjing dengan mempertimbangkan keselarasan vitamin dan mineral yang dibutuhkan oleh anjing.\r\n<br /><strong>Memperlancar Sistem Pencernaan</strong>\r\n<br />Dream Bone terbuat dari bahan alami pilihan sehingga kaya akan serat dan protein, dan mudah dicerna. Dream Bone sangat baik dikonsumsi anjing, karena dapat membantu memperlancar sistem pencernaan pada anjing kesayangan Anda.\r\n<br />\r\n</p>', '110000', 0, 'public', '2016-06-08 00:00:00', 9, '16.jpg'),
(11, 'PA001', 'Raid All Sanitiser Clarifying Shampoo', 10, '<p>\r\n<br /><strong>Raid All Sanitiser Clarifying Shampoo</strong> merupakan shampo perawatan untuk anjing. Mengandung bahan alami pilihan untuk mengurangi gatal-gatal pada anjing. Memberi rasa segar dan dingin kepada anjing.\r\n<br /><strong>Melembutkan Bulu</strong>\r\n<br />Raid All Sanitiser Clarifying Shampoo dengan formulanya, menjadikan bulu anjing Anda harum dan lembut. Teruji secara klinis dapat menyehatkan kulit dan bulu pada anjing.\r\n<br /><strong>Menghilangkan Rasa Gatal</strong>\r\n<br />Gatal pada hewan dapat disebabkan karena bakteri, maupun kulit kering sehingga merangsang kulit anjing menjadi gatal. Raid All Sanitiser Clarifying Shampoo membantu mengurangi rasa gatal yang di derita oleh anjing.\r\n<br />\r\n<br /><strong>Cara Pemakaian</strong>\r\n<br />Tuangkan Raid All Sanitiser pada bulu anjing yang basah. Gosok secara perlahan. Bilas hingga bersih. Gunakan handuk untuk mengeringkan bulu yang basah. Sisir hingga bulu anjing terlihat rapi dan terawat.\r\n<br />\r\n</p>', '65000', 0, 'public', '2016-06-08 00:00:00', 10, '47.jpg'),
(12, 'MK005', 'Royal Canin Hair & Skin', 4, '<b>Royal Canin Hair & Skin 33</b> adalah produk makanan kering untuk kucing dewasa yang berguna menjaga dan mengembalikan kondisi bulu kucing sehabis sakit atau terkena jamur. Royal Canin Hair & Skin 33 diformulasikan khusus untuk kesehatan dan keindahan kulit dan bulu kucing usia 1 tahun ke-atas. Bulu akan terlihat signifikan mengkilap setelah 21 hari eksklusif mengkonsumsi Royal Canin Hair & Skin 33.\r\n<br /><strong>Untuk Kulit Sensitif</strong>\r\n<br />Beberapa kucing memiliki kulit yang sensitif yang mudah meninggalkan ketombe, bulu kusam maupun rusak dan reaksi yang merugikan lainnya. Royal Canin Hair & Skin 33 secara spesifik diformulasikan untuk mencegah terjadinya permasalahan kulit dan bulu.\r\n<br /><strong>Melindungi Kulit dan Bulu</strong>\r\n<br />Kombinasi dari asam lemak esensial, vitamin dan mineral dapat membantu regenerasi sel kulit lebih cepat. Sedangkan antioksidan dari vitamin dan ekstrak tumbuh-tumbuhan dapat mendukung kesehatan kekebalan tubuh dengan mengurangi dampak radikal bebas pada kulit dan sel-sel rambut. Perpaduan dari asam amino, vitamin B, Omega 6, Omega 3 serta mineral bermanfaat untuk memelihara dan menjaga kemilau kulit dan bulu yang sehat.\r\n<br />\r\n</p>', '405000', 0, 'public', '2016-07-10 04:20:33', 10, '7.jpg'),
(13, 'OK003', 'Pet Metronidazole - Obat Mencret Hewan', 5, '<br /><strong>Metronidazole</strong> adalah pilihan obat diare untuk hewan kesayangan Anda.\r\n<br />\r\n<br /><strong>Untuk mengobati</strong>\r\n<br />* Gangguan inflamasi usus\r\n<br />* Gangguan diare\r\n<br />* Infeksi karena Giardia ( parasit usus)\r\n<br />* Penyakit periodontal\r\n<br />\r\n<br /><strong>Kontraindikasi<strong>\r\n<br />Tidak dianjurkan untuk hewan yang sensitif terhadap obat turunan nitroimidazole, hamil, menyusui, dan hewan dengan disfungsi hati\r\n<br />\r\n<br /><strong>Dosis (untuk kucing)</strong>\r\n<br />Berat badan < 2.5 kg .0.25 0.75 ml\r\n<br />Berat badan 2.5 5 kg .0.5 1.0 ml\r\n<br />Berat badan > 5 kg..0.75 1.5 ml\r\n<br />Pemakaian 1 2 kali sehari\r\n<br />', '29000', 0, 'public', '2016-07-10 05:00:00', 5, '63.jpg'),
(14, 'OK004', 'Raid All Albenworm Cat Syrup - Obat Cacing Kucing', 5, '<br /><strong>Raid All Albenworm Syrup</strong> adalah obat cacing untuk kucing peliharaan kesayangan Anda. Berbentuk sirup sehingga mudah dicerna dan rasanya disukai oleh kucing Anda yang sedang sakit. Obat cacing Albenworm berspektrum luas, terbuat dari ramuan berkualitas sehingga tepat untuk membasmi segala jenis cacing yang mengganggu kesehatan kucing Anda.\r\n<br />\r\n<br /><strong>Kegunaan</strong>\r\n<br />Raid All Albenworm Syrup membasmi cacing gilig, cacing paru, cacing pita, dan cacing hati yang biasa mengganggu kesehatan kucing. Membuat kucing tetap sehat tanpa ada gangguan membandel dari cacing.\r\n<br />\r\n<br /><strong>Cara Pemakaian</strong>\r\n<br />Obat cacing kucing Albenworm Syrup sangat mudah digunakan. Kocok botol sebelum digunakan. Tuangkan sirup Albenworm dengan dosis 2.5 ml atau 1/2 sendok teh untuk kucing berbobot 10 kg.\r\n<br />\r\n<br />\r\n<br /><strong>Anjuran Pemakaian</strong>\r\n<br />Kocok terlebih dahulu\r\n<br />Simpan di tempat yang sejuk\r\n<br />Jangan digunakan pada kucing yang sedang hamil \r\n<br />', '40000', 0, 'public', '2016-07-10 08:00:00', 12, '64.jpg'),
(15, 'OK005', 'Kala Health Dermatrix Essentials - Suplemen', 5, '<br /><strong>Kala Health Dermatrix Essentials</strong> adalah suplemen asam lemak esensial untuk hewan. Suplemen ini mengandung semua nutrisi yang dibutuhkan pada kucing dan anjing untuk merawat kulit agar tetap sehat dan bulu mengkilap. Mengandung omega 3, 6, dan 9 essential fatty acids (EFA) dari sumber-sumber tanaman dan ikan, MSM (methylsulfonylmethane), vitamin, dan mineral yang penting bagi kesehatan kulit dan bulu.\r\n<br />\r\n<br /><strong>Kegunaan</strong>\r\n<br />Kala Health Dermatrix Essentials merawat kesehatan kulit dan bulu pada kucing dan anjing kesayangan Anda. Mengandung vitamin A, B1, B2, B6, B12, kalsium, phosphorus, serta zinc yang akan memaksimalkan gizi hewan peliharaan Anda. Formulasi dry-oil membuat suplemen ini mudah dikunyah dan dicerna oleh hewan peliharaan Anda. Suplemen ini dapat dicampur dengan makanan hewan kesayangan Anda sehari-hari.\r\n<br />\r\n<br />\r\n<br /><strong>Anjuran Pemakaian</strong>\r\n<br />Anjing kecil & kucing (kurang dari 10kg) : 1/2 tablet sehari\r\n<br />Anjing berukuran sedang (10 - 20kg) : 1 tablet sehari\r\n<br />Anjing berukuran besar (21 - 35kg) : 2 tablet sehari\r\n<br />Anjing berukuran sangat besar (36 - 50kg) : 3 tablet sehari\r\n<br />Binatang dengan berat lebih dari 50kg : 4 tablet sehari\r\n<br />', '2733500', 0, 'public', '2016-07-10 08:04:00', 10, '66.jpg'),
(16, 'PK003', 'Sumo Cat Litter Lavender - 10 Liter', 6, '<br /><strong> Spesifikasi : </strong>\r\n<br />\r\n<br />- pasir wangi gumpal\r\n<br />- jika aroma yg dipilih habis, maka akan diganti random dengan aroma yg lain\r\n<br />\r\n<br /><strong>Sumo Cat cat litter</strong> merupakan pasir kucing kualitas premium yang memiliki penyerapan tinggi dan aman untuk digunakan karena tidak mengandung bahan kimia tambahan. Kecepatan penyerapan yang cepat sehingga membentuk gumpalan dan mencegah lapisan bawah tidak basah. Hal ini ekonomis karena gumpalan terbentuk pada lapisan permukaan sehingga dapat dengan mudah diangkat pergi, meninggalkan cat litter (pasir) tetap segar dan bisa digunakan kembali. Pasir Sumo Cat juga memiliki kemampuan untuk menghilangkan bau yang buruk, meninggalkan area sekitarnya tetap segar dengan berbagai aroma Apel.Lemon, Peach, Strawberry, Lavender, Green Tea dan Orange.Piihan aroma sesuai ketersediaan stok.\r\n<br />', '90000', 0, 'public', '0000-00-00 00:00:00', 18, '53.jpg'),
(17, 'PK004', 'Raid All Love Me Love My Cat Talcum Powder - Bedak', 6, '<br /><strong>Raid All Love Me Love My Cat Talcum Powder</strong> adalah bedak yang dapat digunakan setiap hari untuk mandi kering. Talcum powder ini lebih kering dan lebih menyerap keringat kucing sehingga bulu tidak menggumpal, tetap kering dan wangi. Bedak ini aman untuk kulit dan bulu kucing kesayangan Anda. Selain itu, bedak ini mengandung triclosan sebagai anti bakteri, anti jamur, anti iritasi, dan zink oxide yang juga ampuh sebagai anti ketombe dan sesuai dengan rekomendasi dokter hewan.\r\n<br />\r\n<br /><strong>Kegunaan</strong>\r\n<br />Raid All Love Me Love My Cat Talcum Powder Medicated ini memiliki keharuman Hugo boss sport. Bedak ini mengandung salicylic acid, sulfur untuk mengatasi masalah kulit ich, jamur, dermatitis, gatal-gatal dan iritasi kulit.\r\n<br />\r\n<br /><strong>Cara Pemakaian</strong>\r\n<br />Taburkan Raid All love me love My Cat Talcum Powder pada bulu kucing Anda. Usap dan bersihkan tanpa dibilas.\r\n<br />\r\n<br />\r\n<br />\r\n<br /><strong>Anjuran Pemakaian</strong>\r\n<br />> Simpan di tempat yang sejuk\r\n<br />> Hanya untuk hewan\r\n<br />', '30000', 0, 'public', '0000-00-00 00:00:00', 11, '54.jpg'),
(18, 'PK005', 'Raid All Cat Sparkling Clean Shampoo', 6, '<br /><strong>Raid All CAT Sparkling Clean Shampo</strong> adalah formula pembersih yang sangat lembut dan ideal untuk kucing kesayangan Anda. Shampo ini diformulasikan untuk melindungi dan memastikan bulu dan kulit kucing Anda selalu sehat dan berkilau. Raid All CAT Sparkling Clean Shampo akan memberikan keharuman menyegarkan yang tahan lama. Shampo ini diformulasikan untuk semua jenis mantel kucing.\r\n<br />\r\n<br /><strong>Pertolongan Pertama Untuk Gatal-Gatal</strong>\r\n<br />Kucing Anda sering menggaruk-garuk badannya? menggaruk mungkin bisa disebabkan oleh kutu, alergi atau berbagai masalah kulit lainnya. Kini Anda tidak perlu khawatir lagi. Telah hadir CAT Sparkling Clean Shampoo yang dapat memberikan bantuan cepat dari rasa gatal pada kucing Anda dan dengan segera dapat atasi kucing Anda yang sering menggaruk-garuk badannya.\r\n<br />\r\n<br /><strong>Membersihkan Menyeluruh</strong>\r\n<br />Shampo ini dapat membersihkan kulit dan bulu hewan peliharaan Anda secara menyeluruh serta membersihkan segala kotoran dan residu yang menyebabkan buku kucing Anda rusak. Selain itu, shampo ini juga dapat menambah kilau dan membuat mantel kucing kesayangan Anda bersinar.\r\n<br />', '28000', 0, 'public', '0000-00-00 00:00:00', 10, '55.jpg'),
(19, 'AK002', 'Mainan Kucing Bulu', 7, '<br />- mainan kucing kesayangan anda\r\n<br />- desain menarik dan lucu\r\n<br />- mencegah stress\r\n<br />', '85000', 0, 'public', '0000-00-00 00:00:00', 13, '37.jpg'),
(20, 'AK003', 'Happy Pet Coat Barcelona', 7, '<br />- jersey barcelona\r\n<br />- ukuran large\r\n<br />- untuk anjing & kucing\r\n<br />\r\n<p>\r\n<br /><strong>Happy Pet Coat Barcelona</strong> adalah jersey bola untuk anjing atau kucing kesayangan Anda. Baju khusus hewan peliharaan ini dibuat khusus dari bahan yang lembut membuat nyaman digunakan dan mengubah tampilan hewan kesayangan Anda menjadi lebih menarik. Happy Pet Coat  Barcelona cocok bagi Anda pecinta sepak bola.\r\n<br /><strong>Desain Menarik</strong>\r\n<br />Jersey bola club Barcelona  ini cocok untuk Anda para penggemar Barcelona  dimanapun. Anda dapat mengenakan jersey kembar bersama hewan kesayangan Anda, dan bersiap untuk pergi menonton bola bersama!\r\n<br /><strong>Nyaman Digunakan</strong>\r\n<br />Happy Pet Coat Barcelona  ini terbuat dari bahan berkualitas dan bahan karet yang ada di tiap bagian pergelangan kaki dan leher nya sehingga membuat hewan kesayangan Anda nyaman mengenakannya. Selain itu, baju ini sangat mudah untuk memakaikannya ke hewan kesayangan Anda.\r\n</p>\r\n<p>\r\n<br /><strong>Cara Mengukur</strong>\r\n<br />Dada: Ukur bagian paling tebal dari dada. (Biasanya di belakang dua kaki)\r\n<br />Leher: Ketebalan leher (diameter leher)\r\n<br />Tubuh: Pastikan anjing Anda berdiri dengan benar, tidak duduk, atau berbaring. Ukurlah dari sepanjang tulang punggung anjing dari pangkal leher hingga 5cm didepan pangkal ekor.\r\n<br />\r\n</p>', '85000', 0, 'public', '0000-00-00 00:00:00', 15, '40.jpg'),
(21, 'AK004', 'Dispenser Makanan Otomatis', 7, 'Tempat makan atau dispenser otomatis ini berkerja secara otomatis jika makanan yang ada dimangkuk kosong secara otomatis akan terisi oleh penyimpan yang ada diatasnya.', '280000', 0, 'public', '0000-00-00 00:00:00', 10, '38.jpg'),
(23, 'AK005', 'Cat Nail Clipper - Gunting Kuku Kucing', 7, '<br />- mudah digunkan\r\n<br />- mata gunting yg tajam\r\n<br />- desain simpel & sederhana\r\n<br />\r\n<br /><strong>Cat Nail Clipper</strong> merupakan gunting kuku yang didesain untuk memudahkan Anda mengunting kuku kucing kesayangan Anda. Guntung kuku yang simpel dan sederhana, namun dengan mata gunting yang tajam. Membuat proses pemotongan kuku tetap menyenangkan.\r\n<br />', '35000', 0, 'public', '0000-00-00 00:00:00', 20, '44.jpg'),
(24, 'MA002', 'Royal Canin Maxi Junior - Makanan Anjing', 8, '<br />- menunjang tulang dan persendian\r\n<br />- untuk anak anjing ukuran besar\r\n<br />- pertahanan tubuh\r\n<br />- Makanan lengkap untuk anak anjing ukuran besar (berat dewasa antara 26 - 44 kg) - Usia kurang dari 15 bulan\r\n<br />\r\n<p>\r\n<br />Sebuah kombinasi eksklusif dari zat-zat gizi yang mendukung kesehatan pencernaan yang optimal (protein L.I.P) dan keseimbangan bakteri baik dalam usus (prebiotik: FOS, MOS) yang juga berkontribusi untuk kualitas feses yang baik.\r\n<br />Memenuhi kebutuhan energi tingkat sedang dari anak anjing ras besar yang memiliki periode pertumbuhan yang panjang\r\n<br />', '290000', 0, 'public', '0000-00-00 00:00:00', 10, '21.jpg'),
(25, 'MA003', 'Happy Dog Naturcroq - Makanan Anjing', 8, '<br/>- makanan annjing\r\n<br/>- sangat mudah dicerna\r\n<br/>- tidaka ada pewarna, pengawet atau soya\r\n<br/>\r\n<p>\r\n<br/>Makanan lengkap premium <b>NaturCroq Adult Active</b> yang sangat mudah dicerna ideal untuk semua anjing dewasa dengan kebutuhan energi tinggi. Kepingan lezat tersebut mengandung protein dari unggas dan ikan berkualitas tinggi.\r\n<br/> \r\n<br/>Dikombinasikan dengan nutrisi Asam lemak Omega-3 dan omega-6 dari bunga matahari dan minyak lobak, <b>NaturCroq Adult Active</b> dengan cepat memberikan energi yang tersedia untuk semua aktivitas anjing dan untuk kelincahan serta olahraga tanpa kelebihan berat tubuh. Resep premium tersebut mengandung semua vitamin dan mineral penting yang dibutuhkan untuk memberikan anjing Anda diet seimbang. \r\n<br/>\r\n<br/><b>NaturCroq Active:</b> Makanan lengkap premium yang seimbang dengan semua nutrisi penting Untuk kelincahan, olahraga, bermain dan semua aktivitas anjing.\r\n<br/>\r\n<br />Tidak ada pewarna, pengawet atau soya.\r\n<br/>\r\n<br />Berkualitas baik dan mudah dicerna.\r\n<br />', '600000', 0, 'public', '0000-00-00 00:00:00', 8, '23.png'),
(26, 'MA004', 'Happy Dog Sureme Sensible - Adult Toscana (rasa be', 8, '<br />- dibuat dari bahan-bahan alami\r\n<br />- makanan anjing\r\n<br />- sangat baik bahkan untuk hewan yg dikastrasi\r\n<br />\r\n<p>\r\n<br />Selama bertahun-tahun bahan-bahan klasik dari keahlian memasak Mediterania menawarkan perlindungan alami melawan penyakit yang disebabkan oleh gaya hidup.\r\n<br/>\r\n<br/>Bahan khusus disini adalah herbal Mediterania aromatik, bebek, salmon dan zat polifenol yang terkandung dalam buah anggur wine (anggur) merah. Hanya Supreme Sensible Adult Toscana (with Duck and Salmon) yang menawarkan berbagai keunikan dari komponen menguntungkan ini. Resep eksklusif ini dilengkapi dengan Happy Dog Natural Life Concept® yang unik dibuat dari bahan-bahan alami. Komponen-komponen khusus dan metode produksi yang spesifik membuat Supreme Sensible Adult Toscana (with Duck and Salmon) sangat cocok untuk pemberian pakan pada anjing yang paling sensitif dengan kebutuhan khususnya.\r\n<br/>\r\n<br/>Dengan kandungan lemak sedang sebesar 7,5% dan protein 24% penghasil energi, hal ini sangat baik bahkan untuk hewan yang dikastrasi.\r\n<br />', '430000', 0, 'public', '0000-00-00 00:00:00', 9, '24.png'),
(27, 'PA002', 'Epi-Otic Ear Cleaner - Pembersih Telinga Hewan', 10, '<br />- pembersih telinga hewan\r\n<br />- dapat digunakan secara rutin\r\n<br />\r\n<br /><strong>Epi-Otic Pet Ear CLeaner</strong> adalah pembersih telinga untuk anjing, kucing, anak anjing dan anak kucing dari segala usia yang dapat digunakan secara rutin sebelum penerapan antibiotik tertentu untuk perawatan telinga. Epi-Otic Ear Cleaner juga bebas dari alkohol. Pembersih ini juga berguna untuk lembab, wax, bau telinga, menghilangkan bakteri, ragi, tungau telinga dan kotoran dari telinga hewan peliharaan dan membantu menyediakan lingkungan yang optimal untuk regenerasi jaringan telinga pada anjing dan kucing.\r\n<br />\r\n<br /><strong>Manfaat Epi-Otic Ear Cleaner untuk Anjing dan Kucing</strong>\r\n<br />* Pembersihan\r\n<br />* Pengeringan\r\n<br />* Non-iritasi\r\n<br />\r\n<br /><strong>Petunjuk Penggunaan</strong>\r\n<br />* Kocok sebelum digunakan.\r\n<br />* Bersihkan dan keringkan tangan Anda dan dengan lembut.\r\n<br />* Buka tutup botol, kemudian dekatkan botol langsung ke dalam saluran telinga, tekan beberapa tetes hingga keluar.\r\n<br />* Pijat pangkal telinga pada bagian luar telinga untuk membantu obat larut kedalam telinga.\r\n<br />', '60000', 0, 'public', '0000-00-00 00:00:00', 20, '62.jpg'),
(28, 'OA001', 'Paramectin Anti Parasite Solution - Obat Infeksi', 9, '<br />- Mengatasi infeksi karena parasit\r\n<br />- Untuk hewan berusia 2 bulan keatas\r\n<br />- Untuk anjing, kucing, dan kelinci\r\n<br />\r\n<p>\r\n<br /><strong>Paramectin Anti Parasite Solution</strong> adalah obat tetes pembasmi kutu untuk hewan peliharaan,seperti anjing, kucing dan kelinci. Obat ini sangat cepat membasmi kutu dan tahan lama. Anda tidak perlu lagi khawatir akan kutu penyebab penyakit pada hewan kesayangan Anda.\r\n<br />\r\n<br /><strong>Kegunaan</strong>\r\n<br />Paramectin Anti Parasite Solution berfungsi untuk mengobati dan mencegah berbagai jenis infeksi caplak, kutu, tungau, miasis, scabies, dan cacing pada anjing, kucing dan kelinci. Teruji secara klinis sehingga aman digunakan pada hewan.\r\n<br />\r\n<br /><strong>Cara Pemakaian</strong>\r\n<br />Paramectin Anti Parasite Solution sangat mudah digunakan. Buka penutup kemasan. Teteskan di sepanjang kulit punggung hewan. Pastikan kulit hewan yang diteteskan obat ini dalam keadaan bersih.\r\n<br />\r\n<br /><strong>Dosis</strong>\r\n<br />Anjing minimal berumur dua bulan\r\n<br />Kecil : 2-4 tetes per ekor\r\n<br />Besar : 4-6 tetes per ekor\r\n<br />\r\n<br />Kucing minimal berumur dua bulan\r\n<br />2-3 tetes per ekor\r\n<br />\r\n<br />Kelinci\r\n<br />2-3 tetes per ekor', '58000', 0, 'public', '0000-00-00 00:00:00', 30, '61.jpg'),
(29, 'OA002', 'Well Obat Semprot Luka Gatal', 9, '<br />- Obat semprot luka gatal\r\n<br />- Untuk kucing, anjing dan kelinci\r\n<br />- Aman jika terjilat\r\n<br />- Anti gatal / Itching\r\n<br />- 125 ml\r\n<br />\r\n<br />Well Obat Semprot Luka Gatal ini sangat efektif untuk mengobati luka gatal pada kulit hewan yang disebabkan jamur kulit, bakteri, dan kutu pada hewan kesayangan Anda. Obat ini aman untuk hewan dan aman jika terjlat. Kocok dahulu sebelum digunakan.\r\n<br />\r\n<br /><strong>Gejala Luka Gatal pada Hewan</strong>\r\n<br />* Hewan sering menggaruk- garuk bagan kulit.\r\n<br />* Terlihat bintik.\r\n<br />* bintik merah pada bagian kulit hewan.\r\n<br />* Tampak kebotakan dan ada lukanya.\r\n<br />\r\n<br /><strong>Aturan Pakai</strong>\r\n<br />* Bersihkan luka dari semua kotoran dengan alkohol.\r\n<br />* Semprotkan langsung pada bagian kulit yang terlihat botak atau berbintik - bintik merah dan luka.\r\n<br />* Lakukan penyemprotan 3 kali sehari.\r\n<br />* Penyemprotan dilakukan sampai bagian kulit yang luka mengering / sembuh.\r\n<br />* Untuk menghindari obat ini dijilat hewan berlebihan, sebaiknya 1 jam sebelum pengobatan hewan di beri makan dan minum secukupnya.\r\n<br />', '75000', 0, 'public', '0000-00-00 00:00:00', 25, '59.jpg'),
(30, 'OA003', 'Virbac Megaderm - Vitamin Bulu', 9, '<br />- vitamin bulu dan kulit\r\n<br />- khasiat terlihat dalam 2 minggu pemakaian\r\n<br />- isi 28sachet x 4ml\r\n<br />\r\n<p>\r\n<br />Bulu kucing atau anjing Anda rontok, tidak bercahaya, mudah patah dan tidak lebat? Jangan khawatir karena kini hadir Virbac Megaderm, yaitu suplemen untuk anjing dan kucing yang mengandung omega 6 dan 3 sehingga berkhasiat memperbaiki struktur kulit dan sebagai anti radang pada kulit sensitif. Hasil sudah mulai terlihat sejak 2 minggu pemakaian rutin.\r\n<br />\r\n<br /><strong>Manfaat Terbaik untuk Kulit dan Bulu</strong>\r\n<br />vitamin Megaderm dari Virbac memiliki kandungan optimal dari omega 6 dan 3 dengan rasio 05:01 yang dilengkapi kombinasi asam lemak, vitamin A, B, E dan zinc sehingga mampu memberikan manfaat terbaik terhadap kulit, bulu dan organ dalam kucing atau anjing anda. Selain itu, vitamin Megaderm juga dapat merangsang pertumbuhan bulu, memperkuat bulu hingga akarnya, menjaga kelembaban kulit, warna bulu lebih bercahaya dan menjadikannya lebat, padat dengan kilau sempurna. Komposisi komplit ini juga mampu bersinergi menjaga kekebalan tubuh, kulit dan bulu dari berbagai penyakit dan mampu mengurangi peradangan pada kulit dan organ tubuh lainnya.\r\n<br />\r\n<br /><strong>Suplementasi Primer Asam Lemak Esensial</strong>\r\n<br />virbac Megaderm dapat meningkatkan kualitas rambut dan kulit, memperkuat integritas kulit, memelihara fungsi sawar efisien epidermis dan memberikan dukungan nutrisi untuk kasus pruritus dan peradangan.\r\n<br />\r\n<br /><strong>Suplementasi Zinc</strong>\r\n<br />Kekurangan zinc mempengaruhi metabolisme sel kulit, dapat menyebabkan pertumbuhan tertekan, keratin berlebihan dan gangguan penyembuhan luka. Megaderm dari Virbac memenuhi kebutuhan zinc pada tubuh kucing atau anjing Anda sehingga dapat mempercepat pemulihan luka dan jaringan kulit yang terluka.\r\n<br />\r\n<br /><strong>Makanan Tambahan Lengkap & Terapi Kortikosteroid</strong>\r\n<br />Virbac Megaderm juga dapat berfungsi sebagai pelengkap makanan tambahan untuk kronis, seborrhoea pruritus dan alergi (misalnya FAD & Atopi) perawatan serta mempengaruhi ekspresi klinis peradangan dan memungkinkan pengurangan terapi kortikosteroid.\r\n<br />\r\n<br /><strong>Rasa Enak disukai Kucing dan Anjing</strong>\r\n<br />Virbac Megaderm memiliki rasa yang enak sehingga disukai kucing dan anjing Anda. Vitamin dalam bentuk minyak ini lebih mudah diserap tubuh dan dijamin akan menjadikan kucing atau anjing anda semakin cantik, indah dan menggemaskan dengan bulu yang sempurna\r\n<br />\r\n<br /><strong>Aturan Pakai</strong>\r\n<br />Dosis 0,3-1ml untuk perkilo berat badan atau idealnya 0,5 ml perkilogram berat badan (atau seusai saran dokter hewan Anda). pemberian dapat menggunakan spet langsung ke mulut anjing atau kucing Anda.\r\n<br />\r\n<br />\r\n<br />Anjing/kucing 0-10kg : 1 x 4ml sachet sekali sehari\r\n<br />Anjing/kucing 10-20kg : 1 sachet x 8ml sekali sehari\r\n<br />Anjing/kucing Lebih dari 20 kg : 2 x 8ml sachet sekali sehari', '425000', 0, 'public', '0000-00-00 00:00:00', 10, '65.jpg'),
(31, 'PA003', 'Sukina Petto Pet Diaper Popok Anjing ', 10, '<br />- menyerap cairan secara cepat\r\n<br />- tidak mengakibatkan bau\r\n<br />- nyaman dipakai\r\n<br />- isi 12pcs\r\n<br />\r\n<br /><strong>Sukina Petto pet diaper</strong> merupakan popok celana untuk Anjing yang dibuat dengan kuat dan fitur rasio penyerapan cairan yang sempurna. Popok sukina petto cepat kering dan dapat menghilangkan bau urin hewan peliharaan serta anti bakteri. Popok ini anti bocor. Popok mudah dilepas dan dibuang. Size L untuk berat badan anjing 10-15\r\n<br />', '118000', 0, 'public', '0000-00-00 00:00:00', 50, '49.jpg'),
(32, 'AA001', 'Octagon Accessories - Penutup Mulut Anjing', 11, '<br />- penutup mulut anjing\r\n<br />- aman digunakan\r\n<br />- cocok untuk anjing kecil & besar\r\n<br />\r\n<p>\r\n<br /><strong>Octagon Accessories</strong> merupakan alat penutup mulut untuk anjing. Alat ini juga dikenal dengan nama brangus. Penutup mulut ini berfungsi melindungi gigitan anjing terhadap media apapun yang akan rusak jika digigit oleh anjing yang bersemangat. Anda juga akan merasa terlindung dari gigitan anjing yang agresif.\r\n<br />Anjing yang aktif biasanya senang menggigit. Pertumbuhan gigi ini yang biasa membuat mereka menjadi gatal pada bagian mulut, dan menjadi sangat terganggu. Selain itu, di usia anjing pada masa ingin kawin, anjing juga biasanya agresif dan suka menggigit karena merasa gelisah. Untuk itu, diperlukan penutup mulut khusus untuk anjing, agar ia tidak menggigit sembarangan.\r\n<br />Melindungi Gigitan Anjing\r\n<br />', '95000', 0, 'public', '0000-00-00 00:00:00', 20, '31.jpg'),
(33, 'AA002', 'Panganggon Pet Collar Simply - Kalung Kucing - Kal', 11, '<br />- bahan berkualitas\r\n<br />- nyaman digunakan\r\n<br />- untuk anjing & kucing\r\n<br />\r\n<p>\r\n<br /><strong>Pet collar</strong> memiliki fungsi sebagai penanda identitas agar sang pemilik bisa mengenali hewan peliharaannya. Anjing dan kucing yang memakai kalung akan terlihat lebih rapi, elegan atau sporty tergantung bentuk kalung itu sendiri. Kalung yang baik tidak membuat anjing dan kucing yang memakainya terganggu saat beraktifitas.\r\n<br /><strong>Desain Menarik</strong>\r\n<br />pet collar ini memiliki berbagai pilihan desain menarik dengan warna warna cerah yang akan membuat anjing peliharaan anda terlihat menarik. Selain itu terdapat lonceng kecil di setiap collar.\r\n<br />', '25000', 0, 'public', '0000-00-00 00:00:00', 30, '32.jpg'),
(34, 'AA003', 'Baju Kucing / Anjing - Model Angsa', 11, '<br />- desain menarik\r\n<br />- nyaman digunkan\r\n<br />\r\n<p>\r\n<br /><strong>Pet Coat Dog And Cat - Swan Queen Red</strong> adalah baju untuk kucing dan anjing. Baju ini dibuat dari bahan berkualitas sehingga nyaman digunakan untuk anjing dan kucing kesayangan Anda. Baju ini akan mengubah tampilan anjing atau kucing kesayangan Anda menjadi lebih menarik dan siap untuk Anda ajak pergi kemana pun.\r\n<br /><strong>Desain Menarik</strong>\r\n<br />Pet Coat Dog And Cat - Swan Queen Red di desain khusus untuk anjing atau kucing Anda yang berpenampilan menarik, Baju yang dibuat dengan warna pink dan ungu ini sangat cocok untuk hewan kesayangan Anda untuk tampil cantik!\r\n<br /><strong>Nyaman Digunakan</strong>\r\n<br />Pet Coat Dog And Cat - Swan Queen Red ini terbuat dari bahan berkualitas dan bahan karet yang ada di tiap bagian pergelangan kaki dan leher nya sehingga membuat hewan kesayangan Anda nyaman mengenakannya. Selain itu, baju ini sangat mudah untuk memakaikannya ke hewan kesayangan Anda.\r\n<br />', '85000', 0, 'public', '0000-00-00 00:00:00', 28, '45.jpg'),
(37, 'AA004', 'Tas Travel Untuk Anjing', 11, '<br />- dompet serba guna\r\n<br />- desain menarik\r\n<br />- material berkualitas\r\n<br />\r\n<p>\r\n<br /><strong>Doggy Dog Travel Bag</strong> adalah case serba guna Doggy Dog Travel Bag ini cocok untuk tempat menaruh Nintendo DS lite, Nintendo DS "i" ataupun gadjet lainnya saat Anda bepergian. Doggy Dog Travel Bag ini di buat khusus dengan material yang berkualitas tidak mudah rusak.\r\n<br /><strong>Desain Menarik</strong>\r\n<br />Doggy Dog Travel Bag ini di desain khusus dengan gambar anjing yang lucu dan menarik, cocok untuk Anda para penggemar nintendo dan anjing.\r\n<br /><strong>Bahan Berkualitas</strong>\r\n<br />Case yang serba guna ini di buat dengan material khusus berkualitas yang kuat, tidak mudah terlekuk dan juga tahan air. \r\n<br />', '60000', 0, 'public', '0000-00-00 00:00:00', 10, '30.jpg'),
(38, 'AA005', 'Box Travel Voyageur - Merah', 11, '<br />- ventilasi baik\r\n<br />- kunci pengaman\r\n<br />- pegangan stabil\r\n<br />- 50x35x34cm\r\n<br />\r\n<p>\r\n<br /><strong>Pet Voyageur Carrier</strong> merupakan solusi yang tepat untuk Anda untuk kebutuhan transportasi hewan peliharaan Anda. Di desain dengan kokoh sehingga Anda tidak perlu khawatir akan keamanan hewan peliharaan Anda ketika sedang dibawa pergi.\r\n<br /><strong>Aliran Udara Baik</strong>\r\n<br />Pet Voyageur Carrier diancang khusus untuk hewan peliharaan kucing maupun anjing. Pet Voyageur Carrier ini memiliki ventilasi yang baik agar hewan peliharaan Anda merasa nyaman menghirup udara walaupun di dalam berada di dalam kandang saat perjalanan. Aliran udara yang baik tidak akan mengganggu pernapasan hewan peliharaan kesayangan Anda.\r\n<br /><strong>Pegangan Stabil</strong>\r\n<br />Pet Voyageur Carrier memiliki pegangan yang kuat dari luar untuk dibawa kemana saja. Tidak hanya kuat, pegangan carrier ini dirancang untuk menjaga kestabilan posisi carrier saat dibawa. Kucing Anda akan merasa nyaman ketika berada di dalam carrier ini.\r\n<br /><strong>Kunci Pengaman</strong>\r\n<br />Pet Voyageur Carrier memiliki kunci pengaman pada pintu. Dengan kunci yang aman ini, hewan peliharaan Anda akan aman ketika berada di dalamnya. Mereka tidak akan tergelincir dan jatuh keluar ketika carrier ini dikunci. Sangat aman untuk hewan peliharaan kesayangan Anda. Sangat cocok digunakan di dalam rumah, maupun pada saat bepergian.\r\n<br />', '275000', 0, 'public', '0000-00-00 00:00:00', 8, '27.jpg'),
(39, 'ML001', 'Briter Bunny - Makanan Kelinci', 12, '<br />- Kaya akan protein & mineral\r\n<br />- Kaya akan vitamin C\r\n<br />- Menjaga kesehatan bulu\r\n<br />- Untuk anak kelinci\r\n<br />\r\n<br />Makanan pelet formulasi nutrisi lengkap untuk kelinci hewan peliharaan Anda yang paling menawan. Briter Bunny khusus diformulasikan untuk makanan kelinci, Makanan bernilai tinggi dan makanan yang nyaman penuh kualitas nutrisi untuk memenuhi kebutuhan kelinci Anda.\r\n<br />Segar sebagaimana makanan alami karena penuh vitamin dan mineral yang ditemukan pada tanaman dan sayuran yang membuat tetap sehat, segar, cerah dan hidupnya kelinci yang Anda cintai.\r\n<br />\r\n<br /><strong>Briter Bunny berisi </strong>\r\n<br />* Pelet hijau yang diekstrusi adalah diperkaya dengan biotin membantu kulit dan kesehatan bulu sehat bersinar.\r\n<br />* Pelet Orange yang diekstrusi adalah diperkaya dengan Beta-Karoten yang terdapat pada wortel membantu menunda penuaan sel dan diperkaya dengan multi-vitamin termasuk vitamin C.\r\n<br />\r\n<br />\r\n<br />> Biotin : Kulit yang sehat dan bulu berkilau\r\n<br />> Vitamin C : Mendukung sistem kekebalan tubuh dan mengurangi stres\r\n<br />> Vitamin Penting : kesehatan yang kuat, kesegaran dan cerah\r\n<br />> Beta-Carotene : Antioksidan menunda penuaan sel untuk semua tahap kehidupan kelinci\r\n<br />', '45000', 0, 'public', '0000-00-00 00:00:00', 25, '68.jpg');
INSERT INTO `product` (`id_product`, `code_product`, `name_product`, `id_category`, `description_product`, `price_product`, `weight`, `status_product`, `date_product`, `stock_product`, `picture_product`) VALUES
(40, 'ML002', 'Nova Rabbit Food - Makanan Kelinci', 12, '<br />- Kaya akan protein & mineral\r\n<br />- Kaya akan vitamin A, C dan E\r\n<br />- Untuk kelinci dan hewan pengerat lainnya\r\n<br />\r\n<br /><strong>Nova Rabbit Food</strong> merupakan makanan bergizi untuk kelinci, dan sejenis hewan pengerat lainnya seperti hamster, gerbil dan marmut. Kelinci membutuhkan banyak kandungan vitamin dan mineral, oleh karena itu, Nova Rabbit Food diformulasikan khusus untuk kelinci, kaya akan protein dan vitamin, ditambah dengan kandungan berkualitas tinggi mengoptimalkan kekayaan nutrisi didalamnya.\r\n<br />\r\n<br /><strong>Memperkuat Tulang dan Gigi</strong>\r\n<br />Nova Rabbit Food diperkaya dengan kalsium yang tinggi, sehingga membuat gigi dan tulang kelinci yang kuat. Sangat baik untuk pertumbuhan tulang dan gigi kelinci. Nova Rabbit Food juga memperkuat sistem imun pada kelinci, sehingga kelinci tetap sehat dan pencernaannya lancar.\r\n<br />\r\n<br /><strong>Meningkatkan Ketahanan Tubuh</strong>\r\n<br />Nova Rabbit Food kaya akan Vitamin Essential, yang sangat penting untuk tubuh hewan. Oleh karena itu, hewan membutuhkan banyak asupan Vitamin C untuk mempertahankan daya tahan tubuhnya agar tidak mudah terkena penyakit. Kandungan vitamin A, C, dan E yang kaya, sangat baik untuk kesehatan kelinci kesayangan Anda.\r\n<br />\r\n<br /><strong>Bergizi Tinggi</strong>\r\n<br />Nova Rabbit Food kaya akan vitamin dan mineral yang sangat dibutuhkan oleh kelinci. Dibuat dari bahan pilihan kesukaan kelinci seperti sayuran terdapat didalamnya, sehingga memberikan gizi yang cukup untuk kebutuhan kelinci kesayangan Anda.\r\n<br />\r\n<br /><strong>Anjuran Penggunaan</strong>\r\n<br />* Hanya untuk hewan\r\n<br />* Simpan di tempat yang kering dan sejuk\r\n<br />* Jauhkan dari jangkauan anak-anak\r\n<br />', '45000', 0, 'public', '0000-00-00 00:00:00', 23, '69.jpg'),
(41, 'ML003', 'Hamsfood - Hamster & Gerbil Stapple Food', 12, '<br />- Kaya akan protein & mineral\r\n<br />- Kaya akan vitamin C\r\n<br />- Untuk hamster & gerbil\r\n<br />\r\n<br /><strong>Hamsfood Hamster & Gerbil Stapple Food</strong> merupakan makanan bergizi untuk hamster & gerbil. Hamster & gerbil membutuhkan banyak kandungan vitamin dan mineral, oleh karena itu, Hamsfood Hamster & Gerbil Stapple Food diformulasikan khusus untuk hamster dan gerbil, kaya akan protein dan vitamin, ditambah dengan kandungan berkualitas tinggi mengoptimalkan kekayaan nutrisi didalamnya.\r\n<br />\r\n<br /><strong>Meningkatkan Ketahanan Tubuh</strong>\r\n<br />Hamsfood Hamster & Gerbil Stapple Food kaya akan Vitamin Essential, yang sangat penting untuk tubuh hewan. Oleh karena itu, hewan membutuhkan banyak asupan Vitamin C untuk mempertahankan daya tahan tubuhnya agar tidak mudah terkena penyakit. Kandungan vitamin C yang kaya, sangat baik untuk kesehatan hamster dan gerbil kesayangan Anda.\r\n<br />\r\n<br /><strong>Anjuran Penggunaan</strong>\r\n<br />* Hanya untuk hewan\r\n<br />* Simpan di tempat yang kering dan sejuk\r\n<br />* Jauhkan dari jangkauan anak-anak\r\n<br />\r\n', '45000', 0, 'public', '0000-00-00 00:00:00', 15, '73.jpg'),
(42, 'ML004', 'Hamsgehog Daily Food For Hedgehog - Makanan Landak', 12, '<br />- Memperkuat sistem imun\r\n<br />- Menjaga kesehatan organ\r\n<br />- Membantu sistem kerja tubuh landak\r\n<br />\r\n<br /><strong>Hamsgehog Daily Food For Hedgehog</strong> merupakan makanan segar, sehat, dan bergizi yang diformulasikan khusus untuk landak mini. Landak mini dikenal sangat pemilih dalam memilih makanan. Mereka hanya memakan makanan yang merekai sukai. Oleh karena itu, Hamsgehog menciptakan makanan lezat dengan nutrisi komplit seimbang yang disukai oleh landak mini peliharaan Anda.\r\n<br />\r\n<br /><strong>Menjaga Kesehatan Organ Vital</strong>\r\n<br />Hamsgehog Daily Food For Hedgehog kaya akan protein, vitamin, dan mineral yang membantu pertumbuhan dan kesehatan hampir seluruh tubuh landak mini, seperti daya kerja otak, otot, rambut, tulang, dan organ vital lainnya. Vitamin A, B1, BB2, D, Taurine, Iron, Kalsium, Phosphorus membantu sistem kerja tubuh secara efektif.\r\n<br />\r\n<br /><strong>Menguatkan Sistem Imun</strong>\r\n<br />Hamsgehog Daily Food For Hedgehog dengan kandungan Omega 3 dan 6 dari minyak ikan tuna dan EPO membantu menyehatkan kulit dan menguatkan sistem kekebalan tubuh. Sangat baik untuk kesehatan landak mini.\r\n<br />\r\n<br /><strong>Anjuran Penggunaan</strong>\r\n<br />* Hanya untuk hewan\r\n<br />* Simpan di tempat yang kering dan sejuk\r\n<br />* Jauhkan dari jangkauan anak-anak', '35000', 0, 'public', '0000-00-00 00:00:00', 17, '74.jpg'),
(43, 'OL001', 'Pil Kembung Kelinci', 13, '<br />- Untuk kelinci\r\n<br />- Ampuh mengobati kembung\r\n<br />- isi 10 pil', '45000', 0, 'public', '0000-00-00 00:00:00', 24, '76.jpg'),
(44, 'OL002', 'Ti-Rex - Rabbit Stimulant', 13, '<br />- Suplemen tambahan\r\n<br />Menjaga daya tahan tubuh kelinci\r\n<br />- Kaya akan vitamin & mineral\r\n<br />\r\n<br /><strong>Ti-Rex - Rabbit Stimulant</strong> adalah suplemen makanan untuk kelinci. Hewan kecil tersebut membutuhkan suplemen makanan tambahan untuk menjaga daya tahan tubuhnya. Ti-Rex - Rabbit Stimulant mengandung multivitamin komplit yang membantu menyehatkan kelinci.\r\n<br />\r\n<br /></strong>Kegunaan</strong>\r\n<br />Ti-Rex - Rabbit Stimulant berfungsi sebagai suplemen makanan tambahan untuk memberikan vitamin ekstra yang dibutuhkan untuk menjaga kesehatan Kelinci. Membantu proses pertumbuhan dan penggemukan, mempertebal dan memperhalus bulu, meningkatkan daya tahan tubuh dari virus dan bakteri, mengurangi kematian dan menghilangkan stress, menambah nafsu makan dan membantu pencernaan.\r\n<br />\r\n<br /><strong>Cara Pemakaian</strong>\r\n<br />Kelinci kecil : 1/2 tutup botol dicampur dengan 5 ltr/kg minum/makanan\r\n<br />Kelinci sedang : 1 tutup botol dicampur dengan 5 ltr/kg minum/makanan\r\n<br />Kelinci besar : 2 tutup botol dicampur dengan 5 ltr/kg minum/makanan\r\n<br />\r\n<br /><strong>Anjuran Pemakaian</strong>\r\n<br />Jauhkan dari jangkauan anak-anak\r\n<br />Simpan di tempat yang sejuk', '45000', 0, 'public', '0000-00-00 00:00:00', 16, '77.jpg'),
(45, 'OL003', 'Jolly Multi Vitamin Hamster Food', 13, '<br />- extra vitamin E\r\n<br />- Kaya akan vitamin\r\n<br />\r\n<br /><strong>Jolly multivitamin Hamster food</strong> merupakan makanan bergizi untuk hamster . Hamster membutuhkan banyak kandungan vitamin dan mineral, oleh karena itu, makanan ini diformulasikan khusus untuk hamster dan kaya akan vitamin E, ditambah dengan kandungan berkualitas tinggi mengoptimalkan kekayaan nutrisi didalamnya.\r\n<br />\r\n<br /><strong>Bergizi Tinggi</strong>\r\n<br />Jolly hamster Food kaya akan vitamin dan mineral yang sangat dibutuhkan oleh hamster. Dibuat dari bahan pilihan kesukaan hamster\r\n<br />\r\n<br /><strong>Anjuran Penggunaan</strong>\r\n<br />* Hanya untuk hewan\r\n<br />* Simpan di tempat yang kering dan sejuk\r\n<br />* Jauhkan dari jangkauan anak-anak', '35000', 0, 'public', '0000-00-00 00:00:00', 18, '78.jpg'),
(46, 'PL001', 'Raid All Hamster Talcum Powder - Squeky Clean', 14, '<br />Untuk semua jenis hamster\r\n<br />Keharuman sweet sugar baby\r\n<br />Mengatasi masalah kulit\r\n<br />\r\n<br /><strong>Raid All Squeky Clean Hamster Talcum Powder</strong> merupakan bedak untuk hewan peliharaan Anda. Bedak ini diformulasikan untuk semua jenis hamster. Hamster Talcum Powder ini digunakan untuk mandi kering sehari - hari, dapat menyerap keringat dan tidak menggumpal. Hamster Talcum Powder ini juga mengandung triclosan sebagai anti bakteri, jamur dan iritasi serta dengan Zink Oxide sebagai anti ketombe.\r\n<br />\r\n<br /><strong>Kegunaan</strong>\r\n<br />Hamster Talcum Powder memiliki keharuman sweet sugar baby yang dilengkapi dengan sulfur, salicylic acid sebagai anti jamur dan iritasi. Bedak ini juga dilengkapi dngan Cabaryl sebagai anti kutu, caplak dan pinjal dengan kadar yang aman sesuai rekomendasi dokter hewan.\r\n<br />\r\n<br /><strong>Cara Pemakaian</strong>\r\n<br />Taburkan Raid All Squeky Clean Hamster Talcum Powder pada bulu hamster Anda. Usap dan bersihkan tanpa dibilas.\r\n<br />\r\n<br /><strong>Anjuran Pemakaian</strong>\r\n<br />* Simpan di tempat yang sejuk\r\n<br />* Hanya untuk hewan', '25000', 0, 'public', '0000-00-00 00:00:00', 19, '87.jpg'),
(47, 'PL002', 'HF Rabbit & Hamster Shampoo', 14, '<br />- Membersihkan sempurna\r\n<br />- Harum Menyegarkan\r\n<br />- Semua jenis hamster dan kelinci\r\n<br />\r\n<br /><strong>HF Rabbit & Hamster Shampoo</strong> adalah formula pembersih yang sangat lembut dan ideal untuk kelinci dan hamster kesayangan Anda. Shampo ini diformulasikan untuk melindungi dan memastikan bulu dan kulit kelinci dan hamster Anda agar selalu sehat dan berkilau. HF Rabbit & Hamster Shampoo akan memberikan keharuman menyegarkan yang tahan lama. Shampo ini diformulasikan untuk semua jenis kelinci dan hamster.\r\n<br />\r\n<br /><strong>Pertolongan Pertama Untuk Gatal-Gatal</strong>\r\n<br />Hamster atau kelinci Anda sering menggaruk-garuk badannya? menggaruk mungkin bisa disebabkan oleh kotor, kutu, alergi atau berbagai masalah kulit lainnya. Kini Anda tidak perlu khawatir lagi. Telah hadir HF Rabbit & Hamster Shampoo yang dapat memberikan bantuan cepat untuk menghilangkan rasa gatal pada kelinci dan hamster Anda dan dengan segera dapat atasi hamster Anda yang sering menggaruk-garuk badannya.\r\n<br />\r\n<br /><strong>Membersihkan Menyeluruh</strong>\r\n<br />Shampo ini dapat membersihkan kulit dan bulu hewan peliharaan Anda secara menyeluruh serta membersihkan segala kotoran dan residu yang menyebabkan buku kelinci dan hamster Anda rusak. Selain itu, shampo ini juga dapat menambah kilau dan membuat bulu kelinci dan hamster kesayangan Anda bersinar.\r\n<br />\r\n<br /><strong>Anjuran Penggunaan</strong>\r\n<br />* Hanya untuk hewan\r\n<br />* Simpan di tempat yang kering dan sejuk\r\n<br />* Jauhkan dari jangkauan anak-anak', '35000', 0, 'public', '0000-00-00 00:00:00', 21, '88.jpg'),
(48, 'PL003', 'Raid All Rabbit Cologne - Blue Fantasy', 14, '<br />- Harum sepanjang hari\r\n<br />- Aman digunakan\r\n<br />- Untuk kelinci\r\n<br />\r\n<br />Jauhkan hewan peliharaan Anda dari bau yang tidak sedap! Kini hadir Raid All Rabbit Cologne - Blue Fantasy, yaitu parfum khusus untuk kelinci kesayangan Anda yang akan memberikan kesegaran dan keharuman sempurna sepanjang hari! Parfum ini aman karena diformulasikan khusus untuk hewan peliharaan. Parfum ini dikemas sangat praktis dengan botol semprot yang akan memudahkan Anda menggunakannya. Cukup semprotkan parfum ini ke kelinci kesayangan Anda, maka Anda dapat mencium hewan peliharaan Anda wangi sepanjang hari!\r\n<br />\r\n<br />Aroma Lembut dan Baik untuk Kulit\r\n<br />Raid All Rabbit Cologne sangat efektif memberikan kesegaran yang tahan lama. Raid All Rabbit Cologne memiliki aroma yang lembut, ramah lingkungan, dan baik untuk kulit. Parfum ini diformulasikan dengan sangat baik sehingga membuat bulu hewan peliharaan Anda tidak berminyak ataupun lengket namun akan menjadikannya "mantel" yang berkilau dan sehat. Nikmati keharuman dan kesegaran yang tahan lama sepanjang hari dan dapatkan kulit sehat berkilau pada kelinci kesayangan Anda!\r\n<br />\r\n<br />Anjuran Penggunaan\r\n<br />* Hanya untuk hewan\r\n<br />* Simpan di tempat yang kering dan sejuk\r\n<br />* Jauhkan dari jangkauan anak-anak', '35000', 0, 'public', '0000-00-00 00:00:00', 4, '89.jpg'),
(49, 'PL004', 'Bathing Sand - Pasir Mandi', 14, '<br />- Aroma strawberry\r\n<br />- Membersihkan tubuh hamster\r\n<br />- Untuk marmut & hamster\r\n<br /><strong>Bathing Sand</strong> merupakan pasir mandi untuk hamster. Pasir ini biasanya digunakan sehari-hari sebagai tempat tinggal hewan peliharaan seperti marmut dan hamster. Hamster sebagai binatang yang kecil. Oleh karena itu, dibutuhkan pasir mandi untuknya, agar menjaganya tetap sehat dan higienis. Bathing Sand merupakan pasir mandi hamster beraroma lemon. Aroma lemon yang segar akan membuat Anda dan hamster Anda harum sepanjang hari.\r\n<br />\r\n<br />Membersihkan Hamster\r\n<br />Bathing Sand merupakan pasir untuk hamster mandi. Bathing Sand berfungsi untuk membersihkan tubuh hamster . Hamster sangat suka untuk menggali pasir, oleh karena itu, bulunya akan bersih seketika setelah hamster Anda menggulung dirinya di dalam pasir mandi ini.\r\n<br />\r\n<br />Aroma Harum dan Segar\r\n<br />Bathing Sand memiliki kandungan aroma lemon yang segar, sehingga membuat hamster Anda harum sepanjang hari. Anda tidak perlu lagi khawatir dengan bau tidak sedap yang muncul dari kotoran hamster, karena dengan Bathing Sand, hamster Anda akan beraroma lemon segar.\r\n<br />\r\n<br />Anjuran Penggunaan\r\n<br />* Hanya untuk hewan\r\n<br />* Simpan di tempat yang kering dan sejuk\r\n<br />* Jauhkan dari jangkauan anak-anak', '20000', 0, 'public', '0000-00-00 00:00:00', 20, '92.jpg'),
(50, 'AL001', ' Alex Little Prince Hamster Cage - Blue', 15, '<br />- ukuran 21×29×30cm\r\n<br />- satu set lengkap mainan dan kandang\r\n<br />- made in china\r\n<br />\r\n<br />satu set kandang hamster yang sudah dilengkapi dengan kincir putar, rumah hamster, perosotan, dat tempat minumnya. Pilihan warna tergantung ketersediaan stok. Konfirmasikan ketersediaan warna kepada CS saat konfirmasi pembayaran. \r\n<br />', '120000', 100, 'public', '0000-00-00 00:00:00', 8, '81.jpg'),
(51, 'AL002', '4 in 1 Sweet Jogging Ball - Kincir Putar Hamster', 15, '<br />- Kincir putar hamster\r\n<br />- Merangsang naluri hamster\r\n<br />- Mencegah Stress\r\n<br />\r\n<br /><strong>4 in 1 Sweet Jogging Ball</strong> merupakan roda perangkat latihan yang terutama digunakan untuk hamster dan tikus lain. Berbentuk seperti kincir, dan terdiri dari sebuah roda yang dapat berputar ketika hamster menggerakkannya. Berfungsi sebagai tempat olah raga hamster dan mencegahnya agar tidak bosan.\r\n<br />\r\n<br /><strong>Mencegah Stress</strong>\r\n<br />4 in 1 Sweet Jogging Ball dapat mencegah hamster dari stress. Hamster yang terkurung di dalam kandang, akan stress jika tidak ada permainan. 4 in 1 Sweet Jogging Ball dapat merangsang hamster Anda untuk menggerakkannya, sehingga hamster Anda akan merasa seperti berlari ke medan yang jauh. Sangat baik digunakan untuk mencegah hamster dari stress.\r\n<br />\r\n<br /><strong>Merangsang Hamster untuk Berlari</strong>\r\n<br />Hamster seperti binatang jenis lainnya, memiliki naluri untuk berlari di dalam roda. 4 in 1 Sweet Jogging Ball mewujudkan naluri hamster dengan bentuknya, sehingga merangsang hamster untuk berlari didalamnya. Hamster Anda akan senang ketika berlari didalamnya.\r\n<br />', '35000', 0, 'public', '0000-00-00 00:00:00', 17, '95.jpg'),
(52, 'AL003', 'Reusable Sticky Picker Upper - Pembersih Bulu Hewa', 15, '<br />- Cepat menghilangkan bulu\r\n<br />- Tanpa merusak bahan\r\n<br />- Bahan berkualitas\r\n<br />- Mudah digunakan\r\n<br /><strong>Reusable Sticky Picker Upper</strong> adalah alat untuk menghilangkan bulu yang berceceran di karpet. Memiliki hewan peliharaan di rumah memang menyenangkan. Namun bulu halus mereka yang menempel di furnitur maupun pakaian seringkali mengganggu. Reusable Sticky Picker Upper dapat mengangkat dengan mudah bulu halus maupun kotoran lainnya. Cukup diseka ke permukaan yang kotor, kotoran akan langsung terangkat!\r\n<br />\r\n<br /><strong>Fungsi</strong>\r\n<br />• Membersihkan karpet, pakaian / kain dan furniture dari debu, kotoran, dan bulu hewan kesayangan\r\n<br />• Perekat Optimal menghilangkan rambut hewan peliharaan tanpa merusak kain\r\n<br />• Praktis dan mudah dibawa bepergian.\r\n<br />', '110000', 900, 'public', '0000-00-00 00:00:00', 89, '94.jpg'),
(53, 'PA004', 'L&S Cat Toilet Scoop - Serokan Serbaguna - Biru', 10, '<br />- Gagang Panjang\r\n<br />- Mudah dibersihkan\r\n<br />- Made in China\r\n<br />\r\n<br /><strong>L&S Long Litter Scoop</strong> adalah serokan dengan pegangan panjang yang nyaman degenggam. Serokan ini berfungsi untuk meraup kotoran hewan peliharaan Anda dengan mudah. Dengang pegangannya yang panjang, sangat cocok untuk Anda yang malas dan terlalu segan membersihkan kotoran yang tidak sedikit di litter box. Dengan serokan sampah yang unik ini, Anda dapat membersihkan kotoran hewan peliharaan Anda dan membuat lingkungan bebas dari bau. Serokan ini telah dipoles dengan berbagai warna-warna cerah sehingga terlihat menarik. Serokan sampah ini juga kompatibel dengan semua litter box dari ukuran yang kecil hingga yang berukuran ekstra.\r\n<br />\r\n<br />L&S Long Litter Scoop tahan terhadap noda dan sangat mudah dibersihkan. Serokan ini terbuat dari bahan berkualitas yaitu bahan plastik yang tahan lama. Pegangan yang nyaman digenggam pada serokan ini membuatnya mudah untuk digunangan. Serokan ini dibuat untuk mengangkut segala jenis kotoran hewan peliharaan Anda. Cocok untuk menyerok kotoran pada pasir kucing dan anjing, ataupun menyerok kotoran pada serbuk kayu hamster dan landak mini.\r\n<br />', '15000', 1000, 'public', '0000-00-00 00:00:00', 5, '93.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(10) NOT NULL,
  `komentar` text NOT NULL,
  `date` datetime NOT NULL,
  `product_id` int(5) NOT NULL,
  `user_id` int(5) NOT NULL,
  `status` enum('aktif','blokir') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `komentar`, `date`, `product_id`, `user_id`, `status`) VALUES
(1, 'bagus\r\n', '2016-06-21 11:57:15', 8, 11, 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `id_shipping` int(11) NOT NULL,
  `lokasi` varchar(20) NOT NULL,
  `tarif` decimal(19,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`id_shipping`, `lokasi`, `tarif`) VALUES
(2, 'Jakarta', '8000'),
(3, 'Bali', '32000'),
(4, 'Bekasi', '8000'),
(6, 'Depok', '8000');

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
(11, 'Qyana', 'ee11cbb19052e40b07aac0ca060c23ee', 'Depok', 'indonesia', 'pabuaran', '16922', 'user@user.com', '123456789', '2016-06-04 23:58:11', 'aktif'),
(13, 'qyana iqy', '25d55ad283aa400af464', 'bogor', 'indonesia', 'villa pabuaran indah', '16431', 'qyana@qyana.iqy', '12345678', '2016-06-16 15:15:27', 'aktif'),
(14, 'qyana', '25d55ad283aa400af464', 'bogor', 'indonesia', 'vpi', '16431', 'qyana@qyana.iqy', '123', '2016-06-16 15:18:16', 'aktif'),
(15, 'qyana', '25d55ad283aa400af464', 'bogor', 'indonesia', 'bsi', '16431', 'bsi@bsi.bsi', '123', '2016-06-16 19:47:21', 'aktif'),
(16, 'Qyana RP', '202cb962ac59075b964b', 'Bogor', 'Indonesia', 'villa pabuaran indah', '12345', 'qyana@qyana.co.id', '123456789', '2016-06-27 00:00:00', 'aktif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

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
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_product`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`id_shipping`);

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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `header_transaksi`
--
ALTER TABLE `header_transaksi`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
--
-- AUTO_INCREMENT for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id_product` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sub-category`
--
ALTER TABLE `sub-category`
  MODIFY `id_sub` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
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
