<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Data Binding with Web Controls</title>
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
    <h1 runat=server>Data Binding with Web Controls</h1>
    </div>
    
    <asp:DropDownList ID="StudentList" runat="server" Height="16px">
    </asp:DropDownList><br /><br />
    <asp:Label ID="Name" runat="server" Text="Label"></asp:Label><br /><br />
    <asp:TextBox ID="Mark" runat="server" ></asp:TextBox>
    

    </form>
</body>
</html>
