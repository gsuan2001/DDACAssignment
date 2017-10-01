using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DDAC.UIA
{
    public partial class CompletePayment : System.Web.UI.Page
    {
        String tripType = "";
        String fromDestination = "";
        String toDestination = "";
        String customerName = "";
        int totalPassenger = 0;
        String departureTime = "";
        String returnTime = "";
        String departureDate = "";
        String returnDate = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            String username = Session["username"].ToString();
            userDetail ud = new userDetail(username);

            lblDepartTrip.Text = Session["departureTrip"].ToString();
            lblTotal.Text = Session["totalTripCost"].ToString();

            toDestination = Session["toDestination"].ToString();
            fromDestination = Session["fromDestination"].ToString();
            tripType = Session["tripType"].ToString();
            totalPassenger = Convert.ToInt32(Session["totalPassenger"].ToString());

            departureTime = Session["departureTime"].ToString();
            departureDate = Session["departureDate"].ToString();
            returnDate = Session["returnDate"].ToString();

            customerName = ud.getFullname();
            lblCustomerName.Text = customerName;

            if (tripType=="Round Trip")
            {
                lblReturnTrip.Text = Session["returnTrip"].ToString();
                returnTime = Session["returnTime"].ToString();

            }
            else
            {
                lblReturnTrip.Text = "N/A";
                tripType = "One Way";
            }
                
        }

        protected void btnPay_Click(object sender, EventArgs e)
        {
            bookingManagement bm = new bookingManagement();

            bm.completePayment(tripType, fromDestination, toDestination, customerName);
            

            if (tripType == "One Way")
               bm.updateDepartureSeatAvailability(totalPassenger, fromDestination, toDestination, departureTime, departureDate);
            else if (tripType == "Round Trip")
            {
                bm.updateDepartureSeatAvailability(totalPassenger, fromDestination, toDestination, departureTime, departureDate);
                bm.updateReturnSeatAvailability(totalPassenger, toDestination, fromDestination, returnTime, returnDate);
            }
            
            Response.Redirect("PaymentCompleted.aspx");
        }
    }
}