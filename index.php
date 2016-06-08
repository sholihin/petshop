<?php
include "config/koneksi.php";
error_reporting(0);
session_start();

 $namanya = ($_SESSION[namauserdepan]);
?>
<!DOCTYPE html>
<html>
<head>
<title>PetshopKu : Belanja Kebutuhan Hewan Peliharaan Anda!</title>
<link rel="stylesheet" href="assets/style.css" type="text/css" media="all"/>
<script type="text/javascript" src="assets/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="assets/js/boxOver.js"></script>
<script type="text/javascript" src="assets/js/responsiveslides.min.js"></script>
<style type="text/css">
	.col3 {
	    width: 250px;
	    height:290px;
	    padding: 0px 50px;
	    float: left;
	}
</style>
<meta charset="utf-8">
</head>
	<body>
			<table style="width:900px;margin:0 auto;border:1px solid #eee;">
				<tr>
					<td colspan="2">
						 <header>
					          <!-- login -->
					    	<div class="border">      
					          <!--<div class="title_box">Members</div>-->
					        <?php
							 if (empty($_SESSION['login_member'])){
							  echo "<form  name='loginuser' action='check_login.php' method='post'>
							        <label>Username</label>
							        <input type='text' value='' name='email' size='27' class='input_field' required />
							        <label>Password</label>
							        <input type='password' value='' name='password' size='27' class='input_field' required />
							        <input type='submit' name='buttonlogin' class='btn-primary' value='Login' alt='Login' id='submit_btn' />
							        <button class='btn-warning' href='#'>Register</button>
							        </form>";
							} else {
							  $namanya = ($_SESSION['login_member']['fullname']);
							  echo "<h3 style='background-color:;'>Selamat datang : $namanya</h3><br>
							  		<a href='logout.php'><strong>LogOut</strong></a>";
							}
							?>
					        <?php
					  		if (!empty($_SESSION[login_user])) {
					  		echo "<a href='logout.php'><input type='button' name='logout' value='Log Out'></a>";
					  		}
					  		?>
					        </div>
					    	<!--end login -->

					    	<div class="shopcartimg">    
							<a href="index.php?page=cart">
							<img src="images/keranjang.png" alt="" title=""> <strong class="center-item">
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
							<?php require_once "item.php"; ?>
							</div> 

							<!-- Logo -->     
									<img src="images/logologo2.jpg" >
					        <!-- end logo -->
					        
					        <!--navbar-->        
							<nav>
							     <!--cari-->
							<div class="cari">
							    <form>
								    <input type="text" value="Cari" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Cari';}">
							    </form>
							</div>
							     <!--end cari-->
							      
								<ul>
								   	<li><a href="index.php" class="current">
								   		<img src="images/home.png"> Home</a></li>
									<li><a href="index.php?page=tentang">
										<img src="images/user_add.png"> Tentang Kami</a></li>
									<li><a href="index.php?page=bantuan">
										<img src="images/compare.png"> Cara Pembayaran</a></li>
							        <li><a href="index.php?page=kontak">
							        	<img src="images/contact-new.png"> kontak</a></li>
								</ul>
							</nav>
					         <!--end navbar -->
							</header>   
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<section class="courses">
					       	<div class="container">
							   <div class="slider">
								   <div class="callbacks_container">
									  <ul class="rslides" id="slider">
										 <li>
											<img src="images/FOTO BANNER/banner_1_copy.jpg" alt=""> 
											<h3></h3>
										 </li>
										 <li>
										 	<img src="images/FOTO BANNER/banner_2.jpg" alt=""> 
											<h3></h3>
										 </li>
						                 <li>
						                 	<img src="images/FOTO BANNER/bannerslide_03.jpg" alt="">
						                    <h3></h3>
						                 </li>
						                 <li>
						                 	<img src="images/FOTO BANNER/bannerslide_02.jpg" alt="">
						                    <h3></h3>
						                 </li>
										 <?php
										 //}
										 ?>
									  </ul>
								  </div>
								</div>
							</div>
							<!-- End Content Slider -->
						</section>
					</td>
				</tr>
				<tr>
					<td style="vertical-align:top;border-right:1px solid #D0D0D0;">
						<aside>
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
										<a href="index.php?page=produk&category=<?php echo $subrow['id_sub']; ?>"><img src="images/drop_arrow-hover.png"><?php echo $subrow['name_sub']; ?></a>
									<?php } ?>
								<?php } ?>
							</section>
						</aside>
					</td>
					<td style="vertical-align: top;padding:15px;margin:0 auto;text-align:center;">
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
						        default:
						        	include "semua-produk.php";
							}
						?>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<footer>
						     <div class="section group">
					         <div class="wrap">	
						     <div class="section group">
									<div class="col_1_of_4 span_1_of_4">
											<h4>Layanan</h4>
											<li><a href="#">Hubungi Kami</a></li>
											<li><a href="#">Metode Pembayaran</a></li>
										</div>
									<div class="col_1_of_4 span_1_of_4">
										<h4>Tentang Petshop</h4>
											<li><a href="#">Login</a></li>
											<li><a href="#">Cara Belanja</a></li>
									</div>
									<div class="col_1_of_4 span_1_of_4">
										<h4>JASA PENGIRIMAN</h4>		
											<span></span><img src="images/jne.png" width="70" height="50"><img src="images/sicepat.png" width="70" height="50"></a>
					                        <span></span><img src="images/tiki.png" width="70" height="30"> <img src="images/pos1.png" width="70" height="30"></a>
									</div>
									<div class="col_1_of_4 span_1_of_4">
										<h4>OPSI PEMBAYARAN</h4>
												<span></span><img src="images/mandiri.png" width="70" height="30"> <img src="images/BCA.png" width="70" height="30">
											<div class="social-icons">
												<h4>Cari Kami</h4>
												      <a href="#" target="_blank"><img src="images/facebook.png" alt="" /></a>
												      <a href="#" target="_blank"><img src="images/twitter.png" alt="" /></a>
												      <div class="clear"></div>
					   	 					</div>
									</div>
								</div>			
					        </div>
						</footer>
					</td>
				</tr>
			</table>
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