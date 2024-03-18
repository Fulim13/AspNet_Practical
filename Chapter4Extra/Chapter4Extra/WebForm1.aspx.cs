using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
// able to use sqlconnection and sqlcommand
using System.Data.SqlClient;
using System.Configuration;

namespace Chapter4Extra
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            // 1. Establish a connection to the database
            SqlConnection conn;
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionStringA"].ConnectionString;

            conn = new SqlConnection(strCon);
            // conn value is Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf
            conn.Open();

            // 2. Create a command object and execute the SQL statement
            string strProductSearch = txtProductID.Text;

            // String concatenation leads to SQL injection
            // strRetrieve = "SELECT * FROM Products WHERE ProductId = '" + strProductSearch +"'";

            // Use parameterized query to prevent SQL injection
            string strRetrieve = "SELECT * FROM Products WHERE ProductId = @ProductID";

            SqlCommand cmd = new SqlCommand(strRetrieve, conn);
            cmd.Parameters.AddWithValue("@ProductID", strProductSearch);

            // 3. Select method used - execute reader
            SqlDataReader readerProduct = cmd.ExecuteReader();

            string strMsg = "";
            if (readerProduct.HasRows)
            {
                while (readerProduct.Read())
                {
                    strMsg += "Product Name: " + readerProduct["ProductName"].ToString() + "With Price" + readerProduct["unitPrice"].ToString();
                }
                txtProductName.Text = strMsg;
            }
            else
            {
                txtProductName.Text = "No such product ID found!";
            }   

        }
    }
}