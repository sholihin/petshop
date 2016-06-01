-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2016 at 03:44 AM
-- Server version: 5.5.34
-- PHP Version: 5.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_petshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(4) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(1, 'xxx', '202cb962ac59075b964b07152d234b70'),
(2, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(3, 'admin', '25d55ad283aa400af464c76d713c07ad');

-- --------------------------------------------------------

--
-- Table structure for table `detail_kategori`
--

CREATE TABLE IF NOT EXISTS `detail_kategori` (
  `id_detail_kategori` int(5) NOT NULL AUTO_INCREMENT,
  `nm_detail_kategori` varchar(100) NOT NULL,
  `id_kategori` int(5) NOT NULL,
  PRIMARY KEY (`id_detail_kategori`),
  KEY `id_kategori` (`id_kategori`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `detail_kategori`
--

INSERT INTO `detail_kategori` (`id_detail_kategori`, `nm_detail_kategori`, `id_kategori`) VALUES
(11, 'Makanan', 1),
(12, 'Suplemen', 1),
(13, 'Perawatan', 1),
(14, 'Aksesoris', 1),
(15, 'Makanan', 2),
(16, 'Suplemen', 2),
(17, 'Perawatan', 2),
(18, 'Aksesoris', 2),
(19, 'Makanan', 3),
(20, 'Suplemen', 3),
(21, 'Perawatan', 3),
(22, 'Aksesoris', 3);

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE IF NOT EXISTS `kota` (
  `id_kota` int(3) NOT NULL AUTO_INCREMENT,
  `nama_kota` varchar(100) NOT NULL,
  `ongkos_kirim` int(10) NOT NULL,
  PRIMARY KEY (`id_kota`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`id_kota`, `nama_kota`, `ongkos_kirim`) VALUES
(1, 'Jakarta', 13000),
(2, 'Bandung', 13500),
(3, 'Semarang', 10000),
(4, 'Medan', 20000),
(5, 'Aceh', 25000),
(6, 'Banjarmasin', 17500),
(7, 'Balikpapan', 18500),
(8, 'Samarinda', 19500),
(9, 'Lainnya', 10000),
(10, 'Palembang', 23000),
(11, 'Surabaya', 13000);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE IF NOT EXISTS `pelanggan` (
  `id_pelanggan` int(5) NOT NULL AUTO_INCREMENT,
  `nm_pelanggan` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `tgl_daftar` date NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`id_pelanggan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nm_pelanggan`, `jenis_kelamin`, `email`, `no_telp`, `username`, `password`, `tgl_daftar`, `status`) VALUES
(1, 'qyana', 'perawan', 'QYANA@123.COM', '0909090909', 'qyana', '202cb962ac59075b964b07152d234b70', '2016-05-21', 'jones');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE IF NOT EXISTS `pemesanan` (
  `no_pemesanan` char(7) NOT NULL,
  `id_pelanggan` char(6) NOT NULL,
  `tgl_pemesanan` date NOT NULL,
  `nama_penerima` varchar(100) NOT NULL,
  `alamat_lengkap` varchar(100) NOT NULL,
  `kd_provinsi` char(3) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `kode_pos` char(5) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `status_bayar` enum('pesan','lunas','batal') NOT NULL,
  PRIMARY KEY (`no_pemesanan`),
  KEY `kd_pelanggan` (`id_pelanggan`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan_item`
--

CREATE TABLE IF NOT EXISTS `pemesanan_item` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `no_pemesanan` char(8) NOT NULL,
  `id_barang` char(5) NOT NULL,
  `harga` char(12) NOT NULL,
  `jumlah` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE IF NOT EXISTS `produk` (
  `id_produk` int(5) NOT NULL AUTO_INCREMENT,
  `nama_produk` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `harga` int(20) NOT NULL,
  `stok` int(5) NOT NULL,
  `Berat` decimal(5,2) unsigned DEFAULT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl_masuk` date NOT NULL,
  `dibeli` int(5) NOT NULL,
  `diskon` int(5) NOT NULL,
  `id_detail_kategori` int(5) DEFAULT NULL,
  PRIMARY KEY (`id_produk`),
  KEY `id_detail_kategori` (`id_detail_kategori`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `keterangan`, `harga`, `stok`, `Berat`, `gambar`, `tgl_masuk`, `dibeli`, `diskon`, `id_detail_kategori`) VALUES
(1, 'Equilibrio Kittens all Breed - Makanan Kucing-2kg', '<p>\r\n<strong>Spesifikasi : \r\n</strong>\r\n</p>\r\n<p>\r\n- Mengontrol pH urine\r\n- Mengurangi akumulasi bau kotoran\r\n- Memperlancar pencernaaan\r\n- Bulu halus & Berkilau\r\n- Untuk Kitten\r\n</p>\r\n<p>\r\n<strong>Ulasan :&nbsp;\r\n</strong>\r\n</p>\r\n<p>\r\nequEquilibrio merupakan makanan hewan yang diolah dari bahan-bahan kualitas terbaik. Dengan kualitas super premium, Equilibrio menjadi makanan hewan dengan pertimbangan kesempurnaan nutrisi seimbang yang dibutuhkan oleh hewan. Equilibrio telah teruji menjadi makanan anjing dan kucing dengan kandungan nutrisi dan gizi yang baik oleh para dokter hewan.\r\nMengontrol pH Urine\r\nKelancaran pembuangan urine dapat menjaga kesehatan pada hewan. Equilibrio diproduksi dengan bahan yang aman dan berkualitas, sehingga dapat mengontrol pH Urine pada hewan dan menjaga agar saluran urine tetap lancar dan menjaga kesehatan hewan.\r\nMengurangi Bau Kotoran\r\nBau kotoran hewan yang tidak sedap akan sangat mengganggu jika terus dibiarkan. Bau kotoran tersebut dipengaruhi oleh kualitas makanan yang dimakan oleh hewan. Oleh karena itu, Equilibrio mengatasi masalah bau kotoran hewan dengan memproduksi makanan hewan yang dapat mengurangi bau kotoran. Kandungan Yucca Schidigera pada Equilibrio membantu mengurangi bau kotoran pada hewan.\r\nMemperlancar Pencernaan\r\nEquilibrio diolah dengan bahan kualitas terbaik pilihan, sehingga menjadikannya makanan yang sehat dan bergizi untuk hewan. Selain itu, kandungan prebiotik dan probiotik didalamnya berfungsi memperlancar sistem pencernaan pada hewan. Sistem pencernaan yang baik membuat hewan tetap sehat dan bugar.\r\nBulu Halus dan Berkilau\r\nBulu yang halus dan berkilau juga menjadi penanda hewan yang sehat. Memiliki bulu halus dan sehat, tidak hanya memerlukan perawatan dari luar saja, tapi juga dalam diri hewan. Oleh karena itu, hewan memerlukan makanan yang membantu menjaga kesehatan bulunya. Equilibrio, dengan kandungan omega 3 dan 6 yang seimbang, membantu menjaga kesehatan bulu hewan. Menjadikan bulu hewan halus dan berkilau.\r\nMengontrol Tartar\r\nEquilibrio membantu mengontrol kadar tartar atau karang pada gigi hewan. Kandungan sodium hexametaphospate pada Equilibrio membantu mengurangi gigi yang berkarang akibat sisa-sisa makanan. Menjaga kesehatan gigi hewan.\r\n</p>\r\n<p>\r\n<strong>Komposisi :&nbsp;\r\n</strong>\r\nMechanically separated chicken, fish meal, broken rice, ground whole corn, corn gluten meal-60, dry beer yeast, flaxseed, dried egg, powdered cellulose, whole wheat, whole sorghum meat Ground barley, fish oil, degummed soybean oil, inulin, antioxidant additive (tocopherol and essence of rosemary), L-carnitine, potassium chloride, yucca schidigera extract (0.1%), sodium hexametaphosphate ( 0.3%), probiotic, vitamin premix, trace mineral premix transquelatado.\r\nKadar Nutrisi\r\nVitamin A (18,000 IU), vitamin B12 (230 mcg), vitamin C (200 mg), Vitamin D (2100 IU), folic acid (1.7 mg), pantothenic acid (23 mg), copper (17.25 mg ), choline (1.300 mg), cobalt (0.5 mg), iron (200 mg), iodine (3 mg), manganese (80mg), vitamin B1 (20 mg), vitamin B2 (20 mg), Vitamin B6 (15 mg), vitamin H (1.5 mg), vitamin K (1.7 mg), vitamin PP (70 mg), zinc (230 mg).\r\n</p>\r\n<p>\r\n&nbsp;\r\n</p>\r\n', 165000, 10, '2.00', '1.jpg', '2016-05-01', 1, 0, 11);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori`
--

CREATE TABLE IF NOT EXISTS `tb_kategori` (
  `id_kategori` int(5) NOT NULL AUTO_INCREMENT,
  `nm_kategori` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tb_kategori`
--

INSERT INTO `tb_kategori` (`id_kategori`, `nm_kategori`) VALUES
(1, 'Kucing'),
(2, 'Anjing'),
(3, 'Hewan Lainnya');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_kategori`
--
ALTER TABLE `detail_kategori`
  ADD CONSTRAINT `detail_kategori_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `tb_kategori` (`id_kategori`);

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_ibfk_2` FOREIGN KEY (`id_detail_kategori`) REFERENCES `detail_kategori` (`id_detail_kategori`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
