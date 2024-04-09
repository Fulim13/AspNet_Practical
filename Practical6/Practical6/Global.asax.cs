using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace Practical6
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            // no of visitor
            Application["visitor"] = 0;
        }

        //a singer user access our website
        protected void Session_Start(object sender, EventArgs e)
        {
            // when user access the web app
            Application["visitor"] = (int) Application["visitor"] + 1;

            // time user access the web app
            Session["time"] = DateTime.Now;
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        //logout
        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}