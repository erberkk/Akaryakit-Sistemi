<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mainpage.aspx.cs" Inherits="AkaryakıtOtomasyonSistemi.WebForm1" %>

<!DOCTYPE html>
<html>
<head>
    <title>Giriş Yap</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <style>

body {
    background-color: #f2f2f2;
    font-family: Arial, sans-serif;
}

body {
    background-color: #f2f2f2;
    font-family: Arial, sans-serif;
}

.container {
    background-color: #ffffff;
    margin: 250px auto;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
    max-width: 400px;
    
}

h1 {
    text-align: center;
    color: #333333;
}

.button-container {
    display: flex;
    flex-direction: column;
    align-items: center;
}

.button {
    background-color: #0077cc;
    color: #ffffff;
    padding: 10px;
    border: none;
    border-radius: 5px;
    box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
    margin-bottom: 10px;
}

.button:hover {
    cursor: pointer;
    opacity: 0.8;
}

 body {
    background: radial-gradient(circle, #00bfff, #8c28ff, #ff6699);
    margin: 0;
    padding: 0;
    height: 100vh;
  }

.button:hover {
    cursor: pointer;
    opacity: 0.8;
}

#btnUser {
  background: linear-gradient(to right, #8B008B, #4B0082);
}

#btnAdmin {
  background: linear-gradient(to right, #1E90FF, #4169E1);
}

    </style>
</head>
<body>
    <form runat="server">
        <div class="container">
            <h1>Giriş Yap</h1>
            <div class="button-container">
                <asp:Button ID="btnUser" runat="server" Text="Kullanıcı Girişi" OnClick="btnUser_Click" CssClass="button user" />
                <asp:Button ID="btnAdmin" runat="server" Text="Admin Girişi" OnClick="btnAdmin_Click" CssClass="button admin" Width="105px" />
            </div>
            <body>
 
</body>


        </div>
    </form>

</body>
</html>

