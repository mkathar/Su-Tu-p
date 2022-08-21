<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SiparişSonuç.aspx.cs" Inherits="BitirmeProjesiSuTup.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <h2>Siparişiniz bize ulaştı!</h2>
            </center>
            <h3>Sipariş Bilgileri &amp; Detayları</h3>
            <p>Sipariş Numarası:
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </p>
            <p>Sipariş Tarihi:
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </p>
            <p>İrtibat Telefonu:
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </p>
            <p>Adres:
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            </p>
            <p>Tutar:
                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
            </p>
            <p>Sağlıklı günlerde kullanmanız dileğiyle, <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
            </p>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Yeni Sipariş Ver." />
    </form>
</body>
</html>
