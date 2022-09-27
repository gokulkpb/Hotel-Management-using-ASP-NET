using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hotel_Project
{
    public partial class OrderFood : System.Web.UI.Page
    {
        static List<Food> foodList = new List<Food>();
        HotelDBEntities db = new HotelDBEntities();
        static decimal? sum = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {

            var result = from q in db.Foods
                         where q.fname == ddlFoodSelected.SelectedValue
                         select q;
            Food food = new Food();

            food = result.First();
            foodList.Add(food);
            result = null;
            GridViewCart.DataSource = foodList;
            GridViewCart.DataBind();
            

            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            sum = 0;
            foreach(Food food in foodList)
            {
                sum += food.fprice;
            }
            Label1.Text = "The total amount is : " + sum.ToString();
            foodList = new List<Food>();
        }

        protected void ddlFoodSelected_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView2.DataSource = SqlDataSourceFoodChosen;
            GridView2.DataBind();   
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                FoodBill foodBill = new FoodBill();
                foodBill.RNum = TextBox1.Text;
                foodBill.amount = sum;
                foodBill.dateOfBill = DateTime.Now;

                var result = from a in db.customers
                             where a.roomnum == foodBill.RNum &&
                             a.checkout == null
                             select a.refno;

                foodBill.cRef = int.Parse(result.First().ToString());

                db.FoodBills.Add(foodBill);

                customer c = db.customers.Find(foodBill.cRef);
                c.totalrent += sum;
                db.SaveChanges();
                Label1.Text = "Successfully Updated";
                sum = 0;
            }
            catch(Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}