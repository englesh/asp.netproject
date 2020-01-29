<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
    <table style="width: 100%">
        <tr>
            
            <td align="center" style="width: 353px; background-color: #00FF00;" 
                bgcolor="Lime" colspan="2">
                LOGIN PAGE</td>
               
            
        </tr>
        <tr>
            <td style="width: 192px; background-color: #00FF00;" align="left">
                <asp:Label ID="Label1" runat="server" Text="Enter Username:"></asp:Label>
            </td>
            <td style="width: 353px; background-color: #00FF00;">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Cannot be empty" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;
                </td>
           
        </tr>
        <tr>
            <td style="width: 192px; background-color: #00FF00;" align="left">
                <asp:Label ID="Label2" runat="server" Text="Enter Password:"></asp:Label>
            </td>
            <td style="width: 353px; background-color: #00FF00;">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Cannot be empty" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
            </td>
           
        </tr>
        <tr>
        <td style="background-color: #00FF00; width: 192px;">
            <asp:Button ID="Button2" runat="server" style="background-color: #FFFF00" align="left"
                Text="New User..!!! Please Register" onclick="Button2_Click" />
            </td>
        <td style="width: 353px; background-color: #00FF00;">
            <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" 
                style="background-color: #3399FF" />
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

