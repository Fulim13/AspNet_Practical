using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical3Exercise
{
    public partial class BreakFastOrder : System.Web.UI.Page
    {
        double set1Price = 12.50;
        double set2Price = 8.50;
        double set3Price = 10.50;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void rblSet_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(rblSet.SelectedIndex == 0)
            {
                lblSetDetail.Text = "Menu Set 1" + "<br/>" + "Nasi Lemak" + "<br/>" + "Chicken Rendang" + "<br/>" + "Teh Tarik" + "<br/>" + "RM 12.50";
            }
            else if(rblSet.SelectedIndex == 1)
            {
                lblSetDetail.Text = "Menu Set 2" + "<br/>" + "Mee Goreng" + "<br/>" + "Fried Egg"+ "<br/>" + "Teh Tarik" + "<br/>" + "RM 8.50";

            }
            else if(rblSet.SelectedIndex == 2)
            {
                lblSetDetail.Text = "Menu Set 3" + "<br/>" + "Chicken Sauseges" + "<br/>" + "Omelette"  +"<br/>" + "Read Beans" + "<br/>" + "Coffee" + "RM 10.50";
            }
        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            double totalPrice = 0;

            if (cbSet1.Checked == true)
            {
                totalPrice = txtboxQuantitySet1.Text == "" ? totalPrice + set1Price : totalPrice + (set1Price * Convert.ToDouble(txtboxQuantitySet1.Text));
            }

            if(cbSet2.Checked == true)
            {
                totalPrice = txtboxQuantitySet2.Text == "" ? totalPrice + set2Price : totalPrice + (set2Price * Convert.ToDouble(txtboxQuantitySet2.Text));
            }

            if(cbSet3.Checked == true)
            {
                totalPrice = txtboxQuantitySet3.Text == "" ? totalPrice + set3Price : totalPrice + (set3Price * Convert.ToDouble(txtboxQuantitySet3.Text));
            }

            lblTotalPrice.Text = totalPrice.ToString();
            
            
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            //reset all field
            rblSet.SelectedIndex = -1;
            lblSetDetail.Text = "";
            cbSet1.Checked = false;
            cbSet2.Checked = false;
            cbSet3.Checked = false;
            txtboxQuantitySet1.Text = "1";
            txtboxQuantitySet2.Text = "1";
            txtboxQuantitySet3.Text = "1";
            lblTotalPrice.Text = "";
        }

        protected void cbSet1_CheckedChanged(object sender, EventArgs e)
        {
            lblPriceSet1.Text = cbSet1.Checked == true ?  set1Price * Convert.ToDouble(txtboxQuantitySet1.Text) + "" : "";
        }

        protected void cbSet2_CheckedChanged(object sender, EventArgs e)
        {
            lblPriceSet2.Text = cbSet2.Checked == true ? set2Price * Convert.ToDouble(txtboxQuantitySet2.Text) + "" : "";
        }

        protected void cbSet3_CheckedChanged(object sender, EventArgs e)
        {
            lblPriceSet3.Text = cbSet3.Checked == true ? set3Price * Convert.ToDouble(txtboxQuantitySet3.Text) + "" : "";
        }

        protected void txtboxQuantitySet1_TextChanged(object sender, EventArgs e)
        {
            lblPriceSet1.Text = cbSet1.Checked == true ? set1Price * Convert.ToDouble(txtboxQuantitySet1.Text) + "" : "";
        }

        protected void txtboxQuantitySet2_TextChanged(object sender, EventArgs e)
        {
            lblPriceSet2.Text = cbSet2.Checked == true ? set2Price * Convert.ToDouble(txtboxQuantitySet2.Text) + "" : "";
        }

        protected void txtboxQuantitySet3_TextChanged(object sender, EventArgs e)
        {
            lblPriceSet3.Text = cbSet3.Checked == true ? set3Price * Convert.ToDouble(txtboxQuantitySet3.Text) + "" : "";
        }
    }
}