using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace master_page
{
    public partial class main : System.Web.UI.MasterPage
    {
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            duyurularıGetir();

            object kullanici = Session["kullaniciadi"];
            if (kullanici != null)
            {
                girisPanel.Visible = false;
                pnlKullanici.Visible = true;
                lblKullniciAdi.Text = kullanici.ToString();
            }
            else
            {
                girisPanel.Visible = true;
                pnlKullanici.Visible = false;
               
            }
        }

        private void duyurularıGetir()
        {
            string sorgu = "select *from tbl_duyurular order by tarih desc ";

            SqlCommand cmd = new SqlCommand(sorgu, cnn);
            cnn.Open();

            SqlDataReader dr = cmd.ExecuteReader();

            lstDuyuru.DataSource = dr;
            lstDuyuru.DataBind();
            cnn.Close();
        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {
            string sorgu = "select * from tbl_kullanicilar where kullaniciAdi=@kullaniciAdi and sifre=@sifre";

            SqlCommand cmd = new SqlCommand(sorgu, cnn);
            cmd.Parameters.AddWithValue("@kullaniciAdi", txtKullaniciAdi.Text);
            cmd.Parameters.AddWithValue("@sifre", txtsifre.Text);
            cnn.Open();

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Session.Timeout = 300;
                Session.Add("kullaniciadi", dr["kullaniciAdi"].ToString());
                Response.Redirect(Request.RawUrl);

            }
            else
            {
                lblSonuc.Text = "Kullanıcı girişi sağlanamadı";
            }

            cnn.Close();

        }

        protected void oturumuKapat_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect(Request.RawUrl);
        }
    }
}