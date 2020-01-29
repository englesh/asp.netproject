<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="cpage.aspx.cs" Inherits="cpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 233px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 233px">
                <asp:Label ID="Label1" runat="server" Text="Enter Number Of Seats:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px" 
                   ></asp:TextBox>
            &nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server"></asp:Label>
            &nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Should not be empty"></asp:RequiredFieldValidator>
&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Cannot book more the 5 tickets" 
                    ValidationExpression="\d{1}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 233px">
                <asp:Label ID="Label2" runat="server" Text="Select The Type Of Seat:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Select Type</asp:ListItem>
                    <asp:ListItem>PRIME</asp:ListItem>
                    <asp:ListItem>GOLD</asp:ListItem>
                    <asp:ListItem>PLATINUM</asp:ListItem>
                    <asp:ListItem>VIP</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 233px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Confirm Booking" />
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

