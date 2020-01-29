<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
    <table style="width: 100%; height: 224px;">
    <tr>
        <td align="center" colspan="2" style="background-color: #6699FF">
            RESGISTERATION</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 146px">
            <asp:Label ID="Label1" runat="server" Text="Enter Usename:"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="Should Not Be Empty" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 146px">
            <asp:Label ID="Label2" runat="server" Text="Enter Password:"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="Should Not Be Empty" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 146px">
            <asp:Label ID="Label3" runat="server" Text="Cofirm Password;"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
&nbsp;
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ErrorMessage="Not Same" ControlToValidate="TextBox3" 
                ControlToCompare="TextBox2"></asp:CompareValidator>
&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
    <td>
        <asp:Label ID="Label5" runat="server" Text="Enter Email:"></asp:Label>
        </td>
    <td>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="TextBox5" ErrorMessage="Should Not Be Empty"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox5" ErrorMessage="Invalid Input" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        &nbsp;&nbsp;
        </td>
    </tr>
    <tr>
        <td style="width: 146px">
            <asp:Label ID="Label4" runat="server" Text="Phone Number:"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ErrorMessage="Should Not Be Empty" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
        &nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="TextBox4" ErrorMessage="Invalid Input" 
                ValidationExpression="\d{8}"></asp:RegularExpressionValidator>
        &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label7" runat="server" Text="Should be 8 digit number"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="height: 21px; width: 146px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Register" 
                onclick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            &nbsp;</td>
            <td>&nbsp;&nbsp;<asp:Label ID="Label6" runat="server"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="Login" />
        </td>
        <td style="height: 21px">
            <asp:Button ID="Button3" runat="server" Text="Reset" Width="79px" />
        </td>
    </tr>
</table>
</asp:Content>

