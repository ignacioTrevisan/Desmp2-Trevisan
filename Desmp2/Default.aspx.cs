using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Desmp2
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
            Session["usuario"] = null;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (this.IsValid)
            {
                HttpCookie cookie = new HttpCookie("Contraseña", pass.Text);
                cookie.Expires = new DateTime(2024, 1, 5);
                Response.Cookies.Add(cookie);
                Session["usuario"] = TextBox2.Text;
                Response.Redirect("Default2.aspx");
            }
        }
    }
}