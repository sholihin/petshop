<?php 
include "config/koneksi.php";
session_start();
$query = mysqli_query($koneksi, "SELECT * FROM `user` where id='".$_SESSION['login_member']['id']."'");
$row = mysqli_fetch_array($query);
?>
<div class="login">
<form action="update-data.php" method="post" class="validate-form" id="signupform" name="signupform" style="text-align: left;border:1px solid #eee;padding:20px;width:330px;margin-top:-8px;margin: 0 auto;"> 
	<table id="signup">
	<tr>
		<td colspan="2">E-MAIL <br />
	    <input type="text" name="email" value="<?php echo $row['email']; ?>" required pattern="[^@]+@[^@]+\.[a-zA-Z]{2,6}" title="Provide valid email address"/></td>
	</tr>
	<tr>
		<td colspan="2">KATA SANDI <br />
	    <input type="password" name="password" placeholder="input jika ingin ganti sandi" pattern="[a-zA-Z0-9]{6,}" title="Minimum 6 letters or numbers and no space"/></td>
	</tr>
	<tr>
		<td colspan="2">NAMA LENGKAP <br />
	    <input type="text" name="fullname" value="<?php echo $row['fullname']; ?>" required/></td>
	</tr>
	<tr>
		<td colspan="2">NOMOR TELEPON <br />
	    <input type="text" name="phone" value="<?php echo $row['phone']; ?>" required/></td>
	</tr>
	<tr>
		<td colspan="2">ALAMAT <br />
	    <textarea name="address" required style="border-radius: 2px;
	    border: 0px;
	    background-color: whitesmoke;
	    color: #232122;
	    padding: 7px 12px;
	    width: 300px;
	    "><?php echo $row['address']; ?></textarea></td>
	</tr>

	<tr>
		<td colspan="2">KOTA <br />
	    <input type="text" name="city" value="<?php echo $row['city']; ?>" required/></td>
	</tr>

	<tr>
		<td colspan="2">NEGARA <br />
	    <input type="text" name="country" value="<?php echo $row['country']; ?>" required/></td>
	</tr>

	<tr>
		<td colspan="2">KODE POS <br />
	    <input type="text" name="poscode" value="<?php echo $row['poscode']; ?>" required/></td>
	</tr>

	<tr>
		<td colspan="2" style="text-align:center">
			<strong><button type="submit" style="padding:12px 12px;background-color:#03a9f4;width: 100%;border:0px;border-radius:3px;font-weight:600;color:white">PERBARUI <i class="fa fa-floppy-o"></i></button></strong>
		</td>
	</tr>
	</table>
</form>
</div>