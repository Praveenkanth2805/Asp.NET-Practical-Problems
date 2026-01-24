<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Implement the Html Controls</title>
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function Select1_onclick() {

        }

        function Text1_onclick() {

        }

// ]]>
    </script>
</head>
<style>
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
                    <input id="Text1" type="text" onclick="return Text1_onclick()" /></td>
            </tr>
            <tr>
                <td class="style2">
                    Gender:</td>
                <td align="left">
                    <input id="Radio2" type="radio" />Male<br />
                    <input id="Radio1" type="radio" />Female</td>
            </tr>
            <tr>
                <td class="style2">
                    Address:</td>
                <td align="left">
                    <textarea id="TextArea1" cols="20" name="S1" rows="2"></textarea></td>
            </tr>
            <tr>
                <td class="style2">
                    Course:</td>
                <td align="left">
                    <select id="Select1" name="D1" onclick="return Select1_onclick()">
                        <option>--Select--</option>
                        <option>.NET</option>
                        <option>Data Science</option>
                        <option>Micro Processer</option>
                        <option>Software Testing</option>
                    </select></td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td align="left">
                    <input id="Checkbox1" type="checkbox" />Have Laptop</td>
            </tr>
            <tr>
                <td class="style2">
                    Username:</td>
                <td align="left">
                    <input id="Text2" type="text" /></td>
            </tr>
            <tr>
                <td class="style2">
                    Password:</td>
                <td align="left">
                    <input id="Password1" type="password" /></td>
            </tr>
        </table>
        <br />
        <input id="Submit1" type="submit" value="submit" /><br />
    </div>
    </form>
</body>
</html>
