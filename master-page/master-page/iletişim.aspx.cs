using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;


namespace master_page
{
    public partial class iletişim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            MailMessage mesajm = new MailMessage();
            SmtpClient istemci = new SmtpClient();
            istemci.Credentials = new System.Net.NetworkCredential("ayyizdizsoftware@gmail.com", "123h.321");
            istemci.Port = 578;
            istemci.Host = "smtp.live.com";
            istemci.EnableSsl = true;
            mesajm.To.Add(txtEmail.Text);
            mesajm.From = new MailAddress("ayyizdizsoftware@gmail.com");
            mesajm.Subject = txtKonu.Text;
            mesajm.Body = comments.Text;
            istemci.Send(mesajm);





            //MailMessage mail = new MailMessage();
            //mail.From = new MailAddress("ayyizdizsoftware@gmail.com");
            //mail.To.Add(txtEmail.Text);
            //mail.Subject = txtKonu.Text;
            //mail.Body = comments.Text;

            //SmtpClient mess = new SmtpClient();
            //mess.Credentials = new NetworkCredential("ayyizdizsoftware@gmail.com", "123h.321");
            //mess.Port = 587;
            //mess.Host = "smtp.office365.com";
            //mess.EnableSsl = true;
            //durum.Text = "başarılı";


        }
    }
}