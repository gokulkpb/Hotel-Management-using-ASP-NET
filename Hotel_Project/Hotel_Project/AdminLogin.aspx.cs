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
                AdminUser result = null;
                result = db.AdminUsers.Find(user);

                if(result.pass == pass)
                {
                    Session["user"] = user;
                    Response.Redirect("AddRoom.aspx");
                }
                else
                {
                    AdminLoginLabel.Text = "Incorrect Password";
                }
                            
            }
            catch(Exception ex)
            {
                AdminLoginLabel.Text = "User Does not Exist";
            }
        }

        protected void txtPassword_TextChanged(object sender, EventArgs e)
        {

        }
    }
}