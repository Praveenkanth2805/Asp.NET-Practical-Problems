<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Data binding with Data Controls</title>
</head>
<style>
    #form1
    {
        text-align:center;
        }
</style>
<body>
    <form id="form1" runat="server">
    <div>
    <h1 runat=server>Data binding with Data Controls</h1><br /><br />
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="EmpId" DataSourceID="AccessDataSource1" 
        style="margin-left: 541px">
        <Columns>
            <asp:BoundField DataField="EmpId" HeaderText="EmpId" ReadOnly="True" 
                SortExpression="EmpId" />
            <asp:BoundField DataField="Ename" HeaderText="Ename" SortExpression="Ename" />
            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
            <asp:BoundField DataField="Dep" HeaderText="Dep" SortExpression="Dep" />
            <asp:BoundField DataField="Salary" HeaderText="Salary" 
                SortExpression="Salary" />
        </Columns>
    </asp:GridView>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/Employee.accdb" SelectCommand="SELECT * FROM [Emppers]">
    </asp:AccessDataSource>
    </form>
</body>
</html>
