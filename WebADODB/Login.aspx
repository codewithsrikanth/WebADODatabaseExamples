<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebADODB.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="text-align: center; font-weight: bold;">Login Page</h1>
            <hr />
            <table>
                <tr>
                    <td>Enter Email</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" /></td>
                </tr>
                <tr>
                    <td>Enter Password</td>
                    <td><asp:TextBox ID="txtPwd" runat="server" /></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblResult" runat="server"></asp:Label></td>
                    <td><asp:Button Text="Login" ID="btnLogin" runat="server" OnClick="btnLogin_Click" /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:HyperLink ID="lnkRegistration" NavigateUrl="~/Registration.aspx" runat="server">New user Register Here?</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
