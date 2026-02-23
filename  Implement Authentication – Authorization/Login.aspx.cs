using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["role"] != null)
        {
            if (Session["role"] == "Admin;")
            {
                Response.Redirect("Admin.aspx");
            }
            else if (Session["role"] == "User")
            {
                Response.Redirect("User.aspx");
            }
            else
            {
                Session.Clear();
                Response.Redirect("Login.aspx");
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "admin" && TextBox2.Text == "1234")
        {
            Session["role"] = "Admin";
            Response.Redirect("Admin.aspx");
        }
        else if (TextBox1.Text == "user" && TextBox2.Text == "1234")
        {
            Session["role"] = "User";
            Response.Redirect("User.aspx");
        }
        else
        {
            Label3.Visible = true;
        }
    }
}