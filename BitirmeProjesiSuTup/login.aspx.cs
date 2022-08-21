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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_kayitol_Click(object sender, EventArgs e)
        {
            Response.Redirect("Kayit.aspx");
        }

        protected void btn_Giris_Click(object sender, EventArgs e)
        {
            {

                if (txt_Kullanici.Text == "" || txt_Sifre.Text == "")
                {
                    lbl_Mesaj.Text = "Kullanıcı adı veya şifrenizi giriniz";
                }
                else
                {


                    SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-SH31J7J;Initial Catalog=BitirmeProojesi;Integrated Security=True");
                    SqlCommand sorgu = new SqlCommand("SELECT * FROM KayıtAlanı WHERE KullaniciAdi=@user AND Şifre=@pass", baglanti);
                    sorgu.Parameters.Add("@user", SqlDbType.VarChar).Value = txt_Kullanici.Text;
                    sorgu.Parameters.Add("@pass", SqlDbType.VarChar).Value = txt_Sifre.Text;
                    baglanti.Open();
                    SqlDataReader oku = sorgu.ExecuteReader();
                    if (oku.Read())
                    {
                        Session["musteriID"] = oku["musteriID"].ToString();
                        Session["AdiSoyadi"] = oku["AdSoyad"].ToString();
                        string x = oku["YoneticiMi"].ToString();
                        int y = Int32.Parse(x);
                        if (y == 1)
                        {
                            Response.Redirect("MüşteriBilgi.aspx");
                        }
                        else
                        {
                            Response.Redirect("SiparişEkranı.aspx");
                        }
                    }
                    else
                    {
                        lbl_Mesaj.ForeColor = Color.Red;
                        lbl_Mesaj.Text = "Böyle bir kullanıcı bulunamadı!!!";
                    }
                    oku.Close();
                    baglanti.Close();
                }
            }
        }
    }
}