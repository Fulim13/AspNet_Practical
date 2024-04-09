using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical6
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(Request.QueryString["Name"] == null && Request.QueryString["Lang"] == null))
            {
                if (Request.QueryString["Lang"] == "English")
                {
                    lblMsg.Text = "Welcome" + Request.QueryString["Name"].ToString() + ". This page is cached at " + DateTime.Now.ToString();
                }
                else
                {
                    lblMsg.Text = "Selemat Datang " + Request.QueryString["Name"].ToString() + " . Halaman ini cached pada " + DateTime.Now.ToString();

                }
            }

        }
    }
}