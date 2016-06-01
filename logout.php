<?php
include_once "config/koneksi.php";
  session_start();
  mysql_query("DELETE");
  session_destroy();
  echo "<script>window.alert('Anda telah berhasil [LOGOUT]');
        window.location=('index.php')</script>";
?>
