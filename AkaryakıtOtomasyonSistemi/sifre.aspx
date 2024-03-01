<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sifre.aspx.cs" Inherits="AkaryakıtOtomasyonSistemi.sifre" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Şifre Yenileme</title>
    <link rel="stylesheet" href="style.css">
    
    <style>
body {
    background-color: #f8f8f8;
    font-family: Arial, sans-serif;
}

.container {
    margin: 0 auto;
    width: 80%;
    text-align: center;
    padding-top: 50px;
}

h1 {
    font-size: 48px;
    color: #800080;
    margin-bottom: 20px;
}

label {
    font-size: 24px;
    color: #666;
    margin-bottom: 10px;
    display: block;
}

.input100 {
    font-size: 14px;
    padding: 10px;
    width: 100%;
    border: 1px solid #ccc;
    border-radius: 5px;
    margin-bottom: 20px;
}

button {
    background-color: #ffb6c1;
    color: #fff;
    border: none;
    padding: 10px 20px;
    border-radius: 5px;
    cursor: pointer;
    transition: all 0.3s ease-in-out;
}

button:hover {
    background-color: #f06292;
    box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2);
}

button a {
    color: inherit;
    text-decoration: none;
}

button a:hover {
    text-decoration: underline;
}

#btnSubmit {
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

    		#btnSubmit:hover {
    			background-image: linear-gradient(to bottom right, #a53c9a, #c02a6d);
    			box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2);
    		}
    </style>
</head>
<body>
    <div class="container">
        <h1>Şifre Yenileme</h1>
        <form runat="server">
            <label for="username">Kullanıcı Adı:</label>
            <asp:TextBox ID="txtUserNameUser" CssClass="input100" runat="server" placeholder="Kullanıcı Adı"></asp:TextBox>
            
            <label for="new-password">Yeni Şifre:</label>
            <asp:TextBox ID="txtSifreUser" CssClass="input100" runat="server" placeholder="Şifre" TextMode="Password"></asp:TextBox>
            
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"/>
        </form>
</body>
</html>
