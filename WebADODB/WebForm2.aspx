<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebADODB.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btnDelete" runat="server" Font-Bold="True" Font-Size="Large"
                OnClick="btnDelete_Click" Text="Delete" />
            <br />
            <asp:Label ID="lblDisplay" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
        </div>
    </form>
</body>
</html>
