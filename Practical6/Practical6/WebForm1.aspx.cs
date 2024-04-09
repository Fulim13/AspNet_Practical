using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical6
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblVisitor.Text = Application["visitor"].ToString();
            lblTime.Text = Session["time"].ToString();

            if (Request.Cookies["Theme"] != null)
            {
                Session["SelectedCss"] = Request.Cookies["Theme"].Value;
            }
            else
            {
                Session["SelectedCss"] = "";
            }
        }

        protected void btnApply_Click(object sender, EventArgs e)
        {
            Session["SelectedCSS"] = ddlTheme.SelectedValue + ".css";

            if (chkRemember.Checked)
            {
                HttpCookie cookie = new HttpCookie("Theme");
                cookie.Value = Session["SelectedCss"].ToString();
                Response.Cookies.Add(cookie);
            }
            else
            {
                //clear cookie
                Response.Cookies["Themes"].Expires = DateTime.Now.AddDays(-1);
            }
        }
    }
}