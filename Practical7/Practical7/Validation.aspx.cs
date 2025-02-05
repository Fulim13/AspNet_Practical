﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical7
{
    public partial class Validation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(rblCreditCardType.SelectedValue == "Visa")
            {
                regExCC.ValidationExpression = @"4\d{13}";
            }
            else if (rblCreditCardType.SelectedValue == "Master")
            {
                regExCC.ValidationExpression = @"5\d{13}";
            }
        }
    }
}