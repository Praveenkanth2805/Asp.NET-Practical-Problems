<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Implement the Html Controls</title>
    
</head>
<style type="text/css">
    #form1{ text-align:center;}
    .style1
    {
        width: 100%;
        margin-left: 321px;
    }
    .style2
    {
        width: 326px;
    }
    #Select1
    {
        width: 178px;
    }
    #Text1
    {
        width: 177px;
    }
    #Text2
    {
        width: 176px;
    }
    #Password1
    {
        width: 172px;
    }
    #TextArea1
    {
        height: 176px;
        width: 435px;
    }
</style>
<body>
    <form id="form1" runat="server">
    <div>
    <h1 runat=server>Implement the Html Controls</h1>
    <br />
    <h2>Student Registration Form</h2>
        <table class="style1">
            <tr>
                <td class="style2">
                    Student Name:</td>
                <td align="left">
                    <asp:TextBox ID="name" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Gender:</td>
                <td align="left">
                    <asp:RadioButtonList ID="gender" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Address:</td>
                <td align="left">
                    <asp:TextBox ID="address" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Course:</td>
                <td align="left">
                    <asp:DropDownList ID="course" runat="server" Width="126px">
                        <asp:ListItem>.NET</asp:ListItem>
                        <asp:ListItem>Data Science</asp:ListItem>
                        <asp:ListItem>Micro Processer</asp:ListItem>
                        <asp:ListItem>Software Testing</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td align="left">
                    <asp:CheckBox ID="havelap" runat="server" Text="Have Laptop" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Username:</td>
                <td align="left">
                    <asp:TextBox ID="uname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Password:</td>
                <td align="left">
                    <asp:TextBox ID="pass" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        &nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
        <br />
        <br />
    </div>
    <asp:Label ID="Label1" runat="server" Text="Label" Visible=false></asp:Label>
    </form>
</body>
</html>
