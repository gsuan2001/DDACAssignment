<%@ Page Title="" Language="C#" MasterPageFile="~/template/template.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="DDAC.UIA.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Payment
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            font-family: 'Times New Roman', Times, serif;
            background-color: #2ac2dd;
        }
        .auto-style2 {
            height: 171px;
        }
    </style>
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
    <table class="auto-style2">
        <tr><td class="tdStyle"><h1>Select Payment Method</h1></td></tr>
        
        <tr>

            <td class="tdChildStyle">
                
                <div style="margin-left:600px;">
                    <asp:RadioButtonList ID="radPayment" AutoPostBack="true" runat="server" OnSelectedIndexChanged="radPayment_SelectedIndexChanged">
                    <asp:ListItem>MayBank2U</asp:ListItem>
                    <asp:ListItem>CIMBClicks</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                

                 <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblPaymentError" runat="server" Text="Please select payment method" ForeColor="Red" Visible="False"></asp:Label></b>
                    
                     
                <br />
                <div style="text-align:center">
                      <asp:Button ID="btnNext" runat="server" CssClass="auto-style1" Width="176px" Text="Next" Height="31px" OnClick="btnNext_Click" />
                 </div>
                <br />
                </td>
               
        </tr>
    </table>
</asp:Content>
