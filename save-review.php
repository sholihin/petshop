<?php
session_start();
date_default_timezone_set('Asia/Jakarta');
include "config/koneksi.php";
$product_id = $_POST['product_id'];
$komentar = $_POST['komentar'];

$sql = "INSERT INTO `review` VALUES (null, '$komentar', '".date('Y-m-d H:i:s')."', '".$product_id."', '".$_SESSION['login_member']['id']."', 'aktif')";
$save = mysqli_query($koneksi, $sql);
if($save){
	echo "<script>alert('Review produk berhasil dikirim..!!');window.location.href='index.php';</script>";
}else {
	echo "<script>alert('Review produk gagal dikirim..!!');window.location.href='index.php';</script>";
}

?>