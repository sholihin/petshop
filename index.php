<?php
include "config/koneksi.php";
session_start();
?>
<html style="max-height:100%">
<head>
<title>PetshopKu : Belanja Kebutuhan Hewan Peliharaan Anda!</title>
<link rel="stylesheet" href="assets/style.css" type="text/css" media="all"/>
<link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css" type="text/css" media="all"/>
<link rel="stylesheet" href="assets/jquery-flickity/flickity.css" type="text/css" media="all"/>
<script type="text/javascript" src="assets/js/jquery-3.0.0.min.js"></script>
<script type="text/javascript" src="assets/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="assets/js/responsiveslides.min.js"></script>
<script type="text/javascript" src="assets/jquery-flickity/flickity.pkgd.js"></script>
<style>
.transaksi td, th {
    border: 1px solid #ddd;
    text-align: left;
}

.transaksi {
    border-collapse: collapse;
    width: 100%;
}

.transaksi th, .transaksi td {
    padding: 15px;
}
.site-footer, .page-wrap:after {
  height: 60px; 
  width: 1000px;
  margin:0 auto;
}
</style>
<meta charset="utf-8">
</head>
	<body>
			<table style="width:1000px;margin:0 auto;" class="page-wrap">
				<tr>
					<td colspan="2">
						 <header>
					    	<div class="shopcartimg">    
					    	<?php if(isset($_SESSION['login_member'])) { ?>
					    	Selamat datang <strong><i class="fa fa-user"></i> <?php echo $_SESSION['login_member']['fullname']; ?></strong> | <a href="logout.php"><strong><i class="fa fa-sign-out"></i> Logout</strong></a><br>
					    	<?php } ?>
							<a href="index.php?page=cart" style="margin-right:15px;color:#03A9F4">
							<strong class="center-item">
							<i class="fa fa-shopping-cart fa-3x"></i><br>
							<?php 
								$j = 0;
								for($i=0; $i < count($_SESSION['cart']); $i++){
									$j += $_SESSION['cart'][$i]['qty'];
								}
								if($j > 0){
									echo'('.$j.') Item';
								}
								else {
									echo '(0) Item';
								}

							?>
							</strong>
							</a>
							<br/>
							</div> 

							<!-- Logo -->     
									<img src="images/logologo2.jpg" >
					        <!-- end logo -->
					        
					        <!--navbar-->        
							<nav style="border-radius: 4px;background-color: #03a9f4;height:40px">
							     <!--cari-->
							<div class="cari">
							    <form>
								    <input type="text" value="Cari" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Cari';}" style="margin: 4px 4px;">
							    </form>
							</div>
							     <!--end cari-->
							      
								<ul>
								   	<li><a href="index.php">
								   		<strong><i class="fa fa-home"></i> Home</strong></a></li>
									<li><a href="index.php?page=tentang">
										<strong><i class="fa fa-user"></i> Tentang Kami</strong></a></li>
									<li><a href="index.php?page=bantuan">
										<strong><i class="fa fa-shopping-bag"></i> Cara Pembayaran</strong></a></li>
							        <li><a href="index.php?page=kontak">
							        	<strong><i class="fa fa-phone"></i> Kontak</strong></a></li>
								</ul>
							</nav>
					         <!--end navbar -->
							</header>   
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<section class="courses">
					       	<div class="container" style="border-radius: 4px;">
							   <div class="slider">
								   <div class="callbacks_container">
									  <ul class="rslides" id="slider">
										 <li style="border-radius: 4px;">
											<img src="images/banner/banner_1_copy.jpg" alt=""> 
											<h3></h3>
										 </li>
										 <li style="border-radius: 4px;">
										 	<img src="images/banner/banner_2.jpg" alt=""> 
											<h3></h3>
										 </li>
						                 <li style="border-radius: 4px;">
						                 	<img src="images/banner/bannerslide_03.jpg" alt="">
						                    <h3></h3>
						                 </li>
						                 <li style="border-radius: 4px;">
						                 	<img src="images/banner/bannerslide_02.jpg" alt="">
						                    <h3></h3>
						                 </li>
									  </ul>
								  </div>
								</div>
							</div>
							<!-- End Content Slider -->
						</section>
					</td>
				</tr>
				<tr>
					<td style="vertical-align:top;">
						<?php
						 if (empty($_SESSION['login_member'])){ ?>
						  	<div class='border' style="margin-top:6px;height:182px">
						  		<form  name='loginuser' action='check_login.php' method='post'>
							        <label>Username</label>
							        <input type='text' value='' name='email' class='input_field' required />
							        <label>Password</label>
							        <input type='password' value='' name='password' class='input_field' required />
							        <input type='submit' style="width:200px" name='buttonlogin' class='btn-primary' value='Login' alt='Login' id='submit_btn' />
							        <a href="index.php?page=daftar">
							        	<button class='btn-warning' type="button" style="width:200px;margin-top:-6px;">Register</button>
							        </a>
						        </form>
					        </div>
						<?php }	else { ?>
						<aside style="height:105px;margin-bottom:10px;margin-top:6px;border-radius: 4px;">
							<section class="popular-recipes">
								<a href="#"><strong><i class="fa fa-user"></i> Akun Saya</strong></a>
								<a href="index.php?page=akun-saya">&nbsp; <i class="fa fa-info-circle"></i> Rubah Profil</a>
								<a href="index.php?page=history">&nbsp; <i class="fa fa-history"></i> Riwayat Transaksi</a>
								<a href="logout.php">&nbsp; <i class="fa fa-sign-out"></i>Keluar</a>
							</section>
						</aside>
						<?php } ?>
						<aside style="border-radius: 4px;">
							<section class="popular-recipes">
								<?php 
									$query = mysqli_query($koneksi, "SELECT * FROM `category` where status_category = 'public'");
									while($row = mysqli_fetch_array($query)){
								?>
								<a href=""><b><?php echo $row['name_category']; ?></b></a>
									<?php 
										$subquery = mysqli_query($koneksi, "SELECT * FROM `sub-category` where 
																id_category='".$row['id_category']."'");
										while($subrow = mysqli_fetch_array($subquery)){ 
									?>
										<a href="index.php?page=produk&category=<?php echo $subrow['id_sub']; ?>"><i class="fa fa-arrow-circle-right"></i> <?php echo $subrow['name_sub']; ?></a>
									<?php } ?>
								<?php } ?>
							</section>
						</aside>
					</td>
					<td style="vertical-align: top;padding:15px;margin:0 auto;text-align:center;width:800px">
						<?php
							switch ($_GET['page']) {
							    case "produk":
							        include "konten-produk.php";
							        break;
							    case "tentang":
							        include "about.php";
							        break;
							    case "bantuan":
							        include "help.php";
							        break;
							    case "masuk":
							        include "masuk.php";
							        break;
							    case "akun-saya":
							        include "akun-saya.php";
							        break;
							    case "daftar":
							        include "daftar.php";
							        break;
							    case "keranjang":
							        include "keranjang.php";
							        break;
							    case "order":
							        include "order.php";
							        break;
							    case "cart":
							        include "addcart.php";
							        break;
							    case "konfirmasi":
							        include "konfirmasi.php";
							        break;
							    case "kontak":
							        include "contact.php";
							        break;
							    case "transfer":
							        include "transfer.php";
							        break;
							    case "history":
							        include "history.php";
							        break;
							    case "detail-transaksi":
							        include "detail-history.php";
							        break;
							    case "review":
							        include "review.php";
							        break;
						        default:
						        	include "semua-produk.php";
							}
						?>
					</td>
				</tr>
			</table>
			<footer style="border-radius: 4px;background-color:#03a9f4;color:white;" class="site-footer">
				<div style="margin:0 auto;width:850px;">
					<div class="col_1_of_4 span_1_of_4">
						<h4>Layanan</h4>
						<li><a href="#" style="color:white">Hubungi Kami</a></li>
						<li><a href="#" style="color:white">Metode Pembayaran</a></li>
	 					</div>
					<div class="col_1_of_4 span_1_of_4">
						<h4>Tentang Petshop</h4>
							<li><a href="#" style="color:white">Login</a></li>
							<li><a href="#" style="color:white">Cara Belanja</a></li>
						<h4>Cari Kami</h4>
					      <a href="#" target="_blank"><i class="fa fa-twitter fa-2" style="color:white;font-size:20px"></i></a>&nbsp;&nbsp;&nbsp;
					      <a href="#" target="_blank"><i class="fa fa-facebook fa-2" style="color:white;font-size:20px"></i></a>
					</div>
					<div class="col_1_of_4 span_1_of_4" style="text-align:center">
						<h4>JASA PENGIRIMAN</h4>		
							<span></span><img src="images/jne.png" width="70" height="50"><img src="images/sicepat.png" width="70" height="50"></a>
	                        <span></span><img src="images/tiki.png" width="70" height="30"> <img src="images/pos1.png" width="70" height="30"></a>
					</div>
					<div class="col_1_of_4 span_1_of_4" style="text-align:center;">
						<h4>OPSI PEMBAYARAN</h4>
							<span></span><img src="images/mandiri.png" width="70" height="30"> <br><img src="images/BCA.png" width="70" height="30">
					</div>
				</div>
			</footer>
	</body>
</html>
<script>
    $(function () {
      $("#slider").responsiveSlides({
      	auto: true,
      	nav: true,
      	speed: 500,
        namespace: "callbacks",
        pager: true,
      });
    });
  </script>