using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical2Exercise
{
    public partial class CarSticker : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            bool isNotEmpty = txtName.Text != "" && txtID.Text != "" && txtYearStudy.Text != "" &&
                            txtJoinedDate.Text != "" && rbGender.SelectedValue != "" && txtVehicleRegNo.Text != "";
            if (isNotEmpty)
            {
                lblOutput.Text = "Hi, <b>" + txtName.Text + "</b> from " + ddlProg.SelectedItem.Value + " programee. <br /><br />"
                                + "Your Information : <br />" +
                                "<br /> Student ID : " + txtID.Text +
                                "<br /> Joined Date : " + txtJoinedDate.Text +
                                "<br /> Gender : " + rbGender.SelectedItem.Value +
                                "<br /> Year Of Study : " + txtYearStudy.Text +
                                "<br /> Vehicle's Registration Number : " + txtVehicleRegNo.Text +
                                "<br /> Vehicle's Type : " + ddlVehicleType.SelectedItem.Value;
            }
            else
            {
                lblOutput.Style.Add("color","red");
                lblOutput.Style.Add("font-weight", "bold");
                lblOutput.Text = "Please enter all the information before submit!!!";
            }
        }
    }
}