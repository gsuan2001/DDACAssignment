<%@ Page Title="" Language="C#" MasterPageFile="~/template/template.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="DDAC.UIA.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Profile
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Menu" runat="server">
     <a href="Home.aspx">Home</a>
    <a href="AboutUs.aspx">About Us</a>
    <a href="Booking.aspx">Book Ticket</a>
    <a href="BookingHistory.aspx">Booking History</a>
    <a href ="Profile.aspx" class="profile">Profile</a>
    <a href ="Login.aspx">Logout</a>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="webContent" runat="server">
    <table>
        <tr><td class="tdStyle"><h1>User Profile</h1></td></tr>
        
        <tr>

            <td class="tdChildStyle">
                
                <div><asp:Label Text="Name" runat="server"></asp:Label> &nbsp;&nbsp; 
                    <asp:Label ID="lblName" runat="server" Text=""></asp:Label>
                </div>
                <br />
                <div><asp:Label Text="Email" runat="server"></asp:Label> &nbsp;&nbsp; 
                    <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label>
                </div>
                <br />
                <div><asp:Label Text="Contact" runat="server"></asp:Label> &nbsp;&nbsp; 
                    <asp:Label ID="lblContact" runat="server" Text=""></asp:Label>
                </div>
                <br />
                <div><asp:Label Text="Booking History" runat="server"></asp:Label> &nbsp;&nbsp; 
                    <a href ="BookingHistory.aspx">Check Booking History</a>
                    <br />
                    <br />
                </div>
                <div>
                    <a href="Booking.aspx">Book Ticket</a>
                </div>
                </td>
        </tr>
    </table>

</asp:Content>
