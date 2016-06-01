<?php
date_default_timezone_set("Asia/Jakarta");
$server = "localhost";
$username = "root";
$password = "admin";
$database = "db_petshop";

// Koneksi dan memilih database di server
mysql_connect($server,$username,$password) or die("Koneksi gagal");
mysql_select_db($database) or die("Database tidak bisa dibuka");
?>

