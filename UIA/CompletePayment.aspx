<%@ Page Title="" Language="C#" MasterPageFile="~/template/template.Master" AutoEventWireup="true" CodeBehind="CompletePayment.aspx.cs" Inherits="DDAC.UIA.CompletePayment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Complete Payment
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
        <tr><td class="tdStyle"><h1>Complete Payment</h1></td></tr>
        <tr>
            <td class="tdChildStyle">
                <div>
                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                    :
                    <asp:Label ID="lblCustomerName" runat="server" Text=""></asp:Label>
                </div>
                <br />
                <div>
                     <asp:Label ID="Label2" runat="server" Text="Departure Trip"></asp:Label>
                     :
                    <asp:Label ID="lblDepartTrip" runat="server" Text=""></asp:Label>
                </div>
                <br />
                 <div>
                     <asp:Label ID="Label3" runat="server" Text="Return Trip"></asp:Label>
                     :
                    <asp:Label ID="lblReturnTrip" runat="server" Text=""></asp:Label>
                </div>
                 <br />
                 <div>
                     <asp:Label ID="Label4" runat="server" Text="Total"></asp:Label>
                     :
                    <asp:Label ID="lblTotal" runat="server" Text=""></asp:Label>
                </div>
                     
                <br />
                <div style="text-align:center">
                      <asp:Button ID="btnPay" runat="server" CssClass="btn" Width="176px" Text="Complete Payment" Height="31px" OnClick="btnPay_Click" />
                 </div>
                <br />
              </td>
        </tr>
    </table>
</asp:Content>
