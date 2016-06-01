<?php
include_once "koneksi.php";
date_default_timezone_set('Asia/Jakarta'); // PHP 6 mengharuskan penyebutan timezone.
$seminggu = array("Minggu","Senin","Selasa","Rabu","Kamis","Jumat","Sabtu");
$hari = date("w");
$hari_ini = $seminggu[$hari];

$tgl_sekarang = date("Ymd");
$tgl_skrg     = date("d");
$bln_sekarang = date("m");
$thn_sekarang = date("Y");
$jam_sekarang = date("H:i:s");

$nama_bln=array(1=> "Januari", "Februari", "Maret", "April", "Mei", 
                    "Juni", "Juli", "Agustus", "September", 
                    "Oktober", "November", "Desember");


function enumDropdown($table_name, $column_name, $echo = false)
{
   $selectDropdown = "<select name=\"$column_name\">";
   $result = mysql_query("SELECT COLUMN_TYPE FROM INFORMATION_SCHEMA.COLUMNS
       WHERE TABLE_NAME = '$table_name' AND COLUMN_NAME = '$column_name'")
   or die (mysql_error());

    $row = mysql_fetch_array($result);
    $enumList = explode(",", str_replace("'", "", substr($row['COLUMN_TYPE'], 5, (strlen($row['COLUMN_TYPE'])-6))));

    foreach($enumList as $value)
         $selectDropdown .= "<option value=\"$value\">$value</option>";

    $selectDropdown .= "</select>";

    if ($echo)
        echo $selectDropdown;

    return $selectDropdown;
}
?>
