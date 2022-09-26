using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hotel_Project
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        HotelDBEntities db = new HotelDBEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                Session.Clear();
            }
        }

        protected void AdminLoginButton_Click(object sender, EventArgs e)
        {
            try
            {
                string user = txtUsername.Text;
                string pass = txtPassword.Text;
                
                var result = from a in db.AdminUsers
                             where a.username == user && a.pass == pass
                             select a;
                if(result != null)
                {
                    Session["user"] = user;
                    Response.Redirect("AddRoom.aspx");
                }
                else
                {
                    AdminLoginLabel.Text = "User Does not exist";
                }
                            
            }
            catch(Exception ex)
            {
                AdminLoginLabel.Text = ex.Message;
            }
        }

        protected void txtPassword_TextChanged(object sender, EventArgs e)
        {

        }
    }
}