<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebADODB.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btnConnect" runat="server" Font-Bold="True" Font-Size="Large"
                OnClick="btnConnect_Click" Text="Connect" />
            <br />
            <asp:Label ID="lblDisplay" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
        </div>
    </form>
</body>
</html>
