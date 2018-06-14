using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoRent
{
    public partial class reservation : System.Web.UI.Page
    {
        AutoRent_WebService AutoRent_WS = new AutoRent_WebService();
        protected void Page_Load(object sender, EventArgs e)
        {
           
          
        }
        
           protected void btSignup_Click(object sender, EventArgs e)
        {
            if (tbUname.Text != "" & tbPass.Text != "" && tbEmail.Text != "" && tbCPass.Text != "")
            {
                if (tbPass.Text == tbCPass.Text)
                {
                    if (AutoRent_WS.userExist(tbUname.Text)) lblMsg.Text = "User already exist";
                    else
                    {
                        AutoRent_WS.insertUser(tbUname.Text, tbPass.Text, tbEmail.Text);
                        Response.Redirect("~/Sign_In.aspx");
                    }

                }
                else lblMsg.Text = "Passwords do not match";

            }
            else lblMsg.Text = "All Fields Are Mandatory";
        }
    }
}