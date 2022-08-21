using System;
using System.Drawing;

namespace BitirmeProjesiSuTup
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        BitirmeProojesiEntities proje = new BitirmeProojesiEntities();

        protected void btn_Kayit_Click(object sender, EventArgs e)
        {
            KayıtAlanı ekle = new KayıtAlanı();
            if (txt_SifreCheck.Text == "" || txt_Adres.Text == "" || txt_ePosta.Text == "" || txt_Kullanici.Text == "" || txt_Sifre.Text == "" || txt_Soyad.Text == "" || txt_TelNo.Text == "")
            {
                Label1.ForeColor = Color.Red;
                Label1.Text = ("Girdilerde eksik mevcut...");
            }
            else
            {
                if (txt_Sifre.Text == txt_SifreCheck.Text)
                {
                    ekle.KullaniciAdi = txt_Kullanici.Text;
                    ekle.Şifre = txt_Sifre.Text;
                    ekle.AdSoyad = txt_Soyad.Text;
                    ekle.Eposta = txt_ePosta.Text;
                    ekle.Adres = txt_Adres.Text;
                    ekle.Telefon = txt_TelNo.Text;
                    ekle.YoneticiMi = 1; 
                    proje.KayıtAlanı.Add(ekle);
                    proje.SaveChanges();
                    Label1.ForeColor = Color.Green;
                    Label1.Text = ("İşlem Başarılı! Giriş Sayfasına Yönlendiriliyorsunuz :)");
                    Response.Redirect("login.aspx");
                }
                else
                {
                    Label1.ForeColor = Color.Red;
                    Label1.Text = ("Şifreler Uyuşmuyor.");
                }
            }

        }

        protected void btn_Siparis_Click(object sender, EventArgs e)
        {

        }
    }
}