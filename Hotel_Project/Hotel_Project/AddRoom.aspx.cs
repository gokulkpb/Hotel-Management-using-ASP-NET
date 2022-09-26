using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hotel_Project
{
    public partial class AddRoom : System.Web.UI.Page
    {
        HotelDBEntities db = new HotelDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("AdminLogin.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Room room = new Room();
                room.roomNum = txtRoomNum.Text;
                room.roomtype = txtRoomType.Text;
                room.floornum = int.Parse(txtFloor.Text);
                room.price = decimal.Parse(txtRent.Text);
                room.roomstatus = int.Parse(txtCount.Text);

                db.Rooms.Add(room);
                db.SaveChanges();
                Response.Write("<script>alert('Room Added Successfully..');window.location = 'AddRoom.aspx';</script>");


            }
            catch (Exception ex)
            {
                LabelExep.Text = ex.Message;
                
            }
            
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}