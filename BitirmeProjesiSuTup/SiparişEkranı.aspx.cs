using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BitirmeProjesiSuTup
{
    public partial class SiparişEkranı : System.Web.UI.Page
    {
        BitirmeProojesiEntities proje = new BitirmeProojesiEntities();

        string x;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["AdiSoyadi"].ToString();
            x = Session["musteriID"].ToString();
        }

        protected void btn_Siparis_Click(object sender, EventArgs e)
        {
            int c = Int32.Parse(txt_KucukSu.Text) * 3 + Int32.Parse(txt_OrtaSu.Text) * 5 + Int32.Parse(txt_BuyukSu.Text) * 9 + Int32.Parse(txt_KucukTup.Text) * 20 + Int32.Parse(txt_SismanTup.Text)*70 + Int32.Parse(txt_UzunTup.Text)*75;
            SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-SH31J7J;Initial Catalog=BitirmeProojesi;Integrated Security=True");
            SqlCommand sorgu = new SqlCommand("SELECT * FROM KayıtAlanı WHERE musteriID=@user ", baglanti);
            sorgu.Parameters.Add("@user", SqlDbType.VarChar).Value = x;
            baglanti.Open();
            SqlDataReader oku = sorgu.ExecuteReader();
            while (oku.Read())
            {
                Session["KullanıcıAdı"] = oku["KullaniciAdi"].ToString();
                Session["AdiSoyadi"] = oku["AdSoyad"].ToString();
                Session["EPosta"] = oku["Eposta"].ToString();
                Session["TelNO"] = oku["Telefon"].ToString();
                Session["Adres"] = oku["Adres"].ToString();
            }
            oku.Close();
            baglanti.Close();
            SiparisBilgi ekle = new SiparisBilgi();
            ekle.KullaniciAdı = Session["KullanıcıAdı"].ToString();
            ekle.AdSoyad = Session["AdiSoyadi"].ToString();
            ekle.SiparisTarihi = DateTime.UtcNow;
            ekle.TelNo = Session["TelNO"].ToString();
            ekle.Eposta = Session["EPosta"].ToString();
            ekle.KucukSu = txt_KucukSu.Text;
            ekle.OrtaSu = txt_OrtaSu.Text;
            ekle.BuyukSu = txt_BuyukSu.Text;
            ekle.KucukTup = txt_KucukTup.Text;
            ekle.SismanTup = txt_SismanTup.Text;
            ekle.UzunTup = txt_UzunTup.Text;
            ekle.SiparisTutari = c.ToString();
            ekle.Adres = Session["Adres"].ToString();
            ekle.KullaniciID = Int32.Parse(x);
            proje.SiparisBilgi.Add(ekle);
            proje.SaveChanges();
            Label1.ForeColor = Color.Green;
            Label1.Text = ("İşlem Başarılı! Sipariş Bilgilendirme Sayfasına Yönlendiriliyorsunuz :)");
            Response.Redirect("SiparişSonuç.aspx");

        }
    }
}