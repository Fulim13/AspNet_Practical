using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical2
{
    public partial class servercontrol : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) // Check if the page is reloaded (Only not reloaded will run this line)
            {
                Response.Write("Page is posted back");
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string msg = "";
            foreach (ListItem lstItem in cblInterest.Items)
            {
                if (lstItem.Selected == true)
                {
                    msg += lstItem.Text + "<br />";
                }
            }
            lblSelect.Text = "Hi " + txtName.Text + " from "
            + ddlProg.SelectedItem.Value + " programme. </br>"
            + "You have selected : </br>"
            + msg + " as your area of interest";

 
        }
    }
}