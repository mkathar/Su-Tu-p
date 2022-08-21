using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BitirmeProjesiSuTup
{
    public partial class WebForm3 : System.Web.UI.Page
    {
                
        protected void Page_Load(object sender, EventArgs e)
        {
            string x = Session["musteriID"].ToString();
            SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-SH31J7J;Initial Catalog=BitirmeProojesi;Integrated Security=True");
            SqlCommand sorgu = new SqlCommand("SELECT * FROM SiparisBilgi WHERE KullaniciID=@user ", baglanti);
            sorgu.Parameters.Add("@user", SqlDbType.VarChar).Value = x;
            baglanti.Open();
            SqlDataReader oku = sorgu.ExecuteReader();
            while (oku.Read())
            {
                Session["SPID"] = oku["SiparisID"].ToString();
                Session["SPTRH"] = oku["SiparisTarihi"].ToString();
                Session["Tutar"] = oku["SiparisTutari"].ToString();
                Session["TelNO"] = oku["TelNo"].ToString();
                Session["Adres"] = oku["Adres"].ToString();
            }
            oku.Close();
            baglanti.Close();
            Label1.Text = Session["SPID"].ToString();
            Label2.Text = Session["SPTRH"].ToString();
            Label3.Text = Session["TelNO"].ToString();
            Label4.Text = Session["Adres"].ToString();
            Label6.Text = Session["Tutar"].ToString();
            Label7.Text = Session["AdiSoyadi"].ToString();
        }
    }
}