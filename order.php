<?php 
include "config/koneksi.php";
$query=mysqli_query($koneksi, "SELECT * FROM `product` where id_product = '".$_GET['produk']."' LIMIT 1");
$row = mysqli_fetch_array($query);
?>
<form action="proses-beli.php" method="post">
<div class="left" style="text-align:center">
	<input type="hidden" value="<?php echo $_GET['produk']; ?>" name="id_produk">
	<input type="hidden" name="name_product" value="<?php echo $row['name_product']; ?>">
	<input type="hidden" name="price_product" value="<?php echo $row['price_product']; ?>">
	<table style="border:1px solid #eee;width:100%;">
		<tr>
			<td colspan="3">
				<h4 style="margin-bottom:10px;font-weight:100; text-transform:uppercase;text-align:center;">
					<?php echo $row['name_product']; ?>
				</h4>
			</td>
		</tr>
		<tr>
			<td colspan="3">
				<img src="img/<?php echo $row['picture_product']; ?>" id="front_leather">
			</td>
		</tr>
	    <tr>
	        <td colspan="3" style="text-align:center;">JUMLAH PESAN</td>
	    </tr>
	    <tr>
	        <td colspan="3" style="text-align:center;">
	        	<input type="number" max="999" min="1" value="1" name="qty">
	        </td>
	    </tr>
	    <tr>
	        <td colspan="3" style="text-align:center;">
	        	<input type="submit" class="btn-warning" value="BELI" style="margin-top:0px;height:25px;">
        	</td>
	    </tr>
	    <tr>
	    	<td colspan="3" style="width:700px;padding-bottom:15px">
	    		<p style="width:500px;margin: 0 auto;">
	    			<?php echo $row['description_product']; ?>
	    		</p>
	        </td>
	    </tr>
	</table>
</div>

<p></p>
</div>