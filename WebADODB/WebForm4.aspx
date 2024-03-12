<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="WebADODB.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1><asp:Label Text="" ID="lblMsg" runat="server" /></h1>
            <table border="1" align="center">
                <tr>
                    <td>Enter Eno</td>
                    <td>
                        <asp:TextBox ID="txtEno" runat="server" /></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="Eno is Mandatory" ControlToValidate="txtEno" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" Text="Enter Only Digits" ControlToValidate="txtEno" Font-Bold="True" ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>Enter Ename</td>
                    <td>
                        <asp:TextBox runat="server" ID="txtEname" /></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Text="Ename is Mandatory" ControlToValidate="txtEname" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>Enter Salary</td>
                    <td>
                        <asp:TextBox runat="server" ID="txtSalary" /></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Text="Salary is Mandatory" ControlToValidate="txtSalary" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>Enter Designation</td>
                    <td>
                        <asp:TextBox runat="server" ID="txtDesignation" /></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Text="Designation is Mandatory" ControlToValidate="txtDesignation" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>Enter DeptID</td>
                    <td>
                        <asp:TextBox runat="server" ID="txtDeptID" /></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Text="DeptID is Mandatory" ControlToValidate="txtDeptID" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td><asp:Button Text="Insert" ID="btnInsert" runat="server" CommandName="Insert" OnCommand="DBOperations" /></td>
                    <td><asp:Button Text="Delete" ID="btnDelete" runat="server" CommandName="Delete" OnCommand="DBOperations" /></td>
                    <td><asp:Button Text="Update" ID="btnUpdate" runat="server" CommandName="Update" OnCommand="DBOperations" /></td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="lblDisplay" Font-Bold="true" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="3"><asp:Button runat="server" ID="btnClear" Text="Clear" OnClick="btnClear_Click" /></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
