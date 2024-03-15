<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm6.aspx.cs" Inherits="WebADODB.WebForm6" %>

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
                    <td>Select City: </td>
                    <td><asp:DropDownList ID="ddlCity" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlCity_SelectedIndexChanged"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td style="text-align:center" colspan="2">
                        <asp:Label ID="lblCity" runat="server" Text="" Font-Bold="true"></asp:Label>
                        <br />
                        <br />
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebForm1.aspx">WebForm1</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
