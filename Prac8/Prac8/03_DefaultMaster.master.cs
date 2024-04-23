using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class DefaultMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Retrieve Gender from Cookie 
        string strG = "";
        if (Request.Cookies["Gender"] != null)
        {
            strG = Request.Cookies["Gender"].Value;
        }
        //and display different advertisement banner based on gender
        //place your code here...

        Control ctrlAd;
        if(strG == "F")
        {
            ctrlAd = LoadControl("female.ascx");
        }
        else if (strG == "M")
        {
            ctrlAd = LoadControl("male.ascx");
        }
        else
        {
            ctrlAd = LoadControl("general.ascx");

        }

        //add control to contentplaceholder called contentAd
        contentAd.Controls.Add(ctrlAd);


    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Shop.aspx");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Contact.aspx");
    }
}
