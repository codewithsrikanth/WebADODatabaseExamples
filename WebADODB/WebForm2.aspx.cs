using System;
using System.Data.SqlClient;

namespace WebADODB
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("server=.;user id=sa;password=sa123;database=CompanyDB");
            string query = "delete from Employee where Eno=101";
            //SqlCommand cmd = new SqlCommand();
            //cmd.CommandText = query;
            //cmd.Connection = con;
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            if(i > 0)
            {
                lblDisplay.Text = "Record(s) Deleted";
            }
            else
            {
                lblDisplay.Text = "No Record Found";
            }
            con.Close();
        }
    }
}