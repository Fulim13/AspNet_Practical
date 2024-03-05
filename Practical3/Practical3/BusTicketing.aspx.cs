using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical3
{
    public partial class BusTicketing : System.Web.UI.Page
    {
        const double dblDutaButterworthAdult = 34.00;
        const double dblDutaButterworthChild = 25.50;
        const double dblPutraSerembanAdult = 6.00;
        const double dblPutraSerembanChild = 4.30;

        protected void Page_Load(object sender, EventArgs e)
        {         
            // click the button , it will send a postback event to a server to process
            // first time render is not post back
            // if without IsPostBack , every time we click the button, it will refresh the time
            // IsPostBack == false //page is loaded for the first time
            if (IsPostBack == false) //You can also type as - if (!IsPostBack)
            {
                lblTime.Text = "You are accessing this page on " +
                DateTime.Now.ToString();

                txtDepartDt.Text = DateTime.Now.ToShortDateString();

                lblItem.Items.Add("A");
                lblItem.Items.Add("B");
                lblItem.Items.Add("C");
            }
        }

        protected void calDepartDt_SelectionChanged(object sender, EventArgs e)
        {
            txtDepartDt.Text = calDepartDt.SelectedDate.ToShortDateString();
        }

        protected void ddlTo_SelectedIndexChanged(object sender, EventArgs e)
        {
            int intAdult = int.Parse(txtAdult.Text);
            int intChild = int.Parse(txtChild.Text);

            double dblPrice = 0.00;
            string strError = "";

            if(ddlFrom.SelectedValue == "Hentian Duta")
            {
                if(ddlTo.SelectedValue == "Butterworth")
                {
                    dblPrice = (intAdult * dblDutaButterworthAdult) + (intChild * dblDutaButterworthChild);
                } else
                {
                    strError = "Sorry, We do not provide trip from " + ddlFrom.SelectedValue.ToString() +
                        " to " + ddlTo.SelectedValue.ToString();
                }
            } else if (ddlFrom.SelectedValue == "Hentian Putra")
            {
                if(ddlTo.SelectedValue == "Seremban")
                {
                    dblPrice = (intAdult * dblPutraSerembanAdult) + (intChild * dblPutraSerembanChild);
                }
                else
                {
                    strError = "Sorry, We do not provide trip from " + ddlFrom.SelectedValue.ToString() +
                        " to " + ddlTo.SelectedValue.ToString();
                }
            } else
            {
                strError = "Please select your departure point or destination";
            }
            txtPrice.Text = dblPrice.ToString("C"); //currency according you set in your pc
            lblError.Text = strError;
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            //clear our the value
        }
    }
}