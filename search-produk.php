<?php 
include "config/koneksi.php";
?>
<h4 style="margin-bottom:30px;font-weight:100; text-transform:uppercase;">
	<strong>HASIL PENCARIAN</strong>
</h4>
<br />

	<?php 
	$query=mysqli_query($koneksi, "SELECT * FROM `product` WHERE `name_product` LIKE '%".$_POST['keyword']."%'");
	$numrow = mysqli_num_rows($query);
	if($numrow > 0){

		while($rowAll = mysqli_fetch_array($query)){
	?>
		<div class="col3" style="text-align:center">
			<div style="width:100%">
			<img src="img/<?php echo $rowAll['picture_product']; ?>" style="text-align:center;width:210px;"><br />
				<span class="dim">
					<br /><?php echo $rowAll['name_product']; ?>
					<br /><?php echo $rowAll['size_product']; ?>
					<br />
					<?php echo 'Rp '.number_format($rowAll['price_product']).',-'; ?> 
					<a type="button" class="btn-warning" href="?page=order&produk=<?php echo $rowAll['id_product']; ?>"/>BELI</a>
				</span>
			</div>
		</div>
	<?php 
		} 
	}else {
		echo "Maaf.. Produk tidak ditemukan..";
	}
	?>
