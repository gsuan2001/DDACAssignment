<%@ Page Title="" Language="C#" MasterPageFile="~/template/template.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="DDAC.UIA.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Home
</asp:Content>


<asp:Content ID="Content4" ContentPlaceHolderID="menu" runat="server">
    <a href="Home.aspx">Home</a>
    <a href="AboutUs.aspx">About Us</a>
    <a href="Booking.aspx">Book Ticket</a>  
    <a href="BookingHistory.aspx">Booking History</a>
    <a href ="Profile.aspx" class="profile">Profile</a>
    <a href ="Login.aspx">Logout</a>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="webContent" runat="server">
     <div class="content">
         <table>
             <tr><td class="tdStyle"><h1>Quick Schedule Check</h1></td></tr>
             <tr><td class="tdChildStyle">
                 <br />
                 <div>
                     <table>
                         <tr><td class="tdStyle"><h2>Departure Trip</h2></td></tr>
                     </table>                    
                     <asp:GridView ID="departureGridView" runat="server" AutoGenerateColumns="False" DataSourceID="departureSchedule"
                          BackColor="#60C9E8" BorderStyle="Inset" BorderColor="Black" FooterStyle-BorderColor="#000000">
                         <Columns>
                             <asp:BoundField DataField="tripFrom" HeaderText="tripFrom" SortExpression="tripFrom" />
                             <asp:BoundField DataField="tripTo" HeaderText="tripTo" SortExpression="tripTo" />
                             <asp:BoundField DataField="tripTime" HeaderText="tripTime" SortExpression="tripTime" />
                             <asp:BoundField DataField="cost" HeaderText="cost" SortExpression="cost" />
                             <asp:BoundField DataField="tripDepartureDate" HeaderText="tripDepartureDate" SortExpression="tripDepartureDate" />
                             <asp:BoundField DataField="seat" HeaderText="seat" SortExpression="seat" />
                         </Columns>

<FooterStyle BorderColor="Black"></FooterStyle>
                     </asp:GridView>

                     <asp:SqlDataSource ID="departureSchedule" runat="server" ConnectionString="<%$ ConnectionStrings:UIA %>" SelectCommand="SELECT [tripFrom], [tripTo], [tripTime], [cost], [tripDepartureDate], [seat] FROM [departure]"></asp:SqlDataSource>

                     <br />

                     <table>
                         <tr><td class="tdStyle"><h2>Return Trip</h2></td></tr>
                     </table>  
                     <asp:GridView ID="returnGridView" runat="server" AutoGenerateColumns="False" DataSourceID="returnSchedule"
                          BackColor="#60C9E8" BorderStyle="Inset" BorderColor="Black" FooterStyle-BorderColor="#000000">
                         <Columns>
                             <asp:BoundField DataField="tripFrom" HeaderText="tripFrom" SortExpression="tripFrom" />
                             <asp:BoundField DataField="tripTo" HeaderText="tripTo" SortExpression="tripTo" />
                             <asp:BoundField DataField="tripTime" HeaderText="tripTime" SortExpression="tripTime" />
                             <asp:BoundField DataField="cost" HeaderText="cost" SortExpression="cost" />
                             <asp:BoundField DataField="tripDepartureDate" HeaderText="tripDepartureDate" SortExpression="tripDepartureDate" />
                             <asp:BoundField DataField="seat" HeaderText="seat" SortExpression="seat" />
                         </Columns>

<FooterStyle BorderColor="Black"></FooterStyle>
                     </asp:GridView>
                     <asp:SqlDataSource ID="returnSchedule" runat="server" ConnectionString="<%$ ConnectionStrings:UIA %>" SelectCommand="SELECT [tripFrom], [tripTo], [tripTime], [cost], [tripDepartureDate], [seat] FROM [return]"></asp:SqlDataSource>
                 </div>

                 <br />
                 <div>
                 </div>

                 <br />
                 <div>
                 </div>

                 <br />
                 <div style="text-align:center">
                      <asp:Button ID="btnCheck" runat="server" CssClass="btn" Width="350px" Text="Check Flight Schedule" />
                 </div>
                 
                 </td>

                
            </tr>
         </table>
     </div>
     
     
     
</asp:Content>
