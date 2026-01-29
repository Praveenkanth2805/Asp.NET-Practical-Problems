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

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string uname = user.Text ;
        string pw = pass.Text;
        if (uname == "admin" && pw == "1234")
        {
            Response.Redirect("AfterLogin.aspx");
        }
        else
        {
            error.Visible = true;
        }
    }
}