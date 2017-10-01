<%@ Page Title="" Language="C#" MasterPageFile="~/template/template.Master" AutoEventWireup="true" CodeBehind="BookingHistory.aspx.cs" Inherits="DDAC.UIA.BookingHistory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Booking History
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
        <tr><td class="tdStyle"><h1>Booking History</h1></td></tr>
        <tr>
            <td class="tdChildStyle">
               
               
                <asp:GridView ID="gridBookingHistory" runat="server" AutoGenerateColumns="False" DataKeyNames="bookingID" DataSourceID="booking"
                     BackColor="#60C9E8" BorderStyle="Inset" BorderColor="Black" FooterStyle-BorderColor="#000000">
                    <Columns>
                        <asp:BoundField DataField="bookingID" HeaderText="bookingID" InsertVisible="False" ReadOnly="True" SortExpression="bookingID" />
                        <asp:BoundField DataField="departure_destination" HeaderText="departure_destination" SortExpression="departure_destination" />
                        <asp:BoundField DataField="trip" HeaderText="trip" SortExpression="trip" />
                        <asp:BoundField DataField="arrival_destination" HeaderText="arrival_destination" SortExpression="arrival_destination" />
                    </Columns>

<FooterStyle BorderColor="Black"></FooterStyle>
                </asp:GridView>
                <asp:SqlDataSource ID="booking" runat="server" ConnectionString="<%$ ConnectionStrings:UIA %>" SelectCommand="SELECT [bookingID], [departure_destination], [trip], [arrival_destination] FROM [booking] WHERE ([booked_By] = @booked_By)">
                    <SelectParameters>
                        <asp:SessionParameter Name="booked_By" SessionField="fullname" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
               
               
                <br />
                <br />
              
            </td>
        </tr>
    </table> 
    
</asp:Content>
