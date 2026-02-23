<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User.aspx.cs" Inherits="Admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Panel</title>
</head>
<style type="text/css">
    #form1
    {
       text-align:center;
        }
</style>
<body>
    <form id="form1" runat="server">
    <div>
    <h2>Implement Authentication – Authorization</h2>
    </div>
    <div>
        <h2 style="font-family: 'Times New Roman', Times, serif; font-style: oblique; font-variant: small-caps; color: #008000; top: 100px; text-decoration: blink;">login Success</h2>
        <h3 style="font-family: 'Courier New', Courier, monospace">Welcome to User</h3>
    </div>
    <div>
    
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Logout" />
    
    </div>
    </form>
</body>
</html>
