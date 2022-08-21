<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Kayit.aspx.cs" Inherits="BitirmeProjesiSuTup.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kayıt Formu</title>
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
        }
        form {
            border: 3px solid #f1f1f1;
        }
        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
        button:hover {
            opacity: 0.8;
        }
        .kytbtn {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            cursor: pointer;
            width: 99%;
        }
        .imgcontainer {
            text-align: center;
            margin: 24px 0 12px 0;
        }
        img.avatar {
            width: 40%;
            border-radius: 50%;
        }
        .container {
            padding: 16px;
        }

        @media screen and (max-width: 300px) {

        }
        .frm {
            margin: auto;
            width: 60%;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server" class="frm">

        <div class="container">
            <center>
                <h3>Muhammed Tüp ve Su İşleri</h3>
            </center>
            <b>Kullanıcı Adı</b>
            <asp:TextBox runat="server" ID="txt_Kullanici" placeholder="Kullanıcı Adınızı Giriniz"></asp:TextBox>
            <b>Şifre&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server"></asp:Label>
            </b> 
            &nbsp;<asp:TextBox runat="server" ID="txt_Sifre" TextMode="Password" placeholder="Şifrenizi Giriniz."></asp:TextBox>
            <b>Şifreyi Tekrarla</b>
            <asp:TextBox runat="server" ID="txt_SifreCheck" TextMode="Password" placeholder="Tekrar Giriniz."></asp:TextBox>
            <b>Ad Soyadınız</b>
            <asp:TextBox runat="server" ID="txt_Soyad" placeholder="Adınızı Soyadınızı Giriniz."></asp:TextBox>
            <b>Eposta</b>
            <asp:TextBox runat="server" ID="txt_ePosta" placeholder="E-Postanızı Giriniz"></asp:TextBox>
            <b>Telefon Numarası</b>
            <asp:TextBox runat="server" ID="txt_TelNo" placeholder="Telefon Numarası Giriniz"></asp:TextBox>
            <b>Adres</b>
            <asp:TextBox runat="server" ID="txt_Adres" placeholder="Teslimat İçin Adres Giriniz"></asp:TextBox>
            <asp:Button runat="server" ID="btn_Kayit" CssClass="kytbtn" Text="Kayıt Ol" OnClick="btn_Kayit_Click" />
        </div>
    </form>
</body>
</html>