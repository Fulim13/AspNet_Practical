using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Practical4
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            // 1. Initialise and open connection
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strCon);
            con.Open();

            // 2. specify sql statement - execute command
            string strTotalSales = "Select SUM(UnitPrice * Quantity * (1- Discount)) as Total "  + 
                "FROM [Order Details] Inner Join Orders On [Order Details].OrderID = Orders.OrderID " +  
                "WHERE Orders.EmployeeID = @EID AND Year(OrderDate) = @Y;";


            SqlCommand cmdTotalSales = new SqlCommand(strTotalSales,con);
            cmdTotalSales.Parameters.AddWithValue("@EID", ddlStaff.SelectedValue);
            cmdTotalSales.Parameters.AddWithValue("Y",rblYear.SelectedValue);

            double dblTotalSales = (double) cmdTotalSales.ExecuteScalar();

            lblTitleGridView.Text = "Sales Order by " + ddlStaff.SelectedItem.ToString() + 
                " in the year of " + rblYear.SelectedValue.ToString() + 
                ". Grand Total Sales = " + dblTotalSales.ToString("C");

            con.Close();


        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}