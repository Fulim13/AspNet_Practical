using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical3Exercise
{
    public partial class OrderConfirm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Registering client-side script block to display an alert
            string script = "window.onload = function() { alert('This page is to confirm your breakfast order'); };";
            ClientScript.RegisterStartupScript(this.GetType(), "ConfirmOrderScript", script, true);

            // Retrieving the values from the previous page
            TextBox txtboxQuantitySet1 = (TextBox)PreviousPage.FindControl("txtboxQuantitySet1");
            TextBox txtboxQuantitySet2 = (TextBox)PreviousPage.FindControl("txtboxQuantitySet2");
            TextBox txtboxQuantitySet3 = (TextBox)PreviousPage.FindControl("txtboxQuantitySet3");
            Label lblTotalPrice = (Label)PreviousPage.FindControl("lblTotalPrice");



            Label labelTotalPrice = (Label)PreviousPage.FindControl("lblTotalPrice");

            // Displaying the values from the previous page
            lblOrder.Text = txtboxQuantitySet1.Text + " x Menu Set 1" + "<br/>" + txtboxQuantitySet2.Text + " x Menu Set 2" + "<br/>" + txtboxQuantitySet3.Text + " x Menu Set 3" + "<br/>" + "Total Price: RM " + labelTotalPrice.Text;

            // Displaying the current time
            lblTimeNow.Text = "Time: " + DateTime.Now.ToString("hh:mm");

            // Displaying the current time + 25 minutes
            lblReceiveTime.Text = DateTime.Now.AddMinutes(25).ToString("hh:mm");
        }
    }
}