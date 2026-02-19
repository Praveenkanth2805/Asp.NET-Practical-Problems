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
    string constr = @"Provider= Microsoft.ACE.OLEDB.12.0; Data Source = D:\github\Asp.NET-Practical-Problems\10\Employee.accdb";

    protected void Page_Load(object sender, EventArgs e)
    {
        OleDbConnection con = new OleDbConnection(constr);
        con.Open();
        string sq = "SELECT * FROM Emppers;";
        //OleDbCommand sqcmd = new OleDbCommand(sq, con);
        OleDbDataAdapter da = new OleDbDataAdapter(sq,con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        OleDbConnection con = new OleDbConnection(constr); 
        string iq = "INSERT INTO Emppers (EmpId, Ename, Age, Dep, Salary) values (?,?,?,?,?)";
        OleDbCommand inscmd = new OleDbCommand(iq, con);
        inscmd.Parameters.AddWithValue("?",int.Parse(eid.Text));
        inscmd.Parameters.AddWithValue("?",ename.Text);
        inscmd.Parameters.AddWithValue("?", int.Parse(age.Text));
        inscmd.Parameters.AddWithValue("?", dep.Text);
        inscmd.Parameters.AddWithValue("?",int.Parse(sal.Text));
        con.Open();
        inscmd.ExecuteNonQuery();
        con.Close();
        eid.Text = "";
        ename.Text = "";
        age.Text = "";
        dep.Text = "";
        sal.Text = "";

        Label1.Text = "inserted";
        GridView1.DataBind();
        Response.Redirect("Default.aspx");

    }
}