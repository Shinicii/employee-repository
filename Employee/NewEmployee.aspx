<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewEmployee.aspx.cs" Inherits="Employee.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style9 {
            width: 280px;
        }
        .auto-style10 {
            width: 184px;
        }
        .auto-style11 {
            margin-left: 0px;
        }
        .auto-style12 {
            width: 115px;
        }
        .auto-style13 {
            width: 115px;
            height: 33px;
        }
        .auto-style14 {
            width: 280px;
            height: 33px;
        }
        .auto-style15 {
            width: 184px;
            height: 33px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2 style="text-align: center">New Employee Details</h2>
            <table align="center">
            <tr>
                <td class="auto-style12">ID</td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Number" CssClass="auto-style11"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                    Must be unique.</td>
            </tr>
            <tr>
                <td class="auto-style13">Name</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style15">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">Email</td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Email"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">Phone</td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Phone"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">Address</td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="Phone"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style9">
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                </td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            </table>
    </form>
    </body>
</html>
