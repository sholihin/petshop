<div class="login">
<h4>Review Produk</h4>
<hr>
<form action="save-review.php" method="post" class="validate-form" id="signupform" name="signupform" style="text-align: left;border:1px solid #eee;padding:20px;width:650px;margin-top:-8px;margin: 0 auto;"> 
	<table id="signup">
	<tr>
		<td colspan="2">KOMENTAR PRODUK<br /><br />
		<input type="hidden" name="product_id" value="<?php echo $_GET['pid']; ?>">
	    <textarea name="komentar" required style="border-radius: 2px;
	    border: 0px;
	    background-color: whitesmoke;
	    color: #232122;
	    padding: 7px 12px;
	    width: 643px;
	    height: 100px;
	    "></textarea></td>
	</tr>
	<tr>
		<td colspan="2" style="text-align:center">
			<strong><button type="submit" style="padding:12px 12px;background-color:#03a9f4;width: 100%;border:0px;border-radius:3px;font-weight:600;color:white">KIRIM <i class="fa fa-send"></i></button></strong>
		</td>
	</tr>
	</table>
</form>
</div>