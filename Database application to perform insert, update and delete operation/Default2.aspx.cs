using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void insert_Click(object sender, EventArgs e)
    {
        string path = Server.MapPath("~/Employee.accdb");
        using (OleDbConnection con = new OleDbConnection("Provider= Microsoft.ACE.OLEDB.12.0; Data Source =" + path))
        {
            string iq = "INSERT INTO [Emppers] values(?,?,?,?,?)";
            OleDbCommand cmd = new OleDbCommand(iq, con);
            cmd.Parameters.AddWithValue("?", int.Parse(eid.Text));
            cmd.Parameters.AddWithValue("?", ename.Text);
            cmd.Parameters.AddWithValue("?", int.Parse(eage.Text));
            cmd.Parameters.AddWithValue("?", edep.Text);
            cmd.Parameters.AddWithValue("?", int.Parse(esal.Text));
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
        }

    }
}