<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="newUser.aspx.cs" Inherits="AkaryakıtOtomasyonSistemi.newUser" %>

<!DOCTYPE html>
<html>
<style>

body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: #f2f2f2;
}

.container {
  background-color: #fff;
  padding: 20px;
  border-radius: 10px;
  box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1);
  margin: auto;
  max-width: 500px;
}

h1 {
  text-align: center;
  font-size: 28px;
  color: #6B0F9C;
  margin-bottom: 20px;
}

p {
  text-align: center;
  margin-bottom: 30px;
  font-size: 18px;
  color: #333;
}

label {
  font-size: 18px;
  color: #333;
  font-weight: bold;
}

input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f2f2f2;
  border-radius: 5px;
  /* İstenilen renkler: */
  background-color: #f9e1e9; /* Pembe */
  color: #6b0f9c; /* Mor */
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #e6e6e6;
  outline: none;
}

#Button3 {
    		font-size: 16px;
    		color: #fff;
    		background-image: linear-gradient(to bottom right, #b64fc3, #e4427f);
    		border: none;
    		border-radius: 4px;
    		padding: 10px 20px;
    		width: 120px;
    		cursor: pointer;
    		box-shadow: 1px 1px 5px rgba(0, 0, 0, 0.1);
    		transition: all 0.3s ease-in-out;
    	}

    #Button3:hover {
        background-image: linear-gradient(to bottom right, #a53c9a, #c02a6d);
        box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2);
    }
.cancelbtn {
  background: #F44336;
}

.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}

.clearfix::after {
  content: "";
  clear: both;
  display: table;
}

@media screen and (max-width: 300px) {
  .cancelbtn, .signupbtn {
     width: 100%;
  }
}


</style>
<body>

    <form id="form1" runat="server">
  <div class="container">
    <h1>Kayıt Ol</h1>
    <p>Kayıt Olmak İçin Lütfen Formu Doldurunuz.</p>
    <hr>

<div class="username" data-validate="Kullanıcı adı gereklidir.">

    <label for="email"><b>Kullanıcı Adı:</b></label>   
    <br />
    <asp:TextBox ID="TextBox1" runat="server" placeholder="Kullanıcı Adınızı Giriniz" Width="475px"></asp:TextBox>
    <br />
</div>
    
<div class="password" data-validate="Sifre gereklidir.">

    <label for="psw"><b>Şifre:</b></label>
    <br />
    <asp:TextBox ID="TextBox2" runat="server" placeholder="Şifrenizi Giriniz" Width="475px"></asp:TextBox>
    <br />
</div>

<div class="arabaModeli" data-validate="Araba modeli gereklidir.">

    <label for="arabaModeli"><b>Araba Modeli:</b></label>
    <br />
    <asp:TextBox ID="TextBox3" runat="server" placeholder="Araba Modelinizi Giriniz" Width="475px"></asp:TextBox>
    <br />
</div>    

<div class="arabaModeli" data-validate="Araba modeli gereklidir.">

    <label for="arabaPlakasi"><b>Araba Plakasi:</b></label>
    <br />
    <asp:TextBox ID="TextBox4" runat="server" placeholder="Araba Plakanizi Giriniz" Width="475px"></asp:TextBox>
    <br />
</div> 

<div class="arabaAkaryakitID" data-validate="Araba akaryakit ID gereklidir.">

    <label for="arabaAkaryakitID"><b>Kullanacağınız Akaryakıt ID:</b></label> 
   
    <br />
    <asp:TextBox ID="TextBox5" runat="server" placeholder="Kullanacağınız Akaryakıtın ID Numarasını Giriniz" Width="475px"></asp:TextBox>
    <br />
</div>    


    <div class="container-login100-form-btn">
                        
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        
           <asp:Button ID="Button3" runat="server" Text="Kayıt Ol" OnClick="Button3_Click" CssClass="login100-form-btn" />

     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

     </div>

  </div>
    </form>

</body>
</html>



