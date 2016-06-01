<!DOCTYPE html>
<html>
	<head>
		<title>PetshopKu : Belanja Kebutuhan Hewan Peliharaan Anda!</title>
		<style type="text/css">
			header, section, footer, aside, nav, article, figure, figcaption {
				display: block;}
			body {
				color: #666666;
				background-color: #f9f8f6;
				background-image: url("../../Skrip Cara membuat Website Sederhana/images/dark-wood.jpg");
				background-position: center;
				font-family: Georgia, Times, serif;
				line-height: 1.4em;
				margin: 0px;}
			.wrapper {
				width: 940px;
				margin: 20px auto 20px auto;
				border: 2px solid #000000;
				background-color: #ffffff;}
			header {
				height: 160px;
				background-image: url(../../Skrip%20Cara%20membuat%20Website%20Sederhana/images/header.png);}
			h1 {
				text-indent: -9999px;
				width: 940px;
				height: 130px;
				margin: 0px;}
			nav, footer {
				clear: both;
				color: #ffffff;
				background-color: #aeaca8;
				height: 30px;}
			nav ul {
				margin: 0px;
				padding: 5px 0px 5px 30px;}
			nav li {
				display: inline;
				margin-right: 40px;}
			nav li a {
				color: #ffffff;}
			nav li a:hover, nav li a.current {
				color: #000000;}
			section.courses {
				float: left;
				width: 659px;
				border-right: 1px solid #eeeeee;}
			article {
				clear: both;
				overflow: auto;
				width: 100%;}
			hgroup {
				margin-top: 40px;}
			figure {
				float: left;
				width: 290px;
				height: 220px;
				padding: 5px;
				margin: 20px;
				border: 1px solid #eeeeee;}
			figcaption {
				font-size: 90%;
				text-align: left;}
			aside {
				width: 230px;
				float: left;
				padding: 0px 0px 0px 20px;}
			aside section a {
				display: block;
				padding: 10px;
				border-bottom: 1px solid #eeeeee;}
			aside section a:hover {
				color: #985d6a;
				background-color: #efefef;}
			a {
				color: #de6581;
				text-decoration: none;}
			h1, h2, h3 {
				font-weight: normal;}
			h2 {
				margin: 10px 0px 5px 0px;
				padding: 0px;}
			h3 {
				margin: 0px 0px 10px 0px;
				color: #de6581;}
			aside h2 {
				padding: 30px 0px 10px 0px;
				color: #de6581;}
			footer {
				font-size: 80%;
				padding: 7px 0px 0px 20px;}
		</style>
		<!--[if lt IE 9]>
		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
	</head>
	<body>
		<div class="wrapper">
			<header>
				<img src="logo2.jpg">
				<nav>
					<ul>
						<li><a href="" class="current"><img src="home.png">Home</a></li>
						<li><a href="">daftar masakan</a></li>
						<li><a href="">katering</a></li>
						<li><a href="">tentang</a></li>
						<li><a href="">kontak</a></li>
					</ul>
				</nav>
			</header>
			<section class="courses">
				<article>
					<figure>
						<img src="../../Skrip Cara membuat Website Sederhana/images/soto.jpg" alt="soto" />
						<figcaption>Soto Indonesia</figcaption>
					</figure>
					<hgroup>
						<h2>Soto Ayam</h2>
						<h3>Makanan Berkuah</h3>
					</hgroup>
					<p>Soto ayam adalah makanan khas Indonesia yang berupa sejenis sup ayam dengan kuah yang berwarna kekuningan.</p>
				</article>    
				<article>
					<figure>
						<img src="../../Skrip Cara membuat Website Sederhana/images/pecel.jpg" alt="pecel" />
						<figcaption>Pecel Indonesia</figcaption>
					</figure>
					<hgroup>
						<h2>Masakan Pecel</h2>
						<h3>Makanan dengan Bumbu Kacang</h3>
					</hgroup>
					<p>Pecel adalah makanan yang menggunakan bumbu sambal kacang sebagai bahan utamanya yang dicampur dengan aneka jenis sayuran.</p>
				</article>    
			</section>
			<aside>
				<section class="popular-recipes">
					<h2>Masakan Populer</h2>
					<a href="">Sayur Sop</a>
					<a href="">Sayur Asem</a>
					<a href="">Sayur Lodeh</a>
					<a href="">Sayur Bayam</a>
				</section>
				<section class="contact-details">
					<h2>Kontak</h2>
					<p>Warung Tegal<br />
						di seluruh indonesia
				</section>
			</aside>
			<footer>
				&copy; 2015 Warung Tegal
			</footer>
		</div><!-- .wrapper -->
	</body>
</html>