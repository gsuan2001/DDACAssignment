using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DDAC.UIA
{
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void radPayment_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            if (radPayment.SelectedIndex < 0)
                lblPaymentError.Visible = true;
            else
            {
                lblPaymentError.Visible = false;
                Response.Redirect("CompletePayment.aspx");
            }
           
        }
    }
}