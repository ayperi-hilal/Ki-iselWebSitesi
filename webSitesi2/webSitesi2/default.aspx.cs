using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace webSitesi2
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            duyurularıGetir();

        }

        private void duyurularıGetir()
        {
            SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);

            string sorgu = "select *from tbl_duyurular order by tarih ";

            SqlCommand cmd = new SqlCommand(sorgu, cnn);
            cnn.Open();

            SqlDataReader dr = cmd.ExecuteReader();

            lstDuyuru.DataSource = dr;
            lstDuyuru.DataBind();
            cnn.Close();
        }

        protected void btnKayit_Click(object sender, EventArgs e)
        {
            if (txtKullaniciAdi.Text != "" && txtsifre.Text != "")
            {
                SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);

                string sorgu = "insert into tbl_kullanicilar (kullaniciAdi,sifre) values (@kullaniciAdi,@sifre) ";

                SqlCommand cmd = new SqlCommand(sorgu, cnn);
                cnn.Open();

                try
                {

                    cmd.Parameters.AddWithValue("@kullaniciAdi", txtKullaniciAdi.Text);
                    cmd.Parameters.AddWithValue("@sifre", txtsifre.Text);

                    cmd.ExecuteNonQuery();
                    cnn.Close();

                    lblSonuc.Text = "Kayıt başarılıdır";
                }
                catch (Exception)
                {

                    lblSonuc.Text = "Kayıt yapılamamıştır";
                }
            }
            else
            {
                lblSonuc.Text = "Boş alan bırakmayınız";
            }


        }
    }
}