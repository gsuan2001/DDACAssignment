using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace DDAC.UIA
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblStatus.Visible = false;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            userDetail ud = new userDetail(txtUsername.Text);

            if (ud.login(txtUsername.Text, txtPassword.Text) >= 1)
            {
                Session["fullname"] = ud.getFullname();
                Session["contact"] = ud.getContact();
                Session["email"] = ud.getEmail();
                Session["username"] = txtUsername.Text.ToString();
                Response.Redirect("Home.aspx");
            }
            else
            {
                lblStatus.Text = "Login Failed. Please check username and password";
                lblStatus.Visible = true;
            }




            /*String conString = ConfigurationManager.ConnectionStrings["DDACConnectionString"].ConnectionString;
            System.Data.OleDb.OleDbConnection con = new System.Data.OleDb.OleDbConnection(conString);
            System.Data.OleDb.OleDbCommand cmd = con.CreateCommand();

            cmd.CommandText = "SELECT * FROM Student WHERE [Username] = ? AND [Password] = ?";
            cmd.Parameters.Add("User_Name", System.Data.OleDb.OleDbType.VarChar);
            cmd.Parameters["User_Name"].Value = this.txtUsername.Text.ToString();
            cmd.Parameters.Add("Password", System.Data.OleDb.OleDbType.VarChar);
            cmd.Parameters["Password"].Value = this.txtPassword.Text.ToString();
            int count = 0;

            con.Open();
            System.Data.OleDb.OleDbDataReader dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                
                count++;
            }

            //lblStatus.Visible = true;
            if (count >= 1)
            {
                Session["username"] = txtUsername.Text.ToString();
                Response.Redirect("Home.aspx");
            }
            else
            {
                lblStatus.Text = "Login Failed. Please check username and password";
            }*/


        }
    }
}