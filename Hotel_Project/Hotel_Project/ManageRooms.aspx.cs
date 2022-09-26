using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hotel_Project
{
    public partial class ManageRooms : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("AdminLogin.aspx");
            }
        }

        protected void ListView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}