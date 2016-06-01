<?php
include "config/koneksi.php";
function antiinjection($data){
  $filter_sql = mysql_real_escape_string(stripslashes(strip_tags(htmlspecialchars($data,ENT_QUOTES))));
  return $filter_sql;
}

$username = antiinjection($_POST['usernamefront']);
$pass     = antiinjection(md5($_POST['passwordfront']));

$logindepan  =mysql_query("SELECT * FROM pelanggan WHERE username='$username' AND password='$pass'");
$ketemu =mysql_num_rows($logindepan);
$r      =mysql_fetch_array($logindepan);

// Apabila username dan password ditemukan
if ($ketemu > 0){
  session_start();
  $_SESSION[login_user]  = $r[username];
  $_SESSION[email] = $r[email];
  
  header('location:index.php');
}
else{
  
  header('location:index.php'); 
}
?>
