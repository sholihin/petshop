<?php
include "../config/koneksi.php";

$id = $_POST['id'];
$status = $_POST['status'];

$sql = "UPDATE `invoice` SET `status` = '".$status."' WHERE `id_invoice` = '".$id."'";

$query = mysqli_query($koneksi, $sql);
if($query){
	echo "<script>alert('data berhasil dirubah..');window.location.href='index.php?module=pemesanan';</script>";
}else{
	echo "<script>alert('data gagal dirubah..');window.location.href='index.php?module=pemesanan';</script>";
}
?>