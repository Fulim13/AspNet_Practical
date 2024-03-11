using System;
using System.Collections.Generic;
using System.EnterpriseServices.CompensatingResourceManager;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical3Exercise
{
    public partial class TravelChecking : System.Web.UI.Page
    {
        double fromKLToJapan = 2400;
        double fromKLToAuckland = 2200;
        double fromPenangToJapan = 3400;
        double fromPenangToAuckland = 3200;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            lblWelcomeMessage.Text = "Happy Holiday from MOM Travel";

            if (!IsPostBack) 
            {

                lblWelcomeMessage.Text = "Thank you for using our service";
                
            }
        }

        private double calculatePrice(string from ,string to)
        {
            double price = 0;
            
            return price;
        }

        //a function differencesPrice to return the price differences between the destination price and your budgeted value.
        private double differencesPrice(double price, double budget)
        {
           
            return price - budget;
        }

        protected void btnCheck_Click(object sender, EventArgs e)
        {
            if(ddlFrom.SelectedItem.Text == "Kuala Lumpur" && ddlTo.SelectedItem.Text == "Japan")
            {
                if(tbxBudget.Text != "")
                {
                    double budget = Convert.ToDouble(tbxBudget.Text);
                    double price = fromKLToJapan;
                    double differences = differencesPrice(price, budget);
                    if(differences > 0)
                    {
                        lblMessage.Text = "The price is RM" + price + " and the differences is RM" + differences;
                    }
                    else
                    {
                        lblPrice.Text = "The price is RM" + price + " and the differences is RM" + differences;
                    }
                }
 
            }
            else if (ddlFrom.SelectedItem.Text == "Kuala Lumpur" && ddlTo.SelectedItem.Text == "Auckland")
            {
                lblPrice.Text = "The price is RM" + fromKLToAuckland;
            }
            else if (ddlFrom.SelectedItem.Text == "Penang" && ddlTo.SelectedItem.Text == "Japan")
            {
                lblPrice.Text = "The price is RM" + fromPenangToJapan;
            }
            else if (ddlFrom.SelectedItem.Text == "Penang" && ddlTo.SelectedItem.Text == "Auckland")
            {
                lblPrice.Text = "The price is RM" + fromPenangToAuckland;
            }
            else
            {
                lblPrice.Text = "The price is RM0";
            }
        }
    }
}