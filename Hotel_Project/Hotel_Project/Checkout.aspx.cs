using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Schema;

namespace Hotel_Project
{
    public partial class Checkout : System.Web.UI.Page
    {
        HotelDBEntities db = new HotelDBEntities();
        static decimal billAmount;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                string text = txtRoom.Text;
                customer c = db.customers.First(t => t.roomnum == text && t.checkout == null);
                Array RestBill = db.FoodBills.Where(t=>t.cRef == c.refno).Select(o => new {o.dateOfBill, o.amount}).ToArray();
                GridView1.DataSource = RestBill;    
                GridView1.DataBind();   
                
                DateTime dateTime = DateTime.Now;
                TimeSpan diff = (dateTime - c.checkin).Value;
                double days = diff.TotalHours/24;
                if(diff.Hours > 3)
                {
                    days = diff.Days + 1;
                }
                else
                {
                    days = diff.Days;
                }

                Room room = db.Rooms.Find(c.roomnum);
                decimal rent = (room.price).Value;
                decimal total = rent * (decimal)days;
                total = Math.Round(total, 2);

                lblRoomDays.Text = $"Duration : {days} Days";
                lblRoomRent.Text = $"Rent : Rs {rent} for 24 hrs";
                lblRoomTotal.Text = $" Total : {Math.Round(total, 2)}";

                decimal totalrestBill = 0;
                totalrestBill = db.FoodBills.Where(t => t.cRef == c.refno).Sum(t => t.amount).Value;
                lblRest.Text = $"{Math.Round(totalrestBill, 2)}";


                

                billAmount = 0;
                billAmount = totalrestBill + total;
                lblTotal.Text = $"Total Bill Amount is Rs {Math.Round(billAmount, 2)}";
                  


            }
            catch(Exception ex)
            {
                lblError.Text = ex.Message;
            }
        }

        protected void btnCheckOut_Click(object sender, EventArgs e)
        {
            try
            {
                string text = txtRoom.Text;
                customer c = db.customers.First(t => t.roomnum == text && t.checkout == null);
                customer _c = db.customers.Find(c.refno);
                Room room = db.Rooms.Find(c.roomnum);

                
                Account acc = new Account();
                acc.cRef = c.refno;
                acc.rNum = c.roomnum;
                acc.restBill = db.FoodBills.Where(t => t.cRef == c.refno).Sum(t => t.amount).Value;
                acc.roomBill = billAmount - acc.restBill;
                acc.total = billAmount;
                _c.checkout = DateTime.Now;
                _c.totalrent = billAmount;
                room.roomstatus = 1;
                db.Accounts.Add(acc);
                
                db.SaveChanges();
                Response.Write("<script>alert('Successfully Checked Out..!');window.location = 'Checkout.aspx';</script>");
            }
            catch(Exception ex)
            {
                lblError.Text = ex.Message;
            }
            finally
            {
                billAmount = 0;
            }
        }
    }
}