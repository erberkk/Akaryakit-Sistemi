<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userDeleteUpdate.aspx.cs" Inherits="AkaryakıtOtomasyonSistemi.userDeleteUpdate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    &nbsp;<title></title><style type="text/css">
        /* GridView stilleri */

        

        .gridview {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 12px;
            border-collapse: collapse;
            width: 100%;
            text-align: center;
        }
        .gridview th {
            background-color: #A55129;
            color: white;
            font-weight: bold;
            padding: 5px;
            border: 1px solid #DEBA84;
        }
        .gridview td {
            background-color: #FFF7E7;
            color: #8C4510;
            border: 1px solid #DEBA84;
            padding: 5px;
        }
        .gridview tr:nth-child(even) td {
            background-color: #F7DFB5;
        }
        .gridview tr:hover td {
            background-color: #738A9C;
            color: white;
            font-weight: bold;
        }
        .gridview .pager {
            padding: 5px;
            text-align: center;
            background-color: #F7DFB5;
            border: 1px solid #DEBA84;
            font-weight: bold;
        }
        /* Form stilleri */
        body {
            background-color: #F1F1F1;
            font-family: Arial, Helvetica, sans-serif;
        }
        form {
            width: 80%;
            margin: 0 auto;
        }
    </style></head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SQLomenConnectionString %>" SelectCommand="SELECT [kayit_id], [username], [kayit_araba], [kayit_plaka], [kayit_kullanilacak_akaryakit] FROM [musteri_kayit]" UpdateCommand="UPDATE musteri_kayit SET username = @username , kayit_araba = @kayit_araba , kayit_plaka = @kayit_plaka , kayit_kullanilacak_akaryakit = @kayit_kullanilacak_akaryakit where kayit_id = @kayit_id " DeleteCommand="DELETE FROM musteri_kayit WHERE kayit_id = @kayit_id"></asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; KULLANICI VERİLERİ<br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="kayit_id" DataSourceID="SqlDataSource1" GridLines="Horizontal" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" Height="459px" Width="1153px">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:BoundField DataField="kayit_id" HeaderText="kayit_id" InsertVisible="False" ReadOnly="True" SortExpression="kayit_id" />
                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                <asp:BoundField DataField="kayit_araba" HeaderText="kayit_araba" SortExpression="kayit_araba" />
                <asp:BoundField DataField="kayit_plaka" HeaderText="kayit_plaka" SortExpression="kayit_plaka" />
                <asp:BoundField DataField="kayit_kullanilacak_akaryakit" HeaderText="kayit_kullanilacak_akaryakit" SortExpression="kayit_kullanilacak_akaryakit" />
                <asp:CommandField InsertText="Ekle" NewText="Yeni" SelectText="Seç" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Güncelle" />
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
        <br />
        <br />
    </form>
</body>
</html>
