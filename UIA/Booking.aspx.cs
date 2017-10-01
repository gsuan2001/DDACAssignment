using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DDAC.UIA
{
    public partial class Booking : System.Web.UI.Page
    {
        int totalPassenger = 0;
        String tripType = "";

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void radTrip_SelectedIndexChanged(object sender, EventArgs e)
        {

            if (radTrip.SelectedItem.ToString()=="Round Trip")
                flightCalendarReturn.Visible = true;
            else
                flightCalendarReturn.Visible = false;

        }

        protected void btnCheck_Click(object sender, EventArgs e)
        {
            totalPassenger = Convert.ToInt32(dpAdult.SelectedItem.ToString()) + Convert.ToInt32(dpChild.SelectedItem.ToString())
                                + Convert.ToInt32(dpInfant.SelectedItem.ToString());


            if (totalPassenger==0 || radTrip.SelectedIndex<0 || dpFrom.SelectedItem.ToString() == dpTo.SelectedItem.ToString() || flightCalendarDeparture.SelectedDate.ToString() == flightCalendarReturn.SelectedDate.ToString())
            {
                lblBookingError.Visible = true;
            }
            else
            {
                lblBookingError.Visible = false;
                lblTripError.Visible = false;
                lblDestinationError.Visible = false;
                lblDepartError.Visible = false;
                lblReturnError.Visible = false;
                tripType = radTrip.SelectedItem.ToString();
                Session["fromDestination"] = dpFrom.SelectedValue.ToString();
                Session["toDestination"] = dpTo.SelectedValue.ToString();
                Session["departureDate"] = flightCalendarDeparture.SelectedDate.ToString("dd-MMM-yyyy");
                Session["returnDate"] = flightCalendarReturn.SelectedDate.ToString("dd-MMM-yyyy");
                Session["totalPassenger"] = totalPassenger.ToString();
                Session["tripType"] = tripType.ToString();

                //Label1.Text = flightCalendarDeparture.SelectedDate.ToString("dd-MMM-yyyy");
                Response.Redirect("FlightSchedule.aspx");

            }



        }

        protected void flightCalendarDeparture_SelectionChanged(object sender, EventArgs e)
        {
            
        }
    }
}