using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebADODB
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string employeeName =  txtEname.Text;

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CompanyDBConn"].ConnectionString);

            string query = $"select salary from Employee where Ename='{employeeName}'";
            SqlCommand cmd = new SqlCommand(query, con);

            con.Open();

            object salary = cmd.ExecuteScalar();

            con.Close();

            lblSalary.Text = salary.ToString();

            Server.Transfer("~/WebForm6.aspx"); 
        }
    }
}