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

            OleDbCommand cmd = new OleDbCommand("Select * from studentMarks", con);
            con.Open();
            OleDbDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Name.Text = dr["sname"].ToString();
                Mark.Text = dr["Total"].ToString();
            }
            dr.Close();
            OleDbDataAdapter da = new OleDbDataAdapter("Select * from studentMarks",con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            StudentList.DataSource = dt;
            StudentList.DataTextField = "Sname";
            StudentList.DataBind();
            con.Close();
        }
    }
    
}