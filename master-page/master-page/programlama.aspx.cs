using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace master_page
{
    public partial class programlama : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReact_Click(object sender, EventArgs e)
        {
            Response.Redirect("/sayfalar/react/reactNative.aspx");            
        }

        protected void btncsharp_Click(object sender, EventArgs e)
        {
            Response.Redirect("/sayfalar/c-sharp/c-sharp.aspx");
        }

        protected void btnPython_Click(object sender, EventArgs e)
        {
            Response.Redirect("/sayfalar/python/python.aspx");
        }
    }
}