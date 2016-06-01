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
<meta charset="utf-8">
</head>
	<body>
		<div class="wrapper">
		  <header>
          
          <!-- login -->
    	<div class="border">      
          <!--<div class="title_box">Members</div>-->
        <?php
		 if (empty($_SESSION[login_user]) AND empty($_SESSION[email])){
		  echo "<form  name='loginuser' action='cek_login.php' method='post'>
		        <label>Username</label>
		        <input type='text' value='' name='usernamefront' size='27' class='input_field' required />
		        <label>Password</label>
		        <input type='password' value='' name='passwordfront' size='27' class='input_field' required />
		        <input type='submit' name='login' value='Login' alt='Login' id='submit_btn' />
		        <a href='#''>Register</a>
		        </form>";
		} else {
		  $namanya = ($_SESSION[login_user]);
		  echo "<h3 style='background-color:;'>Selamat datang : $namanya</h3>";
		}
		?>
        <?php
  		if (empty($_SESSION[login_user])) {
  		echo "<a href='logout.php'><input type='button' name='logout' value='Log Out'></a>";
  		}
  		?>
        </div>
    	<!--end login -->

    	<div class="shopcartimg">    
		<img src="images/keranjang.png" alt="" title=""><br/>
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
						    <input type="text" value="Cari" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'cari';}">
						    <button type="submit" value="" style="cursor:pointer;opacity:0.1;"><img src="images/cari.png"></button>
		    </form>
		</div>
		     <!--end cari-->
		      
			<ul>
			   	<li><a href="" class="current"><img src="images/home.png"> Home</a></li>
				<li><a href=""><img src="images/user_add.png"> Tentang Kami</a></li>
				<li><a href=""><img src="images/compare.png"> Cara Pembayaran</a></li>
		        <li><a href=""><img src="images/contact-new.png"> kontak</a></li>
			</ul>
		</nav>
         <!--end navbar -->
		</header>    
            <!-- KATEGORI -->
        <section class="courses">
          	<aside>
				<section class="popular-recipes">
					<a href=""><b>Kucing</b></a>
					<a href=""><img src="images/drop_arrow-hover.png">Makanan</a>
					<a href=""><img src="images/drop_arrow-hover.png">Suplemen</a>
					<a href=""><img src="images/drop_arrow-hover.png">Perawatan</a>
                    <a href=""><img src="images/drop_arrow-hover.png">Aksesoris</a>
                    <a href=""><b>Anjing</b></a>
					<a href=""><img src="images/drop_arrow-hover.png">Makanan</a>
					<a href=""><img src="images/drop_arrow-hover.png">Suplemen</a>
					<a href=""><img src="images/drop_arrow-hover.png">Perawatan</a>
                    <a href=""><img src="images/drop_arrow-hover.png">Aksesoris</a>
                    <a href=""><b>Hewan Lainnya</b></a>
					<a href=""><img src="images/drop_arrow-hover.png">Makanan</a>
					<a href=""><img src="images/drop_arrow-hover.png">Suplemen</a>
					<a href=""><img src="images/drop_arrow-hover.png">Perawatan</a>
                    <a href=""><img src="images/drop_arrow-hover.png">Aksesoris</a>
				</section>
			</aside>
			<!-- END KATEGORI -->
            
            <!-- Content Slider -->
			<!-- <div class="container">
				<input type="radio" name="slide" class="radio-nav" id="nav-1" checked/>
				<input type="radio" name="slide" class="radio-nav" id="nav-2"/>
				<input type="radio" name="slide" class="radio-nav" id="nav-3"/> <ul class="slide">
				<li class="slide-1">
				<img src="images/FOTO BANNER/banner_1_copy.jpg"/>
				<div class="caption"> Terpercaya! </div>
				</li>
				<li class="slide-2">
				<img src="images/FOTO BANNER/banner_2.JPG"/>
				<div class="caption"> Terbaik! </div>
				</li>
				<li class="slide-3">
				<img src="images/FOTO BANNER/bannerslide_03.jpg"/>
				<div class="caption"> Terlengkap! </div>
				</li>
				</ul><div class="nav-arrow nav-next">
				<label class="nav-1" for="nav-1">></label>
				<label class="nav-2" for="nav-2">></label>
				<label class="nav-3" for="nav-3">></label>
				</div>
				<div class="nav-arrow nav-prev">
				<label class="nav-1" for="nav-1"><</label>
				<label class="nav-2" for="nav-2"><</label>
				<label class="nav-3" for="nav-3"><</label>
				</div>
			</div> -->
           <div class="container">
		   <div class="slider">
		   <div class="callbacks_container">
			  <ul class="rslides" id="slider">
			  	<?php
			  	// $sliderSql = "SELECT * FROM slider ORDER BY id_slider DESC LIMIT 6";
			  	// $sliderQry = mysql_query($sliderSql,$koneksidb) or die("Gagal Koneksi ".mysql_error());
			  	// while ($row=mysql_fetch_array($sliderQry))
			  	// { 
			  	?>
				 <li>
				 	<!-- <img src="images/slider/<?php echo $row['gambar']; ?>" alt=""/>	    
				 	<h3><?php echo $row['judul']; ?></h3> -->
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
         <div class="clear">  
			<article>
					<figure>
						<img src="images/FOTO PRODUK/1.jpg" alt="#" />
						<figcaption></figaption>
					</figure>
					<figure>
						<img src="images/FOTO PRODUK/1.jpg" alt="#" />
						<figcaption></figaption>
					</figure>
					<figure>
						<img src="images/FOTO PRODUK/1.jpg" alt="#" />
						<figcaption></figaption>
					</figure>
					<figure>
						<img src="images/FOTO PRODUK/1.jpg" alt="#" />
						<figcaption></figaption>
					</figure>
					<figure>
						<img src="images/FOTO PRODUK/1.jpg" alt="#" />
						<figcaption></figaption>
					</figure>
					<figure>
						<img src="images/FOTO PRODUK/1.jpg" alt="#" />
						<figcaption></figaption>
					</figure>
			</article>    
   		</div>
			</section>
			
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
		</div><!-- .wrapper -->
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