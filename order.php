<?php 
include "config/koneksi.php";
$query=mysqli_query($koneksi, "SELECT * FROM `product` where id_product = '".$_GET['produk']."' LIMIT 1");
$row = mysqli_fetch_array($query);
?>
<form action="proses-beli.php" method="post" id="formcek">
<div class="left">
	<input type="hidden" value="<?php echo $_GET['produk']; ?>" name="id_produk">
	<input type="hidden" name="name_product" value="<?php echo $row['name_product']; ?>">
	<input type="hidden" name="price_product" value="<?php echo $row['price_product']; ?>">
	<table style="width:100%;">
		<tr>
			<td style="border:1px solid #eee;width:325px">
				<a class="example-image-link" href="img/<?php echo $row['picture_product']; ?>" data-lightbox="example-1">
				<img class="example-image" alt="image-1" src="img/<?php echo $row['picture_product']; ?>" id="front_leather" style="padding:15px;">
				</a>
			</td>
			<td>&nbsp;</td>
			<td style="vertical-align:top;text-align: left;width:440px;">
				<h4 style="margin-bottom:10px;font-weight:700;font-size:20px; text-transform:uppercase;text-align:left;">
					<?php echo $row['name_product']; ?>
				</h4>
				<h2><strong>Rp. <?php echo number_format($row['price_product']); ?></strong></h2><hr>
				<table>
					<tr>
						<td>
							Quantity
						</td>
						<td>
							Stok Produk
						</td>
					</tr>
					<tr>
						<td>
							<input type="number" max="999" min="1" value="1" name="qty" style="width:30px" id="qty">
						</td>
						<td>
							<input type="number" max="999" min="1" value="<?php echo $row['stock_product']; ?>" readonly name="stock" style="width:30px" id="stock">
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<?php if($row['stock_product'] > 0){ ?>
							<input type="button" onclick="ceksebelumorder()" class="btn-warning" value="BELI" style="margin-top:0px;height:25px;width: 112px;">
							<? }else{ ?>
							<input type="submit" disabled class="btn-warning" value="Stok Kosong" style="margin-top:0px;height:25px;background-color:#eee;color:black;width: 112px;">
							<?php } ?>
						</td>
					</tr>
				</table>
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
<script type="text/javascript">
	function ceksebelumorder(){
		var qty = $('#qty').val();
		var stock = $('#stock').val();

		if(qty <= stock){
			$("#formcek").submit();
		}else {
			alert('stock tidak mencukupi..!');
		}
	}
	
</script>