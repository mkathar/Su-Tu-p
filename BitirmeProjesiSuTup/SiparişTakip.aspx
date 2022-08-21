<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SiparişTakip.aspx.cs" Inherits="BitirmeProjesiSuTup.SiparişTakip" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="SiparisID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:BoundField DataField="SiparisID" HeaderText="SiparisID" InsertVisible="False" ReadOnly="True" SortExpression="SiparisID" />
                    <asp:BoundField DataField="AdSoyad" HeaderText="AdSoyad" SortExpression="AdSoyad" />
                    <asp:BoundField DataField="SiparisTarihi" HeaderText="SiparisTarihi" SortExpression="SiparisTarihi" />
                    <asp:BoundField DataField="TelNo" HeaderText="TelNo" SortExpression="TelNo" />
                    <asp:BoundField DataField="SiparisTutari" HeaderText="SiparisTutari" SortExpression="SiparisTutari" />
                    <asp:BoundField DataField="Adres" HeaderText="Adres" SortExpression="Adres" />
                </Columns>
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BitirmeProojesiConnectionString %>" SelectCommand="SELECT [SiparisID], [AdSoyad], [SiparisTarihi], [TelNo], [SiparisTutari], [Adres] FROM [SiparisBilgi]"></asp:SqlDataSource>
            <asp:Button ID="Button1" runat="server" Text="Müşteri Bilgi Ekranına Geç." OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
