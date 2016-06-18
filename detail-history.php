<style>
table, td, th {
    border: 1px solid #ddd;
    text-align: left;
}

table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    padding: 15px;
}
</style>
<?php
$sql = "
SELECT
    user.fullname,
    user.city,
    user.address,
    user.poscode,
    user.phone,
    user.country,
    product.name_product,
    product.price_product,
    cart.qty,
    cart.date,
    cart.id_header_transaction
FROM `cart`
INNER JOIN user 
    ON cart.id_user = user.id
LEFT OUTER JOIN product
    ON cart.id_produk = product.id_product
WHERE cart.id_header_transaction = '".$_GET['d']."'";
$total = 0;
?>
<div class="login" style="margin:0 auto;">
<article id="detail">
<h2>Detail Pesanan</h2><hr>
<table id="table1" class="gtable sortable">
  <thead>
    <tr>
      <th>Nama Barang</th>
      <th>Harga</th>
      <th>Qty</th>
      <th>Tanggal</th>
      <th>Total</th>
      </tr>
  </thead>
  <tbody class="ui-sortable">
    <?php
      include "config/koneksi.php";
      $query = mysqli_query($koneksi, $sql);
      while($data = mysqli_fetch_array($query)){
      $total += ($data['qty'] * $data['price_product']);
    ?>
    <tr>
      <td><?php echo $data['name_product']; ?></td>
      <td><?php echo $data['price_product']; ?></td>
      <td><?php echo $data['qty']; ?></td>
      <td><?php echo $data['date']; ?></td>
      <td><?php echo ($data['qty'] * $data['price_product']); ?></td>
    </tr>
    <?php } ?>
    <tr>
      <td colspan="3" style="text-align:right"></td>
      <td style="text-align:left"><strong>Total Tagihan</strong></td>
      <td><strong><?php echo $total; ?></strong></td>
    </tr>
  </tbody>
</table>
</article>