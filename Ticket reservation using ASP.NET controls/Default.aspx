<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ticket reservation using ASP.NET controls</title>
</head>
<style type="text/css">
    #form1{ text-align:center;}
    .style1
    {
        width: 52%;
        margin-right: 0px;
        margin-left: 390px;
    }
    .style2
    {
    }
    .style3
    {
        width: 123px;
        height: 26px;
    }
    .style5
    {
        width: 123px;
    }
    .style6
    {
        width: 365px;
        height: 26px;
    }
    .style7
    {
        width: 365px;
    }
    .style8
    {
        width: 110px;
        height: 26px;
    }
    .style9
    {
        width: 110px;
    }
</style>
<body>
    <form id="form1" runat="server">
    <div>
    <h2>Ticket reservation using ASP.NET controls</h2>
    </div>
    <div>
    
        <table align="center" cellpadding="2" cellspacing="3" class="style1">
            <tr>
                <td align="right" class="style3">
                    <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
                </td>
                <td class="style6" align="center">
                    <asp:TextBox ID="name" runat="server"></asp:TextBox>
                </td>
                <td class="style8" align="center">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="name" ErrorMessage="Name is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    <asp:Label ID="Label2" runat="server" Text="Gender:"></asp:Label>
                </td>
                <td class="style6" align="center">
                    <asp:RadioButtonList ID="gender" runat="server" >
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="style8" align="center">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="gender" ErrorMessage="Gender is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style5">
                    <asp:Label ID="Label3" runat="server" Text="From:"></asp:Label>
                </td>
                <td align="center" class="style7">
                    <asp:DropDownList ID="from" runat="server" AutoPostBack="True" 
                        DataSourceID="AccessDataSource1" DataTextField="from" DataValueField="from" >
                    </asp:DropDownList>
                    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                        DataFile="~/train_reserve.accdb" SelectCommand="SELECT [from] FROM [reserve]">
                    </asp:AccessDataSource>
&nbsp;</td>
                <td rowspan="2">
                    <asp:Label ID="Label8" runat="server" Text="Count:"></asp:Label>
                    <asp:DropDownList ID="fcount" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="to_SelectedIndexChanged">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td align="center" class="style9" rowspan="3">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="from" ControlToValidate="to" 
                        ErrorMessage="Place Must Be Not Same" ForeColor="Red" Operator="NotEqual"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style5">
                    <asp:Label ID="Label4" runat="server" Text="To:"></asp:Label>
                </td>
                <td align="center" class="style7">
                    <asp:DropDownList ID="to" runat="server" AutoPostBack="True" 
                        DataSourceID="AccessDataSource2" DataTextField="to" DataValueField="to" 
                        onselectedindexchanged="to_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
                        DataFile="~/train_reserve.accdb" SelectCommand="SELECT [to] FROM [reserve]">
                    </asp:AccessDataSource>
                </td>
            </tr>
            <tr>
                <td align="right" class="style5">
                    <asp:Label ID="Label7" runat="server" Text="Fare:"></asp:Label>
                </td>
                <td align="center" class="style7">
                    <asp:Label ID="fare" runat="server" Text="0"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right" class="style5">
                    <asp:Label ID="Label6" runat="server" Text="Date:"></asp:Label>
                </td>
                <td align="center" class="style7">
                    <asp:TextBox ID="rdate" type=date runat="server"></asp:TextBox>
                    
                </td>
                <td align="center" class="style9">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style2" colspan="3">
                    <asp:Button ID="Button1" runat="server" Text="Book a Ticket" 
                        onclick="Btn_click" />
                    
                </td>
            </tr>
            <tr>
                <td align="center" class="style2" colspan="3">
                    <asp:Label ID="book" runat="server" ForeColor="#33CC33" 
                        Text="Booked Successfully" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" class="style2" colspan="3">
                    <asp:Label ID="bill" runat="server" ForeColor="#000066" 
                        Text="Booked Successfully" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
