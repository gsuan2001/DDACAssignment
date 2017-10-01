<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DDAC.UIA.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="/css/style.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align:center;"><asp:Image ID="logo" Width="300px" runat="server" ImageUrl="~/Image/UIA.png" /> </div>
        <div style="text-align:center;">
            <h1>Welcome to UIA Airline</h1>
              
          
            <table class="tbl" style="margin-left:400px;">
                <tr class="tbl">
                    <td>
                         <div style="margin-left:50px">
                             <asp:Label ID="lblUsername" Text="Username" runat="server"></asp:Label>
                             <asp:TextBox ID="txtUsername" Width="200px" runat="server" style="margin-left: 150px" Height="16px"></asp:TextBox> 
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                          
                        <div style="margin-left:50px">
                            <asp:Label ID="lblPassword" Text="Password" runat="server"></asp:Label>
                            <asp:TextBox ID="txtPassword" Width="200px" runat="server" style="margin-left: 150px" Height="16px" TextMode="Password"></asp:TextBox> 
                        </div>
                    </td>
                </tr>
            </table>
            
            <br />
            <asp:Button ID="btnLogin" CssClass="btn" runat="server" Text="Login" Width="150px" OnClick="btnLogin_Click" />
            <div>
                 <asp:Label ID="lblStatus" runat="server" ForeColor="Red"></asp:Label>
            </div>
           
        </div>
      
    </form>
</body>
</html>
