using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hotel_Project
{
    public partial class SearchCustomer : System.Web.UI.Page
    {
        HotelDBEntities db = new HotelDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                string mob = txtMob.Text;
                Array list = db.customers.Where(c => c.mobile == mob).Select(o => new { o.refno, o.cname, o.checkin, o.mobile, o.roomnum }).ToArray();    
                GridView1.DataSource = list;
                GridView1.DataBind();

            }
            catch(Exception ex)
            {
                lblError.Text = ex.Message;
            }
        }
    }
}