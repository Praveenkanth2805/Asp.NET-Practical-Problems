<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Web Application using Data Controls</title>
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
    <h1 runat=server>Web Application using Data Controls</h1>
    </div>
    <div>
    <asp:GridView runat=server ID=Showdata AutoGenerateColumns=true 
            style="margin-left: 459px" ></asp:GridView><br /><br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Show" 
            Height="23px" style="margin-left: 0px" Width="95px" />
    </div>
    </form>
</body>
</html>
