<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="BitirmeProjesiSuTup.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Giriş Formu</title>
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
            background-color: #ec3f3f;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            cursor: pointer;
            width: 49%;
        }
        .grsbtn {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            cursor: pointer;
            width: 50%;
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
            .kytbtn {
                width: 100%;
            }
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
            <label for="uname"><b>Kullanıcı Adı&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lbl_Mesaj" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp; </b></label>
            &nbsp;<asp:TextBox runat="server" ID="txt_Kullanici" placeholder="Kullanıcı Adınızı Giriniz"></asp:TextBox>
            <label for="sfre"><b>Şifre</b></label>
            <asp:TextBox runat="server" ID="txt_Sifre" TextMode="Password" placeholder="Şifrenizi Giriniz."></asp:TextBox>
            <asp:Button runat="server" ID="btn_Giris" CssClass="grsbtn" Text="Giriş Yap" OnClick="btn_Giris_Click" />
            <asp:Button runat="server" ID="btn_kayitol" Text="Kayıt Ol" class="kytbtn" OnClick="btn_kayitol_Click" />
        </div>
    </form>
</body>
</html>