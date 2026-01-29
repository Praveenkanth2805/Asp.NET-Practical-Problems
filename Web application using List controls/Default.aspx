<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Web application using List controls</title>
    
</head>
<style type="text/css">
    #form1{ text-align:center;}
    .style1
    {
        width: 100%;
        margin-left: 357px;
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
    .style3
    {
        width: 326px;
        height: 25px;
    }
    .style4
    {
        height: 25px;
    }
</style>
<body>
    <form id="form1" runat="server">
    <div>
    <h1 runat=server>Web application using List controls</h1>
    <br />
    <h2>Student Registration Form</h2>
        <table class="style1">
            <tr>
                <td class="style2" align="center">
                    Student Name:</td>
                <td align="left">
                    <asp:TextBox ID="name" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2" align="center">
                    Gender:</td>
                <td align="left">
                    <asp:RadioButtonList ID="gender" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="style2" align="center">
                    State</td>
                <td align="left">
                    <asp:DropDownList ID="course" runat="server" Width="126px">
                        <asp:ListItem>Tamil Nadu</asp:ListItem>
                        <asp:ListItem>Kerala</asp:ListItem>
                        <asp:ListItem>Karnataka</asp:ListItem>
                        <asp:ListItem>Andhra</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2" align="center">
                    Course:</td>
                <td align="left">
                    <asp:ListBox ID="ListBox1" runat="server">
                        <asp:ListItem>.NET</asp:ListItem>
                        <asp:ListItem>Microprocesser</asp:ListItem>
                        <asp:ListItem>Software Testing</asp:ListItem>
                        <asp:ListItem>Data Science</asp:ListItem>
                    </asp:ListBox>
                </td>
            </tr>
            <tr>
                <td class="style3" align="center">
                    Language Known:</td>
                <td align="left" class="style4">
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                        <asp:ListItem>Tamil</asp:ListItem>
                        <asp:ListItem>English</asp:ListItem>
                        <asp:ListItem>Hindi</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            </table>
        <br />
        &nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
        <br />
        <br />
    </div>
    </form>
</body>
</html>
