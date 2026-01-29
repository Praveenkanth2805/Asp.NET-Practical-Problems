<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Web application using Web controls</title>
</head>
<style>
#form1
{
    text-align:center    
}
    </style>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Web application using Web controls</h1>
    </div>
    <div>
    <h2>&nbsp;</h2>
        <h2>Simple Login</h2>
        <p>
            <asp:TextBox ID="user" runat="server" style="margin-left: 83px" 
                placeholder="username"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="user" ErrorMessage="*Username" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:TextBox ID="pass" runat="server" placeholder="password" 
                TextMode="Password" style="margin-left: 85px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="pass" ErrorMessage="*Password" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            &nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Login" />
        </p>
        <p>
            <asp:Label ID="error" runat="server" ForeColor="Red" Text="Invalid Credential" 
                Visible="False"></asp:Label>
        </p>
    </div>
    </form>
    </body>
</html>
