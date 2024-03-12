using System;
using System.Collections.Generic;
using System.Diagnostics;
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

        protected void Page_Load(object sender, EventArgs e)
        {

            lblWelcomeMessage.Text = "Happy Holiday from MOM Travel";

            if (!IsPostBack)
            {

                lblWelcomeMessage.Text = "Thank you for using our service";

            }
        }

        private double calculatePrice(string from, string to)
        {
            double price = 0;
            if (from == "KL" && to == "Japan")
            {
                price = 2400;
            }
            else if (from == "KL" && to == "Auckland")
            {
                price = 2200;
            }
            else if (from == "Penang" && to == "Japan")
            {
                price = 3400;
            }
            else if (from == "Penang" && to == "Auckland")
            {
                price = 3200;
            }
            return price;
        }

        private double differencesPrice(double budget, double price)
        {
            return budget - price;
        }

        protected void btnCheck_Click(object sender, EventArgs e)
        {

            if (tbxBudget.Text != "")
            {
                double budget = Convert.ToDouble(tbxBudget.Text);
                double price = calculatePrice(ddlFrom.SelectedItem.Text, ddlTo.SelectedItem.Text);
                double differences = differencesPrice(budget, price);
                if (differences > 0)
                {
                    lblMessage.Text = ddlFrom.SelectedItem.Text + "-" + ddlTo.SelectedItem.Text + "<br />" + "Yay! Can go for holiday!" + "<br />" + "RM " + differences + " extra pocket money!";
                }
                else
                {
                    lblMessage.Text = ddlFrom.SelectedItem.Text + "-" + ddlTo.SelectedItem.Text + "<br />" + "Do not meet your budget" + "<br />" + "RM " + differences;

                }
            }


        }
    }
}