using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;

namespace DDAC.UIA
{
    public class bookingManagement
    {
        //String conString = ConfigurationManager.ConnectionStrings["DDACConnectionString"].ConnectionString;
        String conString = ConfigurationManager.ConnectionStrings["UIA"].ConnectionString;
        decimal departCost = 0;
        decimal returnCost = 0;

        public decimal calcDepartCost(String from, String to, String departureTime, String departureDate)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(conString))
                {
                    connection.Open();

                    using (SqlCommand command = new SqlCommand(("select cost from [departure] where tripFrom=@tripFrom and tripTo=@tripTo and " +
                    "tripTime=@tripTime and tripDepartureDate=@tripDepartureDate"), connection))
                    {
                        command.Parameters.AddWithValue("@tripFrom", from);
                        command.Parameters.AddWithValue("@tripTo", to);
                        command.Parameters.AddWithValue("@tripTime", departureTime);
                        command.Parameters.AddWithValue("@tripDepartureDate", departureDate);

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


            }
            catch (SqlException ex)
            {
                Console.WriteLine(ex.ToString());
            }


            return departCost;
        }

        public decimal calcReturnCost(String from, String to, String departureTime, String departureDate)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(conString))
                {
                    connection.Open();

                    using (SqlCommand command = new SqlCommand(("select cost from [return] where tripFrom=@tripFrom and tripTo=@tripTo and " +
                    "tripTime=@tripTime and tripDepartureDate=@tripDepartureDate"), connection))
                    {
                        command.Parameters.AddWithValue("@tripFrom", from);
                        command.Parameters.AddWithValue("@tripTo", to);
                        command.Parameters.AddWithValue("@tripTime", departureTime);
                        command.Parameters.AddWithValue("@tripDepartureDate", departureDate);

                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                returnCost = Convert.ToDecimal(reader[0].ToString());

                            }
                        }

                    }
                    connection.Close();
                }


            }
            catch (SqlException ex)
            {
                Console.WriteLine(ex.ToString());
            }


            return returnCost;
        }

        public void completePayment(String trip, String from, String to, String name)
        {
            try
            {
                //String conString = ConfigurationManager.ConnectionStrings["DDACConnectionString"].ConnectionString;

                using (SqlConnection connection = new SqlConnection(conString))
                {
                    connection.Open();

                    using (SqlCommand command = new SqlCommand(("insert into [booking] ([trip], [departure_destination], [arrival_destination], [booked_By])" +
                        "values (@trip, @from, @to, @name);"), connection))
                    {
                        command.Parameters.AddWithValue("@trip", trip);
                        command.Parameters.AddWithValue("@from", from);
                        command.Parameters.AddWithValue("@to", to);
                        command.Parameters.AddWithValue("@name", name);

                        command.ExecuteNonQuery();
                    }
                    connection.Close();
                }
            }catch(SqlException ex)
            {
                Console.WriteLine(ex.ToString());
            }
        }

        public void updateDepartureSeatAvailability(int totalPassenger, String from, String to, String tripTime, String tripDate)
        {
            int seatAvailability = 0;
            try
            {
                
                //String conString = ConfigurationManager.ConnectionStrings["DDACConnectionString"].ConnectionString;

                using (SqlConnection connection = new SqlConnection(conString))
                {
                    connection.Open();

                    using (SqlCommand command = new SqlCommand(("select seat from [departure] where tripFrom=@tripFrom and tripTo=@tripTo and tripTime=@tripTime and tripDepartureDate=@tripDepartureDate"), connection))
                    {
                        command.Parameters.AddWithValue("@tripFrom", from);
                        command.Parameters.AddWithValue("@tripTo", to);
                        command.Parameters.AddWithValue("@tripTime", tripTime);
                        command.Parameters.AddWithValue("@tripDepartureDate", tripDate);

                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                seatAvailability = Convert.ToInt32(reader[0].ToString());
                            }
                        }
                        
                    }

                    seatAvailability -= totalPassenger;
                    using (SqlCommand command = new SqlCommand(("update [departure] set seat=@seat where tripFrom=@tripFrom and tripTo=@tripTo and tripTime=@tripTime and tripDepartureDate=@tripDepartureDate"), connection))
                    {
                        command.Parameters.AddWithValue("@tripFrom", from);
                        command.Parameters.AddWithValue("@tripTo", to);
                        command.Parameters.AddWithValue("@tripTime", tripTime);
                        command.Parameters.AddWithValue("@seat", seatAvailability);
                        command.Parameters.AddWithValue("@tripDepartureDate", tripDate);


                        command.ExecuteNonQuery();
                    }
                    connection.Close();
                }

            }
            catch (SqlException ex)
            {
                Console.WriteLine(ex.ToString());
            }
            
        }

        public void updateReturnSeatAvailability(int totalPassenger, String from, String to, String tripTime, String tripDate)
        {
            int seatAvailability = 0;
            try
            {

                //String conString = ConfigurationManager.ConnectionStrings["DDACConnectionString"].ConnectionString;

                using (SqlConnection connection = new SqlConnection(conString))
                {
                    connection.Open();

                    using (SqlCommand command = new SqlCommand(("select seat from [return] where tripFrom=@tripFrom and tripTo=@tripTo and tripTime=@tripTime and tripDepartureDate=@tripDepartureDate"), connection))
                    {
                        command.Parameters.AddWithValue("@tripFrom", from);
                        command.Parameters.AddWithValue("@tripTo", to);
                        command.Parameters.AddWithValue("@tripTime", tripTime);
                        command.Parameters.AddWithValue("@tripDepartureDate", tripDate);

                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                seatAvailability = Convert.ToInt32(reader[0].ToString());
                            }
                        }

                    }

                    seatAvailability -= totalPassenger;
                    using (SqlCommand command = new SqlCommand(("update [return] set seat=@seat where tripFrom=@tripFrom and tripTo=@tripTo and tripTime=@tripTime and tripDepartureDate=@tripDepartureDate"), connection))
                    {
                        command.Parameters.AddWithValue("@tripFrom", from);
                        command.Parameters.AddWithValue("@tripTo", to);
                        command.Parameters.AddWithValue("@tripTime", tripTime);
                        command.Parameters.AddWithValue("@seat", seatAvailability);
                        command.Parameters.AddWithValue("@tripDepartureDate", tripDate);


                        command.ExecuteNonQuery();
                    }
                    connection.Close();
                }

            }
            catch (SqlException ex)
            {
                Console.WriteLine(ex.ToString());
            }

        }

    }
}