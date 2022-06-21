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
    public partial class kaydol : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            pnlDurum.Visible = false;





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

                    pnlKayit.Visible = false;
                    pnlDurum.Visible = true;
                    Session.Add("kullaniciadi", txtKullaniciAdi.Text);
                    lblDurum.Text = "Kayıt başarılıdır";
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