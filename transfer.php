<?php 
include "config/koneksi.php";
$query = mysqli_query($koneksi, "SELECT * FROM invoice where id_invoice = '".$_GET['inv']."'");
$row = mysqli_fetch_array($query);
?>
<div class="login" style="margin:0 auto;">
<form action="bayar.php" method="post" class="validate-form" id="signupform" name="signupform" enctype="multipart/form-data"> 
	<table id="payment" style="text-align: left;border:1px solid #eee;padding:20px;width:330px;margin-top:-8px;margin: 0 auto;"> 
	<tr>
		<td colspan="2">Invoice <br />
	    <input type="text" name="invoice" value="<?php echo $_GET['inv']; ?>" readonly required/></td>
	</tr>
	<tr>
		<td colspan="2">Total Tagihan <br />
	    <input type="text" name="total_tagihan" value="<?php echo $row['total_tagihan']; ?>" readonly required/></td>
	</tr>
	<tr>
		<td colspan="2">Nama Bank <br />
	    <input type="text" name="nama_bank" value="" required/></td>
	</tr>
	<tr>
		<td colspan="2">No Rekening <br />
	    <input type="text" name="no_rekening" value="" required/></td>
	</tr>
	<tr>
		<td colspan="2">Atas Nama <br />
	    <input type="text" name="atas_nama" value="" required/></td>
	</tr>
	<tr>
		<td colspan="2">Rekening Tujuan <br />
	    <select name="rekening_tujuan" required 
	    style="border: 0px;
	    background-color: whitesmoke;
	    color: #232122;
	    padding: 7px 12px;
	    width: 324px;
	    margin: 7px 0px;">
	    	<option value=""> ** Pilihan</option>
	    	<option value="mandiri">Mandiri</option>
	    	<option value="bca">BCA</option>
	    </select>
	    </td>
	</tr>
	<tr>
		<td colspan="2">Jumlah Bayar <br />
	    <input type="text" name="jumlah_bayar" value="" required/></td>
	</tr>
	<tr>
		<td colspan="2">Bukti <br />
	    <input type="file" name="bukti" value=""/></td>
	</tr>
	<tr>
		<td colspan="2">Keterangan <br />
	    <textarea name="keterangan" required style="
	    border-radius: 2px;
	    border: 0px;
	    background-color: whitesmoke;
	    color: #232122;
	    padding: 7px 12px;
	    width: 300px;
	    "></textarea></td>
	</tr>
	<tr>
		<td colspan="2" style="text-align:center">
			<strong><button type="submit" style="padding:12px 12px;background-color:#03A9F4;width: 100%;border:0px;border-radius:3px;font-weight:600;color:white"><i class="fa fa-send"></i> KIRIM</button></strong>
		</td>
	</tr>
	</table>
</form>
</div>