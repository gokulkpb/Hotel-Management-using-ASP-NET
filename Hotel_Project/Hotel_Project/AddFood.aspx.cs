using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hotel_Project
{
    public partial class AddFood : System.Web.UI.Page
    {
        HotelDBEntities db = new HotelDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btAddFood_Click(object sender, EventArgs e)
        {
            try
            {
                Food food = new Food();
                food.fname = txtFoodName.Text;
                food.fprice = decimal.Parse(txtFoodPrice.Text);

                db.Foods.Add(food);
                db.SaveChanges();
                Response.Write("<script>alert('Food Added Successfully..');window.location = 'AddFood.aspx';</script>");
            }
            catch (Exception ex)
            {
                lblAddFood.Text = ex.Message;
            }
        }
    }
}