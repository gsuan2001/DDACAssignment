using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Configuration;

namespace DDAC.UIA
{
    public class userDetail
    {
        private String username;
        private String fullname;
        private String contact;
        private String email;
        int count = 0;
        String conString = ConfigurationManager.ConnectionStrings["UIA"].ConnectionString;
        //String conString = ConfigurationManager.ConnectionStrings["DDACConnectionString"].ConnectionString;

        public userDetail() { }

        public userDetail(String username)
        {
            this.username = username;
        }

        /*public void setUsername(String username)
        {
            this.username = username;
        }*/

        public int login(String username, String password)
        {
            
            try
            {
                
                

                using (SqlConnection connection = new SqlConnection(conString))
                {
                    connection.Open();

                    using (SqlCommand command = new SqlCommand(("select * from [User] where Username=@Username and password=@password"), connection))
                    {
                        command.Parameters.AddWithValue("@Username", username);
                        command.Parameters.AddWithValue("@password", password);

                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                count++;
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
            return count;
        }


        public String getFullname()
        {
            try
            {
                
                using (SqlConnection connection = new SqlConnection(conString))
                {
                    connection.Open();

                    using (SqlCommand command = new SqlCommand(("select fullname from [User] where Username=@Username"), connection))
                    {
                        command.Parameters.AddWithValue("@Username", username);

                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                fullname = reader[0].ToString();
                            }
                        }
                    }
                    connection.Close();
                }
            }catch(SqlException ex)
            {
                Console.WriteLine(ex.ToString());
            }
            return fullname;
        }

        public String getContact()
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(conString))
                {
                    connection.Open();

                    using (SqlCommand command = new SqlCommand(("select contact from [User] where Username=@Username"), connection))
                    {
                        command.Parameters.AddWithValue("@Username", username);

                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                contact = reader[0].ToString();
                            }
                        }
                    }
                }
            }catch(SqlException ex)
            {
                Console.WriteLine(ex.ToString());
            }
            return contact;
        }

        public String getEmail()
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(conString))
                {
                    connection.Open();

                    using (SqlCommand command = new SqlCommand(("select email from [User] where Username=@Username"), connection))
                    {
                        command.Parameters.AddWithValue("@Username", username);

                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                email = reader[0].ToString();
                            }
                        }
                    }
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine(ex.ToString());
            }
            return email;
        }
    }
}