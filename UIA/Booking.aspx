<%@ Page Title="" Language="C#" MasterPageFile="~/template/template.Master" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="DDAC.UIA.Booking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Booking
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
    <div class="content">
         <table>
             <tr><td class="tdStyle"><h1>Book Flight Ticket</h1></td></tr>
             <tr><td class="tdChildStyle">
                 <br />
                 <div>
                    <asp:Label ID="Label1" runat="server" Text="From"></asp:Label>
                    <asp:DropDownList ID="dpFrom" runat="server" Width="300px" CssClass="dropdownMarginLeft" DataSourceID="DestinationFrom" DataTextField="Airport" DataValueField="Airport">
                    </asp:DropDownList>

                     <asp:SqlDataSource ID="DestinationFrom" runat="server" ConnectionString="<%$ ConnectionStrings:UIA %>" SelectCommand="SELECT * FROM [airport]"></asp:SqlDataSource>

                     <asp:Label ID="Label4" runat="server" Text="Adult" CssClass="dropdownMarginLeft"></asp:Label>
                     <asp:DropDownList ID="dpAdult" runat="server" CssClass="dropdownMarginLeft" Width="60px">
                         <asp:ListItem>0</asp:ListItem>
                         <asp:ListItem Value="1">1</asp:ListItem>
                         <asp:ListItem Value="2">2</asp:ListItem>
                         <asp:ListItem Value="3">3</asp:ListItem>
                         <asp:ListItem Value="4">4</asp:ListItem>
                         <asp:ListItem Value="5">5</asp:ListItem>
                         <asp:ListItem Value="6">6</asp:ListItem>
                         <asp:ListItem Value="7">7</asp:ListItem>
                         <asp:ListItem Value="8">8</asp:ListItem>
                         <asp:ListItem>9</asp:ListItem>
                     </asp:DropDownList>


                     <asp:Label ID="Label5" runat="server" Text="Child (2-11)" CssClass="dropdownMarginLeft" ></asp:Label>
                     <asp:DropDownList ID="dpChild" runat="server" CssClass="dropdownMarginLeft" Width="60px">
                         <asp:ListItem>0</asp:ListItem>
                         <asp:ListItem>1</asp:ListItem>
                         <asp:ListItem>2</asp:ListItem>
                         <asp:ListItem>3</asp:ListItem>
                         <asp:ListItem>4</asp:ListItem>
                         <asp:ListItem>5</asp:ListItem>
                         <asp:ListItem>6</asp:ListItem>
                         <asp:ListItem>7</asp:ListItem>
                         <asp:ListItem>8</asp:ListItem>
                         <asp:ListItem>9</asp:ListItem>
                     </asp:DropDownList>


                     <asp:Label ID="Label6" runat="server" Text="Infant (0-2)" CssClass="dropdownMarginLeft"></asp:Label>
                     <asp:DropDownList ID="dpInfant" runat="server" CssClass="dropdownMarginLeft" Width="60px">
                         <asp:ListItem>0</asp:ListItem>
                         <asp:ListItem>1</asp:ListItem>
                         <asp:ListItem>2</asp:ListItem>
                         <asp:ListItem>3</asp:ListItem>
                         <asp:ListItem>4</asp:ListItem>
                         <asp:ListItem>5</asp:ListItem>
                         <asp:ListItem>6</asp:ListItem>
                         <asp:ListItem>7</asp:ListItem>
                         <asp:ListItem>8</asp:ListItem>
<asp:ListItem>9</asp:ListItem>
                     </asp:DropDownList>


                 </div>

                 <br />
                 <div>
                     <asp:Label ID="Label3" runat="server" Text="To"></asp:Label>
                 <asp:DropDownList ID="dpTo" runat="server" Width="300px" CssClass="dropdownMarginLeft" DataSourceID="DestinationTo" DataTextField="Airport" DataValueField="Airport">
                 </asp:DropDownList>
      
                     <asp:SqlDataSource ID="DestinationTo" runat="server" ConnectionString="<%$ ConnectionStrings:UIA %>" SelectCommand="SELECT [Airport] FROM [airport]"></asp:SqlDataSource>
      
                 </div>
                    
                 <b><asp:Label ID="lblDestinationError" runat="server" Text="Please select destination" ForeColor="Red" Visible="False"></asp:Label>
                 <br />
                 </b>
                    
                <br />
                    <asp:Label ID="Label7" runat="server" Text="Select Trip"></asp:Label>

                    <br />
                     <asp:RadioButtonList ID="radTrip" runat="server" OnSelectedIndexChanged="radTrip_SelectedIndexChanged" AutoPostBack="True">
                         <asp:ListItem>Round Trip</asp:ListItem>
                         <asp:ListItem>One Way</asp:ListItem>
                     </asp:RadioButtonList>


                 <b><asp:Label ID="lblTripError" runat="server" Text="Please select trip" ForeColor="Red" Visible="False"></asp:Label></b>


                 <br />
                 <div style="text-align:center;">
                     <asp:Label ID="Label2" runat="server" Text="Select Date"></asp:Label>

                   

                     <div style="width:30%; margin-left:500px;margin-right:auto;" >
                         <asp:Calendar ID="flightCalendarDeparture" runat="server" BackColor="White"
                       SelectedDayStyle-BackColor="#6600cc" OtherMonthDayStyle-BackColor="azure"
                        BorderColor="White" DayStyle-BorderColor="Black" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px" OnSelectionChanged="flightCalendarDeparture_SelectionChanged" >
                         <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <DayStyle BorderColor="Black"></DayStyle>

                         <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />

                            <OtherMonthDayStyle ForeColor="#999999"></OtherMonthDayStyle>

                        <SelectedDayStyle BackColor="#333399" ForeColor="White"></SelectedDayStyle>
                         <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                         <TodayDayStyle BackColor="#CCCCCC" />
                     </asp:Calendar>
                          <b><asp:Label ID="lblDepartError" runat="server" Text="Please select departure date" ForeColor="Red" Visible="False"></asp:Label></b>
                         
                        

                         <div style="margin-top:30px"></div>
                          <asp:Calendar ID="flightCalendarReturn" runat="server" BackColor="White"
                       SelectedDayStyle-BackColor="#6600cc" OtherMonthDayStyle-BackColor="azure"
                        BorderColor="White" DayStyle-BorderColor="Black" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px" Visible="False" >
                         <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <DayStyle BorderColor="Black"></DayStyle>

                         <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />

                            <OtherMonthDayStyle ForeColor="#999999"></OtherMonthDayStyle>

                        <SelectedDayStyle BackColor="#333399" ForeColor="White"></SelectedDayStyle>
                         <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                         <TodayDayStyle BackColor="#CCCCCC" />
                     </asp:Calendar>
                         <b><asp:Label ID="lblReturnError" runat="server" Text="Please select return date" ForeColor="Red" Visible="False"></asp:Label></b>
                     </div>
                   

                     
                 </div>

                 <br />
                 <div style="text-align:center">
                      <asp:Button ID="btnCheck" runat="server" CssClass="btn" Width="350px" Text="Check Flight Schedule" OnClick="btnCheck_Click" />
                 &nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Label ID="lblBookingError" runat="server" Text="Please check booking detail" ForeColor="Red" Visible="False"></asp:Label></b>
                 </div>
                 
                 <div style="text-align:center; margin-top:20px">
                 </div>
                 
                 </td>

                
            </tr>
         </table>
     </div>

   
</asp:Content>


