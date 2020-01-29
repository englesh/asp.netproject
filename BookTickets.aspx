<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="BookTickets.aspx.cs" Inherits="BookTickets" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
    &nbsp;<table style="width: 100%">
        <tr>
            <td align="center" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;<asp:Label ID="Label1" runat="server" Text="TICKET BOOKING"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label5" runat="server"></asp:Label>
            </td>        </tr>
        <tr>
            <td style="width: 361px">
                <asp:Label ID="Label2" runat="server" Text="Select City:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                    AutoPostBack="True">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 361px">
                <asp:Label ID="Label3" runat="server" Text="Select Theatre:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 361px">
                <asp:Label ID="Label4" runat="server" Text="Select Movie:"></asp:Label>
            </td>
            <td>
                
                <asp:DropDownList ID="DropDownList3" runat="server">
                </asp:DropDownList>
                
            </td>
        </tr>
        <tr>
            <td style="width: 361px">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Next" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
        <td style="width: 361px">&nbsp;</td>
        <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

