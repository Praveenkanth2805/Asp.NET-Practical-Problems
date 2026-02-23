<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Implement Authentication – Authorization</title>
    <style type="text/css">
        #form1{ text-align:center;}
        .style1
        {
            width: 26%;
            margin-left: 460px;
            margin-right: 0px;
        }
        .style2
        {
            height: 23px;
        }
        .style3
        {
            width: 263px;
        }
        .style4
        {
            height: 23px;
            width: 263px;
        }
        .style5
        {
            width: 267px;
        }
        .style6
        {
            height: 23px;
            width: 267px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h2>Implement Authentication – Authorization</h2>
    </div>
    <div>
    
        <table align="center" class="style1">
            <tr>
                <td align="center" class="style2" colspan="2">
                    <asp:Label ID="Label2" runat="server" Text="Login" Font-Bold="True" 
                        Font-Italic="True" Font-Size="Large"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td align="right" class="style5">
                    <asp:Label ID="Label4" runat="server" Text="Username:"></asp:Label>
                </td>
                <td align="left" class="style3">
                    <asp:TextBox ID="TextBox1" runat="server" Width="99px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style6" align="right">
                    <asp:Label ID="Label5" runat="server" Text="Password:"></asp:Label>
                </td>
                <td class="style4" align="left">
                    <asp:TextBox ID="TextBox2" runat="server" Width="100px"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:Label ID="Label3" runat="server" Text="invalid user name or password" 
                        Visible="False" ForeColor="Red"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
                </td>
            </tr>
            </table>
    
    </div>
    </form>
</body>
</html>
