<?php
session_start();
include "config/koneksi.php";

date_default_timezone_set('Asia/Jakarta');
$date = date('Y-m-d H:i:s'); 

if(isset($_SESSION['login_member'])){
	$koneksi->query("INSERT INTO `header_transaksi` VALUES (NULL, 
							'checkout', 
							'".$_SESSION['login_member']['id']."', 
							'".$date."')");
	$idheader = null;
	$idheader = $koneksi->insert_id;

	for($x=0; $x < count($_SESSION['cart']); $x++) {
		mysqli_query($koneksi, "INSERT INTO `cart` VALUES (NULL, 
		'".$_SESSION['login_member']['id']."', 
		'".$_SESSION['cart'][$x]['id_produk']."', 
		'".$idheader."', 
		'".$_SESSION['cart'][$x]['qty']."', 
		'".$date."', 
		'checkout'
	  	)");
	}
	$query = mysqli_query($koneksi, "SELECT max(id_invoice) from invoice");
	$data = mysqli_fetch_array($query);

	if ($data){
	   $nilaikode = substr($data[0], 3);
	   $kode = (int) $nilaikode;
	   $kode = $kode + 1;
	   $hasilkode = "INV".str_pad($kode, 3, "0", STR_PAD_LEFT);
	   echo "hasil1".$hasilkode;
	}else{
	   $hasilkode = "INV001";
	   echo "hasil2".$hasilkode;
	}

	mysqli_query($koneksi, "INSERT INTO `invoice` VALUES (
	'".$hasilkode."', 
	'checkout', 
	'".$_SESSION['total_tagihan']."', 
	'".$idheader."', 
	'".$_SESSION['login_member']['id']."', 
	'".$date."')
	");
	unset($_SESSION['cart']);
	header('location:index.php?page=konfirmasi&inv='.$hasilkode.'');
}else{
	echo "<script>alert('Silahkan melakukan login terlebih dulu..!!');window.location.href='index.php';</script>";
}

?>