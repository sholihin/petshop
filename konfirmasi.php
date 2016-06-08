<?php 
include "config/koneksi.php";
$query = mysqli_query($koneksi, "SELECT * FROM `invoice` where `id_invoice` ='".$_GET['inv']."'");
$row = mysqli_fetch_array($query);
?>
<div class="about">
<h2 style="margin-bottom:10px">Transaksi Selesai!</h2>
<p>
Terima kasih untuk berbelanja dengan kami!<br>
nomor pesanan Anda adalah <b><?php echo $row['id_invoice']; ?></b> <br>
Silahkan cek email Anda untuk informasi lebih lanjut tentang pesanan Anda.<br>
Harap menyimpan nomor pesanan Anda dalam kasus ada masalah.<br><br>

jumlah total Anda membayar adalah <b>IDR <?php echo number_format($row['total_tagihan']); ?></b><br>
Anda dapat melakukan pembayaran melalui transfer ke <br>
<b>BCA 123456789 (UKOBAG) </b><br>
<a href="http://www.klikbca.com/" target="_blank"><img src="img/bca.jpg" class="bca"> </a><br>

Kami akan menunggu pembayaran selama kurang lebih <b>2 hari</b>.<br>
Jika Anda tidak melakukan pembayaran di antara 2 hari, kami akan secara otomatis membatalkan pesanan Anda.<br><br>
Setelah melakukan pembayaran, silahkan beritahu kami dengan mengirimkan email konfirmasi ke <br><b>marketing@ukobag.com</b> .
<p></p>
</div>
</div>