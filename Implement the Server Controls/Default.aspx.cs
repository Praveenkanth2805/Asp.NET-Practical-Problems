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
    protected void Button1_Click(object sender, EventArgs e)
    {
        String res = "";
        res +="Your Name:\t"+ name.Text + "<br/>";
        res +="Gender:\t" +gender.Text + "<br/>";
        res += "Address:\t" +address.Text + "<br/>";
        res += "Course:\t"+ course.Text + "<br/>";
        res += "I Have Laptop:\t"+ havelap.Checked + "<br/>";
        res +="UserName:\t"+ uname.Text + "<br/>";
        res += "Password:\t"+pass.Text + "<br/>";
        Label1.Visible = true;
        Label1.Text = res;
    }

}