<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<style type="text/css">
    #form1
    {
        text-align:center;
    }
    .style1
    {
        width: 100%;
    }
    .style2
    {}
    .style3
    {
        width: 211px;
    }
</style>
<body style="margin-right: 606px">
    <form id="form1" runat="server">
    <div>
    
    </div>
    <table class="style1">
        <tr>
            <td class="style3">
                <asp:Label ID="Label1" type=number runat="server" Text="EmpId"></asp:Label>
            </td>
            <td align="left">
        <asp:TextBox ID="eid" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label2" runat="server" Text="Ename"></asp:Label>
            </td>
            <td align="left">
        <asp:TextBox ID="ename" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label3" runat="server" Text="Age"></asp:Label>
            </td>
            <td align="left">
        <asp:TextBox ID="eage" type=number runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label4" runat="server" Text="Dep"></asp:Label>
            </td>
            <td align="left">
        <asp:TextBox ID="edep" runat="server" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label5" runat="server" Text="Salary"></asp:Label>
            </td>
            <td align="left">
        <asp:TextBox ID="esal" type=number runat="server" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <asp:Button ID="insert" runat="server" Text="Insert" onclick="insert_Click" />
                <asp:Button ID="update" runat="server" Text="Update" />
                <asp:Button ID="delete" runat="server" Text="Delete" />
            </td>
        </tr>
    </table>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="EmpId" DataSourceID="AccessDataSource1">
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
