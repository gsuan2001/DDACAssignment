using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace DDAC.UIA
{
    public partial class Flight_Schedule : System.Web.UI.Page
    {
        String returnDate="";
        bookingManagement bm = new bookingManagement();
        String tripType = "";
        int totalPassenger = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            lblFrom.Text = Session["fromDestination"].ToString();
            lblTo.Text = Session["toDestination"].ToString();
            lblDeparture.Text = Session["departureDate"].ToString();
            lblDepartureDate.Text = Session["departureDate"].ToString();
            lblPassenger.Text = Session["totalPassenger"].ToString();
            tripType = Session["tripType"].ToString();
            returnDate = Session["returnDate"].ToString();

            if (tripType == "One Way")
            {
                //label for return date
                Label2.Visible = false;
                lblReturnDate.Visible = false;

                //label for departure-arrival
                Label4.Visible = false;
                lbReturnTime.Visible = false;
            }
            else
            {
                lbReturnTime.Visible = true;
            }

            if (returnDate!=null && returnDate!="" && returnDate!= "01-Jan-0001")
            {
                lblReturn.Text = returnDate;
                lblReturnDate.Text = returnDate;
            }
            else
            {
                lblReturn.Text = "N/A";
                lblReturnDate.Text = "N/A";
            }

            
        }

        protected void lbDepartureTime_SelectedIndexChanged(object sender, EventArgs e)
        {


        }


        protected void btnBook_Click(object sender, EventArgs e)
        {
            String departureTrip = lblFrom.Text + "-" + lblTo.Text;
            String returnTrip = lblTo.Text + "-" + lblFrom.Text;
            decimal totalTripCost = 0;

            totalPassenger = Convert.ToInt32(lblPassenger.Text);

            Session["departureTrip"] = departureTrip;
            Session["totalTripCost"] = totalTripCost;


            if (tripType=="Round Trip")
            {
                if (lbReturnTime.SelectedIndex<0)
                {
                    lblReturnError.Visible = true;
                   

                }
                else if (lbDepartureTime.SelectedIndex<0)
                    lblDepartError.Visible = true;
                else
                {
                    lblReturnError.Visible = false;
                    lblDepartError.Visible = false;

                   totalTripCost = totalPassenger * (bm.calcDepartCost(lblFrom.Text, lblTo.Text, lbDepartureTime.SelectedItem.ToString(), lblDeparture.Text)
                          + bm.calcReturnCost(lblTo.Text,lblFrom.Text, lbReturnTime.SelectedItem.ToString(), lblReturn.Text));

                    Session["departureTrip"] = departureTrip;
                    Session["returnTrip"] = returnTrip;
                    Session["totalTripCost"] = totalTripCost;
                    Session["departureTime"] = lbDepartureTime.SelectedItem.ToString();
                    Session["returnTime"] = lbReturnTime.SelectedItem.ToString();

                    Response.Redirect("Payment.aspx");

                }
            }
            else
            {
                if (lbDepartureTime.SelectedIndex < 0)
                {
                    lblDepartError.Visible = true;

                }
                else
                {
                    lblDepartError.Visible = false;
                    totalTripCost = totalPassenger * bm.calcDepartCost(lblFrom.Text, lblTo.Text, lbDepartureTime.SelectedItem.ToString(), lblDeparture.Text);
                    Session["departureTrip"] = departureTrip;
                    Session["totalTripCost"] = totalTripCost;
                    Session["departureTime"] = lbDepartureTime.SelectedItem.ToString();

                    Response.Redirect("Payment.aspx");
                }

            }

        }
        
        //to be continued
        /*private decimal calDepartCost()
        {
            String conString = ConfigurationManager.ConnectionStrings["DDACConnectionString"].ConnectionString;
            decimal departCost = 0;
 
            try
            {
                using (SqlConnection connection = new SqlConnection(conString))
                {
                    connection.Open();

                    using (SqlCommand command = new SqlCommand(("select cost from [departure] where tripForm=@tripForm and tripTo=@tripTo and " +
                    "tripTime=@tripTime and tripDepartureDate=@tripDepartureDate"), connection))
                    {
                        command.Parameters.AddWithValue("@tripForm", lblFrom.Text);
                        command.Parameters.AddWithValue("@tripTo", lblTo.Text);
                        command.Parameters.AddWithValue("@tripTime", lbDepartureTime.SelectedItem.ToString());
                        command.Parameters.AddWithValue("@tripDepartureDate", lblDeparture.Text);
                       
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                departCost = Convert.ToDecimal(reader[0].ToString());
                                
                            }
                        }
                       
                    }
                    connection.Close();
                }
                

            }catch(SqlException ex)
            {
                Console.WriteLine(ex.ToString());
            }

           
            return departCost;

        }*/
    }
} 