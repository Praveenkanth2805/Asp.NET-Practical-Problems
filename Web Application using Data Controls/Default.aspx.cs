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
    protected void Button1_Click(object sender, EventArgs e)
    {
        //string path=Server.MapPath("~/App_data/Students.accdb");
        string virtualPath = "~/App_Data/Students.accdb";
        string path = Server.MapPath(virtualPath);
        string conStr = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source="+path+";Persist Security Info=False;";
        if (IsPostBack)
        {
            OleDbConnection conn = new OleDbConnection(conStr);

            OleDbDataAdapter da = new OleDbDataAdapter("SELECT *FROM studentPersonal", conn);
            DataTable dt = new DataTable();
            da.Fill(dt);

            Showdata.DataSource = dt;
            Showdata.DataBind();
            Button1.Text = "Hide";
            if (!Showdata.Visible)
            {
                Showdata.Visible = true;
                Button1.Text = "Hide";
            }
            else {
                Showdata.Visible = false;
                Button1.Text = "Show";
            }
        }
    }
}