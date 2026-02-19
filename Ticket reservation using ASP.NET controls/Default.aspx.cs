using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Calendar1.SelectedDate = DateTime.Today;
            Calendar1.VisibleDate = DateTime.Today;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       
        if (from.SelectedValue == "Chennai")
        {
            if (to.SelectedValue == "Madurai")
            {
                bill.Text = "Name: " + name.Text + "</br>" +
                    "Gender:" + gender.SelectedValue + "</br>" +
                    "From: Chennai <br> To: Madurai  <br> Price:350 <br>"
                     +"Date & Time: " + Calendar1.SelectedDate.ToShortDateString() + DateTime.Now.ToString();
                bill.Visible = true;
                book.Visible = true;
            }
            if (to.SelectedValue == "Coimbatore")
            {
                bill.Text = "Name: " + name.Text +
                    "<br> Gender:" + gender.SelectedValue + "<br>" +
                    "From: Chennai <br> To: Coimbatore  <br>Price:450 <br>"
                + "Date & Time: " + Calendar1.SelectedDate.ToShortDateString() + DateTime.Now.ToString();
                bill.Visible = true;
                book.Visible = true;
            }
            if (to.SelectedValue == "Salem")
            {
                bill.Text = "Name: " + name.Text +
                    "<br> Gender:" + gender.SelectedValue + "<br>" +
                    "From: Chennai <br> To: Salem  <br>Price:500 <br>"
                + "Date & Time: " + Calendar1.SelectedDate.ToShortDateString()+DateTime.Now.ToString();
                bill.Visible = true;
                book.Visible = true;
            }
            if (to.SelectedValue == "Trichy")
            {
                bill.Text = "Name: " + name.Text + "<br>" +
                    "Gender:" + gender.SelectedValue + "<br>" +
                    "From: Chennai <br> To: Trichy <br>  Price:250 <br>" +
                    "Date & Time: " + Calendar1.SelectedDate.ToShortDateString() + DateTime.Now.ToString();
                bill.Visible = true;
                book.Visible = true;
            }
            if (to.SelectedValue == "Villupram")
            {
                bill.Text = "Name: " + name.Text +"<br>"+
                    "Gender:" + gender.SelectedValue + "<br>" +
                    "From: Chennai <br> To: Madurai  <br> Price:150 <br>"+
                    "Date & Time: " + Calendar1.SelectedDate.ToShortDateString() + DateTime.Now.ToString();
                bill.Visible = true;
                book.Visible = true;
            }
            if (to.SelectedValue == "Chennai")
            {
                bill.Text = "Place is Same So enter correct Place";
                bill.Visible = true;
                book.Visible = true;
            }
        }
    }
   
}