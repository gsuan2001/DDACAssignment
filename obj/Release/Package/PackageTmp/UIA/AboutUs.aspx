<%@ Page Title="" Language="C#" MasterPageFile="~/template/template.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="DDAC.UIA.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    About Us
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
        <tr><td class="tdStyle"><h1>About UIA</h1></td></tr>
        
        <tr>

            <td class="tdChildStyle">
                 <div style="font-size:30px"> <b>We will take you anywhere!</b></div>
                <div>From 1992, UIA is highly reputed for its reliability, safety and punctuality, providing its passengers with European service standards, traditional Ukrainian hospitality and competitive prices.</div>
                <br />
                <div>Our airline connects Ukraine to capital cities and key hubs in Europe, the CIS, Middle East, Asia, Africa and USA. Through its numerous interline agreements, UIA operates flights to over 3 000 destinations across the globe.</div>
                <br />
                <div>Join UIA frequent flyer program Panorama Club! Use miles to get discounts, class upgrade, award tickets and more benefits.</div>
                </td>
        </tr>
    </table>

    <a href="Booking.aspx" style="margin-left:80px;">Go to Booking</a>
</asp:Content>
