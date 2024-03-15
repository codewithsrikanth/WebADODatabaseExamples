<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm7.aspx.cs" Inherits="WebADODB.WebForm7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="text-align: center;">CRUD Operations using Data Reader</h1>
            <hr />
            <table align="center" border="1">
                <tr>
                    <td>Enter Eno: </td>
                    <td>
                        <asp:TextBox ID="txtEno" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Enter Ename: </td>
                    <td>
                        <asp:TextBox ID="txtEname" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Enter Salary: </td>
                    <td>
                        <asp:TextBox ID="txtSalary" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Enter Designation: </td>
                    <td>
                        <asp:TextBox ID="txtDesignation" runat="server" /></td>
                </tr>
                <tr>
                    <td>Enter DeptNo: </td>
                    <td>
                        <asp:TextBox ID="txtDeptNo" runat="server" /></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button Text="Insert" ID="btnInsert" runat="server" OnClick="btnInsert_Click" /></td>
                    <td>
                        <asp:Button Text="Update" ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" /></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button Text="Delete" ID="btnDelete" runat="server" OnClick="btnDelete_Click" /></td>
                    <td>
                        <asp:Button Text="Find" ID="btnFind" runat="server" OnClick="btnFind_Click" /></td>
                </tr>
                <tr>
                    <td><asp:Button Text="Clear" ID="btnClear" runat="server" OnClick="btnClear_Click" /></td>
                    <td>
                        <asp:Label ID="lblResult" runat="server"></asp:Label></td>
                </tr>
            </table>
            <br /><br />
            <table align="center" border="1">
                <tr>
                    <td><asp:GridView ID="gvEmployee" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" OnSelectedIndexChanged="gvEmployee_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <SortedAscendingCellStyle BackColor="#FAFAE7" />
                        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                        <SortedDescendingCellStyle BackColor="#E1DB9C" />
                        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                        </asp:GridView></td>
                </tr>
            </table>
            
        </div>
    </form>
</body>
</html>
