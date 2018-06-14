using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace AutoRent
{
    public partial class _Default : System.Web.UI.Page
    {
        AutoRent_WebService AutoRent_WS = new AutoRent_WebService();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CarList.DataSource = AutoRent_WS.GetModel();
                CarList.DataBind();

                PriceList.DataSource = AutoRent_WS.GetDays();
                PriceList.DataBind();
            }
            
        }
        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            if (tbUname.Text != "" & tbLast.Text != "" && tbPhone.Text != "" && CarList.Text != "" && PriceList.Text != "")
            {
                AutoRent_WS.insertForm(tbUname.Text, tbLast.Text, tbPhone.Text, CarList.Text, PriceList.Text);
                ScriptManager.RegisterClientScriptBlock(this,this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
                Response.Redirect("~/index.html");
            }
            else Msg.Text = "All Fields Are Mandatory";
        }


    }
}


