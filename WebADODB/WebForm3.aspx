<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="WebADODB.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <table align="center" class="style1">
     <tr>
         <td>
             <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
                 Text="Enter EmpId"></asp:Label>
         </td>
         <td>
             <asp:TextBox ID="txtEmpId" runat="server" Font-Bold="True" Font-Size="Large"></asp:TextBox>
         </td>
     </tr>
     <tr>
         <td>
 <asp:Label ID="lblDisplay" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
    
         </td>
         <td>
    
 <asp:Button ID="btnDelete" runat="server" Font-Bold="True" Font-Size="Large" 
     onclick="btnDelete_Click" Text="Delete" />
         </td>
     </tr>
 </table>
        </div>
    </form>
</body>
</html>
