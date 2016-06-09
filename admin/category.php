<section id="main" class="grid_9 push_3">
  <article id="dashboard">
    <h2>Daftar Kategori</h2><hr>
    <input type="button" class="button blue" value="Tambah Kategori" onclick="window.location.href='?module=kelas&amp;act=tambahkelas';">
    <br><br>
    <table id="table1" class="gtable sortable">
      <thead>
        <tr>
          <th>ID Kategori</th>
          <th>Nama Kategori</th>
          <th>Status</th>
          <th width="100px">Aksi</th>
        </tr>
      </thead>
      <tbody class="ui-sortable">
        <?php
          include "../config/koneksi.php";
          $query = mysqli_query($koneksi, "SELECT * FROM `category` ORDER BY `id_category` ASC");
          while($data = mysqli_fetch_array($query)){
        ?>
        <tr>
          <td><?php echo $data['id_category']; ?></td>
          <td><?php echo $data['name_category']; ?></td>
          <td><?php echo $data['status_category']; ?></td>
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
