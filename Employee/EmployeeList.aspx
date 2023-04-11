<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeList.aspx.cs" Inherits="Employee.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 737px;
        }
        .auto-style2 {
            width: 236px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2 style="font-family: 'Times New Roman', Times, serif; text-align: center; ">List of Employees</h2>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style1" align="center">
            <asp:Button ID="new" runat="server" OnClick="addNewEmployee" Text="New Employee" Font-Names="Segoe UI Variable Text Semibold" align="center" ValidationGroup="G1"/>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style1">
        <asp:GridView ID="employees" runat="server" AllowSorting="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CaptionAlign="Top" CellPadding="3" ForeColor="Black" GridLines="Vertical" HorizontalAlign="Center" ShowHeaderWhenEmpty="True">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>   
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2" align="right">Search:</td>
                    <td class="auto-style1" align="center">
                        <asp:DropDownList ID="DropDownList1" runat="server" ValidationGroup="G2">
                            <asp:ListItem>select</asp:ListItem>
                            <asp:ListItem>ID</asp:ListItem>
                            <asp:ListItem>Name</asp:ListItem>
                            <asp:ListItem>Email</asp:ListItem>
                            <asp:ListItem>Phone</asp:ListItem>
                        </asp:DropDownList>
                        <asp:TextBox ID="TextBox1" runat="server" ValidationGroup="G2"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" ValidationGroup="G2">Enter parameters to search.</asp:RequiredFieldValidator>
                    </td>
                    <td align="left">
            <asp:Button ID="srch" runat="server" OnClick="search" Text="Search" Font-Names="Segoe UI Variable Text Semibold;" ValidationGroup="G2"/>
                    </td>
                </tr>
                <tr>
                    <td align ="right">
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                    <td align ="center" class="auto-style1">
                        <asp:GridView ID="searchemp" runat="server">
                        </asp:GridView>
                    </td>
                    <td aria-atomic="True">
                        &nbsp;</td>
                </tr>
            </table>
        
        <div>
           </div>

       </form>
</body>
</html>
