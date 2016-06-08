<div class="login">
<form action="signup.php" method="post" class="validate-form" id="signupform" name="signupform"> 
	<table id="signup" style="width:525px;">
	<tr>
		<td colspan="2">E-MAIL <br />
	    <input type="text" name="email" required pattern="[^@]+@[^@]+\.[a-zA-Z]{2,6}" title="Provide valid email address"/></td>
	</tr>
	<tr>
		<td colspan="2">KATA SANDI <br />
	    <input type="password" name="txtpass" required pattern="[a-zA-Z0-9]{6,}" title="Minimum 6 letters or numbers and no space"/></td>
	</tr>
	<tr>
		<td colspan="2">NAMA LENGKAP <br />
	    <input type="text" name="fullname" required/></td>
	</tr>
	<tr>
		<td colspan="2">NOMOR TELEPON <br />
	    <input type="text" name="phone" required/></td>
	</tr>
	<tr>
		<td colspan="2">ALAMAT <br />
	    <textarea name="address" required></textarea></td>
	</tr>

	<tr>
		<td colspan="2">KOTA <br />
	    <input type="text" name="city" required/></td>
	</tr>

	<tr>
		<td colspan="2">NEGARA <br />
	    <input type="text" name="country" required/></td>
	</tr>

	<tr>
		<td colspan="2">KODE POS <br />
	    <input type="text" name="poscode" required/></td>
	</tr>

	<tr>
		<td colspan="2"><input type="submit" value="DAFTAR"/></td>
	</tr>
	</table>
</form>
</div>