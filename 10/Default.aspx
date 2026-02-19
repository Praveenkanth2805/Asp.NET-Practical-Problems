<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            text-align:center;
        }
        .style1
        {
            width: 100%;
            margin-left: 335px;
        }
        .style2
        {
            width: 226px;
        }
        .style3
        {
            width: 226px;
            height: 26px;
        }
        .style4
        {
            height: 26px;
        }
    </style>
</head>
<body style="width: 477px">
    <form id="form1" runat="server">
    <div>
    
    </div>
    <table align="center" class="style1">
        <tr>
            <td class="style3">
                EmpId:</td>
            <td class="style4">
                <asp:TextBox ID="eid" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Name:</td>
            <td>
                <asp:TextBox ID="ename" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Age:</td>
            <td class="style4">
                <asp:TextBox ID="age" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Dept:</td>
            <td>
                <asp:TextBox ID="dep" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Salary:</td>
            <td>
                <asp:TextBox ID="sal" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
    <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        style="margin-left: 546px" Text="insert" />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" style="margin-left: 487px">
    </asp:GridView>
    </form>
</body>
</html>
