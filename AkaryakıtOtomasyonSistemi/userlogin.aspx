<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="AkaryakıtOtomasyonSistemi.userlogin" %>

<!DOCTYPE html>
<html lang="tr">
<head runat="server">
    <title>EF Akaryakıt</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="icon" type="image/png" href="Login_v1/images/icons/favicon.ico" />

    <link rel="stylesheet" type="text/css" href="Login_v1/vendor/bootstrap/css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="Login_v1/fonts/font-awesome-4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" type="text/css" href="Login_v1/vendor/animate/animate.css">

    <link rel="stylesheet" type="text/css" href="Login_v1/vendor/css-hamburgers/hamburgers.min.css">

    <link rel="stylesheet" type="text/css" href="Login_v1/vendor/select2/select2.min.css">

    <link rel="stylesheet" type="text/css" href="Login_v1/css/util.css">
    <link rel="stylesheet" type="text/css" href="Login_v1/css/main.css">

    <meta name="robots" content="noindex, follow">
    <script nonce="6b415f84-7047-40b4-9715-5d81036cdc31">(function (w, d) { !function (bv, bw, bx, by) { bv[bx] = bv[bx] || {}; bv[bx].executed = []; bv.zaraz = { deferred: [], listeners: [] }; bv.zaraz.q = []; bv.zaraz._f = function (bz) { return function () { var bA = Array.prototype.slice.call(arguments); bv.zaraz.q.push({ m: bz, a: bA }) } }; for (const bB of ["track", "set", "debug"]) bv.zaraz[bB] = bv.zaraz._f(bB); bv.zaraz.init = () => { var bC = bw.getElementsByTagName(by)[0], bD = bw.createElement(by), bE = bw.getElementsByTagName("title")[0]; bE && (bv[bx].t = bw.getElementsByTagName("title")[0].text); bv[bx].x = Math.random(); bv[bx].w = bv.screen.width; bv[bx].h = bv.screen.height; bv[bx].j = bv.innerHeight; bv[bx].e = bv.innerWidth; bv[bx].l = bv.location.href; bv[bx].r = bw.referrer; bv[bx].k = bv.screen.colorDepth; bv[bx].n = bw.characterSet; bv[bx].o = (new Date).getTimezoneOffset(); if (bv.dataLayer) for (const bI of Object.entries(Object.entries(dataLayer).reduce(((bJ, bK) => ({ ...bJ[1], ...bK[1] }))))) zaraz.set(bI[0], bI[1], { scope: "page" }); bv[bx].q = []; for (; bv.zaraz.q.length;) { const bL = bv.zaraz.q.shift(); bv[bx].q.push(bL) } bD.defer = !0; for (const bM of [localStorage, sessionStorage]) Object.keys(bM || {}).filter((bO => bO.startsWith("_zaraz_"))).forEach((bN => { try { bv[bx]["z_" + bN.slice(7)] = JSON.parse(bM.getItem(bN)) } catch { bv[bx]["z_" + bN.slice(7)] = bM.getItem(bN) } })); bD.referrerPolicy = "origin"; bD.src = "/cdn-cgi/zaraz/s.js?z=" + btoa(encodeURIComponent(JSON.stringify(bv[bx]))); bC.parentNode.insertBefore(bD, bC) };["complete", "interactive"].includes(bw.readyState) ? zaraz.init() : bv.addEventListener("DOMContentLoaded", zaraz.init) }(w, d, "zarazData", "script"); })(window, document);</script>
    <style>
        #Button3 {
    		font-size: 16px;
    		color: #fff;
    		background-image: linear-gradient(to bottom right, #b64fc3, #e4427f);
    		border: none;
    		border-radius: 4px;
    		padding: 10px 20px;
    		width: 200px;
    		cursor: pointer;
    		box-shadow: 1px 1px 5px rgba(0, 0, 0, 0.1);
    		transition: all 0.3s ease-in-out;
    	}

    		#Button3:hover {
    			background-image: linear-gradient(to bottom right, #a53c9a, #c02a6d);
    			box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2);
    		}
    </style>
</head>
<body>
    <div class="limiter">
        <div class="container-login100">
            <div class="wrap-login100">
                <div class="login100-pic js-tilt" data-tilt>
                    <img src="Login_v1/images/img-01.png" alt="IMG">
                </div> 
                
                <form class="login100-form validate-form" runat="server">
                    <span class="login100-form-title">
                        Üye Girişi
                    </span>
                

                <asp:SqlDataSource ID="SqlOmen0" runat="server" ConnectionString="<%$ ConnectionStrings:SQLomenConnectionString %>" SelectCommand="SELECT * FROM [musteri_giris]"></asp:SqlDataSource>
                
                    

                    <div class="wrap-input100 validate-input" data-validate="Kullanıcı adı gereklidir.">
                        
                        <asp:TextBox ID="txtUserNameUser" CssClass="input100" runat="server" placeholder="Kullanıcı Adı"></asp:TextBox>
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-envelope" aria-hidden="true"></i>
                        </span>
                    </div>

                    <div class="wrap-input100 validate-input" data-validate="Şifre gereklidir.">
                        <asp:TextBox ID="txtSifreUser" CssClass="input100" runat="server" placeholder="Şifre" TextMode="Password"></asp:TextBox>
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-lock" aria-hidden="true"></i>
                        </span>
                    </div>

                    <div class="container-login100-form-btn">
                        
                        <asp:Button ID="Button2" runat="server" Text="Giriş" OnClick="Button2_Click" CssClass="login100-form-btn" />

                    </div>

                    <div class="text-center p-t-12">
                        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Şifremi Unuttum" UseSubmitBehavior="False" />
                    </div>

                    <p>
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    </p>

                    <div class="text-center p-t-136">
                        <a class="txt2" href="#">
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Yeni Hesap Oluştur" UseSubmitBehavior="False" />
                            <i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
                        </a>
                    </div>

                </form>
            </div>
        </div>
    </div>

    <script src="Login_v1/vendor/jquery/jquery-3.2.1.min.js"></script>

    <script src="Login_v1/vendor/bootstrap/js/popper.js"></script>

    <script src="Login_v1/vendor/bootstrap/js/bootstrap.min.js"></script>

    <script src="Login_v1/vendor/select2/select2.min.js"></script>

    <script src="Login_v1/vendor/tilt/tilt.jquery.min.js"></script>
    <script>
        $('.js-tilt').tilt({
            scale: 1.1
        })
    </script>

    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>

    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }
        gtag('js', new Date());

        gtag('config', 'UA-23581568-13');
    </script>

    <script src="Login_v1/js/main.js"></script>

    <script defer src="https://static.cloudflareinsights.com/beacon.min.js/vaafb692b2aea4879b33c060e79fe94621666317369993" integrity="sha512-0ahDYl866UMhKuYcW078ScMalXqtFJggm7TmlUtp0UlD4eQk0Ixfnm5ykXKvGJNFjLMoortdseTfsRT8oCfgGA==" data-cf-beacon='{"rayId":"7a63846efc275087","token":"cd0b4b3a733644fc843ef0b185f98241","version":"2023.2.0","si":100}' crossorigin="anonymous"></script>
</body>
</html>