using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoRent
{
    public partial class Sign_In : System.Web.UI.Page
    {
       
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            AutoRent_WebService AutoRent_WS = new AutoRent_WebService();
            if (AutoRent_WS.SignInAvailable(UserName.Text, Password.Text))
            {
                Session["USER_NAME"] = UserName.Text;
                Response.Redirect("~/Default.aspx"); //Forma rezervacijai
            }
            else lblMsg.Text = "Invalid Login, please try again.";
        }
    }
}