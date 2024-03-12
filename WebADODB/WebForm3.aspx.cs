using System;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace WebADODB
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("server=.;user id=sa;password=sa123;database=CompanyDB;");
            string query = "delete from Employee where Eno="+txtEmpId.Text;
            SqlCommand cmd = new SqlCommand(query, con);

            con.Open();
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                lblDisplay.Text = "Record(s) Deleted";
            }
            else
            {
                lblDisplay.Text = "No Record(s) Found";
            }
            con.Close();
        }
    }
}