<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MüşteriBilgi.aspx.cs" Inherits="BitirmeProjesiSuTup.MüşteriBilgi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="musteriID" DataSourceID="SqlDataSource1" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="musteriID" HeaderText="musteriID" InsertVisible="False" ReadOnly="True" SortExpression="musteriID" />
                    <asp:BoundField DataField="KullaniciAdi" HeaderText="KullaniciAdi" SortExpression="KullaniciAdi" />
                    <asp:BoundField DataField="Şifre" HeaderText="Şifre" SortExpression="Şifre" />
                    <asp:BoundField DataField="AdSoyad" HeaderText="AdSoyad" SortExpression="AdSoyad" />
                    <asp:BoundField DataField="Eposta" HeaderText="Eposta" SortExpression="Eposta" />
                    <asp:BoundField DataField="Telefon" HeaderText="Telefon" SortExpression="Telefon" />
                    <asp:BoundField DataField="Adres" HeaderText="Adres" SortExpression="Adres" />
                    <asp:BoundField DataField="YoneticiMi" HeaderText="YoneticiMi" SortExpression="YoneticiMi" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:BitirmeProojesiConnectionString %>" DeleteCommand="DELETE FROM [KayıtAlanı] WHERE [musteriID] = @original_musteriID AND [KullaniciAdi] = @original_KullaniciAdi AND [Şifre] = @original_Şifre AND [AdSoyad] = @original_AdSoyad AND [Eposta] = @original_Eposta AND [Telefon] = @original_Telefon AND [Adres] = @original_Adres AND (([YoneticiMi] = @original_YoneticiMi) OR ([YoneticiMi] IS NULL AND @original_YoneticiMi IS NULL))" InsertCommand="INSERT INTO [KayıtAlanı] ([KullaniciAdi], [Şifre], [AdSoyad], [Eposta], [Telefon], [Adres], [YoneticiMi]) VALUES (@KullaniciAdi, @Şifre, @AdSoyad, @Eposta, @Telefon, @Adres, @YoneticiMi)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [KayıtAlanı]" UpdateCommand="UPDATE [KayıtAlanı] SET [KullaniciAdi] = @KullaniciAdi, [Şifre] = @Şifre, [AdSoyad] = @AdSoyad, [Eposta] = @Eposta, [Telefon] = @Telefon, [Adres] = @Adres, [YoneticiMi] = @YoneticiMi WHERE [musteriID] = @original_musteriID AND [KullaniciAdi] = @original_KullaniciAdi AND [Şifre] = @original_Şifre AND [AdSoyad] = @original_AdSoyad AND [Eposta] = @original_Eposta AND [Telefon] = @original_Telefon AND [Adres] = @original_Adres AND (([YoneticiMi] = @original_YoneticiMi) OR ([YoneticiMi] IS NULL AND @original_YoneticiMi IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_musteriID" Type="Int32" />
                    <asp:Parameter Name="original_KullaniciAdi" Type="String" />
                    <asp:Parameter Name="original_Şifre" Type="String" />
                    <asp:Parameter Name="original_AdSoyad" Type="String" />
                    <asp:Parameter Name="original_Eposta" Type="String" />
                    <asp:Parameter Name="original_Telefon" Type="String" />
                    <asp:Parameter Name="original_Adres" Type="String" />
                    <asp:Parameter Name="original_YoneticiMi" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="KullaniciAdi" Type="String" />
                    <asp:Parameter Name="Şifre" Type="String" />
                    <asp:Parameter Name="AdSoyad" Type="String" />
                    <asp:Parameter Name="Eposta" Type="String" />
                    <asp:Parameter Name="Telefon" Type="String" />
                    <asp:Parameter Name="Adres" Type="String" />
                    <asp:Parameter Name="YoneticiMi" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="KullaniciAdi" Type="String" />
                    <asp:Parameter Name="Şifre" Type="String" />
                    <asp:Parameter Name="AdSoyad" Type="String" />
                    <asp:Parameter Name="Eposta" Type="String" />
                    <asp:Parameter Name="Telefon" Type="String" />
                    <asp:Parameter Name="Adres" Type="String" />
                    <asp:Parameter Name="YoneticiMi" Type="Int32" />
                    <asp:Parameter Name="original_musteriID" Type="Int32" />
                    <asp:Parameter Name="original_KullaniciAdi" Type="String" />
                    <asp:Parameter Name="original_Şifre" Type="String" />
                    <asp:Parameter Name="original_AdSoyad" Type="String" />
                    <asp:Parameter Name="original_Eposta" Type="String" />
                    <asp:Parameter Name="original_Telefon" Type="String" />
                    <asp:Parameter Name="original_Adres" Type="String" />
                    <asp:Parameter Name="original_YoneticiMi" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:Button ID="Button1" runat="server" Text="Sipariş Takip Ekranına Geç" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
