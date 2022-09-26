using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Metadata.Edm;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hotel_Project
{
    public partial class Checkin : System.Web.UI.Page
    {
        HotelDBEntities db = new HotelDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string roomType;
                customer c = new customer();
                Session["message"] = null;
                c.cname = txtName.Text;
                c.gender = DropDownListGender.SelectedValue;
                c.addrs = txtAddress.Text;
                c.postcode = txtPost.Text;
                c.mobile = txtMobile.Text;
                c.email = txtEmail.Text;
                c.nationality = txtNation.Text;
                c.idtype = ddlID.SelectedValue;
                c.idnum = txtIdNum.Text;
                c.checkin = DateTime.Parse(txtDate.Text);
                roomType = ddlRoom.SelectedValue;
                c.numdays = int.Parse(txtDays.Text);
                //--details from user
                c.checkout = null;
                
                c.totalrent = 0;

                Room room = db.Rooms.First(r => r.roomtype == roomType);
                c.roomnum = room.roomNum;
                room.roomstatus = null;
                
                db.customers.Add(c);
                db.SaveChanges();
                Response.Write("<script>alert('Successfully Checked In..!');window.location = 'Checkin.aspx';</script>");

            }
            catch(Exception ex)
            {
                Label1.Text = ex.Message;
            }
            finally
            {
                Session["message"] = "Succesfully Added";
                Response.Redirect("Checkin.aspx");

            }


        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ddlRoom_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            
        }

        protected void btnRoomRent_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
        }
    }
}