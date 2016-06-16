<table style="border:1px solid #eee;vertical-align:top;padding:15px;width:700px;margin: 0 auto;">
<tr class="tcurrency">
    <td align="center" colspan="4">
       <h2 style="margin-bottom: 0px;">KERANJANG BELANJA</h2>
    </td>
</tr>
<tr class="tcurrency">
    <td align="right" style="color:#C00" colspan="4">
        <a href="clearcart.php" style="color:#C00">
            <img src="img/delete.png" style="width:18px;vertical-align:text-bottom;"/> CLEAR
        </a>
        <hr>
    </td>
</tr>
<tr>
	<td align="left" width="20%" style="text-align:left">BARANG</td>
    <td align="left" width="15%" style="text-align:center">HARGA</td>
    <td align="left" width="12%" style="text-align:center">JUMLAH</td>
    <td align="left" width="20%" style="text-align:right">TOTAL HARGA</td>
</tr>
<?php 
session_start();
if(isset($_SESSION['cart'])){
$_SESSION['total_tagihan'] = 0;
for($x=0; $x < count($_SESSION['cart']); $x++) {
$_SESSION['total_tagihan'] += $_SESSION['cart'][$x]['total'];
?>
<tr class="tcontent">
    <td width="20%" style="text-align:left"><?php echo $_SESSION['cart'][$x]['name_product']; ?></td>
    <td width="15%" style="text-align:center"><?php echo $_SESSION['cart'][$x]['price_product']; ?></td>
    <td width="12%" style="text-align:center"><?php echo $_SESSION['cart'][$x]['qty']; ?></td>
    <td width="20%" style="text-align:right">RP <?php echo number_format($_SESSION['cart'][$x]['total']); ?></td>
</tr>
<?php } ?>
<tr>
    <td width="20%" colspan="4" style="text-align:right">
        <hr>
        Total Bayar : 
        <strong>RP 
        <?php echo number_format($_SESSION['total_tagihan']); ?>
        </strong>
        <hr>
    </td>
</tr>
<?php
}
else{
    echo "<tr><td colspan='5'>No items in your shopping bag <br><br></td></td>";
}
 ?>
<?php 
if(count($_SESSION['cart']) > 0 ){
?>
<tr>
	<td style="border:none;text-align:right;" colspan="4">
        <a href="checkout.php"><input type="button" class="btn-warning" value="PROSES" style="width: 112px;"/></a> 
    </td>
</tr>
<?php } ?>
</table>
