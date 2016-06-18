<?php
require('fpdf/fpdf.php');
include "../config/koneksi.php";
date_default_timezone_set("Asia/Jakarta"); 
$sql = "
		SELECT
		  user.fullname,
		  invoice.id_invoice,
		  invoice.total_tagihan,
		  invoice.status,
		  invoice.date
		FROM `invoice`
		LEFT JOIN user 
		  ON invoice.user_id = user.id
		WHERE 
		invoice.date BETWEEN '".$_GET['from']." 00:00:00' AND '".$_GET['to']." 23:59:00' AND
		invoice.status = 'checkout'
		ORDER BY invoice.id_invoice ASC
       ";
$rs = mysqli_query($koneksi, $sql);

class PDF extends FPDF {
	function Header(){
	    $this->SetFont('Arial','B',14);
	    // Move to the right $this->Cell(80);
	    // Framed title
	    $this->Cell(0,7,"LAPORAN PENJUALAN ONLINE PETSHOPKU",0,1,"C");
		$this->Cell(0,7,"PERIODE : ".$_GET['from']." - ".$_GET['to']."",0,1,"C");
		$this->Cell(0,10,"-----------------------------------------------------------------------------",0,1,"C");
	    // Line break $this->Ln(10);
	}
	function Footer() {
	    $this->SetY(-20);
	    // Select Arial italic 8
	    $this->SetFont('Arial','I',8);
	    // Print centered page number
	    // $this->Cell(0,10,'Page '.$this->PageNo(),0,0,'C');
	    $this->Cell(0,5,"SAHABAT DANAU TOBA",0,1,"L");
		$this->Cell(0,5,"Jl. Mesjid Bendungan no. 10-11, Cawang III, Kelurahan Cawang, Jakarta timur 13630.",0,1,"L");
		$this->Cell(0,5,"Telepon (62-21) 8088 0255, 809 1787 Faksimili (62-21) 8088 4374, website : www.danautoba.org .",0,1,"L");
	}
}


$pdf = new PDF();
$pdf->AddPage();
$pdf->SetFont('Arial','',12);
$pdf->Cell(20,8,'',0);
$pdf->Cell(40,8,'Nama Pembeli',1);
$pdf->Cell(40,8,'Total Belanja',1);
$pdf->Cell(50,8,'Tanggal Pembayaran',1);
$pdf->Cell(40,8,'Status',1);

//new line
$pdf->Ln();

//Data
while($rw = mysqli_fetch_array($rs)){
	$pdf->SetFont('Arial','',12);
	$pdf->Cell(20,8,'',0);
	$pdf->Cell(40,8,''.$rw['fullname'].'',1);
	$pdf->Cell(40,8,''.$rw['total_tagihan'].'',1);
	$pdf->Cell(50,8,''.$rw['date'].'',1);
	$pdf->Cell(40,8,''.$rw['status'].'',1);
	$pdf->Ln();
}

$pdf->SetFontSize(14);
$pdf->Output();
?>
