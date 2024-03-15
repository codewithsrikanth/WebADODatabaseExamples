<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="WebADODB.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="text-align: center; font-weight: bold;">Registration Page</h1>
            <hr />
            <table align="center" border="1">
                <tr>
                    <td>Enter Email</td>
                    <td>
                        <asp:TextBox runat="server" ID="txtEmail" /></td>
                </tr>
                <tr>
                    <td>Enter Password</td>
                    <td><asp:TextBox runat="server" ID="txtPwd" /></td>
                </tr>
                <tr>
                    <td>Select City</td>
                    <td>
                        <asp:DropDownList ID="ddlCity" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblResult" runat="server"></asp:Label></td>
                    <td><asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" /></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
