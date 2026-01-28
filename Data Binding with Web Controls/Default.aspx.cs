using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data ;
using System.Data.OleDb;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string path = "~/App_Data/Students.accdb";
            string dbpath = MapPath(path);
            string constr = "Provider=Microsoft.ACE.OLEDB.12.0; Data Source=" + dbpath + "; Persist Security info=false";

            OleDbConnection con = new OleDbConnection(constr);
            con.Open();
            OleDbDataAdapter da = new OleDbDataAdapter("Select * from course",con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            course.DataSource = dt;
            course.DataTextField = "Course_Name";
            course.DataBind();
            con.Close();
        }
    }

    protected void StudentList_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}