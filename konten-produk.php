<?php 
include "config/koneksi.php";
$category = $_GET['category'];

$sqlcategory = "SELECT * FROM `sub-category` where id_sub = '$category'";
$qcategory = mysqli_query($koneksi, $sqlcategory);
$rowCategory = mysqli_fetch_array($qcategory);
?>
<h4 style="margin-bottom:30px;font-weight:100; text-transform:uppercase;">
	KATEGORI 
	<?php 
		echo $rowCategory["name_sub"]; 
		$subcategory = mysqli_query($koneksi, "SELECT * FROM `category` 
									where id_category = '".$rowCategory["id_category"]."'");
		$rowSub = mysqli_fetch_array($subcategory);
		echo " ".$rowSub['name_category'];
	?>
</h4>
<br />

	<?php 
	$query=mysqli_query($koneksi, "SELECT * FROM `product` where id_category = '$category' ORDER BY `name_product` ASC");
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
		echo "Maaf.. Belum ada barang yang tersedia..";
	}
	?>
