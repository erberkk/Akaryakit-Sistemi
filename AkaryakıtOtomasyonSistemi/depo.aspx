<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="depo.aspx.cs" Inherits="AkaryakıtOtomasyonSistemi.depo" %>

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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SQLomenConnectionString %>" SelectCommand="SELECT [akaryakit_id], [akaryakit_isim], [litre_miktari] FROM [akaryakit]" UpdateCommand="UPDATE akaryakit SET litre_miktari = @litre_miktari where akaryakit_id=@akaryakit_id "></asp:SqlDataSource>
        </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DEPO VERİLERİ<br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="akaryakit_id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Height="465px" Width="1145px">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:BoundField DataField="akaryakit_id" HeaderText="akaryakit_id" ReadOnly="True" SortExpression="akaryakit_id" />
                <asp:BoundField DataField="akaryakit_isim" HeaderText="akaryakit_isim" SortExpression="akaryakit_isim" />
                <asp:BoundField DataField="litre_miktari" HeaderText="litre_miktari" SortExpression="litre_miktari" />
                <asp:CommandField ShowEditButton="True" />
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
        &nbsp;
        <br />
    </form>
</body>
</html>
