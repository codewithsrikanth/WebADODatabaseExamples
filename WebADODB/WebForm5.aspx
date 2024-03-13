<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="WebADODB.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table border="1" align="center">
                <tr>
                    <td>Enter Employee Name: </td>
                    <td><asp:TextBox runat="server" ID="txtEname"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblSalary" runat="server"></asp:Label></td>
                    <td><asp:Button runat="server" ID="btnSubmit" Text="Submit" OnClick="btnSubmit_Click" /></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
