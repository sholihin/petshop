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
	$berat = 0;

	for($x=0; $x < count($_SESSION['cart']); $x++) {
		mysqli_query($koneksi, "INSERT INTO `cart` VALUES (NULL, 
		'".$_SESSION['login_member']['id']."', 
		'".$_SESSION['cart'][$x]['id_produk']."', 
		'".$idheader."', 
		'".$_SESSION['cart'][$x]['qty']."', 
		'".$date."', 
		'checkout'
	  	)");

		$berat += ($_SESSION['cart'][$x]['weight'] * $_SESSION['cart'][$x]['qty']);
	  	mysqli_query($koneksi, "UPDATE `product` SET `stock_product` = `stock_product` - ".$_SESSION['cart'][$x]['qty']." WHERE `id_product` = '".$_SESSION['cart'][$x]['id_produk']."'");
	}
	$query = mysqli_query($koneksi, "SELECT max(id_invoice) from invoice");
	$data = mysqli_fetch_array($query);

	if ($data){
	   $nilaikode = substr($data[0], 3);
	   $kode = (int) $nilaikode;
	   $kode = $kode + 1;
	   $hasilkode = "INV".str_pad($kode, 3, "0", STR_PAD_LEFT);
	}else{
	   $hasilkode = "INV001";
	}

	$biaya_kirim = 0;
	if($berat <= 1000){
		$biaya_kirim = $_POST['ongkir'];
	}elseif($berat <= 2000 and $berat > 1000){
		$biaya_kirim = ($_POST['ongkir'] * 2);
	}elseif($berat <= 3000 and $berat > 2000){
		$biaya_kirim = ($_POST['ongkir'] * 3);
	}elseif($berat <= 4000 and $berat > 3000){
		$biaya_kirim = ($_POST['ongkir'] * 4);
	}elseif($berat <= 5000 and $berat > 4000){
		$biaya_kirim = ($_POST['ongkir'] * 5);
	}

	$totalharga = $_SESSION['total_tagihan'] + $biaya_kirim;
	mysqli_query($koneksi, "INSERT INTO `invoice` VALUES (
	'".$hasilkode."', 
	'checkout', 
	'".$totalharga."', 
	'".$idheader."', 
	'".$_SESSION['login_member']['id']."', 
	'".$date."')
	");
	// unset($_SESSION['cart']);
	header('location:index.php?page=konfirmasi&inv='.$hasilkode.'&b='.$berat.'&bk='.$biaya_kirim);
}else{
	echo "<script>alert('Silahkan melakukan login terlebih dulu..!!');window.location.href='index.php';</script>";
}

?>