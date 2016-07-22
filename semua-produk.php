<div>
<h5 style="float: left; border: 1px solid #EFEFEF; padding: 4px 15px; margin: 13px 0 0 20px; border-bottom: 0;">PRODUK TERBARU</h5>
<div class="clear" style="border-top: 1px solid #EFEFEF; height: 13px;">&nbsp;</div>
<div class="gallery js-flickity">
<?php 
include "config/koneksi.php";
$query=mysqli_query($koneksi, "SELECT * FROM `product` where status_product = 'public' ORDER BY `id_product` DESC limit 10");
$numrow = mysqli_num_rows($query);
if($numrow > 0){

	while($rowAll = mysqli_fetch_array($query)){
?>

  <div class="gallery-cell" data-flickity-options='{ "initialIndex": 2 }'>
	<div class="col3" style="text-align:center;margin-bottom:30px">
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
  </div>
<?php } ?>
</div>
</div>
<?php 
}else {
	echo "Maaf.. Belum ada barang yang tersedia..";
}
?>
<!-- <div style="margin:50px 0px;">
<h5 style="float: left; border: 1px solid #EFEFEF; padding: 4px 15px; margin: 13px 0 0 20px; border-bottom: 0;">
TERLARIS
</h5>
<div class="clear" style="border-top: 1px solid #EFEFEF; height: 13px;">&nbsp;</div>
<div class="gallery js-flickity">
<?php 
$query=mysqli_query($koneksi, "SELECT * FROM `product` ORDER by price_product DESC LIMIT 10");
$numrow = mysqli_num_rows($query);
if($numrow > 0){

	while($rowAll = mysqli_fetch_array($query)){
?>

  <div class="gallery-cell" data-flickity-options='{ "initialIndex": 3 }'>
	<div class="col3" style="text-align:center;margin-bottom:30px">
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
  </div>
<?php } ?>
</div>
<?php 
}else {
	echo "Maaf.. Belum ada barang yang tersedia..";
}
?> -->