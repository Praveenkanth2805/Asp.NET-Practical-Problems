<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Web Application Tools</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            margin-left: 250px;
            
        }
        .style2
        {
            width: 374px;
        }
        .style3
        {
            width: 374px;
            height: 23px;
        }
        #form1
        {
            text-align:center;
            margin-top:100px;
        }
        #Button1
        {
            margin-top:20px;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server" >
    <div>
    <h1 runat="server">Web Application Tools</h1><br />

    </div>
    <table  class="style1">
        <tr>
            <td align="center" class="style2">
                Student Name:</td>
            <td align="left">
                <asp:TextBox ID="TextBox1" runat="server" Width="237px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" class="style2">
                Gender:</td>
            <td align="left">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                    style="margin-left: 0px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td align="center" class="style3">
                DOB:</td>
            <td align="left" class="style4>
                <asp:TextBox ID="Textdate" runat="server"></asp:TextBox>
                <asp:TextBox ID="Text" type="date" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" class="style2">
                Course:</td>
            <td align="left">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Selected="True">.NET</asp:ListItem>
                    <asp:ListItem>Micro Processer</asp:ListItem>
                    <asp:ListItem>Data Science</asp:ListItem>
                    <asp:ListItem>Software Testing</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="center" class="style2">
                Skills:</td>
            <td align="left">
                <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                    <asp:ListItem>COA</asp:ListItem>
                    <asp:ListItem>Typing</asp:ListItem>
                </asp:CheckBoxList>
            </td>
        </tr>
        <tr>
            <td align="center" class="style2">
                Contact:</td>
            <td align="left">
                <asp:TextBox ID="TextBox3" type="number" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" class="style2">
                Address:</td>
            <td align="left">
                <textarea id="TextArea1" cols="20" name="S1" rows="2"></textarea></td>
        </tr>
    </table>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Submit" />
    </form>
</body>
</html>
