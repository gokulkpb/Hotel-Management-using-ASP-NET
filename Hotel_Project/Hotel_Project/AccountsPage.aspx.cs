using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hotel_Project
{
    public partial class AccountsPage : System.Web.UI.Page
    {
        HotelDBEntities db = new HotelDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("AdminLogin.aspx");
            }
        }

        protected void btnRefresh_Click(object sender, EventArgs e)
        {
            try
            {
                var sum = db.Accounts.Sum(x => x.total);
                lblCashIn.Text = "Total Cash IN : " + sum.ToString();

                var sum2 = db.Expenditures.Sum(y => y.expAmount);
                lblCashOut.Text = "Total Cash OUT : " + sum2.ToString();
            }
            catch(Exception ex)
            {
                lblCashOut.Text = ex.Message;    
            }

        }
    }
}