using System;
using System.Data.SqlClient;
using System.Drawing;

namespace WebADODB
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConnect_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            try
            {
                //Estb the connection                
                //con.ConnectionString = "server=.;integrated security=true;database=CompanyDB;";
                con.ConnectionString = "server=.;user id=sa;password=sa123;database=CompanyDB;";
                con.Open();
                lblDisplay.Text = "Connection Opened";                
            }
            catch (Exception ex)
            {
                lblDisplay.Text = ex.Message;
            }
            finally
            {
                con.Close();
            }
        }
    }
}