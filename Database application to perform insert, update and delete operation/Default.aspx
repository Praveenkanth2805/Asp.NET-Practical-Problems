<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Database application to perform insert, update and 
delete operations</title>
</head>
<style>
    #form1
    {
        text-align:center;
        }
</style>
<body>
    <form id="form1" runat="server" visible="True">
    <div>
    <h1>Database application to perform insert, update and 
delete operations</h1>
    </div>
    <asp:Button ID="Button2" runat="server" onclick="show_box" Text="add" 
        style="margin-left: 648px" />
    <br />
    <br />
    <asp:TextBox ID="eid" runat="server" Visible="False"></asp:TextBox>
    <br />
    <asp:TextBox ID="ename" runat="server" Visible="False"></asp:TextBox>
    <br />
    <asp:TextBox ID="age" runat="server" style="height: 22px" Visible="False"></asp:TextBox>
    <br />
    <asp:TextBox ID="dep" runat="server" Visible="False"></asp:TextBox>
    <br />
    <asp:TextBox ID="sal" runat="server" Visible="False"></asp:TextBox>
    <br />
    <br />
    
    <asp:Label ID="msg" runat="server" Text="Label" Visible="False"></asp:Label>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" onclick="insert_cmd" Text="add" 
        Visible="False" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button3" runat="server" onclick="cancel_event" Text="cancel" 
        Visible="False" />
    <br />
    <br />
    
    <asp:Timer ID="Timer1" runat="server" Interval="3000" OnTick=set_time>
    </asp:Timer>
    <asp:ScriptManager ID="ScriptManager1" runat="server"/>
    
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="EmpId" DataSourceID="AccessDataSource1" 
        style="margin-left: 372px" AllowPaging="True">
        <Columns>
            <asp:BoundField DataField="EmpId" HeaderText="EmpId" ReadOnly="True" 
                SortExpression="EmpId" />
            <asp:BoundField DataField="Ename" HeaderText="Ename" SortExpression="Ename" />
            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
            <asp:BoundField DataField="Dep" HeaderText="Dep" SortExpression="Dep" />
            <asp:BoundField DataField="Salary" HeaderText="Salary" 
                SortExpression="Salary" />
            <asp:ButtonField ButtonType="Button" CommandName="Update" Text="Update" />
            <asp:ButtonField ButtonType="Button" CommandName="Delete" Text="Delete" />
        </Columns>
    </asp:GridView>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/Employee.accdb" SelectCommand="SELECT * FROM [Emppers]">

    </asp:AccessDataSource>
    </form>
</body>
</html>
