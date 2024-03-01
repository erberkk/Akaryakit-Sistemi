<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="AkaryakıtOtomasyonSistemi.WebForm3" %>

<!DOCTYPE html>
<html>
<head>
    <title>ERFA AKARYAKIT</title>
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
    		color: #333;
    		margin-bottom: 20px;
    	}

    	p {
    		font-size: 24px;
    		color: #666;
    		margin-bottom: 30px;
    	}

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
    		color: #333;
    		margin-bottom: 20px;
    	}

    	p {
    		font-size: 24px;
    		color: #666;
    		margin-bottom: 30px;
    	}

    	nav {
    		background-color: #6F3682;
    		color: #fff;
    		display: flex;
    		align-items: center;
    		justify-content: space-between;
    		padding: 10px;
    		position: fixed;
    		top: 0;
    		width: 100%;
    		margin-left: -10px;
    	}

    		nav a {
    			color: #fff;
    			text-decoration: none;
    			margin: 0 10px;
    			font-size: 18px;
    		}

    			nav a:hover {
    				text-decoration: underline;
    			}





    	.ana-sayfa-btn {
    		background-color: #f8bbd0;
    		color: #fff;
    		border: none;
    		padding: 10px 20px;
    		border-radius: 5px;
    		cursor: pointer;
    		transition: all 0.3s ease-in-out;
    	}

    		.ana-sayfa-btn:hover {
    			background-color: #f06292;
    			box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2);
    		}

    		.ana-sayfa-btn a {
    			color: inherit;
    			text-decoration: none;
    		}

    			.ana-sayfa-btn a:hover {
    				text-decoration: underline;
    			}




    	.auto-style2 {
    		font-size: 14px;
    		padding: 10px;
    		border: 1px solid #ccc;
    		border-radius: 4px;
    		width: 115px;
    		background-color: #f2f2f2;
    		color: #333;
    		box-shadow: 1px 1px 5px rgba(0, 0, 0, 0.1);
    		transition: all 0.3s ease-in-out;
    	}

    		.auto-style2:hover {
    			border-color: #666;
    			box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2);
    		}



    	.auto-style3 {
    		font-size: 14px;
    		padding: 10px;
    		border: 1px solid #ccc;
    		border-radius: 4px;
    		width: 115px;
    		background-color: #f2f2f2;
    		color: #333;
    		box-shadow: 1px 1px 5px rgba(0, 0, 0, 0.1);
    		transition: all 0.3s ease-in-out;
    	}

    		.auto-style3:hover {
    			border-color: #666;
    			box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2);
    		}


    	#fuel {
    		font-size: 16px;
    		color: #333;
    		padding: 10px;
    		border: 1px solid #ccc;
    		border-radius: 4px;
    		width: 200px;
    		background-color: #fff;
    	}

    	#Button1 {
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

    		#Button1:hover {
    			background-image: linear-gradient(to bottom right, #a53c9a, #c02a6d);
    			box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2);
    		}

    	#Button2 {
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

    		#Button2:hover {
    			background-image: linear-gradient(to bottom right, #a53c9a, #c02a6d);
    			box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2);
    		}

    	#Label1 {
    		display: inline-block;
    		background-color: #f3e5f5;
    		color: #6a1b9a;
    		font-size: 18px;
    		font-weight: bold;
    		padding: 10px 15px;
    		border-radius: 5px;
    		box-shadow: 1px 1px 5px rgba(0, 0, 0, 0.1);
    		transition: all 0.3s ease-in-out;
    	}

    		#Label1:hover {
    			background-color: #e1bee7;
    			box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2);
    		}

        #TotalEarningsLabel {
            display: inline-block;
    		background-color: #f8bbd0;
    		color: #fff;
    		font-size: 18px;
    		font-weight: bold;
    		padding: 10px 15px;
    		border-radius: 5px;
    		box-shadow: 1px 1px 5px rgba(0, 0, 0, 0.1);
    		transition: all 0.3s ease-in-out;
        }
            #TotalEarningsLabel:hover {
                background-color: #e1bee7;
    			box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2);
            }
    	#Label2 {
    		display: inline-block;
    		background-color: #f3e5f5;
    		color: #6a1b9a;
    		font-size: 18px;
    		font-weight: bold;
    		padding: 10px 15px;
    		border-radius: 5px;
    		box-shadow: 1px 1px 5px rgba(0, 0, 0, 0.1);
    		transition: all 0.3s ease-in-out;
    	}

    		#Label2:hover {
    			background-color: #e1bee7;
    			box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2);
    		}


    	.auto-style4 {
    		margin-right: 673px;
    	}


    	.auto-style7 {
    		float: left;
    		width: 65%;
    	}

    	.auto-style8 {
    		height: 546px;
    		width: 730px;
    		margin-left: 569px;
    	}




    			
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <nav>
            <button class="ana-sayfa-btn" onclick="location.href='index.html'">
			<a href="mainpage.aspx" class="ana-sayfa-btn";>Ana Sayfa</a>	
		    </button>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="TotalEarningsLabel" runat="server" Text="Toplam Kazanc"></asp:Label>

            &nbsp;

        </nav>
        <div class="container">
            <h1>ERFA AKARYAKIT'A HOŞGELDİNİZ!</h1>
            <p>
                ERFA Akaryakıt olarak kullanıcılarımızın zaman kazanması ve günlük işlerine daha hızlı bir şekilde devam edebilmesi için çalışıyoruz.
			Sitemizin kullanım kolaylığı sayesinde artık petrol ofislerinde ödeme yerinde sıra beklemek yerine direkt olarak sitemiz üzerinden güncel akaryakıt
			fiyatlarına göre ödeme yapabilirsiniz.
            </p>
        </div>

        <div class="auto-style4">
            <div class="auto-style7">
                <!-- Sol taraftaki içerik buraya gelecek -->



                &nbsp;Akaryakıt&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:DropDownList ID="fuel" runat="server">
             <asp:ListItem Text="V/Max Kurşunsuz 95" Value="V/Max Kurşunsuz 95 "></asp:ListItem>
             <asp:ListItem Text="V/Max Diesel" Value="V/Max Diesel"></asp:ListItem>
             <asp:ListItem Text="V/Pro Diesel" Value="V/Pro Diesel"></asp:ListItem>
             <asp:ListItem Text="POGaz LPG" Value="POGaz LPG"></asp:ListItem>
         </asp:DropDownList>&nbsp;&nbsp;&nbsp;
        <br />

                <br />
                &nbsp;Litre&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style2" Width="115px"></asp:TextBox>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                &nbsp;Litre Tekrar&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style3" Width="115px"></asp:TextBox>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="HESAPLA" Width="120px" />
                <br />
                <br />
                TOPLAM&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="-----"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="SATIN AL" Width="120px" OnClick="Button2_Click" />



                <br />



                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="-----"></asp:Label>



                <br />
                <br />
                <br />
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SQLomenConnectionString %>" SelectCommand="SELECT [akaryakit_isim], [litre_miktari] FROM [akaryakit]"></asp:SqlDataSource>
                <br />


            </div>
            <div class="auto-style8">
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			    <asp:Chart ID="Chart" runat="server" DataSourceID="SqlDataSource1" CssClass="auto-style9" Width="679px" BackColor="WhiteSmoke" BackSecondaryColor="128, 128, 255" BorderlineColor="Brown" BorderlineWidth="5" Palette="Berry" style="margin-left: 0px">
                    <Series>
                        <asp:Series Name="Series1" XValueMember="akaryakit_isim" YValueMembers="litre_miktari" ChartType="Bar" ChartArea="ChartArea1">

                        </asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>


            </div>
        </div>




    </form>


</body>
</html>
