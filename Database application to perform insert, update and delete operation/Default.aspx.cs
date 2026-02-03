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

    protected void insert_cmd(object sender, EventArgs e)
    {
        
        
        string path = @"Provider=Microsoft.ACE.OLEDB.12.0; Data Source=D:\github\Asp.NET-Practical-Problems\Database application to perform insert, update and delete operation\Employee.accdb";
        using (OleDbConnection con = new OleDbConnection(path)) {
            con.Open();

            OleDbCommand check = new OleDbCommand("SELECT COUNT(*) FROM Emppers WHERE EmpId = (?)",con);
            check.Parameters.AddWithValue("?", int.Parse(eid.Text));
            int count = (int)check.ExecuteScalar();
            if (count > 0) {
                msg.Visible = true;
                msg.Text = "EmpId is already exists";
                msg.ForeColor = System.Drawing.Color.Red;
                Timer1.Enabled = true;
                return;
            }

            OleDbCommand cmd = new OleDbCommand("INSERT into Emppers (EmpId, Ename, Age, Dep, Salary) values (?,?,?,?,?)", con);
            cmd.Parameters.AddWithValue("?", int.Parse(eid.Text));
            cmd.Parameters.AddWithValue("?", ename.Text);
            cmd.Parameters.AddWithValue("?", int.Parse(age.Text));
            cmd.Parameters.AddWithValue("?", dep.Text);
            cmd.Parameters.AddWithValue("?", int.Parse(sal.Text));
            cmd.ExecuteNonQuery();
            msg.Visible = true;
            Timer1.Enabled = true;
            msg.Text = "Inserted Successfully!";
            msg.ForeColor = System.Drawing.Color.Green;
            con.Close();
            eid.Text = "";
            ename.Text = "";
            age.Text = "";
            dep.Text = "";
            sal.Text = "";

            GridView1.DataBind();
        
    }
    }
    protected void set_time(object sender, EventArgs e)
    {
        Timer1.Enabled = false;
        msg.Visible = false;
        
    }
    protected void show_box(object sender, EventArgs e)
    {
        eid.Visible = true;
        ename.Visible = true;
        age.Visible = true;
        dep.Visible = true;
        sal.Visible = true;
        Button1.Visible = true;
        Button3.Visible = true;
        Button2.Visible = false;
    }
    protected void cancel_event(object sender, EventArgs e)
    {
        eid.Visible = false;
        ename.Visible = false;
        age.Visible = false;
        dep.Visible = false;
        sal.Visible = false;
        Button1.Visible = false;
        Button3.Visible = false;
        Button2.Visible = true;
    }
}