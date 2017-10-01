<%@ Page Title="" Language="C#" MasterPageFile="~/template/template.Master" AutoEventWireup="true" CodeBehind="FlightSchedule.aspx.cs" Inherits="DDAC.UIA.Flight_Schedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Flight Schedule
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
        <tr><td class="tdStyle"><h1>Flight Schedule</h1></td></tr>
        
        <tr>

            <td class="auto-style2">
                
                <div><asp:Label Text="From" runat="server"></asp:Label> :&nbsp;&nbsp; 
                    <asp:Label ID="lblFrom" runat="server" Text=""></asp:Label>

                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                     <asp:Label Text="To" runat="server"></asp:Label> :&nbsp;&nbsp; 
                    <asp:Label ID="lblTo" runat="server" Text=""></asp:Label>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    <asp:Label Text="Departure" runat="server"></asp:Label> &nbsp;Date:&nbsp;&nbsp; 
                    <asp:Label ID="lblDeparture" runat="server" Text=""></asp:Label>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    <asp:Label Text="Return" runat="server"></asp:Label> &nbsp;Date:&nbsp;&nbsp; 
                     <asp:Label ID="lblReturn" runat="server" Text=""></asp:Label>
                    <br />
                    <br />
                    <div>
                         <asp:Label ID="Label5" runat="server" Text="Total Passenger: "></asp:Label>
                    &nbsp;<asp:Label ID="lblPassenger" runat="server" Text=""></asp:Label>
                    </div>
                   
                </div>
            
                </td>
        </tr>
        <tr>
            <td class="tdStyle">
                <h1>Departure</h1>              
            </td>
        </tr>
        <tr >
            <td class="tdChildStyle">

                    <div> <asp:Label ID="Label1" runat="server" Text="Departure Date"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" Text="Return Date"></asp:Label>
                    </div>
                    <div> 
                        <asp:Label ID="lblDepartureDate" runat="server" Text=""></asp:Label>
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblReturnDate" runat="server" Text=""></asp:Label>

                    </div>                
                    <br />
                    <div>
                        <asp:Label ID="Label3" runat="server" Text="Departure - Arrival Time"></asp:Label>                    
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Label ID="lblDepartError" runat="server" Text="Please select departure time" ForeColor="Red" Visible="False"></asp:Label></b>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label4" runat="server" Text="Departure - Arrival Time"></asp:Label>                    
                        <b><asp:Label ID="lblReturnError" runat="server" Text="Please select return time" ForeColor="Red" Visible="False"></asp:Label></b>
                    </div>
                <div>
                    <asp:ListBox ID="lbDepartureTime" runat="server" OnSelectedIndexChanged="lbDepartureTime_SelectedIndexChanged" BackColor="#A8A8FF" Width="281px" DataSourceID="DepartureTrip" DataTextField="tripTime" DataValueField="tripTime"></asp:ListBox>
                    <asp:SqlDataSource ID="DepartureTrip" runat="server" ConnectionString="<%$ ConnectionStrings:UIA %>" SelectCommand="SELECT [tripTime] FROM [departure] WHERE (([tripDepartureDate] = @tripDepartureDate) AND ([tripTo] = @tripTo) AND ([tripFrom] = @tripFrom))">
                        <SelectParameters>
                            <asp:SessionParameter Name="tripDepartureDate" SessionField="departureDate" Type="String" />
                            <asp:SessionParameter Name="tripTo" SessionField="toDestination" Type="String" />
                            <asp:SessionParameter Name="tripFrom" SessionField="fromDestination" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ListBox ID="lbReturnTime" runat="server" OnSelectedIndexChanged="lbDepartureTime_SelectedIndexChanged" BackColor="#A8A8FF" Width="281px" DataSourceID="returnTrip" DataTextField="tripTime" DataValueField="tripTime"></asp:ListBox>
                    <asp:SqlDataSource ID="returnTrip" runat="server" ConnectionString="<%$ ConnectionStrings:UIA %>" SelectCommand="SELECT [tripTime] FROM [return] WHERE (([tripFrom] = @tripFrom) AND ([tripTo] = @tripTo) AND ([tripDepartureDate] = @tripDepartureDate))">
                        <SelectParameters>
                            <asp:SessionParameter Name="tripFrom" SessionField="toDestination" Type="String" />
                            <asp:SessionParameter Name="tripTo" SessionField="fromDestination" Type="String" />
                            <asp:SessionParameter Name="tripDepartureDate" SessionField="returnDate" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
            </td>
        </tr>
        <tr >
            <td class="tdChildStyle">
                <div style="text-align:center">
                     <asp:Button ID="btnBook" runat="server" Text="Book Flight Ticket" CssClass="auto-style3" Height="39px" Width="151px" OnClick="btnBook_Click" />
                </div>    
               
            </td>
        </tr>
        </table>
</asp:Content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="head">
         <%: Scripts.Render("~/bundles/modernizr") %>
    <style type="text/css">
        .auto-style2 {
            width: 1400px;
            background-color: #46f8f3;
            font-family: 'Times New Roman', Times, serif;
            height: 80px;
        }
        .auto-style3 {
            font-family: 'Times New Roman', Times, serif;
            background-color: #2ac2dd;
        }
    </style>
</asp:Content>

