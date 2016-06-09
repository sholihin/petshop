<section id="main" class="grid_9 push_3">
  <article id="dashboard">
    <h2>Daftar Pemesanan</h2><hr>
    <table id="table1" class="gtable sortable">
      <thead>
        <tr>
          <th>Invoice</th>
          <th>Total Tagihan</th>
          <th>ID Transaksi</th>
          <th>ID Member</th>
          <th>Status Transaksi</th>
          <th width="100px">Aksi</th>
        </tr>
      </thead>
      <tbody class="ui-sortable">
        <?php
          include "../config/koneksi.php";
          $query = mysqli_query($koneksi, "SELECT * FROM `invoice` ORDER BY `id_invoice` ASC");
          while($data = mysqli_fetch_array($query)){
        ?>
        <tr>
          <td><?php echo $data['id_invoice']; ?></td>
          <td><?php echo $data['total_tagihan']; ?></td>
          <td><?php echo $data['id_header_transaction']; ?></td>
          <td><?php echo $data['user_id']; ?></td>
          <td><?php echo $data['status']; ?></td>
          <td>
             <a href="?module=kelas&amp;act=editkelas&amp;id=6" title="Edit"><img src="images/icons/edit.png" alt="Edit"></a> |
             <a href="javascript:confirmdelete('modul/mod_kelas/aksi_kelas.php?module=kelas&amp;act=hapuskelas&amp;id=6')" title="Hapus"><img src="images/icons/cross.png" alt="Delete"></a>
          </td>
        </tr>
        <?php } ?>
      </tbody>
    </table>
  </article>
</section>
