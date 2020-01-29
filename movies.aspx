<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="movies.aspx.cs" Inherits="movies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
    <table style="width: 100%; height: 350px">
        <tr>
            <td style="width: 359px">
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/mtb.jpg" 
                    Width="346px" Height="262px" onclick="ImageButton1_Click" />

                
            </td>
            <td align="center">
                
                <asp:AdRotator ID="AdRotator1" runat="server" 
                    AdvertisementFile="~/movieFile.xml" />
            </td>
        </tr>
    </table>
</asp:Content>

