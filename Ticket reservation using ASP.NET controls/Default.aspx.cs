using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
   
    protected void Btn_click(object sender, EventArgs e)
    {
        bill.Text = "Name: " + name.Text + "<br>" +
                  "Gender:" + gender.SelectedValue + "<br>" +
                  "From: " + from.SelectedValue + "<br>" +
                   "To:" + to.SelectedValue + "<br>" +
                  "Date: " + rdate.Text + " <br>" +
                  "booked Time:"+DateTime.Now.ToString("hh:mm:ss tt");
        bill.Visible = true;
        book.Visible = true;
    }
   
    protected void to_SelectedIndexChanged(object sender, EventArgs e)
    {
        string path = Server.MapPath("~/train_reserve.accdb");
        string spath = @"Provider=Microsoft.ACE.OLEDB.12.0; Data Source=" + path;
        OleDbConnection con = new OleDbConnection(spath);
        con.Open();
        string qu = "SELECT fare FROM reserve WHERE from=? and to=?";
        OleDbCommand cmd = new OleDbCommand(qu, con);
        cmd.Parameters.AddWithValue("?", from.SelectedValue);
        cmd.Parameters.AddWithValue("?", to.SelectedValue);
        cmd.ExecuteNonQuery();

        object res = cmd.ExecuteScalar();
        con.Close();
        if (res != null)
        {
            fare.Text = res.ToString();

            string cfare = res.ToString();
            int f = int.Parse(cfare);
            int c = int.Parse(fcount.SelectedValue);
            fare.Text = (f * c).ToString();
        }
        else
        {
            fare.Text = "route not available!";
        }
    }
   
}