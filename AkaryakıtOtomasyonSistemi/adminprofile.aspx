<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminprofile.aspx.cs" Inherits="AkaryakıtOtomasyonSistemi.adminprofile" %>

<!DOCTYPE html>
<html lang="en">
<head>


    <style>
/* Arka plan */
body {
  background: linear-gradient(to right, #8c7ae6, #c2a8e1, #dcd6d9);
}

/* Sayfa Başlığı */
.sayfa-baslik {
  background-color: rgba(255, 255, 255, 0.8);
  padding: 10px;
  border-radius: 5px;
  box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.2);
  text-align: center;
}

/* Giriş Mesajı */
.giris-mesaj {
  font-size: 24px;
  color: #333;
  margin: 0;
}

/* Yazı */
.yazi {
  margin: 20px 0;
  text-align: center;
}

/* Seçim Mesajı */
.secim-mesaj {
  font-size: 18px;
  color: #333;
  margin: 0;
}

/* Buttonlar */
.button1,
.button2,
.button3 {
  background-color: #fff;
  border: none;
  padding: 10px 20px;
  border-radius: 5px;
  box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.2);
  margin: 100px auto;
  display: block;
  cursor: pointer;
  transition: all 0.3s ease-in-out;
}

.button1:hover,
.button2:hover,
.button3:hover {
  transform: translateY(-2px);
  box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
}

/* Linkler */
.link1 {
  text-decoration: none;
  color: #333;
  font-size: 18px;
  transition: all 0.3s ease-in-out;
}

.link1:hover {
  color: #8c7ae6;
}

/* Renkler */
.button1 {
  background-color: #fad0c4;
}

.button2 {
  background-color: #a3e4d7;
}

.button3 {
  background-color: #f6b93b;
}


</style>


  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin paneli</title>
</head>
<body>
  <div>
    <div class="sayfa-baslik">
      <p class="giris-mesaj">
        Admin Paneline Hoşgeldiniz 
      </p>
    </div>
    

    <div >
        <button class="button1">
            <a href="userDeleteUpdate.aspx" class="link1";>
                Kullanıcı Verileri
            </a>      
        </button>
    </div>

    <div>
      <button  class="button2">
          <a href="akaryakit_fiyat.aspx" class="link1";>
              Akaryakıt Veri
          </a>
      </button>

    </div>


    <div>
      <button  class="button3">
          <a href="depo.aspx" class="link1";>
              Depo Verileri
          </a>
      </button>
    </div>


    
  </div>
  

  
</body>
</html>