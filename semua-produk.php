<?php 
include "config/koneksi.php";
$query=mysqli_query($koneksi, "SELECT * FROM `product` ORDER BY `name_product` ASC");
$numrow = mysqli_num_rows($query);
if($numrow > 0){

	while($rowAll = mysqli_fetch_array($query)){
?>
	<div class="col3" style="text-align:center">
		<div style="width:100%">
		<img src="img/<?php echo $rowAll['picture_product']; ?>" style="text-align:center;width:240px;"><br />
			<a type="button" class="btn-warning" href="?page=order&produk=<?php echo $rowAll['id_product']; ?>"/>BELI</a><br>
			<span class="dim">
				<br /><?php echo $rowAll['name_product']; ?>
				<br /><?php echo $rowAll['size_product']; ?>
				<br /><?php echo 'Rp '.number_format($rowAll['price_product']).',-'; ?>
				<br /><br /><br /><br />
			</span>
		</div>
	</div>
<?php 
	} 
}else {
	echo "Maaf.. Belum ada barang yang tersedia..";
}
?>