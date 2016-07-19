<?php
session_start();
$id_user = $_POST['id_user'];
$id_produk = $_POST['id_produk'];
$name_product = $_POST['name_product'];
$price_product = $_POST['price_product'];
$berat = $_POST['weight'];
$qty = $_POST['qty'];
date_default_timezone_set('Asia/Jakarta');
$date = date('Y-m-d H:i:s'); 
$status_pemesan = 'buy';
$array = array(
			'id_user' => $id_user,
			'id_produk' => $id_produk,
			'name_product' => $name_product,
			'price_product' => $price_product,
			'qty' => $qty,
			'total' => ($qty * $price_product),
			'date' => $date,
			'status' => $status_pemesan,
			'weight' => $berat
		);

if(count($_SESSION['cart']) > 0){
	array_push($_SESSION['cart'], $array);
}
else {
	$_SESSION['cart'] = [$array];
}

header('location:index.php?page=cart');

?>