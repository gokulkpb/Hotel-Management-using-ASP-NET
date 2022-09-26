using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hotel_Project
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btLogout_Click(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                Session.Clear();
                Session.Remove("user");
            }
            Response.Redirect("AdminLogin.aspx");

        }
    }
}