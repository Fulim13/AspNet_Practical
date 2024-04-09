using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical6
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lBtnGo_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm4.aspx?Name=" + txtName.Text + "&Lang=" + ddlLanguage.SelectedValue);
        }
    }
}