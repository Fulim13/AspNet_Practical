using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical4
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnFind_Click(object sender, EventArgs e)
        {
            Repeater1.DataSource = SqlDataSource2;
            Repeater1.DataBind();

            // display the number of records
            lblResult.Text = Repeater1.Items.Count.ToString();

        }
    }
}