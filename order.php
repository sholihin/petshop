<?php 
include "config/koneksi.php";
$query=mysqli_query($koneksi, "SELECT * FROM `product` where id_product = '".$_GET['produk']."' LIMIT 1");
$row = mysqli_fetch_array($query);
?>
<form action="proses-beli.php" method="post">
<div class="left">
	<input type="hidden" value="<?php echo $_GET['produk']; ?>" name="id_produk">
	<input type="hidden" name="name_product" value="<?php echo $row['name_product']; ?>">
	<input type="hidden" name="price_product" value="<?php echo $row['price_product']; ?>">
	<table style="width:100%;">
		<tr>
			<td style="border:1px solid #eee;width:325px">
				<img src="img/<?php echo $row['picture_product']; ?>" id="front_leather" style="padding:15px;">
			</td>
			<td>&nbsp;</td>
			<td style="vertical-align:top;text-align: left;width:440px;">
				<h4 style="margin-bottom:10px;font-weight:700;font-size:20px; text-transform:uppercase;text-align:left;">
					<?php echo $row['name_product']; ?>
				</h4>
				<h2><strong>Rp. <?php echo number_format($row['price_product']); ?></strong></h2><hr>
				Quantity<br> <input type="number" max="999" min="1" value="1" name="qty">
				<input type="submit" class="btn-warning" value="BELI" style="margin-top:0px;height:25px;">
				<hr style="margin-top:30px">
				<p style="margin-top: 15px;text-align:justify">
	    			<?php echo $row['description_product']; ?>
	    		</p>
			</td>
		</tr>
	</table>
</div>

<p></p>
</div>