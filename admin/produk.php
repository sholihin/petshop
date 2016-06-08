<section id="main" class="grid_9 push_3">
  <article id="dashboard">
    <h2>Daftar Produk</h2><hr>
    <input type="button" class="button blue" value="Tambah Produk" onclick="window.location.href='?module=kelas&amp;act=tambahkelas';">
    <br><br>
    <table id="table1" class="gtable sortable">
      <thead>
        <tr>
          <th>Code</th>
          <th>Name</th>
          <th>Category</th>
          <th>Description</th>
          <th>Price</th>
          <th>Status</th>
          <th>Stock</th>
          <th>Picture	</th>
          <th width="100px">Aksi</th>
        </tr>
      </thead>
      <tbody class="ui-sortable">
        <?php
          include "../config/koneksi.php";
          $query = mysqli_query($koneksi, "SELECT * FROM `product` ORDER BY `product`.`name_product` ASC");
          while($data = mysqli_fetch_array($query)){
        ?>
        <tr>
          <td><?php echo $data['code_product']; ?></td>
          <td><?php echo $data['name_product']; ?></td>
          <td><?php echo $data['category_product']; ?></td>
          <td>
            <?php
              if (strlen($data['description_product']) > 50)
              echo substr($data['description_product'], 0, 50) . '...';
            ?>
          </td>
          <td><?php echo $data['price_product']; ?></td>
          <td><?php echo $data['status_product']; ?></td>
          <td><?php echo $data['stock_product']; ?></td>
          <td><?php echo "<img src='../img/".$data['picture_product']."' style='width:80px'>"; ?></td>
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
