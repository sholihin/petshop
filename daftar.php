<div class="login" style="margin:0 auto;">
<form action="signup.php" method="post" class="validate-form" id="signupform" name="signupform"> 
  <table id="signup" style="text-align: left;border:1px solid #eee;padding:20px;width:330px;margin-top:-8px;margin: 0 auto;"> 
  <tr>
    <td colspan="2">E-MAIL <br />
      <input type="text" name="email" required pattern="[^@]+@[^@]+\.[a-zA-Z]{2,6}" title="Provide valid email address"/></td>
  </tr>
  <tr>
    <td colspan="2">KATA SANDI <br />
      <input type="password" name="password" required pattern="[a-zA-Z0-9]{6,}" title="Minimum 6 letters or numbers and no space"/></td>
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
      <textarea name="address" required style="
      border-radius: 2px;
      border: 0px;
      background-color: whitesmoke;
      color: #232122;
      padding: 7px 12px;
      width: 300px;
      "></textarea></td>
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
    <td colspan="2" style="text-align:center">
      <strong><button type="submit" style="padding:12px 12px;background-color:#eab265;width: 100%;border:0px;border-radius:3px;font-weight:600;color:#353535">DAFTAR <i class="fa fa-send"></i></button></strong>
    </td>
  </tr>
  </table>
</form>
</div>